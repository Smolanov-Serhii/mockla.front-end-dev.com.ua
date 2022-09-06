-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 06 2022 г., 08:06
-- Версия сервера: 10.3.35-MariaDB-cll-lve
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fronten8_mockla`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `blockable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blockable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `enabled`, `order`, `blockable_id`, `blockable_type`, `block_template_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(81, 1, 1, 83, 'App\\Models\\Page', 58, 1, 1, '2022-02-22 11:25:06', '2022-07-25 09:39:33', NULL),
(82, 1, 2, 83, 'App\\Models\\Page', 59, 1, 1, '2022-02-22 13:21:53', '2022-07-25 09:39:33', NULL),
(83, 1, 5, 83, 'App\\Models\\Page', 60, 1, 1, '2022-02-23 11:16:56', '2022-07-25 09:39:33', NULL),
(84, 1, 3, 83, 'App\\Models\\Page', 61, 1, 1, '2022-02-23 12:53:59', '2022-07-25 09:39:33', NULL),
(85, 1, 4, 83, 'App\\Models\\Page', 62, 1, 1, '2022-02-23 12:54:08', '2022-07-25 09:39:33', NULL),
(86, 1, 0, 85, 'App\\Models\\Page', 63, 1, 1, '2022-07-25 06:04:43', '2022-07-25 09:19:00', NULL),
(87, 1, 1, 85, 'App\\Models\\Page', 60, 1, 1, '2022-07-25 07:58:58', '2022-07-25 07:59:00', NULL),
(88, 0, NULL, 83, 'App\\Models\\Page', 58, 1, NULL, '2022-07-25 09:39:33', '2022-07-25 09:39:43', '2022-07-25 09:39:43'),
(89, 0, NULL, 85, 'App\\Models\\Page', 59, 1, NULL, '2022-07-25 09:41:04', '2022-07-25 11:04:36', '2022-07-25 11:04:36'),
(90, 0, NULL, 85, 'App\\Models\\Page', 59, 1, NULL, '2022-07-25 09:41:05', '2022-07-25 11:04:25', '2022-07-25 11:04:25'),
(91, 0, NULL, 85, 'App\\Models\\Page', 58, 1, NULL, '2022-07-25 09:41:07', '2022-07-25 11:04:33', '2022-07-25 11:04:33'),
(92, 1, 0, 86, 'App\\Models\\Page', 58, 1, 1, '2022-07-27 05:33:52', '2022-07-27 14:48:01', NULL),
(93, 1, 1, 86, 'App\\Models\\Page', 64, 1, 1, '2022-07-27 14:47:52', '2022-07-27 15:15:53', NULL),
(94, 0, NULL, 86, 'App\\Models\\Page', 65, 1, NULL, '2022-07-27 14:47:56', '2022-07-27 14:48:06', '2022-07-27 14:48:06'),
(95, 1, 2, 86, 'App\\Models\\Page', 65, 1, 1, '2022-07-27 14:48:00', '2022-07-27 14:49:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_contents`
--

CREATE TABLE `block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contentable_id` bigint(20) UNSIGNED NOT NULL,
  `contentable_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `block_template_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_contents`
--

INSERT INTO `block_contents` (`id`, `contentable_id`, `contentable_type`, `block_template_attribute_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(94, 81, 'App\\Models\\Block', 65, 1, NULL, '2022-02-22 11:41:23', '2022-02-22 11:41:23', NULL),
(95, 81, 'App\\Models\\Block', 66, 1, NULL, '2022-02-22 11:41:23', '2022-02-22 11:41:23', NULL),
(96, 81, 'App\\Models\\Block', 67, 1, NULL, '2022-02-22 11:41:23', '2022-02-22 11:41:23', NULL),
(97, 82, 'App\\Models\\Block', 68, 1, NULL, '2022-02-22 13:22:06', '2022-02-22 13:22:06', NULL),
(98, 82, 'App\\Models\\Block', 69, 1, NULL, '2022-02-22 13:22:06', '2022-02-22 13:22:06', NULL),
(99, 82, 'App\\Models\\Block', 70, 1, NULL, '2022-02-22 13:22:06', '2022-02-22 13:22:06', NULL),
(100, 83, 'App\\Models\\Block', 71, 1, NULL, '2022-02-23 11:17:21', '2022-02-23 11:17:21', NULL),
(101, 83, 'App\\Models\\Block', 72, 1, NULL, '2022-02-23 11:17:21', '2022-02-23 11:17:21', NULL),
(102, 84, 'App\\Models\\Block', 73, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(103, 84, 'App\\Models\\Block', 74, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(104, 84, 'App\\Models\\Block', 75, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(105, 84, 'App\\Models\\Block', 76, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(106, 85, 'App\\Models\\Block', 77, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(107, 85, 'App\\Models\\Block', 81, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(108, 1, 'App\\Models\\BlockTemplateRepeaterIteration', 78, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(109, 1, 'App\\Models\\BlockTemplateRepeaterIteration', 79, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(110, 2, 'App\\Models\\BlockTemplateRepeaterIteration', 78, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(111, 2, 'App\\Models\\BlockTemplateRepeaterIteration', 79, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(112, 3, 'App\\Models\\BlockTemplateRepeaterIteration', 78, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(113, 3, 'App\\Models\\BlockTemplateRepeaterIteration', 79, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(114, 85, 'App\\Models\\Block', 80, 1, NULL, '2022-02-23 14:27:52', '2022-02-23 14:27:52', NULL),
(115, 87, 'App\\Models\\Block', 71, 1, NULL, '2022-07-25 11:27:53', '2022-07-25 11:27:53', NULL),
(116, 87, 'App\\Models\\Block', 72, 1, NULL, '2022-07-25 11:27:53', '2022-07-25 11:27:53', NULL),
(117, 92, 'App\\Models\\Block', 65, 1, NULL, '2022-07-27 05:38:30', '2022-07-27 05:38:30', NULL),
(118, 92, 'App\\Models\\Block', 66, 1, NULL, '2022-07-27 05:38:30', '2022-07-27 05:38:30', NULL),
(119, 92, 'App\\Models\\Block', 67, 1, NULL, '2022-07-27 05:38:30', '2022-07-27 05:38:30', NULL),
(120, 81, 'App\\Models\\Block', 82, 1, NULL, '2022-07-27 05:43:28', '2022-07-27 05:43:28', NULL),
(121, 4, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(122, 4, 'App\\Models\\BlockTemplateRepeaterIteration', 83, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(123, 5, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(124, 5, 'App\\Models\\BlockTemplateRepeaterIteration', 83, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(125, 6, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(126, 6, 'App\\Models\\BlockTemplateRepeaterIteration', 83, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(127, 7, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(128, 7, 'App\\Models\\BlockTemplateRepeaterIteration', 83, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(129, 92, 'App\\Models\\Block', 82, 1, NULL, '2022-07-27 05:53:37', '2022-07-27 05:53:37', NULL),
(130, 8, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 05:53:37', '2022-07-27 05:53:37', NULL),
(131, 9, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 06:00:35', '2022-07-27 06:00:35', NULL),
(132, 10, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 06:06:09', '2022-07-27 06:06:09', NULL),
(133, 11, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 06:11:20', '2022-07-27 06:11:20', NULL),
(134, 12, 'App\\Models\\BlockTemplateRepeaterIteration', 84, 1, NULL, '2022-07-27 06:12:43', '2022-07-27 06:12:43', NULL),
(135, 95, 'App\\Models\\Block', 85, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(136, 13, 'App\\Models\\BlockTemplateRepeaterIteration', 87, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(137, 13, 'App\\Models\\BlockTemplateRepeaterIteration', 88, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(138, 13, 'App\\Models\\BlockTemplateRepeaterIteration', 86, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(139, 14, 'App\\Models\\BlockTemplateRepeaterIteration', 87, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(140, 14, 'App\\Models\\BlockTemplateRepeaterIteration', 88, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(141, 14, 'App\\Models\\BlockTemplateRepeaterIteration', 86, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(142, 15, 'App\\Models\\BlockTemplateRepeaterIteration', 87, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL),
(143, 15, 'App\\Models\\BlockTemplateRepeaterIteration', 88, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL),
(144, 15, 'App\\Models\\BlockTemplateRepeaterIteration', 86, 1, NULL, '2022-07-27 14:50:06', '2022-07-27 14:50:06', NULL),
(145, 93, 'App\\Models\\Block', 89, 1, NULL, '2022-07-27 15:14:08', '2022-07-27 15:14:08', NULL),
(146, 93, 'App\\Models\\Block', 90, 1, NULL, '2022-07-27 15:14:08', '2022-07-27 15:14:08', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_content_translations`
--

CREATE TABLE `block_content_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `block_content_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_content_translations`
--

INSERT INTO `block_content_translations` (`id`, `value`, `lang_id`, `block_content_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(93, 'Quickly create amazing phone cases mockups online', 3, 94, 1, NULL, '2022-02-22 11:41:23', '2022-02-22 11:41:23', NULL),
(94, '<p>Make Photoshop a thing of the past. High-quality scenes of your phone cases all in one place.</p>', 3, 95, 1, 1, '2022-02-22 11:41:23', '2022-07-27 06:08:36', NULL),
(95, 'Upload image', 3, 96, 1, NULL, '2022-02-22 11:41:23', '2022-02-22 11:41:23', NULL),
(96, 'Ever-growing library of mockups and templates', 3, 97, 1, NULL, '2022-02-22 13:22:06', '2022-02-22 13:22:06', NULL),
(97, '<p>The easiest way to create professional designs for free! </p><p>Choose from our ever changing library of free mockups, designs, videos and logos.</p>', 3, 98, 1, 1, '2022-02-22 13:22:06', '2022-02-22 13:33:31', NULL),
(98, 'Browse all templates', 3, 99, 1, NULL, '2022-02-22 13:22:06', '2022-02-22 13:22:06', NULL),
(99, 'Choose the best plan for you', 3, 100, 1, NULL, '2022-02-23 11:17:21', '2022-02-23 11:17:21', NULL),
(100, '<p>Whether you are a freelance designer or an enterprise, we have an affordable pricing</p><p>plan that best fits your needs.</p>', 3, 101, 1, 1, '2022-02-23 11:17:21', '2022-02-23 11:19:40', NULL),
(101, 'Thousands of Unique Templates Just for You!', 3, 102, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(102, 'The easiest way to create professional designs for free!<br>Choose from our ever changing library of free mockups, designs, videos and logos.', 3, 103, 1, 1, '2022-02-23 13:40:23', '2022-02-23 13:41:30', NULL),
(103, 'Start Creating for Free', 3, 104, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(104, 'eq2vygpOcOckWfizoy0DonChAc4kkKAZI0y343eL.png', 3, 105, 1, NULL, '2022-02-23 13:40:23', '2022-02-23 13:40:23', NULL),
(105, 'Get the most out of every mockup', 3, 106, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(106, 'Start Creating for Free', 3, 107, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(107, 'Lots of import options', 3, 108, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(108, 'Import an image from your computer, use the integration with other applications, or take a screenshot from a link.', 3, 109, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(109, 'Professional editing of each mockup', 3, 110, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(110, 'Change the background, color of the object or crop the image - the possibilities of personalization are endless.', 3, 111, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(111, 'Unlimited export', 3, 112, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(112, 'When the mockup is ready, export the final version in 5K resolution in a few seconds and without restrictions.', 3, 113, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(113, 'SvEwTDA5QfbdSsXivUyNydBmqEjyQ7jKYILZ8SXS.png', 3, 114, 1, NULL, '2022-02-23 14:27:52', '2022-02-23 14:27:52', NULL),
(114, 'Choose the best plan for you', 3, 115, 1, NULL, '2022-07-25 11:27:53', '2022-07-25 11:27:53', NULL),
(115, '<p><span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiUWJjckJWQ0hBVUc1OTRHY08xNWRoTSIsInBhc3RlSUQiOjE0NzE4NDkwMTMsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Whether you are a freelance designer or an enterprise, we have an affordable pricing plan that best fits your needs.</span><br></p>', 3, 116, 1, NULL, '2022-07-25 11:27:53', '2022-07-25 11:27:53', NULL),
(116, 'The Largest <br>Phonecase Mockup Library', 3, 117, 1, 1, '2022-07-27 05:38:30', '2022-07-27 06:11:20', NULL),
(117, '<ul>\r\n<li>Everything your brand needs in one place</li>\r\n<li>Customizable templates you can style</li>\r\n<li>Cancel your subscription anytime*</li></ul><p><br></p><ul>\r\n</ul>', 3, 118, 1, 1, '2022-07-27 05:38:30', '2022-07-27 06:12:43', NULL),
(118, NULL, 3, 119, 1, NULL, '2022-07-27 05:38:30', '2022-07-27 05:38:30', NULL),
(119, 'hrdb8J627Ae11PQnyKNmnTKw159oyiA9ZQEKWzAA.png', 3, 120, 1, NULL, '2022-07-27 05:43:28', '2022-07-27 05:43:28', NULL),
(120, 'apple', 3, 121, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(121, '8opE4F89NptV1SwBgbA6gcAP7WKV4v3RqHoEcAje.png', 3, 122, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(122, 'samsung', 3, 123, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(123, 'B9UjVKiLboXzu9TnuY939vt7BozbNUm66MTAjqvO.png', 3, 124, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(124, 'pixel', 3, 125, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(125, 'OW0taCsWW7rDzSaMdsXFOMduzdc8bv87CxjZtwQg.png', 3, 126, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(126, 'huawei', 3, 127, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(127, '01fefx9xJ886phMEbH8ZN6UTVurvEWlCEtyTYNkY.png', 3, 128, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(128, 'fttx0W90oVIOQUiblCzIuslNynAySCFTtIGdyODk.png', 3, 129, 1, 1, '2022-07-27 05:53:37', '2022-07-27 06:06:09', NULL),
(129, NULL, 3, 130, 1, NULL, '2022-07-27 05:53:37', '2022-07-27 05:53:37', NULL),
(130, NULL, 3, 131, 1, NULL, '2022-07-27 06:00:35', '2022-07-27 06:00:35', NULL),
(131, NULL, 3, 132, 1, NULL, '2022-07-27 06:06:09', '2022-07-27 06:06:09', NULL),
(132, NULL, 3, 133, 1, NULL, '2022-07-27 06:11:20', '2022-07-27 06:11:20', NULL),
(133, NULL, 3, 134, 1, NULL, '2022-07-27 06:12:43', '2022-07-27 06:12:43', NULL),
(134, 'Choose the best plan for you', 3, 135, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(135, 'Trusted payment methods', 3, 136, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(136, 'Pay with all major cards, Paypal and trusted methods', 3, 137, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(137, 'ywDWoqmSO7i1Pu4n3d7tuHyENlEK6BkSNnqvBYgw.png', 3, 138, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(138, 'Secure payments', 3, 139, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(139, 'All transactions are processed by our secure technology', 3, 140, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(140, 'tbRCSdf2yR1jc2W3iUPx1MPm4Tx9pWR3NSnjEj1q.png', 3, 141, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL),
(141, 'Cancel anytime', 3, 142, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL),
(142, 'Canceling your subscription is quick and easy.', 3, 143, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL),
(143, 'cxogc2A83vG6fR6vStyVUN19vY8fUks1mi69Ckcl.png', 3, 144, 1, NULL, '2022-07-27 14:50:06', '2022-07-27 14:50:06', NULL),
(144, 'Choose the best plan for you', 3, 145, 1, NULL, '2022-07-27 15:14:08', '2022-07-27 15:14:08', NULL),
(145, 'Whether you are a freelance designer or an enterprise, we have an affordable pricing plan that best fits your needs.', 3, 146, 1, NULL, '2022-07-27 15:14:08', '2022-07-27 15:14:08', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_templates`
--

CREATE TABLE `block_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_templates`
--

INSERT INTO `block_templates` (`id`, `image_path`, `path`, `name`, `enabled`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(58, '76oNuVhTWgSkXtAQgHRu6odv7h06s48KZCt4x3mv.png', 'banner.blade.php', 'Банер', 0, 1, NULL, '2022-02-22 11:14:35', '2022-02-22 11:14:35', NULL),
(59, 'sumZIDiGWyN0sKz0tGFIfJedRPTjOq6WLHNnRAgQ.png', 'list.blade.php', 'Список (Главная)', 0, 1, NULL, '2022-02-22 13:20:47', '2022-02-22 13:20:47', NULL),
(60, 'UWbjMH5bSdn4j0y8NZsbpZpu5RV745Ze7PR0en2X.png', 'plans.blade.php', 'Тарифные планы', 0, 1, NULL, '2022-02-23 11:16:11', '2022-02-23 11:16:11', NULL),
(61, 'sORQG6e1ADz3wKkEoe49Bp0pv0LxTdhRE6v885Sw.png', 'unique.blade.php', 'Уникальные шаблоны', 0, 1, NULL, '2022-02-23 12:53:10', '2022-02-23 12:53:10', NULL),
(62, 'wK1vpARpOgUCVrDEBDeRIZhcxID4SbIfPlRp8bip.png', 'most.blade.php', 'Преимущества', 0, 1, NULL, '2022-02-23 12:53:46', '2022-02-23 12:53:46', NULL),
(63, '4sgITsGghh6dlScrQKzbidkdnbaPmAfEITJikcBy.png', 'mockups-page.blade.php', 'Mockups-page', 0, 1, 1, '2022-07-25 06:04:36', '2022-07-25 11:04:10', NULL),
(64, 'oo7CkPgOc0hOqKrxHKVdv3M7M0lLU2la76rgZAjI.png', 'choose-plan.blade.php', 'Choose the best plan for you', 0, 1, 1, '2022-07-27 14:43:03', '2022-07-27 14:43:14', NULL),
(65, 'W6R9bki5KFo4iewj79BelTzyTFzswea5t5niRaQa.png', 'secure-payment.blade.php', 'Easy and secure payment', 0, 1, NULL, '2022-07-27 14:43:28', '2022-07-27 14:43:28', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_template_attributes`
--

CREATE TABLE `block_template_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `attributable_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `attributable_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_template_attributes`
--

INSERT INTO `block_template_attributes` (`id`, `name`, `key`, `default_value`, `type`, `attributable_type`, `attributable_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(65, 'Заголовок', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 58, 1, NULL, '2022-02-22 11:40:52', '2022-02-22 11:40:52', NULL),
(66, 'Подзаголовок', 'subtitle', '<p><br></p>', 3, 'App\\Models\\BlockTemplate', 58, 1, 1, '2022-02-22 11:40:52', '2022-07-27 05:40:58', NULL),
(67, 'Надпись на кнопке', 'button-name', NULL, 1, 'App\\Models\\BlockTemplate', 58, 1, NULL, '2022-02-22 11:40:52', '2022-02-22 11:40:52', NULL),
(68, 'Заголовок блока', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 59, 1, NULL, '2022-02-22 13:21:45', '2022-02-22 13:21:45', NULL),
(69, 'Подзаголовок блока', 'subtitle', '<p><br></p>', 3, 'App\\Models\\BlockTemplate', 59, 1, 1, '2022-02-22 13:21:45', '2022-07-25 09:38:56', NULL),
(70, 'button-name', 'Надпись на кнопке', NULL, 1, 'App\\Models\\BlockTemplate', 59, 1, NULL, '2022-02-22 13:21:45', '2022-02-22 13:21:45', NULL),
(71, 'Заголовок', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 60, 1, NULL, '2022-02-23 11:16:49', '2022-02-23 11:16:49', NULL),
(72, 'Подзаголовок', 'subtitle', '<p><br></p>', 3, 'App\\Models\\BlockTemplate', 60, 1, 1, '2022-02-23 11:16:49', '2022-07-25 09:39:00', NULL),
(73, 'Заголовок', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 61, 1, NULL, '2022-02-23 13:17:08', '2022-02-23 13:17:08', NULL),
(74, 'Подзаголовок', 'subtitle', 'Html Контент', 3, 'App\\Models\\BlockTemplate', 61, 1, NULL, '2022-02-23 13:17:08', '2022-02-23 13:17:08', NULL),
(75, 'Надпись на кнопке', 'button-name', NULL, 1, 'App\\Models\\BlockTemplate', 61, 1, NULL, '2022-02-23 13:17:08', '2022-02-23 13:17:08', NULL),
(76, 'Изображение', 'image', NULL, 0, 'App\\Models\\BlockTemplate', 61, 1, NULL, '2022-02-23 13:17:08', '2022-02-23 13:17:08', NULL),
(77, 'Заголовок', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 62, 1, NULL, '2022-02-23 14:11:30', '2022-02-23 14:11:30', NULL),
(78, 'Заголовок', 'header', NULL, 1, 'App\\Models\\BlockTemplateRepeater', 1, 1, NULL, '2022-02-23 14:11:30', '2022-02-23 14:11:30', NULL),
(79, 'Описание', 'subtitle', NULL, 1, 'App\\Models\\BlockTemplateRepeater', 1, 1, NULL, '2022-02-23 14:11:30', '2022-02-23 14:11:30', NULL),
(80, 'Картинка', 'image', NULL, 0, 'App\\Models\\BlockTemplate', 62, 1, NULL, '2022-02-23 14:12:51', '2022-02-23 14:12:51', NULL),
(81, 'Надпись на кнопке', 'button-name', NULL, 1, 'App\\Models\\BlockTemplate', 62, 1, NULL, '2022-02-23 14:12:51', '2022-02-23 14:12:51', NULL),
(82, 'Background image', 'image', NULL, 0, 'App\\Models\\BlockTemplate', 58, 1, NULL, '2022-07-27 05:40:58', '2022-07-27 05:40:58', NULL),
(83, 'icon', 'icon', NULL, 0, 'App\\Models\\BlockTemplateRepeater', 2, 1, NULL, '2022-07-27 05:49:06', '2022-07-27 05:49:06', NULL),
(84, 'icon title', 'icon-name', NULL, 1, 'App\\Models\\BlockTemplateRepeater', 2, 1, NULL, '2022-07-27 05:49:06', '2022-07-27 05:49:06', NULL),
(85, 'Block title', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 65, 1, NULL, '2022-07-27 14:45:40', '2022-07-27 14:45:40', NULL),
(86, 'icon', 'icon', NULL, 0, 'App\\Models\\BlockTemplateRepeater', 3, 1, NULL, '2022-07-27 14:45:40', '2022-07-27 14:45:40', NULL),
(87, 'title', 'title', NULL, 1, 'App\\Models\\BlockTemplateRepeater', 3, 1, NULL, '2022-07-27 14:45:40', '2022-07-27 14:45:40', NULL),
(88, 'description', 'description', NULL, 1, 'App\\Models\\BlockTemplateRepeater', 3, 1, NULL, '2022-07-27 14:45:40', '2022-07-27 14:45:40', NULL),
(89, 'Block title', 'title', NULL, 1, 'App\\Models\\BlockTemplate', 64, 1, NULL, '2022-07-27 15:13:54', '2022-07-27 15:13:54', NULL),
(90, 'Block subtitle', 'subtitle', NULL, 1, 'App\\Models\\BlockTemplate', 64, 1, NULL, '2022-07-27 15:13:54', '2022-07-27 15:13:54', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_template_groups`
--

CREATE TABLE `block_template_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `groupable_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `groupable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_template_groups`
--

INSERT INTO `block_template_groups` (`id`, `key`, `groupable_type`, `groupable_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Все страницы', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'plan', 'App\\Models\\Module', 23, NULL, NULL, '2022-02-23 10:39:46', '2022-02-23 10:39:46'),
(24, 'clients', 'App\\Models\\Module', 24, NULL, NULL, '2022-07-25 06:01:48', '2022-07-25 06:01:48'),
(25, 'mockups', 'App\\Models\\Module', 25, NULL, NULL, '2022-07-25 06:14:09', '2022-07-25 06:14:09');

-- --------------------------------------------------------

--
-- Структура таблицы `block_template_repeaters`
--

CREATE TABLE `block_template_repeaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeatable_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_template_repeaters`
--

INSERT INTO `block_template_repeaters` (`id`, `name`, `key`, `class`, `repeatable_type`, `repeatable_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Перечень описаний', 'desc', NULL, 'App\\Models\\BlockTemplate', 62, 1, NULL, '2022-02-23 14:11:30', '2022-02-23 14:11:30', NULL),
(2, 'Partners', 'partners', NULL, 'App\\Models\\BlockTemplate', 58, 1, NULL, '2022-07-27 05:49:06', '2022-07-27 05:49:06', NULL),
(3, 'icon items', 'items', NULL, 'App\\Models\\BlockTemplate', 65, 1, NULL, '2022-07-27 14:45:40', '2022-07-27 14:45:40', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `block_template_repeater_iterations`
--

CREATE TABLE `block_template_repeater_iterations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `block_template_repeater_id` bigint(20) UNSIGNED NOT NULL,
  `iterable_id` bigint(20) UNSIGNED NOT NULL,
  `iterable_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_template_repeater_iterations`
--

INSERT INTO `block_template_repeater_iterations` (`id`, `block_template_repeater_id`, `iterable_id`, `iterable_type`, `order`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 85, 'App\\Models\\Block', 0, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(2, 1, 85, 'App\\Models\\Block', 0, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(3, 1, 85, 'App\\Models\\Block', 0, 1, NULL, '2022-02-23 14:25:19', '2022-02-23 14:25:19', NULL),
(4, 2, 81, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(5, 2, 81, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(6, 2, 81, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(7, 2, 81, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 05:51:29', '2022-07-27 05:51:29', NULL),
(8, 2, 92, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 05:53:37', '2022-07-27 05:59:11', '2022-07-27 05:59:11'),
(9, 2, 92, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 06:00:35', '2022-07-27 06:01:14', '2022-07-27 06:01:14'),
(10, 2, 92, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 06:06:09', '2022-07-27 06:06:15', '2022-07-27 06:06:15'),
(11, 2, 92, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 06:11:20', '2022-07-27 06:11:28', '2022-07-27 06:11:28'),
(12, 2, 92, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 06:12:43', '2022-07-27 06:12:48', '2022-07-27 06:12:48'),
(13, 3, 95, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(14, 3, 95, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 14:48:53', '2022-07-27 14:48:53', NULL),
(15, 3, 95, 'App\\Models\\Block', 0, 1, NULL, '2022-07-27 14:48:54', '2022-07-27 14:48:54', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `form_items`
--

CREATE TABLE `form_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `form_item_translations`
--

CREATE TABLE `form_item_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_item_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `form_translations`
--

CREATE TABLE `form_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_items`
--

CREATE TABLE `gallery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_item_translations`
--

CREATE TABLE `gallery_item_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_item_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_translations`
--

CREATE TABLE `gallery_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `iso`, `enabled`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uk', 0, NULL, NULL, NULL, NULL, NULL),
(2, 'en', 0, NULL, NULL, NULL, NULL, NULL),
(3, 'ru', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `model_additions`
--

CREATE TABLE `model_additions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `additable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_additions`
--

INSERT INTO `model_additions` (`id`, `additable_type`, `additable_id`, `lang_id`, `title`, `content`, `excerpt`, `thumbnail`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(127, 'App\\Models\\Page', 83, 3, 'Главная', 'Главная', 'Главная', NULL, 1, NULL, '2022-02-22 11:13:46', '2022-02-22 11:27:51', NULL),
(128, 'App\\Models\\Page', 84, 3, 'Результаты поиска', 'search', 'search', NULL, 1, NULL, '2022-02-22 11:44:40', '2022-02-22 11:49:12', NULL),
(129, 'App\\Models\\Page', 85, 3, 'Макапы', 'Макапы', 'Макапы', NULL, 1, NULL, '2022-02-22 11:48:39', '2022-07-25 06:11:49', NULL),
(130, 'App\\Models\\Page', 86, 3, 'Цены', 'Цены', 'Цены', NULL, 1, NULL, '2022-02-22 11:49:00', '2022-02-22 11:49:00', NULL),
(131, 'App\\Models\\Page', 87, 3, 'Log In', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjU2OTA1NTc3OSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Log In</span>', 'Log In', NULL, 1, NULL, '2022-02-22 11:49:33', '2022-07-26 06:55:38', '2022-07-26 06:55:38'),
(132, 'App\\Models\\ModuleItem', 1, 3, 'Pixel 5 mockup on a wooden barrel', NULL, 'Pixel 5 mockup on a wooden barrel', NULL, 1, NULL, '2022-02-22 15:00:05', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(133, 'App\\Models\\ModuleItem', 2, 3, 'Pixel 5 mockup on a wooden barrel 2', NULL, 'Pixel 5 mockup on a wooden barrel 2', NULL, 1, NULL, '2022-02-22 15:20:10', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(134, 'App\\Models\\ModuleItem', 3, 3, 'Pixel 5 mockup on a wooden barrel 3', NULL, 'Pixel 5 mockup on a wooden barrel 3', NULL, 1, NULL, '2022-02-22 15:20:26', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(135, 'App\\Models\\ModuleItem', 4, 3, 'Pixel 5 mockup on a wooden barrel 4', NULL, 'Pixel 5 mockup on a wooden barrel 4', NULL, 1, NULL, '2022-02-22 15:20:44', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(136, 'App\\Models\\ModuleItem', 5, 3, 'Pixel 5 mockup on a wooden barrel 5', NULL, 'Pixel 5 mockup on a wooden barrel 5', '9gn0gOTaKiVM2XUJyXe62vWEDRhJBf6XE9ExLFuu.png', 1, NULL, '2022-02-22 15:21:27', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(137, 'App\\Models\\ModuleItem', 6, 3, 'Pixel 5 mockup on a wooden barrel 6', NULL, 'Pixel 5 mockup on a wooden barrel 6', NULL, 1, NULL, '2022-02-22 15:40:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(138, 'App\\Models\\ModuleItem', 7, 3, 'Pixel 5 mockup on a wooden barrel 7', NULL, 'Pixel 5 mockup on a wooden barrel 7', NULL, 1, NULL, '2022-02-22 15:53:58', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(139, 'App\\Models\\ModuleItem', 8, 3, 'Pixel 5 mockup on a wooden barrel 8', NULL, 'Pixel 5 mockup on a wooden barrel 8', NULL, 1, NULL, '2022-02-22 15:54:14', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(140, 'App\\Models\\ModuleItem', 9, 3, 'Pixel 5 mockup on a wooden barrel 9', NULL, 'Pixel 5 mockup on a wooden barrel 9', NULL, 1, NULL, '2022-02-22 15:54:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(141, 'App\\Models\\ModuleItem', 10, 3, 'Pixel 5 mockup on a wooden barrel 10', NULL, 'Pixel 5 mockup on a wooden barrel 10', NULL, 1, NULL, '2022-02-22 15:55:05', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(142, 'App\\Models\\ModuleItem', 11, 3, 'Pixel 5 mockup on a wooden barrel 11', NULL, 'Pixel 5 mockup on a wooden barrel 11', NULL, 1, NULL, '2022-02-22 15:55:23', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(143, 'App\\Models\\ModuleItem', 12, 3, 'Pixel 5 mockup on a wooden barrel 12', NULL, 'Pixel 5 mockup on a wooden barrel 12', NULL, 1, NULL, '2022-02-22 15:55:39', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(144, 'App\\Models\\ModuleItem', 23, 3, 'Trial', NULL, 'Trial', NULL, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(145, 'App\\Models\\ModuleItem', 24, 3, 'Basic', NULL, 'Basic', NULL, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(146, 'App\\Models\\ModuleItem', 25, 3, 'Professional', NULL, 'Professional', NULL, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(147, 'App\\Models\\ModuleItem', 26, 3, 'Pixel 5 mockup on a wooden barrel 1', 'Pixel 5 mockup on a wooden barrel 1', 'Pixel 5 mockup on a wooden barrel 1', NULL, 1, 1, '2022-07-25 06:15:28', '2022-07-25 07:12:59', NULL),
(148, 'App\\Models\\ModuleItem', 27, 3, 'Pixel 5 mockup on a wooden barrel 2', '<span style=\"white-space: pre-wrap;\">Pixel 5 mockup on a wooden barrel 2</span>', 'Pixel 5 mockup on a wooden barrel 2', NULL, 1, 1, '2022-07-25 07:06:34', '2022-07-25 07:13:12', NULL),
(149, 'App\\Models\\ModuleItem', 28, 3, 'Pixel 5 mockup on a wooden barrel 3', '<span style=\"white-space: pre-wrap;\">Pixel 5 mockup on a wooden barrel 3</span>', 'Pixel 5 mockup on a wooden barrel 3', NULL, 1, 1, '2022-07-25 07:06:56', '2022-07-25 07:13:27', NULL),
(150, 'App\\Models\\ModuleItem', 29, 3, 'Pixel 5 mockup on a wooden barrel 4', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjEyMTE3MTYwMjQsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel 4', NULL, 1, 1, '2022-07-25 07:07:14', '2022-07-25 07:13:39', NULL);
INSERT INTO `model_additions` (`id`, `additable_type`, `additable_id`, `lang_id`, `title`, `content`, `excerpt`, `thumbnail`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(151, 'App\\Models\\ModuleItem', 30, 3, 'Pixel 5 mockup on a wooden barrel 5', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjE5OTcwODgyNDAsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:07:36', '2022-07-25 07:13:49', NULL),
(152, 'App\\Models\\ModuleItem', 31, 3, 'Pixel 5 mockup on a wooden barrel 6', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjEwMTI1NDQ1OTMsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:08:00', '2022-07-25 07:13:57', NULL);
INSERT INTO `model_additions` (`id`, `additable_type`, `additable_id`, `lang_id`, `title`, `content`, `excerpt`, `thumbnail`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(153, 'App\\Models\\ModuleItem', 32, 3, 'Pixel 5 mockup on a wooden barrel 7', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjk2MDQzNTE5NCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:08:20', '2022-07-25 07:14:06', NULL),
(154, 'App\\Models\\ModuleItem', 33, 3, 'Pixel 5 mockup on a wooden barrel 8', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjE1NjgwMDQ3MTgsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)ZmlnLWtpd2kPAAAAZzAAAO18eZgjSXVnREqqo6u75z4Z7vue6bm5U6lUKbskZU5mStU9HiNUpawq0SpJKKXqqTHGMGAbcwynue/FMAyY2xhjzGKMMWYxxhhjFmMWY8yyXpb1sizLer3s/t6LyEPVDd/uH/uH/XV/X1e8eBH54sV7L168eJGpz8pGFMfd7SjcH0dCnHfcdZqdIDT9UOBf063YHatmNlftAFXZCmw/Vze4t92sAC4EzmrTrAMqBuHJug2gxEAnsInWAvdlyp1gzfE6vl13TXpysemGTvVkJ6i5rXql0/JWfbNCzy9psFNxm1RfTuq+XfXtoAbUocCym3YHaK/WuaVl+yeBXMkjfdurE/JwxalWUR6x6o7dDDtlH6NbZkC8HTVv78eYzgnAgjpLc3MTYgHKt81Kx20yCcGVdd8JiRvZHPUib6cbR+hmoSm0aTbo1HDbDMr1/rDXH277swH1abrNW23fRYNwK9xOFJTc74tGGyhRca1WA/wBlJbZbJsBIGPVd1segELVNxvUr1h23bptNjuuZ/tm6LhNIEtt2wpdH9ACyRnlYt1hskt2ve54AYHLPjpBgayhQ7692qqbfsdz6ydXmcgKhmpW7AoEl/U7HNoniKUjQd2xCHE0ONkou6Tt85wmBmsy9vwgdKw1EtUFQc307M66E9Y6+tkLLbfZBE1m8CKLLKtcd6011C5edyqrbCWXgFaDZnppw644JoDLas5qrY7/1Hx5AAJqsldosANh+3WTBr1y3QxqTifEyKjdq236jllm/q8KNXBvBjoW5IHafYKd7jha7093wuj2qdLE4eCWlunbaBXopIUmwUvDZTs3QlAlscBQUS2k1Yq7TnwVzya/kmf6Zr0Oi4dRNjq+ns7CPLpuVwm7aDdXOxUTnJo8+BLVYdstqixTpeow1UMMu/WKTSJdKQ+iYa8Bk4J4PTMIOmENvKzSMsFC9hu8OGXF9NdsYtRotOqhoxZHgewEZlBu+dRUtNy6m9ZKLH1+ZiGAoTPEloUnKi40h/qSeiSpLmdaORS41bDDNFBbqZl+Ja3xorR9W5nPEfuEVW8FUCoqR2s83/MCM2ylFn4+jwLggnqr4TTdwAlpiAu9bn+o9bcYuHWHFCUg04qDpYTRiFVgZIqikuWBpQWQUNAVLQXgCikOnbTai07D5JmVsLyPOwAWnF24zWCzO4iU0OH3fDu0WN5Vh6YnoSgeJFQKK9hbW9GmZrToYDn48HomLAeNouK7XlaVVReLEwpsVrBOWsSXUTattXlUgQzXYh+04MKsHOWCRcuDX0Ap6+46A2AhVDwEMIR6xzI98izFrAZL8i32WyUiWok2R5PutD8a4pnEO2FkqBXiBCwxXWfNzozMaM52N6JJa9ifxnjGN2kawnNO2PUAgARH8MskF8MaDePpJKc0KBN4Qe3MrmyY5IwNjKFFWggskydQrIJipaOeKOkK914IppPRqcgc9LeHeCAlJuCiHN5RpNsKNWiozlZ3DCNL5oepsLZl6gQM0/fddTYhmkRBVe1bWk4dDh+rF8iiNhNal3UtwcQrpKiFvB9bzDxV5xrUl3L1Y6gv5+rXon4oV78O9ZVc/XrUD+fqN6B+xHJ8Kz/6UTXb46M+SaaBHcwHVpTttk0zkMnEjfJoNIi6Q3ccJcovtppq8UGMeIzcLmAZtMqhbzJsnOA1ybbIwq+NJv07RsNpd4DHtVfL6RZ2ylIwjrewYVQd5jB7uh1Npn0sK8K5Hppyj5bdMHQbgIzGaBZH1mwSjyaQT8WumnBnaBCW7wZYRY4PWNonbVpWMD3UDAQuPJRnYipwbxbMF/Wixy6thMJy6oAWGuQk6ZFFqBgxD6ClVH9cXW5jIY8mjf5kQgykK4S1jlIyAKcCZwc3HZIJG5VuvKN8hWFhawFKZAYu2Z+o9VD0mqtAieOeTaUM2lQYXoUimIJ9+3g0mR5cQwXsr/DSiK70QhEJArsrjy8TRM2meQBj1Lv7o9l0ddLvKSJFtaxyEs8YNNQqK2TPeN3pNJoM0YRejscrBG6X3a9kfc6mIz+K+3eAdCoiZoclk/IhU8igx8LJbLipzc+oOAHt2URTINR0WDIymO4PoiDSc4fq/MDVvi+0TbIQacG6lK0gWsT+2bRoryiEdsNzfZMjxWJCBsKcRqkkz9hCAMpkA4Dj6G6eUmpM51SD870V0mUOJPY+BEIMq95s1xjuDOkqkRplGBm5GMAFfsAazcDQRD+38NOeg9i1cgpmK6TQspgjVWJSx2fxtL+1j6afSsUzLbsDV6DCXMVBoJTG/hVIhLWBc6vdCV04FZbHHAI2Bp06DQ/xIWrUgj5q8t4o7pMuEQkDpfkUZhlSbqlIGtIfYjmhj1IATgQ8AeVxoNYOHURQly2fhVrGRoiyYNVdDpGKOGN0cvFeqeUhgLI7HER2/FYzdDhsXnBIqt3cUIcRQWItMjlhVjFch/pin0BdNlyceDosNkPBqqGAp2oU4gAuqgbs2tStpGocGy6glwcx0bJIprRU8c1VlMtoW7NPJo8dQrXtqth6JZx0h0pkiscrsX8hlAw7cLjYyXQsJLAwIMK2DVBWcSxCaSA+R1xd9d00mizkUInjLeZwysWWcpjUxy54raCmcJrYYoZJaC1lKEVqOUOklA7RkUjhNKWVDJNQOpyhFKUjGSKldFQxCjWgU0LsvDlkQu/8OawiecEcLqV6IY+ksZroRXlcQvPiPFKRvCSPSileCm/hWB1qQ+0yhFk495pNOBE2+csRSLsIvDLMFXY3xgpRGj+Ko7LVKjsWGgSRTioSQW+uatBKVzErnqBVkTYVqd8cpqSencMtKCeZ1hcDz1cedmkVbgI7WIpY1l1TxCEFsYlj+Sn7XplHhuu02A8fQNZwiAD6SLA5GQ0Glf5ELX4wrVfJz/CnkDD7O/UsPMeU1nPUg6uZRmi3T3jYWpTPskCBYhSuydUWnLo0YhzsMRjgRSEHIwQaDBrWaICdXBYnYlnIbfwxNvCn0MWfotrs8fDtqMl9/DF8oNA7Q5zGn8IO/hSZUjAdjfHAJsHiViHH2guig9HoTif924Vc2L36atTl7tXXoDB2rz6GorB7DSGLu9cQsrR7DSEXvO4E+5Mz7EV4ztie9XviRI7oitDRNxr3uoNZhGfkjCPxK4VRhZSa3d1IyMJWd7c/2Ed/GdPWB8AAkWm8OemPp6gVqG+7O+l38chsN5r0N6v97dkEosVmpw+RAmYHfQKQOH1ylgcwDzP/aDDubsKo5571EI+50KferiXOufrcdRYCVVIuTTBPAT4duQqGEZ7AnFm/+aet7jiGMWePYP3xSUyi6CQVw7NxKiLWC0B00hpFvMgMEVgCCpNdBbiQo+8lcs+zhYgYfxEYIxgBwPwELGQoJ+3lwKZ5qUnE2Ozgq1F3ygL+O+nhIIYmYR3zuIvmwrC8gPAF4gYlM4iypPNJC4HTpMhw0fUrTZRLZtWn9uVKk53RoWarQSytIH6lnMph7Hg0pSMVVR6lwBbleTjbUXm+aXIsfYGlygtxmKDyokDVL/bbnBm4hBYmykuDdc7GXWYF61ReDuUQ/grL4mTOlYEKUu5VczjfdpWOD+7t+k3i7z4kFJT3xf5GqrxfJeQj4/2rdZPm8YDGqk8b9AMD2BrKByE4p/EfXEUsifIhNVU+tKbGfVio6g+/RZWP8FT5SDpwoHxUvVqm+qNdj8vH+CGXj/XU81d7a02S0zV1uA+Ux1ASn9f6YZ3q16Gk+vVm2W+jvMEst6l+I0ri+6a2onNzGwyhfFy5vk76eTxK6vcElNTvieZajebxJOs4H6SebFV5ITzF8rhuWi2f+pWx1VPdgnOjslJV9O0qzvsoqyiPoVxFeS3KGoal8RyURP94Tc0Ho60SP/Wae5zsBgEhx3JNB4EESve4d+NNKL3j3k1E55bj3s1Xo/SPe1dfhzKoH2/QcyHydtS/hV2N9NKmOAvlOkri40RjrUH4k806B1a3NltrIcqfwwZAfN2GMkD5820IHOVTvSAkfAcl4Z/mr/lU7/pejcoNv1UmvW8GCDBR9kLFRxQ2OdTfgppIf9ttJItQ7rRVe7+t5v309hrby6m2H/ooByiPodwNAnheIYYoqT5CeS3KMcrrUD4D5fUoJyhvQBmjvBHlFCXJaYbyZpR7QQCfLcRplETvdpREbx8l0bsDJdH7BZRE75koid4voiR6z0JJ9H4JJdF7tgyCY0TwOdJqM4d3EkAkn0sA0XweAUT0lwkgqr9CAJH9VQKI7vMJIMK/RgBRfgEAZvWFBBDlFxFAlF9MAFG+iwCi/BICiPJLCSDKLyOAKL+cAKL8CgKI8isBMM+/TgBRfhUBRPnVBBDl1xBAlF9LAFF+HQFE+fUEEOU3EECU30gAUX4TgGuJ8psJIMpvIYAov5UAovw2AojyvyKAKL+dAKL8GwQQ5XcQQJTfSQBRvhvAdUT5XQQQ5XsIIMrvJoAov4cAovybBBDl9xJAlN9HAFF+PwFE+QMEEOUPArieKH+IAKL8YQKI8m8RQJQ/QgBR/m0CiPJHCSDKv0MAUf4YAUT5dwkgyh8HcANR/j0CiPInCCDK/5oAovxJAojy7xNAlD9FAFH+AwKI8qcJIMp/SABR/gyAG4nyHxFAlD9LAFH+YwKI8ucIIMr/hgCi/HkCiPKfEECUv0AAUf5TAojyFwHcRJT/jACi/CUCiPKfE0CUv0wAUf4LAojyVwggyn9JAFH+KgFE+d8SQJS/BoBd1F8RQJS/TgBR/msCiPI3CCDK/44AovxNAojy3xBAlL9FAFH+WwKI8rflwTQLQqsptmtxTMgkxDIopmx0x2MKcqSxNRntUlg2HeGvUR6MNoSUG/vTKBYFqfI7wijgymiH6kOKyBB/9brTLvddFIV2vxeNhGEkfeJrW5MBdar2Bzi5WhRNmr2n40gv5NKUmEKcF+90e6PTMUBjp7+9g5zBDuI+RJK9aNrtDwAVI8wlpiADEeUecgoREjeAF6bRLmf6VNPiXn8DZ89Ngpc4p66G1VeEwjj0/3fITURMky7mtiyWNyZEc4iRUTvEzAjjYlbA+UJukiAQVhsjijCnFIAX9vpxfwPRlhRFFPoq5KgoxYjEY/E0uQDaw3hrNNkVkHWftfEsscRAuIPoeUicP0ssd4fA4UjhUAsQ5ysE4j2Eo9DZorgA9Xzu/0JxaDLCAQRdwMlKTA0ADm+x+CxiVmvtTimOjGkyVW6CGxdHo93R0/sW6HhIz0KMi/K8PbaDZ0txIVKp2/0hDik04nq/N93B+BfNYWsRiQroiynkbEADFZiUMEqnon2xI+QWsPX+MOkHnRGm0t+OwFABZwLUVKA6FUWqrKuOJaTXUeOYl6dmFLq4KA272xhLEtgkccA6k/XASVw1+NHNnS4F79EkRg+Z1nggp0KzNGKC3b1oglxiFHahNfF9KQsDTjByAuo26BK3GwNwH2MbkqXtwf54J8b+Ixd66Q1FjN1HLqrH2hgQKHC4tAXmU2k8X8rlre5gsIGMVBUNsdiRh3ZgThMQP1Ue3Y4B7pJyBTVAdxvy8DTNQuJsOdFnr5I4ovFRL5Xn0VqOjjCKG8je9WLxVBzB1OrV57XCTtIP4WgJuTo9NWEsYq2oE8VtQp5mLUNN1HYSQIGAdLQi1cx4E+dB1Ba3+pN4aiXixbxLsP18fWGVZCaMhc3R7m4XjGlnk50ebxNKFeAKPmgL0mHhY6gziXd7e3q5LlRSBcBjTXAexpThslJKhjo2s/iNwh5XmtH09GhyKmFhiNXYHWCwHo+YMHKmTZCjRboZ05AkzFickDLY390YDTT5mCsYF/5XwQmRmAgYOAzT0g9oaVYxG7gPCDYhm/hww2BFyTFwCFdwcMOyXI2G5LAwTzWWHOUpywoOqnvkLXZnU+KXnYTqacz3REXbpsGLCp3BsJoRjRpA0JAEc+9HWxGO/JC0sbzVH0RrWMtYRzE34qkTWHWKXK2LvQInd6LigW89lxihlCwmu09p0IefnezThMNRMNugE/8GuhFC3CHJOMajIWxKDbQ4G24NKL1Pads8xaV+3Eqaop6QYllxbSXPN7oxTEXNv7CZYBVVOZ5tDPrxDojRuMRtOAqj7m49444GMQ4OUnCwC5PduZg0CTSY0qyNwkjXiZS7FZwGp1CF7kwaxFYxx8K8Ss5Ot33s/4oyJ4+CnEKSRxRpddkrjCXetC4mTrAP8Ka1tRVHU1h7YdLt9We0wxWz3auEIt29FuLxJOr20GMx3hmdhqyx75YjSLBHponuSyFta7yQneEWBQ88nidkb6asFg8bHvanETVUor3+ZnLNlKTb6DzGV2HSwgmZcwYG45CBo0wN6gX1oJ9sc1ga+mHLWu9wDCYPDAJPSBWEx7BbvbwxG0zd6UEf/a0+XAoMF08pmh/E1u1ChvDknvZNIREQS+mdhUDSNcnQSoLTFoNqSZ62gDQh5pH0LOpq2rmkEUl/3Pg1W3wWXdQMlLFPbE/IkTvZnQFGSWdNVw9IeqrbA8r/6otleQYBNYf0SZy1nUoneZPhzO4mDA0Ol6zMMDZSNFP5GESZoazEoJpdRFgsQ+4lSk2zjVQPZ7MEUtD6VQwZrHN+yaCS3sXiDrhZ51w038sUbYRtk2mAaA2LNIbziWdbW0hWYvH2KdjgAa4WSGxiKai4+HZRiPe2acVzPAAlooq4mOzzU7Bn1NzZlHYtCg/QDmcDmWIPdofIRUqY9t52dTTZxOqjW2p4kFMx0EuzODI34tFgNo3KNF9CLmsG26t6BGE41U7TtnXO16yvmycDALLO8QDdU2IWU2L7OsFRizDgO9PlVhjOdgMsVAgvFtiU9eJE1BorbECmi+1uewZ3NNG1xU0t+6UxeSlcgt4gllfhgaE0jpIwiExJpQGAB2eCDqexfCFefjFsScAxzG3Mag+ES8FmHBAYEvOUzlQGRLf6KJD79N01whj6FauCXa2q6/kiMkWuT1BJ38cuwHXATTO93N6ixlKuMdmf9IZi5J6ASjBJUjG4jwmjH4mhi2Stom5kW5XO0MNXwTghKtBjOyPdYAq4Vuys12ysn5pTr3TcKu6tqRnJVlz5qLfcpDnZTMdECAaRmcNtyAwnELjIXNXo4wZx4ifetKC8ch2RFp6dTfrgR/b68XjQ3WcbXcGxS1XZJMGtN5ghotajjbkCueExFdvigVNqWh63+dGgizBwRz1QHDNSPbCLMwsWCkAsElYswEI/rkSDCFEjTK5ojcAuxSCNLh2MoJ1Et/p6lFwbCkP7L+3OABUTj1VKadjD3pgODuA70iBtDWAGIcU40Q18764a7Guw+fRhAFhzA4+egjXkuqulgsfQRfUlUQWAqB2XGE6lgvshXHrBkbCpIZ+YoHBRj3pysasebfQVcxgmBpKofBPuLFskaW/oDa4ARoZh7HrZXVdLG/Zu6tlLHTA0RnuR3vVGg94aawjBG4y1mhqiketb6+M0ONl3cAjFI/FoBqfDwuqRsFTdOhAwrPd72xGMHKxjvzIQsyb97V4f1NTqNCq4D19tgjexXsM9Qtk1feKaX/JEBD2ERRgfShwBh3zqIHX9eAfHALEgDAYU8oYxll5y39MThVxVdbhxSqMeErzDKtRNwy5bdolKhbq5H3sq4qJYU0jkrgaZMFhw35Hi2UYOqSUkvivla5VzgCEtims0qOhG/TgYbU21RQfUBOLvlzgRjoatcQ+nIz3gB4CDKgZJnzeirrx8gnmrjAkKMQ+kl5DA42olihGgjtlKVpDZ0q4J8LslZnMWv/QFiVxdrilzcp+XSN71hzuI0+nYrXjBrE4gtajROZa44W1JAxluhn5ngtabUNpwd9rAQV/W8K6kgfahDH1Pgs7xgx1QsYH238nt8l4XlhcjvSt/X571qXLaFU9+igUMBawCM4Z8/0bGaRUBGg6g0/02+TR30oNQxdsN+f1Ebuw1M8G9XYo7QI2x83b0C4DSB/LHg2eCJp2GVAsrBrHwL+a7tzGqUuWzFDpdcDltvkMixIY5UjyNYFE9yaJ7iT4DzVvISxMsPfw6KZ6RVZXJ4tCuDxRgNc/x25Efwapv/ZTmbydnFsicVtdXkjoz85e0dyvmlbf4KsRvIUOIFKXuF/Xa6YS/lkwJptbFJnu3lD+eR+HocY+U/yhVgseaJ/5P2WikyUq0BbMw5Aton8nQ0F+MNS1fOI82ce29PdxFLRbPM+SLEIojL2ZOovJsA0qlfekDnBjSEc4lCazk58AFdbcn3fEOeSF48WVx6QGU6ng8xSa3v8visoM41XVtitVlInmYf2PwIeJ+Z0GrB8K0pQ0z5pcEHybufwZSdW4R3oJLFZeKBySwampTNZe+uFw8cB6juq0PsBHpvMuWeFhWU823kYSacLZIsj08gVXTzzM5GB/uV8Qjkopqeyp15fM/LqoRIIyGdQrekQ+l+PaX5lqx5dw+nXURyWQ9ng2DTbtU+lgFEbEM/53v9Zx8L+XUSTT5Lnfmu8AbUEIR6Ofm0cEARhn1bo0mIzQ9L9/U1Ff06vWAp+Mi6sxGrW4xgPs6sxWZEhUHDHFnlWu26Pp+jJRdDuclkckEt1nYduAoEuJbuOPhnuk6+5wkubXiaFLnQ0DSsoh7i+loGzFjzx26ob55j8We/JMUv7U11/AFmSbtxCcM3CHwSMQTcRPjRk0+z6DRyv1ePxvn1YwL4XWQKiTU48RrKKtf6/ZweRyiDeJ8e+4YsqBBZSOPQ27hFK/JRQUp9OOzdPeSBlXDE/BkmjNYTiuq8YkxVjEiuRUqFerJOLqluXBkOnVFNT6lB53jpAIRD8WyPJKrqg7mLk5o4O18KhWqQqATu+qch7YL5xCqU3Uj3alcxT0mctEZSNV5FWsxH9NfnK+rLrWY90udrl4WV+brqktTodg9iPuIe+eqqsMtCgOTE/cT90krqtFXdX5t+gHivllNNQdb2Iez7fkhWVW136oeUCjq8dA8QvX5uYgjhhjBi3ykhlVLJxOMpQ+bxw6gVMctGnc1Gu1GUwRun5Xy2jxC9dlWIydI6nXdPEr126E8LoJVGOJoXI+24IMyqUPEL5P5Dj4J+kCPl2c9yqPpdLR7FiqvONjnbIRemXXKWvq01Yxh3thvYGW/frBPOEKYgNasy6skbXSI1rAKY3hUzBri57X1ajmLz8ww3GlsjCg0wvxqHHwA92aNU9ym6LdoNE0xRb5VI3lOKfZtGgvlItCEodMieYdGYihltJj2OzVODZWi79ZoGipFvksjeagUe4/GBqxfhY7nhfJuYwf7gdpaU5lMxVXiqrPhlWl4Mb3NS25FPEVgQ9EV1fh0rtO8yCMvi1P5uuoyYJTX7WGjoS67+brqggGBmnv5uSJuZ+TxmXqNuSr2ua5ay7hb5motZVsTxAB/pprglDkqyBq+pBpwsEM2pib+XFXV1o76l1XdmyDhNdkP+nfQUzXxd3NoHp/OkTFY+o5qyjOumsri3+umnf6gpx9dnYzoZcHvqhbNFqsQ2P8wh1VGAPTfKzSTYfpBNNiCcL6n8MnuiEfEcfFiHNyA9KM92Ft0K6n+dij9JQbUqVPFdCrlCPaFtDxU1jagHEva8KKsoQxi25nXgSN6scxI8THyvVK8NocL8RRS0K/LoSpZNvr1MuqmL7v6iLKzXh523Wiyh7tVZCUoGvktxLycFkAj96+Lj+RQ9EL4ivjtjFedev6wFB+VMN0kcxuiSTTF7+aGCvu70WhGMv94vmejiwr+s4f4PYlK0pKbwSdkL4I9DrmOXQ6CHnQplfnJ3ADBzmg26AVQ+dTkG2Ra8n+asepkpGPxQUN+K2tiVUBCnHUQHzXE/5AqxURhJM4g8vO6PpeH+qqUf5XIhg6ToCG+LsUPMpyNMyIw/zXD1DFTPkqKb0vxwwzPT2MjxK743zIsnle4H2U4C8sOymJWY/ENKf9X1kaBTpr3+ZYU/1viyHfgk8vD4r8obAua14twWfx3SJhPkme5V3uLFD/hNMyBm7k3SfEPGLsXIZG6eaqObWFGibg3GeK5xgABHIxrrx+d5r6fNsSrDB5WB2mI9qR4XZKasjApuMo49d+vR6yGO3kPat7AcsBA4j20zHbHTO5ThvhN4zRnioJ9nJ17AR26xY+leFkObanvlRbFyzWyouaI+7jpJEo+Z/qRFK/Q7VZ3E9G3CYIxpAkvIF6pW5zheDZNk6uvNMQbdQPtgNP+GKviTRpTG8E8lY5/iAQLLtfWGR/ALZ4iyWJ6v6H7NqJpt0cTepWBo6XC2XskCfAsf1VjPOyo8Kr7jWg4U47uDYb8NSRhYdA4RNjD2W6VlB9PsUWK/6kWERoqoJw0vM0Qz8EJFR4T8jjEgNoEntTlr4aG0DYYO5rVVHOZxK+8kT0k7mmdnncGUnW2Ik7UJNrU9w0XnIlV3e0YVu/Adid8TwwzvHweo7rVd/uYT72PAl2uQKFrqrkxJdPGyj6FFYwO98rXVRd3A1qa+87uQeJBB3Gq6wkoD4rK78fYpx98JlZ1P4lUYw+JMf4wDeOJR4lHHUCpjk9TQghwlAIuhueSj55HqX4wYxyvWQkxzg/iJvGYeYzqtoGFAW9Kaa5YfFrKx+bqqsemegOAbABBmbg6q6r2HuVEcc7gi/dRUlFt4y1a/A0cKXDgZf1CjfEZSNUZS4n5GlWhHynoIJdUVYc9Nc8yNKJsJnkevU/TwPAFn5HyBRJSZbslC0HbXTLmbSn7YiEUb4bDocAz2B2NpriWJYW/RffDWTJGavs2ZLPUiCEJLsbdFQEg+D7dEUqEDjc5lwp5izauQjczHLgHkQ9J3MMhW0YhwCQaVvrkkOgC9cOaSuoNvihxUdjVdydfkuIPEl8apEmxOmunjfiAplGCxoZ4FrkBVNkrf0KKP+TU1ODAZexHJGSjG2j3mYJw0gFc/lHSlknXISliJtThoxJHjzN6mNmV58el+GPuAMPhBP4J8Rcsiy42qkkwG5McdUqZwlsTOxIrgNz311U0ZIEmhoTcSB818dcZgVhT+CkEviFPRfvhpL+9Dcl+3MAFxd4I4YRNHtDbmSCBBHn/rSROySGTgZajrdEEYQdyEjTBE/I/6lRkHTtOjGBS/ic5hbrrCJlJ8gj6xX+GQsDojov0JdYwGMXuNoLPRMIFMBj5ZWxY8VTHzzCp5xvR7kbUYwKfNMRdBtInO42o11dvN/3EEC81YBTQM2kZ7GlL+jHOSEbc3x0PEDwnby943WE0oOm+wdiZ7nK67PkF8V6Dsho+fJB4QUG8z+huYpKck6h3N6IBJv5+Y4+6AMOD/koBUUuCseCHZruYD0VQY6QqxYeMNlSY7Zi4F4XPGKOKkeUu8V4f0UcyuJnC+YsWX6FBWFOZCq7a1LW18MxWYKPErdgqfVVL+E6C1PczuU3OWNiCdtUhm07dMApSdIbIvzXYndBVke4dYLXieg64IPeIwpb6saseU/UFNW5Fr6y5HRxXSyQ6hIZ0dwLrY3sEaDRmtDlDBhHu/sbCwD3mdNKHv/lH8DnfaKNlH6RgkZB9dg/Z1hInHaBbjsZPQONAq40mIkLRUrUfDXpgAqSyPqRF3LzlEsXIHwujNPdAL9rCTE4I447R7kY/qur36JpdbNG429zMP95MH7zTEMX8tWfJOns/UWw7gVOukzYFXWXzr18AlvTqAq6vK7gmDvgHRzpgAyp3mjXbd8IO3YTj+vEkbIIbCnMjZBlvCCCZAiZPcny+cWDWFZr1krqcG6p5IZ6BV+sO2skTBeg2S0SuiCLS2tnjDj1bmpKPfIEhFvIzXxxP6FIFa5NpxeJFhliaG57xWCIUAygYa4Tchqogi8xXh6p24sBEQxqTXnLhrzhYhChk8ooJxIUr2qZld+i9DyDmn/YO8AbjhTkNt3V1Rcq+9hv0EpTG3mVIw8mh54mAxpR4eqkhyKFCVD+jc0g9oQ234eESnD+2FuA3pF/wUT97I9VSYy+Mm2/1ia3+clbw+zcoJU27Y1dgFur22TDD0LRqdgUWgi70aXDQUT9eRM2FIGxZa2gzw1YeX1SDzcfXorDus+hE6LealhnaACX/gkrd4Zt77YbS+Hn+JQIFt7HJwHIYpSPppjK1wjrXSB2I69K4Wolm0bT0S1gisOknY9Rv6GT6pZ840OIoMLIT2HXbUt2KymkCKoFVkpT2XPnBkE1ARDOa0IYE08ZtugLA+hQWCa8EUE8x/xwxiWUz1ig9m/wzffTgabwG66e/yTSLinqM45YsxTw0Eu+MQytWTqhy8VgDi0hIbgGJ1XLwWCeOhic9O7B8hz+KEpZHCpL6WyHDCuhNk8Jxs22mfYq1sEFLpHQ8YHkurEKrtVsIteidDGuMXFqlNzCWA0YfCtYdfgVjZc2lLwEBHfZbAWGOOOTUER3aueMOfFadrEgmjRUYQ9JoYEXHCD3g9EzEXDKgLXoVERBWhBIgLwiXknfQwVgjMX3ltWgxGiGcQh2xAREWRnEAEAYFahuzAfwNy/oeeLc+ggEEPSTUerSH/bskCgOEQM0ZAokJakVFaai2AaKEPD09/R6s2rM8bfSSsLc7wC6IeEEU5lE0Z6zQ98PvlzNmRNH1K7bPi0u0mllFOk149hCQ0XQ7dfWNW6GesMH7P0tc6GeSPjKlkmCMyhwjQNT5Sy+Byxb8lfPNmk84pYb6wQJ0EfaJFM5eZKSeSehqFPvk4SXEgYc/DBGrhlh8xJDz7/ekz9vc11joZ3RCoJGJgoRT1FzKCYpLG3IZpwL8aJgFpsWzxKUlnBd06inLbS2kvJhMUhjnZ91oD4bxYFIZLkRX4Qkjw+S5mEvcFbM+2YA5Ls6aAKOX/yg5hHYmU6d36RKMSuctUSyHMOgsx4vlM48ph7IBsbEgh5TLHq4ofqvI8FA7brMOw+gnXdUhPZ8dwSEfnq2t4yIWydF5XJsWoHheQZy3m4tRf4BLsFTAWM44kydJO6Mw1N4Qx8ncmwrZO1Zw+1qjFeSlNmHxpTX7ZPLiEJbKWhNOvcNfsbv1Or+4Kk+U3RMd7JOADS+4DkUBLiq0ah2PvwUurmV2wrEjOc5YlCRUzFg91sdgvzUwrW42DUN9qcDvJWHyhg0noU4bxmHdFE82WwwZ0/4UYTbYnyafzaiG4mnOqMMGdpI03kJEhEIMhPbFtL+zCw9e68b0nuHSFlQKE8jjlseT0R5OD3S8PYSkBTZPXOtDdaivYD45eR6G2HUSzqD7nInTA1bWMS2YQ5rvM5ZmzKNMmCf3mgxRmCdZPCufpbPwuTDfc13P/+BEE2kstcEOHT/hTDa7w71uTCe85OrpqYgTcMIfaLZhvgbXKxGZN59W1EOrSklF/g0kIqVOHY8QUrUz0fpos8vzuU0YOXQAL8W2S5+qPPUgRWuAlKCQBmoI+8dsyHg+4OXiJYYr+TiB/jrxkK4jI4SqYGPYzdUKFpLfowekR5A7o2k8Hk111YgRDmo4WQzpw0pvpZGq6V4/iwA0qlaik7lQ3VbUj5WxiseIbqdOj9JMJcg6hg/FAQ6bHWRpbMCXBps4ylGYhuH06LH4IiLeMPU06YaCZVh1/XW9Zn0bJxY+lsqQ7k+xc3p4egOHpeQdwMURXCIP9iXss8PodFrBndwBHivEYwFQMhtgMJd+XFM9nWEzOn1gCphUL2Xuy3QQSSJvzqJTyoKoLjoZepq+oFiKqcajyIPDJuwFc3TAXZzQyaGL/DKj+JoBEc8JwGO8KNCn5w7iaBabWXZ9BSKobTScUFWM+UfXon3O+MG1jpkKqNOVyTYEQBfG8Eu7UUzeAJVCQDPBCZje5MIaiefYk4NuPE00pKiLr0ADZ6IDkMF19NcR7OTJF2EjsPyUfmFjXmmJ3TiIo27HWjJi7p+ulEIyNfW2JMzizKGJo7MwGqQcaaKaiVh8E3HIHJO8gJGbzlwBshgJtSrJUpGE0SzgoVReuMYx5CLacJ5RLzPjQKe8LwQO7wTHE6q60aZAJDv2INnBmzkSlcgSYJXhkRa8MojRQMZlBzIjujM4MPR+iXSCumQs9sl5qpCgRB6RPednYNK7GD8SnzXEYpy4MyTelkYbGGgP/ItFudyL4K2jpqJ5CAsCa4TdWyw+Z8gVJbrEpcXi8wZ98TfvgGLxBUMewVATcLsijrIukj41tRqwMM6bw3tncUJ4/IRA3KW7JOQrJDH4lQvGqGXGEItvGfLCzZz0v22Ii/bm5PwdQ1wM170+wfkKsruEvsKtIlQKoEUYhxSX5tZlsr5j8VVDXhZAEjh1dMc7t8wiTg7FOnBpaq/ei8ZYJjBaQuhH05ENuTGAoPkUo80ZirR4C/IjNV90UrpTW24Im8QlCq6JDdif14VESeFyCrwf7XaRZxluN2LQMSA6bPTAc7UwBUTCXxRFDFSmo1DqsjVFOWdQ0DDaypNRt7cJrdDCzzdvzrP5fawhHkL8A9b3OCEsfoAAO5G9cRUpE95obiAD2mKgMMxkJL4vZRGT08Yei+/ifMvSEs+UC5SM6g60QS52Nym7KopiKaakZZCmApaTekjDPkEcSuoWssNgj9FPEiv8ljtYKInDDGpdIJjlKpKa5DBB8Kga2OvuDyAVIM6L5yyAMod/b8jzcxNJlf09Q1ywBUptlbnAfC9k6g60CJPBCt93Z9O434vs4eYAiwmxNrkVaPci7uhBhHACJ8TF/djC+QCmOoA3GrSGvVGAFPgp8SNDXsooP8qhLttIVBiLHxrycqxf5SqC6BmzCGatj7GL4goep4ydeXMn4Bf4q2BYTf1KbrOz1/S/J8W9xiMk1pEiN9kGcKYWV1X6W1vWzowC4eWcGOBGpNppFuj0y9+LNNEMPcNLceDEcysqWCuwpGpOzA4AksekFzaJemzy+10QUrgDcRAKQywi5OiTPKHcWh8uY7K5s48h5NL4TNwysZqo0igOwU3CLFrV0oSxgVs9o1j8GLsCVcs0DPUq+sndActESP0rZJUOCv6NQ5H2qJAVGMYuwTUV88pJ0siP/xPWUHJIot6MRAIAyUjbbIKWqNZdM0RJHyw5/FtKhll3+JetC8mTfhSPBsijZxQKP5tC8qA5VEkTCOOn5E5XhLEFcekaIgPkALqxeBuClIQIjYo9fI974Iwne0AwG89GdnxykLc7C6JAmSS6OBF1/cmOMH2kGes2IEk/kqoydkbTbKMomPrrwGKNfqSiVDuGvwu1a/F3sXYd/i7V6Icplms34O+hWpL4XKnZJvIcgA5XXVd9unjErFR89aOCR6nPeTXCnu/5RP4C/kntW1roi9qFnA++qEV/L27YzRbKS+r0Sz2XVgh3WSXE38srFGtdUXVWW0zjSkCW6ekJ3KuhcjBXVZw2intTXv4+Nn2KdF8ow2Vl3C9omPxJ2v2JqwcgiUJ0HngL/jyoUqWnH2yWy8TmQ3R27qE+jfwwnybwcJ3tfwT98CLKR9Jvg6N8VJt/DOnRgfpF8Mesqd9oUj+zdXXAArqGJnOMENfS5K7TP0h0fZl/j+iGcoU0c2PgsRndxCzcvM7F4zzHCtWEHx+4LZ9/evEJToPm80RE9DTDJ9XNMv8+7pOdpsc//PiUcisMWS6mSrECKhP/Og9luV6YKK8CWMnQptS06ds0y6rbChWtVRzYV7Umaw30Ibbo53DrFfUx7vG6vapS2Wv005Y+3cwJPzG3lBOJHLe1hrQAYIO+9tO/bl5AupKEUSTNQyU0o1IC555ZSHC+WXGI9GLK+FLCYplVsZz0OISMKjISCrsS2KZv1RSxw/kMNf1cvDLfo4HnNFOOz1MZC0DnhyYp7wIU0BHL+kISliJ2UejbNnEG+GIcDMquwl9Cs0R5KUldoS6jSaC8nErF1xXMbaKNKzEEdQd4LyKL8ioqNal7mx6l/5Kvne+TLeb7zi2p+2Ur4/5azg9Ayr3VwI2UXqoPrNDvcuF0w70eVIGdaPjBFYd+Fd7l3559SCX7qf+H2g2vBhdBpvCwqs2Hn4djGSr7fASsANdd9Etoj0ym8ygaTrnCRyujfQxueWxwzSM9Vk/1aiq1BK+BjyeZH0ts7dqmyiNd11Rzu540xxlxVG6AQ8l//32jzz9LfhOKhIebARMbTOxxQeINHo8VCvtQGfcnYJ3iRJxUn0haoLGeBBaIqSfrRf+UEN5e6Q3G4+JehUYol036kXRAFtTv1W2Sl/rp3gqlxVBzmlWySFsv2ap2V6vwu/QFtGK+5turCnKUsQI6biKjRjyt1V1iuw7fcUuLDaOhLoUAgX6Dx3e5d8UxVWcvhW4JsEvHCMz/36PFuwrnosV/jtFiMCaNN1MBiHPfdZ77rlOh70nQOX5w+6fYQPu/pO864b7OfdepuPxaMiWYWheHpLvPfdepvsjMPss4911nvhV787nvOhnnIQzgvue+6+QrvnPfdS6e+65TddyicZPPM8Vnz33Xidasy6twE3Xuu04kmfNCOfddJxrUWxjnvutMLiIDut5LG16UNZRBbDvzOnBEL5YZKT5Gvvfcd530Fov4ZG6As77Wdu67zu657zrFue86sSGe+65z6EKMbL/nvus8913nJudSIe9z33WiAwyH8+3nvuskk/pn+V3n/wEYEgAAlVgHdJZF1p73neRLIIUSeg1NQpWygsA38+KCCgtKU6S6BohYIBTpJYQSqiAuIr0JCKxIV6oYMEgVAVmKiPQOAkoREPd/nvsm4Tvn33P2LOeEe7+578zcueW5d8ZxXKVV9E9XVhyNihnrpI7G3/HYVxrUadqjdq1utZJ71mzwQo3Xuvfu1K5XYxWn8jUbnze/KqrCwhylXBXmhDfs0blv96TkPirgRA5TSuVQuVVepRwlC6tSKswNb57YNSm++pMvoknwTwg/jyNXY/DZM2ey/jiQy+nPhVxZqDQXapzcJ6l3cmK3+GbJ3QbGN0hM7pf4ngqo/33ZSQ4UbLvWcmkHOsaEN397QFK3+Gfiu/fo/G7fnvE9kuMT4/v36NElKTm+U2Lv3knd1FzHbZN/JBaIx6kShqVOHakqtEzsltQ/caBqmdS1b7fE3irzd8se3ROTq2QNVnT+++Jho5U6PUqp1HDXUSNrvV7EHa2ar9LvlA0MD8OeqREjIA9XgaIwyKhiT7/kjlJvtNMjXZUaIi4aKKUCpWAxWUErihQmpezpZ5XjuCNUqg2VOIEhe/pthacgUStCJW4g5W/RrnK0i58tQyU6kNJwQmXlhEFS/3KoJCwwtPKYAsoJh27xcaGS8MDQTSXClROAJL1mqCQQSMm5vJg/5/SgUElE5pwISFJnhUoiAymVxxxRTqSbpiZHhkpyBFKOLaymnByQzK8aKskZSBlboLByckKS3iJUEhVIqdghl3KiIFn1XqgkOpDybTxWi6ZkRqgkJpCSfKketU5T1baFSmIztaZuqQdDJbkydYuBZPL9UEnuQMrDlIpcbbTqGRsqyZO5Wiwk0wuESvIGUmzOgv6cyIRQSVzmnFyQNHo6VJIvkDL+ufnUbbRKbxQqyZ+pGyW72odKCmRKckNyIDlUUjAzqjQkG0aESgplRkgMJEiSEEnhkJMmLA2VFMnUOo8r0Z01XDTT0LEM0GCopFimAfIiDFMrhEqKB4a+362rL6k/MlRSIlPCoE4/FiopmalyGIOtdqgk3g/qyBw5HCczubOTXbnDMEvnyxiyel9c79r5M45WOej0PPGq02TAW2EqfH5ARTtMRqylVIwTOwyYqYY5qY4z3FEjkOZIZUelOc5oxxnjqLGOGueoxZixx6mu9jr6O0ftxyeumuY6ASciC+aisqDCx7uxTvoggTzMrxQjuFdk2KHnCxZ3S6iS6ikH6w25l1BsSNjDmkP27dvHLzX/A3Y7qrya5qhi6qyjYp3CwzFaVJVTlVVVN81VKhC3CRDwyfNfGgiUS2by9mc896NCGZaMPr/4hDDzi9y0iReqefrZcY5XI7KyV3ddpDdiahlPB0/l8tp3Kep9fz/Ou/pUHk93zl3IcytFeKR52jywMsB13nsrj1cusM3qGDfKG3jlU7u735+20piPrR505aL9uexoqyvtFOpePFD6CQPNfNVAlXI49Mq5xdbdu2CHMPpQ6RPCxLjX7B/LVlvd6MxDu6jnV3bbHsd7udMBq38uG/AetDqHNQO+TmTm3oyAPo5HvfSP++/bRmeKeFRl/HPxngYAYdFyXscPtgsVVUKYxVZ1VM7MGTNELZfMX98I99zpyXltNgOJLwKF6uRWvljKk6FGZ+r6H2Uz2SIyahbqV63XN/mrlj0x0P7w0ifWLRcYbr+eN9O6G0uk+SOf3T7kb1jr9Yc+c+fxR/bTWaOsjGBfJd+AKpkVPNXMX6f+M69bWVlGUt/ZImq6k7f3DYIqd2yBtv46HJGVs/RRV1FUoamNOlpmi+YSZOqua2Tb1vlLUDefWNAiBMz73S6ZCh0+MLr/1nmm6NMnzdsfdjezM+ItBkqaz263tKR0tAyUTPvMftVnihmVvsfqsQWOm8uPrthv7ibY1Hf+sPqvbyTZ/CsivLEFZgjVcSPTham65qT/Rfsuj+yRAVfEy70M1pg0LdbjoqS3lmAXMh0/GCED/7gxxB/A6Wx461jv8bJe1l354hlDRpdMu2aut3jWvtwpt/24QZTViHpE7FZjc75mm9YeZ5AKwy0GzcHSs4Tqod4XwmxuvA9TJhgddfSchZbmtdgbGIhiyIZju7uc63iXHy0zuar8amFmo7EvDrElSL0/nZVRT7/w5VoxapaVlUMDjr72IT31hyWj6d/5RVbahhOu240ldlidVO+UZTY0rb3bwvhWVmlb547lKqT6pwcpwhy438r/gvbllNPNYrgx7XzBTJq2wmZtp9YjEOlAidOI4fn9gCXzeNlto8ls27PAQEnsC7vkqlIDoZxobi15QShc2VaYkmnvYkovo9f/NtQiAM3eBWkyxV367QRs3jCo/xY9wvbIO7IeUJx0k172bRNIMjbvbFJbqC5fPVIYm/OoqRG5PIjImWcw15AiWY1Lhiqij5qLMMUGYkCNj4RBePBwQf3eWx8aJAQ1N+iFrLsjfpWpdrKs1bAM4vyCQb7buTeXGGBYG3vn8Svm75vGCdW/t1oozM4m623zidMMFN1LvUyLiUdxphxWnH/1qerY8hzSMskf4EE75z5mW26YazXjJFeVNfbfhzfYf9zYQtMvtgnVd9nv9r0vVD9KeUeYX4Z4Amj67KB8ttSqNfaFL38zSfXmMV4TfaaXySlI7b675c4TZu+Ccp67u5/1GcZg3XVYl+eCAbFRU9tqw89Wv7uljyX0JV6YLBROXCPMd/v2icJ67s1LONduu7PJfYk5PXyq9iKGT7WkXd980x9AGtuFz9/DOgcMjnMB2zUy3PL84llB3XDCcpijzJYsl6j58M/MGW09oI1yE6o3esIQwzSZEVO/sbMz6nszZxy3Ok+bOt7aOTftqPSKQlGfigqzdk4u7/NiP9LI2oMb7PrfHtuLBz6xLhksqlwGOajPyPJkWOl4Rlke6Y2VbmK/+UI1QlCYwmGtgbpYnoZj3SFcMwQEt7HoE5QXhhjpbm4cDcdnMuGt91s9OF9V+/aHN+zhlzoBSv60muFACEMgC9Wnm30nzLY9hIM/rKYxiWksaYKLt5YEPOb7V33iPJ4NMBjvcQrLM6m+lxAUJupoA48+QWg28X568CegrLkYS6d4r3qzM07Dl695HzfYazV9gAoLK7T17iXMtjiE7xR1Gx7qnHu6uEt/saufMHsXPA8QAdAz9wn0qK0+0FddMycb6BkLyM6SQJEWAvSsJTKw8sUFsEN3U+bERitTWJ8QLebVcxfQBIwpYFmkiR9IS9bm/mKUvlOmCxWgJUNryReYK1MYnLLGp7PCPC76rwE5PNmFAM9tSUUPMlSMX0AnfwpV5xpyFi7Ew3EXOS235fGz7OFD8keFsBoZJhPRCTFpNZsEZJgpePxlyxOiJxmEQGtqOJlUM43JMDsIWZqJyKpXI/I6phRntD+Q0kwKnPIHGNT8on2XzVamHLj/A7JsF4LqrJVFjy28hZSdLlS2JUM9GFRIkDKWliFGoZz7qrORIOVZ1CK4/PNiM+WI/7+2951SSKxCiCSAwqHzgECnxOXb9pTyPczyQppd2xnhrO0SbjTMo5SrgNbyAD5EefF2XcShyB2hKFNbhWHfKFF+vcXvlmW0R17tBU99b93i7c7DKDukUUDcHif42monz1t9bOEqOfJ/tMHFA7ASnXPn8WHxlgAvz17t5CKxgahMhqanlVpuKOGbDXghgzyx7n5psLiPQUmqUc6FYbihwBnNUs7SUDjsiHQBmh5iW9H1zYuMQ54hzCOS69kZCu3oEkMtWVX0+OdOI/+3BP++aTcP9qQdyHKM6q8cnhYpqlxWzbrrxvpoNPDKUz4DiY9GoD7DqiiibAbl2LrcbGMJANXvrbQnDD6GLeZYl/iF2crN2ksdwoWB6XEvoYN1yfATl91DNrO691sWSBYjPQUaIv/0QCGxD7OPFI6bIQxDAxXB6F+GfG0H51thiJXAKUMvwLWFxa3EHNFCtiHMZzO0HBykgWUTRB0ErdEDrwSQ8YloInMgrzsalwwOoEQCZN/Eo5KimGswejPvC6SSaPhSocHBfklBFOKrYC4E2ZGijzDuN3cvw3i3jWa9Z+jnabMRkowgStIs8RBNSwqAKy4M5pu4kfWNptUQfoKYNKNKC1MOWy5+BcNNFAb7+guyieAO9BcsYsRxnxdrt5VuMtkMDy4VPptBmvGyVcnuiL+FS80baCP+bfWo9PGSWt/cXSoUwJchDHONFtClV/1qmW/8QYsjknPilnQQCRTrXW+xgW1lHEBzHtqQOARMmj/AJqVGZDRt7KMpbGuG5PuFSgc1MYfHyjonw3eR+B/5uUkY9kMSCOzoGQi0NhMGheeeZeuzuOdjgFZdiz7RpXMF/UUBMrwXsWhiKmvcXfvsuG3S5ModkBgBnMJRdwJ40PlO3v6FwAKrPakGPgnDBbGt1bC6ZbLyppJj+U8E4DpAsR8wv7ysI7Wq+6XN0g/wZOIbfiUYgxqNOm9ZwI2Go6iZATb4pwR6yrGz7KDmIbUYijCgQmCfkxAURtoVMmxXiCc8DNqjXcwT+zDln0J14bCPhSEeINosWoEOKEcn0DsaSzgiFEO9jaLv/96/EN5ZRJABElPok7tadhZsi6XVYFAwltgWkyKa/YaG5pMvWLs4hf6hrmi6/oQLTtsVLzpI4L1WspHNCKk0I2SgmVJz8X7E2kNM0GSIKUz2tXN6WI05ppcZL6jz/f0p7Izq4447F2HAu+5cq2lGMoRq3tqkzLBMVOzwvdyoXDKrey+1mgwtxjJb/5mfedQlaNZ/hQdGCQU4dRTmLzVrYsErkiVShFFVpaHhZRt3nmuMoxuGocu7FvDFQ+fZXqySf8UYoZpXADIRw/+FBX9j//2r5C8prwUuGQE6MgQ6GpBnl9KIXDC0KpQyLhlYSyFcH2C/kZv4KfbdDCi5Tedt5nOODFBffsEgAeAEYaLDAJsbwbODDiOXgsZlewGENsiw7ah8JREbi/1PWXGYyWyOSSXkyRAXpVdANBi6idoB1oz4DPVaBulE5bC9x93XaN4tUOkFBBhw4gF+Q4pVfd8QVHF9/AohlIL3ns+ovEVPMh3d4mjUiDSh4nkyjG6JjbrrdkkbSir1nAwefwgPaNz2GbT6GtvNkOcJ5L1BXFqL4oVq/aZQXNfeFwaXXd/wP+5fD80WmqwzqM9xUz5Yup5fmTY3buoz/7ydV8IXmezHsRtEA8My6FJxDCjc1fr4DB4jgjILL0wwNRjiNSuFS5yRfCh4fBIwCiLAic9wQXYIEiUysrp3JIARDPskmTUqPacn62RpqH5E2YFlpSIDXcoYAgk/YdehCx7fbwBc0v4QVYEurSVGw1tPEqrXzlkpDD9neKONOw8LXZcIlgwgI70Gn/yyGQljMgzjhhOi/Xo9OB879ETDR0QJYzIwiQJkRKNnb7gZzRhqCqKWhoTjN7Ge0WCaPTuCJ0hKKHXJ8ABI20sywrCCr1hNV4Mps4UIQYp2sacwz457Dk5pGEQZiEOCRSFqzxiUBJajOfKDYUEIxP5lpMMlpfGUw4PyiUJOTLfgrnudfQ86+ZMSwrSn3LXpRmqljwxYZllubM5pQvEoNFwYlmr5grDNKdjHXwNqWUelY41HMNxyy2cjJNQMCT9qIgN814M1cJOpLfcc1L/cgKgK9gGuaZqNFD1wZMDb1q00xuBGOVpMxMaFFE9CS4UhiMO8nLJD4mJ68iEA0hr2/Keg9lGzuvdlAGKYhVVvo0IWE89zW2lpuA5U36JZHshQMWBJEDsk4KrTFreBKHGTtCtwtV99QH1GIoY5nM0wqgD0tSz7CvaZrB4oMhMlEFmBSdHj7BGGdYVdjAQIn3hZglhH8bwXJU/DfDjgOaWDaYlXGVKxJJnEC82hXyx6nZKC7wjMk4Zvd7SGBs7BghGGLwOCd6zOPGfWwZXD3oKmhM5fClMXNzWp/rhM0BZiQqSZQTtyVxoGXoikg2BLw1AgFY3IcEEehEUciXEdEHfI8q0ajmcEbZMIYktBql/uNFkYPnZKSLELYT0jusHyEssSUrQuA1fMTAtLb/P1vCIIlvLUwe9+UB9Q3Fr6YYCEkLhAofMDBekip6SWpGoJEJEvsNQUmDsWmH0NcNTB9p1yjG9K5fFY+63sDbzz94bzfe+D+gzBymUcZzP0Ly5cFeSJig+yrIGaL7vVToZJ0/DKuXAPybAA6wfQxC4SirhbKgxV4hcuGeqm1P8B(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:08:41', '2022-07-25 07:14:15', NULL);
INSERT INTO `model_additions` (`id`, `additable_type`, `additable_id`, `lang_id`, `title`, `content`, `excerpt`, `thumbnail`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(155, 'App\\Models\\ModuleItem', 34, 3, 'Pixel 5 mockup on a wooden barrel 9', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjE1MzEwMjY2OTMsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:09:04', '2022-07-25 07:14:25', NULL),
(156, 'App\\Models\\ModuleItem', 35, 3, 'Pixel 5 mockup on a wooden barrel 10', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjE3NzUwMjIwNzMsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:09:22', '2022-07-25 07:14:33', NULL);
INSERT INTO `model_additions` (`id`, `additable_type`, `additable_id`, `lang_id`, `title`, `content`, `excerpt`, `thumbnail`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(157, 'App\\Models\\ModuleItem', 36, 3, 'Pixel 5 mockup on a wooden barrel 11', '<span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiVEM5TG83Nmw2bnAzQ0YyV21yYlpxSSIsInBhc3RlSUQiOjI4MzYwMzc1NSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space:pre-wrap;\">Pixel 5 mockup on a wooden barrel</span>', 'Pixel 5 mockup on a wooden barrel', NULL, 1, 1, '2022-07-25 07:09:40', '2022-07-25 07:14:42', NULL),
(158, 'App\\Models\\Page', 88, 3, 'Cabinet', NULL, 'Cabinet', NULL, 1, NULL, '2022-07-26 06:56:06', '2022-07-26 06:56:06', NULL),
(159, 'App\\Models\\ModuleItem', 37, 3, 'artemka.relit', NULL, NULL, NULL, NULL, NULL, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(160, 'App\\Models\\ModuleItem', 38, 3, 'artemka.relit', NULL, NULL, NULL, NULL, NULL, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(161, 'App\\Models\\ModuleItem', 39, 3, 'sergey', NULL, NULL, NULL, NULL, NULL, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `model_item_taxonomy_items`
--

CREATE TABLE `model_item_taxonomy_items` (
  `taxonomy_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_item_taxonomy_items`
--

INSERT INTO `model_item_taxonomy_items` (`taxonomy_item_id`, `module_item_id`, `created_at`, `updated_at`) VALUES
(25, 6, NULL, NULL),
(25, 10, NULL, NULL),
(26, 23, NULL, NULL),
(26, 24, NULL, NULL),
(3, 26, NULL, NULL),
(5, 26, NULL, NULL),
(13, 26, NULL, NULL),
(19, 26, NULL, NULL),
(20, 26, NULL, NULL),
(22, 26, NULL, NULL),
(23, 26, NULL, NULL),
(1, 27, NULL, NULL),
(6, 27, NULL, NULL),
(20, 27, NULL, NULL),
(23, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `modules`
--

INSERT INTO `modules` (`id`, `name`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'mockups', 1, 1, '2022-02-22 11:50:51', '2022-07-25 06:14:50', '2022-07-25 09:57:50'),
(22, 'plans', 1, NULL, '2022-02-23 08:31:18', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(23, 'plan', 1, NULL, '2022-02-23 10:39:46', '2022-02-23 10:39:46', NULL),
(24, 'clients', 1, NULL, '2022-07-25 06:01:48', '2022-07-25 06:01:48', NULL),
(25, 'mockups', 1, NULL, '2022-07-25 06:14:09', '2022-07-25 06:14:09', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_attributes`
--

CREATE TABLE `module_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `attributable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attributable_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_attributes`
--

INSERT INTO `module_attributes` (`id`, `type`, `key`, `name`, `attributable_id`, `attributable_type`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(61, '1', 'title', 'Название мокапа', 21, 'App\\Models\\Module', 1, NULL, '2022-02-22 11:50:51', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(62, '1', 'desc', 'Описание мокапа', 21, 'App\\Models\\Module', 1, NULL, '2022-02-22 11:50:51', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(63, '0', 'image', 'Изображение мокапа', 21, 'App\\Models\\Module', 1, NULL, '2022-02-22 11:50:51', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(64, '1', 'title', 'Название плана', 22, 'App\\Models\\Module', 1, NULL, '2022-02-23 08:32:52', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(65, '1', 'price', 'Стоимость', 22, 'App\\Models\\Module', 1, NULL, '2022-02-23 08:32:52', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(66, '1', 'name', 'Параметр', 1, 'App\\Models\\ModuleRepeater', 1, NULL, '2022-02-23 08:33:54', '2022-02-23 08:33:54', NULL),
(67, '1', 'value', 'Значение параметра', 1, 'App\\Models\\ModuleRepeater', 1, NULL, '2022-02-23 08:33:54', '2022-02-23 08:33:54', NULL),
(68, '1', 'name', 'Название плана', 23, 'App\\Models\\Module', 1, 1, '2022-02-23 10:39:46', '2022-02-23 11:31:20', NULL),
(69, '1', 'price', 'Стоимость', 23, 'App\\Models\\Module', 1, NULL, '2022-02-23 10:39:46', '2022-02-23 10:39:46', NULL),
(70, '1', 'name', 'Параметр', 2, 'App\\Models\\ModuleRepeater', 1, NULL, '2022-02-23 10:40:24', '2022-02-23 10:40:24', NULL),
(71, '1', 'value', 'Значение параметра', 2, 'App\\Models\\ModuleRepeater', 1, NULL, '2022-02-23 10:40:24', '2022-02-23 10:40:24', NULL),
(72, '1', 'name', 'Имя клиента', 24, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:01:48', '2022-07-25 06:01:48', NULL),
(73, '1', 'email', 'e-mail', 24, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:01:48', '2022-07-25 06:01:48', NULL),
(74, '1', 'password', 'Пароль', 24, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:01:48', '2022-07-25 06:01:48', NULL),
(75, '1', 'title', 'Название мокапа', 25, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:14:09', '2022-07-25 06:14:09', NULL),
(76, '2', 'subtitle', 'Описание мокапа', 25, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:14:09', '2022-07-25 06:14:09', NULL),
(77, '0', 'image', 'Изображение мокапа', 25, 'App\\Models\\Module', 1, NULL, '2022-07-25 06:14:09', '2022-07-25 06:14:09', NULL),
(78, '1', 'price', 'Цена', 25, 'App\\Models\\Module', 1, NULL, '2022-07-25 07:42:28', '2022-07-25 07:42:28', NULL),
(79, '1', 'free', 'Free (y/n)', 25, 'App\\Models\\Module', 1, NULL, '2022-07-25 07:42:28', '2022-07-25 07:42:28', NULL),
(80, '1', 'in-folder', 'папка входного файла', 25, 'App\\Models\\Module', 1, NULL, '2022-07-26 09:28:56', '2022-07-26 09:28:56', NULL),
(81, '1', 'out-folder', 'папка выходного файла', 25, 'App\\Models\\Module', 1, NULL, '2022-07-26 09:48:20', '2022-07-26 09:48:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_items`
--

CREATE TABLE `module_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_items`
--

INSERT INTO `module_items` (`id`, `module_id`, `excerpt`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, NULL, 1, NULL, '2022-02-22 15:00:05', '2022-07-25 06:14:49', '2022-07-25 09:57:38'),
(2, 21, NULL, 1, NULL, '2022-02-22 15:20:10', '2022-07-25 06:14:50', '2022-07-25 09:57:42'),
(3, 21, NULL, 1, NULL, '2022-02-22 15:20:26', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(4, 21, NULL, 1, NULL, '2022-02-22 15:20:44', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(5, 21, NULL, 1, NULL, '2022-02-22 15:21:27', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(6, 21, NULL, 1, NULL, '2022-02-22 15:40:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(7, 21, NULL, 1, NULL, '2022-02-22 15:53:58', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(8, 21, NULL, 1, NULL, '2022-02-22 15:54:14', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(9, 21, NULL, 1, NULL, '2022-02-22 15:54:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(10, 21, NULL, 1, NULL, '2022-02-22 15:55:05', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(11, 21, NULL, 1, NULL, '2022-02-22 15:55:23', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(12, 21, NULL, 1, NULL, '2022-02-22 15:55:39', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(13, 22, NULL, 1, NULL, '2022-02-23 08:41:25', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(14, 22, NULL, 1, NULL, '2022-02-23 08:41:40', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(15, 22, NULL, 1, NULL, '2022-02-23 08:42:52', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(16, 22, NULL, 1, NULL, '2022-02-23 08:42:56', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(17, 22, NULL, 1, NULL, '2022-02-23 08:43:24', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(18, 22, NULL, 1, NULL, '2022-02-23 08:43:57', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(19, 22, NULL, 1, NULL, '2022-02-23 08:44:07', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(20, 22, NULL, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(21, 22, NULL, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(22, 22, NULL, 1, NULL, '2022-02-23 08:45:13', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(23, 23, NULL, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(24, 23, NULL, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(25, 23, NULL, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(26, 25, NULL, 1, NULL, '2022-07-25 06:15:28', '2022-07-25 06:15:28', NULL),
(27, 25, NULL, 1, NULL, '2022-07-25 07:06:34', '2022-07-25 07:06:34', NULL),
(28, 25, NULL, 1, NULL, '2022-07-25 07:06:56', '2022-07-25 07:06:56', NULL),
(29, 25, NULL, 1, NULL, '2022-07-25 07:07:14', '2022-07-25 07:07:14', NULL),
(30, 25, NULL, 1, NULL, '2022-07-25 07:07:36', '2022-07-25 07:07:36', NULL),
(31, 25, NULL, 1, NULL, '2022-07-25 07:08:00', '2022-07-25 07:08:00', NULL),
(32, 25, NULL, 1, NULL, '2022-07-25 07:08:20', '2022-07-25 07:08:20', NULL),
(33, 25, NULL, 1, NULL, '2022-07-25 07:08:41', '2022-07-25 07:08:41', NULL),
(34, 25, NULL, 1, NULL, '2022-07-25 07:09:04', '2022-07-25 07:09:04', NULL),
(35, 25, NULL, 1, NULL, '2022-07-25 07:09:22', '2022-07-25 07:09:22', NULL),
(36, 25, NULL, 1, NULL, '2022-07-25 07:09:40', '2022-07-25 07:09:40', NULL),
(37, 24, NULL, NULL, NULL, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(38, 24, NULL, NULL, NULL, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(39, 24, NULL, NULL, NULL, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_item_module_items`
--

CREATE TABLE `module_item_module_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_module_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_module_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `module_item_properties`
--

CREATE TABLE `module_item_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext CHARACTER SET utf8 DEFAULT NULL,
  `properable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properable_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `module_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_item_properties`
--

INSERT INTO `module_item_properties` (`id`, `value`, `properable_id`, `properable_type`, `module_attribute_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pixel 5 mockup on a wooden barrel', 1, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:00:05', '2022-02-22 15:00:05', NULL),
(2, 'Pixel 5 mockup on a wooden barrel', 1, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:00:05', '2022-02-22 15:00:05', NULL),
(3, 'DhuQ05bWobRZjyXLDSBYVoji4EYcyJ4mpXCjaznF.png', 1, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:00:05', '2022-02-22 15:00:05', NULL),
(4, 'Pixel 5 mockup on a wooden barrel 2', 2, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:20:10', '2022-02-22 15:20:10', NULL),
(5, 'Pixel 5 mockup on a wooden barrel 2', 2, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:20:10', '2022-02-22 15:20:10', NULL),
(6, 'mPujtF4XrXN8CXVFOhfjESIcX62z0M4TyZp4vsEY.png', 2, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:20:10', '2022-02-22 15:20:10', NULL),
(7, 'Pixel 5 mockup on a wooden barrel 3', 3, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:20:26', '2022-02-22 15:20:26', NULL),
(8, 'Pixel 5 mockup on a wooden barrel 3', 3, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:20:26', '2022-02-22 15:20:26', NULL),
(9, 'vNrHcZhPMniJL3QgxZ0BzXq3NS1xlBvISZuVB2RE.png', 3, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:20:26', '2022-02-22 15:20:26', NULL),
(10, 'Pixel 5 mockup on a wooden barrel 4', 4, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:20:44', '2022-02-22 15:20:44', NULL),
(11, 'Pixel 5 mockup on a wooden barrel 4', 4, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:20:44', '2022-02-22 15:20:44', NULL),
(12, 'beH0nMnPS8N1sOdpj4IpHt29X232CE6AgF8zEntk.png', 4, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:20:44', '2022-02-22 15:20:44', NULL),
(13, 'Pixel 5 mockup on a wooden barrel 5', 5, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:21:27', '2022-02-22 15:21:27', NULL),
(14, 'Pixel 5 mockup on a wooden barrel 5', 5, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:21:27', '2022-02-22 15:21:27', NULL),
(15, 'i6OUhnqTW1carNk22ptexkh330xbyK5bUctjirC8.png', 5, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:21:27', '2022-02-22 15:21:27', NULL),
(16, 'Pixel 5 mockup on a wooden barrel 6', 6, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:40:37', '2022-02-22 15:40:37', NULL),
(17, 'Pixel 5 mockup on a wooden barrel 6', 6, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:40:37', '2022-02-22 15:40:37', NULL),
(18, 'Hzgco9jUNusF5n7lxulRrXxnfDsqV0rlnUWtWLlB.png', 6, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:40:37', '2022-02-22 15:40:37', NULL),
(19, 'Pixel 5 mockup on a wooden barrel 7', 7, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:53:58', '2022-02-22 15:53:58', NULL),
(20, 'Pixel 5 mockup on a wooden barrel 7', 7, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:53:58', '2022-02-22 15:53:58', NULL),
(21, 'wbq4kzUOOgYI5mEMnTMiDnlwMJXgFLqe8K9eyaYU.png', 7, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:53:58', '2022-02-22 15:53:58', NULL),
(22, 'Pixel 5 mockup on a wooden barrel 8', 8, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:54:14', '2022-02-22 15:54:14', NULL),
(23, 'Pixel 5 mockup on a wooden barrel 8', 8, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:54:14', '2022-02-22 15:54:14', NULL),
(24, 'O5eqBszRvy9kWycMlM62Vkkh30Mnq1fRfMZJ4gqa.png', 8, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:54:14', '2022-02-22 15:54:14', NULL),
(25, 'Pixel 5 mockup on a wooden barrel 9', 9, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:54:37', '2022-02-22 15:54:37', NULL),
(26, 'Pixel 5 mockup on a wooden barrel 9', 9, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:54:37', '2022-02-22 15:54:37', NULL),
(27, 'ZH8H8kmWuijaCc7hs8PNTLUNIQjKJSLihOL8mZcn.png', 9, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:54:37', '2022-02-22 15:54:37', NULL),
(28, 'Pixel 5 mockup on a wooden barrel 10', 10, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:55:05', '2022-02-22 15:55:05', NULL),
(29, 'Pixel 5 mockup on a wooden barrel 10', 10, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:55:05', '2022-02-22 15:55:05', NULL),
(30, 'yLXWmJWgnRJOavzBrxaO7ZZTL8BKiyHi1yWIEV4s.png', 10, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:55:05', '2022-02-22 15:55:05', NULL),
(31, 'Pixel 5 mockup on a wooden barrel 11', 11, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:55:23', '2022-02-22 15:55:23', NULL),
(32, 'Pixel 5 mockup on a wooden barrel 11', 11, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:55:23', '2022-02-22 15:55:23', NULL),
(33, 'IjWRTOf0HEcUwJre4RFhLBB8ANH2opfVIADTegqh.png', 11, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:55:23', '2022-02-22 15:55:23', NULL),
(34, 'Pixel 5 mockup on a wooden barrel 12', 12, 'App\\Models\\ModuleItem', 61, 1, NULL, '2022-02-22 15:55:39', '2022-02-22 15:55:39', NULL),
(35, 'Pixel 5 mockup on a wooden barrel 12', 12, 'App\\Models\\ModuleItem', 62, 1, NULL, '2022-02-22 15:55:39', '2022-02-22 15:55:39', NULL),
(36, '4Peh8G45NY07Z2uzBJmS5ofmxf3ah3N3qfJHE4lj.png', 12, 'App\\Models\\ModuleItem', 63, 1, NULL, '2022-02-22 15:55:39', '2022-02-22 15:55:39', NULL),
(37, 'Trial', 13, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:41:25', '2022-02-23 08:41:25', NULL),
(38, '0', 13, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:41:25', '2022-02-23 08:41:25', NULL),
(39, 'Trial', 14, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:41:40', '2022-02-23 08:41:40', NULL),
(40, '0', 14, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:41:40', '2022-02-23 08:41:40', NULL),
(41, 'Trial', 15, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:42:52', '2022-02-23 08:42:52', NULL),
(42, '0', 15, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:42:52', '2022-02-23 08:42:52', NULL),
(43, 'Trial', 16, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:42:56', '2022-02-23 08:42:56', NULL),
(44, '0', 16, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:42:56', '2022-02-23 08:42:56', NULL),
(45, 'Trial', 17, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:43:24', '2022-02-23 08:43:24', NULL),
(46, '0', 17, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:43:24', '2022-02-23 08:43:24', NULL),
(47, 'Trial', 18, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:43:57', '2022-02-23 08:43:57', NULL),
(48, '0', 18, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:43:57', '2022-02-23 08:43:57', NULL),
(49, 'Trial', 19, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:44:07', '2022-02-23 08:44:07', NULL),
(50, '0', 19, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:44:07', '2022-02-23 08:44:07', NULL),
(51, 'Trial', 20, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 08:44:09', NULL),
(52, '0', 20, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 08:44:09', NULL),
(53, 'Trial', 21, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 08:44:09', NULL),
(54, '0', 21, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:44:09', '2022-02-23 08:44:09', NULL),
(55, 'Trial', 22, 'App\\Models\\ModuleItem', 64, 1, NULL, '2022-02-23 08:45:13', '2022-02-23 08:45:13', NULL),
(56, '0', 22, 'App\\Models\\ModuleItem', 65, 1, NULL, '2022-02-23 08:45:13', '2022-02-23 08:45:13', NULL),
(57, 'Trial', 23, 'App\\Models\\ModuleItem', 68, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(58, '0', 23, 'App\\Models\\ModuleItem', 69, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(59, 'Period', 1, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(60, '7 days', 1, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(61, 'Mockups', 2, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(62, 'Free items only', 2, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(63, 'Downloads', 3, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(64, '100', 3, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(65, 'Basic', 24, 'App\\Models\\ModuleItem', 68, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(66, '9,99', 24, 'App\\Models\\ModuleItem', 69, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(67, 'Period', 4, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(68, '1 month', 4, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(69, 'Mockups', 5, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(70, 'All items', 5, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(71, 'Downloads', 6, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(72, 'Unlimited', 6, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(73, 'Period', 7, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(74, '1 month', 7, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(75, 'Mockups', 8, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(76, 'All items', 8, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(77, 'Downloads', 9, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(78, 'Unlimited', 9, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(79, 'Professional', 25, 'App\\Models\\ModuleItem', 68, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(80, '19,99', 25, 'App\\Models\\ModuleItem', 69, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(81, 'Period', 10, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(82, '1 month', 10, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(83, 'Mockups', 11, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(84, 'All items', 11, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(85, 'Downloads', 12, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(86, 'Unlimited', 12, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(87, 'Period', 13, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(88, '1 month', 13, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(89, 'Mockups', 14, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(90, 'All items', 14, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(91, 'Downloads', 15, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(92, 'Unlimited', 15, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(93, 'Mockups', 16, 'App\\Models\\ModuleRepeaterIteration', 70, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(94, 'All items', 16, 'App\\Models\\ModuleRepeaterIteration', 71, 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(95, 'Pixel 5 mockup on a wooden barrel 1', 26, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 06:15:28', '2022-07-25 07:12:59', NULL),
(96, 'Pixel 5 mockup on a wooden barrel 1', 26, 'App\\Models\\ModuleItem', 76, 1, 1, '2022-07-25 06:15:28', '2022-07-25 07:12:59', NULL),
(97, 'tPn3HpU45xAy4YWDcRDDTo0wH55OXKzAStgB29xB.png', 26, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 06:15:28', '2022-07-25 11:05:15', NULL),
(98, 'Pixel 5 mockup on a wooden barrel 2', 27, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:06:34', '2022-07-25 07:13:12', NULL),
(99, 'Pixel 5 mockup on a wooden barrel 2', 27, 'App\\Models\\ModuleItem', 76, 1, 1, '2022-07-25 07:06:34', '2022-07-25 07:13:12', NULL),
(100, 'Q4CSUpL9xuRrG3iwHcgHvHMeLwn4P8l2LTnwsHD7.png', 27, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:06:34', '2022-07-25 11:05:21', NULL),
(101, 'Pixel 5 mockup on a wooden barrel 3', 28, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:06:56', '2022-07-25 07:13:27', NULL),
(102, 'Pixel 5 mockup on a wooden barrel 3', 28, 'App\\Models\\ModuleItem', 76, 1, 1, '2022-07-25 07:06:56', '2022-07-25 07:13:27', NULL),
(103, 'k13CTZJKUFVJKgXcSvcBj1RMB8MNTNsvlPRKq6KR.png', 28, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:06:56', '2022-07-25 11:05:27', NULL),
(104, 'Pixel 5 mockup on a wooden barrel 4', 29, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:07:14', '2022-07-25 07:13:39', NULL),
(105, 'Pixel 5 mockup on a wooden barrel 4', 29, 'App\\Models\\ModuleItem', 76, 1, 1, '2022-07-25 07:07:14', '2022-07-25 07:13:39', NULL),
(106, 'L0TzWNYv07lOAGQqG15rc1g6V6Zn4TWgAa3RZJD5.png', 29, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:07:14', '2022-07-25 11:05:34', NULL),
(107, 'Pixel 5 mockup on a wooden barrel 5', 30, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:07:36', '2022-07-25 07:13:49', NULL),
(108, 'Pixel 5 mockup on a wooden barrel 5', 30, 'App\\Models\\ModuleItem', 76, 1, 1, '2022-07-25 07:07:36', '2022-07-25 07:13:49', NULL),
(109, 'g7seTeocAAdeCbaPZ08pELkgkXDrBsC2VmycOjk3.png', 30, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:07:36', '2022-07-25 11:05:39', NULL),
(110, 'Pixel 5 mockup on a wooden barrel 6', 31, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:08:00', '2022-07-25 07:13:57', NULL),
(111, 'Pixel 5 mockup on a wooden barrel', 31, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:08:00', '2022-07-25 07:08:00', NULL),
(112, 'ypvAtVX9mwwhEFV12VL8CkSVVj1Oi5kHs1dVX7Th.png', 31, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:08:00', '2022-07-25 11:05:45', NULL),
(113, 'Pixel 5 mockup on a wooden barrel 7', 32, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:08:20', '2022-07-25 07:14:06', NULL),
(114, 'Pixel 5 mockup on a wooden barrel', 32, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:08:20', '2022-07-25 07:08:20', NULL),
(115, 'RH3WbLf2ie3aMkJuXfEW6z1biOqsNF4eHf14Yozy.png', 32, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:08:20', '2022-07-25 11:05:50', NULL),
(116, 'Pixel 5 mockup on a wooden barrel 8', 33, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:08:41', '2022-07-25 07:14:15', NULL),
(117, 'Pixel 5 mockup on a wooden barrel', 33, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:08:41', '2022-07-25 07:08:41', NULL),
(118, '2in0oG5j8nUeqCvr0ZlclHfGWKP8OHqHWJh494bt.png', 33, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:08:41', '2022-07-25 11:05:56', NULL),
(119, 'Pixel 5 mockup on a wooden barrel 9', 34, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:09:04', '2022-07-25 07:14:25', NULL),
(120, 'Pixel 5 mockup on a wooden barrel', 34, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:09:04', '2022-07-25 07:09:04', NULL),
(121, 'fJjBH28lcUf8uO56rx3Xogjhx6QyVib1ULwjyXn1.png', 34, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:09:04', '2022-07-25 11:06:03', NULL),
(122, 'Pixel 5 mockup on a wooden barrel 10', 35, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:09:22', '2022-07-25 07:14:33', NULL),
(123, 'Pixel 5 mockup on a wooden barrel', 35, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:09:22', '2022-07-25 07:09:22', NULL),
(124, 'K8bzEXB8U7rSvlQ26cXmRTzJObQtWr2Yg31tv4zv.png', 35, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:09:22', '2022-07-25 11:06:08', NULL),
(125, 'Pixel 5 mockup on a wooden barrel 11', 36, 'App\\Models\\ModuleItem', 75, 1, 1, '2022-07-25 07:09:40', '2022-07-25 07:14:42', NULL),
(126, 'Pixel 5 mockup on a wooden barrel', 36, 'App\\Models\\ModuleItem', 76, 1, NULL, '2022-07-25 07:09:40', '2022-07-25 07:09:40', NULL),
(127, 'B0YBPYIzqx5stx50oh3ZSCpzc4nDAjMAgqYJkHVg.png', 36, 'App\\Models\\ModuleItem', 77, 1, 1, '2022-07-25 07:09:40', '2022-07-25 11:06:13', NULL),
(128, 'NEW', 26, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:14:58', '2022-07-25 09:14:58', NULL),
(129, 'NEW', 26, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:14:58', '2022-07-25 09:14:58', NULL),
(130, 'NEW', 27, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:04', '2022-07-25 09:15:04', NULL),
(131, 'NEW', 27, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:04', '2022-07-25 09:15:04', NULL),
(132, 'NEW', 28, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:11', '2022-07-25 09:15:11', NULL),
(133, 'NEW', 28, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:11', '2022-07-25 09:15:11', NULL),
(134, 'NEW', 29, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:16', '2022-07-25 09:15:16', NULL),
(135, 'NEW', 29, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:16', '2022-07-25 09:15:16', NULL),
(136, 'NEW', 30, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:20', '2022-07-25 09:15:20', NULL),
(137, 'NEW', 30, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:20', '2022-07-25 09:15:20', NULL),
(138, 'NEW', 31, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:31', '2022-07-25 09:15:31', NULL),
(139, 'NEW', 31, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:31', '2022-07-25 09:15:31', NULL),
(140, 'NEW', 32, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:36', '2022-07-25 09:15:36', NULL),
(141, 'NEW', 32, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:36', '2022-07-25 09:15:36', NULL),
(142, 'NEW', 33, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:43', '2022-07-25 09:15:43', NULL),
(143, 'NEW', 33, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:43', '2022-07-25 09:15:43', NULL),
(144, 'NEW', 34, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:50', '2022-07-25 09:15:50', NULL),
(145, 'NEW', 34, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:50', '2022-07-25 09:15:50', NULL),
(146, 'NEW', 35, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:15:56', '2022-07-25 09:15:56', NULL),
(147, 'NEW', 35, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:15:56', '2022-07-25 09:15:56', NULL),
(148, 'NEW', 36, 'App\\Models\\ModuleItem', 78, 1, NULL, '2022-07-25 09:16:02', '2022-07-25 09:16:02', NULL),
(149, 'NEW', 36, 'App\\Models\\ModuleItem', 79, 1, NULL, '2022-07-25 09:16:02', '2022-07-25 09:16:02', NULL),
(150, 'artemka.relit', 37, 'App\\Models\\ModuleItem', 72, NULL, NULL, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(151, 'artemka.relit@gmail.com', 37, 'App\\Models\\ModuleItem', 73, NULL, NULL, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(152, NULL, 37, 'App\\Models\\ModuleItem', 74, NULL, NULL, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(153, 'artemka.relit', 38, 'App\\Models\\ModuleItem', 72, NULL, NULL, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(154, 'artemka.relit@gmail.com', 38, 'App\\Models\\ModuleItem', 73, NULL, NULL, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(155, NULL, 38, 'App\\Models\\ModuleItem', 74, NULL, NULL, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(156, 'sergey', 39, 'App\\Models\\ModuleItem', 72, NULL, NULL, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL),
(157, 'sergey@ukr.net', 39, 'App\\Models\\ModuleItem', 73, NULL, NULL, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL),
(158, NULL, 39, 'App\\Models\\ModuleItem', 74, NULL, NULL, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_modules`
--

CREATE TABLE `module_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_module_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_modules`
--

INSERT INTO `module_modules` (`id`, `parent_module_id`, `child_module_id`) VALUES
(1, 22, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `module_repeaters`
--

CREATE TABLE `module_repeaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeatable_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_repeaters`
--

INSERT INTO `module_repeaters` (`id`, `key`, `name`, `repeatable_type`, `repeatable_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plan_list', 'План', 'App\\Models\\Module', 22, 1, NULL, '2022-02-23 08:32:52', '2022-02-23 10:40:27', '2022-02-23 10:40:27'),
(2, 'plan_list', 'План', 'App\\Models\\Module', 23, 1, NULL, '2022-02-23 10:40:24', '2022-02-23 10:40:24', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_repeater_iterations`
--

CREATE TABLE `module_repeater_iterations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_repeater_id` bigint(20) UNSIGNED NOT NULL,
  `iterable_id` bigint(20) UNSIGNED NOT NULL,
  `iterable_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_repeater_iterations`
--

INSERT INTO `module_repeater_iterations` (`id`, `module_repeater_id`, `iterable_id`, `iterable_type`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 23, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(2, 2, 23, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(3, 2, 23, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(4, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(5, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(6, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(7, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(8, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(9, 2, 24, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(10, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(11, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(12, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(13, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(14, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(15, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(16, 2, 25, 'App\\Models\\ModuleItem', 1, NULL, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `module_taxonomies`
--

CREATE TABLE `module_taxonomies` (
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `module_taxonomies`
--

INSERT INTO `module_taxonomies` (`taxonomy_id`, `module_id`, `created_at`, `updated_at`) VALUES
(6, 23, NULL, NULL),
(1, 21, NULL, NULL),
(2, 21, NULL, NULL),
(3, 21, NULL, NULL),
(4, 21, NULL, NULL),
(5, 21, NULL, NULL),
(1, 25, NULL, NULL),
(2, 25, NULL, NULL),
(3, 25, NULL, NULL),
(4, 25, NULL, NULL),
(5, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_only` tinyint(1) DEFAULT NULL,
  `parent_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `image_path`, `auth_only`, `parent_page_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(83, NULL, 0, NULL, 1, NULL, '2022-02-22 11:13:46', '2022-02-22 11:13:46', NULL),
(84, NULL, 0, 83, 1, NULL, '2022-02-22 11:44:40', '2022-02-22 11:44:40', NULL),
(85, NULL, 0, 83, 1, NULL, '2022-02-22 11:48:39', '2022-02-22 11:48:39', NULL),
(86, NULL, 0, 83, 1, NULL, '2022-02-22 11:49:00', '2022-02-22 11:49:00', NULL),
(87, NULL, 0, 83, 1, NULL, '2022-02-22 11:49:33', '2022-07-26 06:55:38', '2022-07-26 06:55:38'),
(88, NULL, 0, 83, 1, NULL, '2022-07-26 06:56:06', '2022-07-26 06:56:06', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page_properties`
--

CREATE TABLE `page_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_group_id` bigint(20) UNSIGNED NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `permission_group_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Редактирование страниц', 'page_edit', 1, NULL, NULL, '2022-01-06 02:12:42', '2022-01-06 02:12:42', NULL),
(2, 'Создание страниц', 'page_create', 1, NULL, NULL, '2022-01-06 02:14:34', '2022-01-06 02:14:34', NULL),
(3, 'Создание модулей', 'module_create', 2, NULL, NULL, '2022-01-06 02:16:21', '2022-01-06 02:16:21', NULL),
(4, 'Редактирование модуля', 'module_edit', 2, NULL, NULL, '2022-01-06 17:52:34', '2022-01-06 17:52:34', NULL),
(5, 'Создание записей модуля', 'module_item-create', 5, NULL, NULL, '2022-01-07 10:14:50', '2022-01-07 10:14:50', NULL),
(6, 'Редактирование записей модуля', 'module_item-edit', 5, NULL, NULL, '2022-01-07 10:15:55', '2022-01-07 10:15:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_admin`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'dev', 'dev', 1, NULL, NULL, '2022-01-05 19:27:46', '2022-02-17 00:07:41', NULL),
(7, 'администратор', 'admin', 1, NULL, NULL, '2022-01-05 19:28:04', '2022-02-17 00:07:34', NULL),
(8, 'Контент менеджер', 'content-manager', 0, NULL, NULL, '2022-01-05 19:29:52', '2022-01-05 19:29:52', NULL),
(9, '2', 'dev1', 0, NULL, NULL, '2022-01-05 19:32:48', '2022-01-05 19:32:53', '2022-01-05 19:32:53'),
(10, 'Препод', 'instructor', 0, NULL, NULL, '2022-01-07 10:13:40', '2022-01-07 10:13:40', NULL),
(11, 'Клиент', 'clients', 0, NULL, NULL, '2022-01-17 15:58:24', '2022-07-25 06:00:56', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 2),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seoable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seoable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `seo`
--

INSERT INTO `seo` (`id`, `seoable_type`, `seoable_id`, `lang_id`, `title`, `alias`, `thumbnail`, `meta_keywords`, `meta_description`, `admin_created_id`, `admin_updated_id`, `view_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(120, 'App\\Models\\Page', 83, 3, 'Главная', 'main', NULL, 'Главная', 'Главная', 1, NULL, 96, '2022-02-22 11:13:46', '2022-07-25 10:18:17', NULL),
(121, 'App\\Models\\Page', 84, 3, 'search', 'search', NULL, 'search', 'search', 1, NULL, 0, '2022-02-22 11:44:40', '2022-02-22 11:49:12', NULL),
(122, 'App\\Models\\Page', 85, 3, 'Макапы', 'mockups', NULL, 'mockups', 'mockups', 1, NULL, 54, '2022-02-22 11:48:39', '2022-07-25 09:52:50', NULL),
(123, 'App\\Models\\Page', 86, 3, 'Цены', 'pricing', NULL, 'Цены', 'Цены', 1, NULL, 0, '2022-02-22 11:49:00', '2022-02-22 11:49:00', NULL),
(124, 'App\\Models\\Page', 87, 3, 'Log In', 'login', NULL, 'Log In', 'Log In', 1, NULL, 0, '2022-02-22 11:49:33', '2022-07-26 06:55:38', '2022-07-26 06:55:38'),
(125, 'App\\Models\\ModuleItem', 1, 3, 'Pixel 5 mockup on a wooden barrel', 'Pixel_5_mockup_on_a_wooden_barrel', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, NULL, 0, '2022-02-22 15:00:05', '2022-07-25 06:14:49', '2022-07-25 06:14:49'),
(126, 'App\\Models\\ModuleItem', 2, 3, 'Pixel 5 mockup on a wooden barrel 2', 'Pixel_5_mockup_on_a_wooden_barrel_2', NULL, 'Pixel 5 mockup on a wooden barrel 2', 'Pixel 5 mockup on a wooden barrel 2', 1, NULL, 0, '2022-02-22 15:20:10', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(127, 'App\\Models\\ModuleItem', 3, 3, 'Pixel 5 mockup on a wooden barrel 3', 'Pixel_5_mockup_on_a_wooden_barrel_3', NULL, 'Pixel 5 mockup on a wooden barrel 3', 'Pixel 5 mockup on a wooden barrel 3', 1, NULL, 0, '2022-02-22 15:20:26', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(128, 'App\\Models\\ModuleItem', 4, 3, 'Pixel 5 mockup on a wooden barrel 4', 'Pixel_5_mockup_on_a_wooden_barrel_4', NULL, 'Pixel 5 mockup on a wooden barrel 4', 'Pixel 5 mockup on a wooden barrel 4', 1, NULL, 0, '2022-02-22 15:20:44', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(129, 'App\\Models\\ModuleItem', 5, 3, 'Pixel 5 mockup on a wooden barrel 5', 'Pixel_5_mockup_on_a_wooden_barrel_5', NULL, 'Pixel 5 mockup on a wooden barrel 5', 'Pixel 5 mockup on a wooden barrel 5', 1, NULL, 0, '2022-02-22 15:21:27', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(130, 'App\\Models\\ModuleItem', 6, 3, 'Pixel 5 mockup on a wooden barrel 6', 'Pixel_5_mockup_on_a_wooden_barrel_6', NULL, 'Pixel 5 mockup on a wooden barrel 6', 'Pixel 5 mockup on a wooden barrel 6', 1, NULL, 0, '2022-02-22 15:40:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(131, 'App\\Models\\ModuleItem', 7, 3, 'Pixel 5 mockup on a wooden barrel 7', 'Pixel_5_mockup_on_a_wooden_barrel_7', NULL, 'Pixel 5 mockup on a wooden barrel 7', 'Pixel 5 mockup on a wooden barrel 7', 1, NULL, 0, '2022-02-22 15:53:58', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(132, 'App\\Models\\ModuleItem', 8, 3, 'Pixel 5 mockup on a wooden barrel 8', 'Pixel_5_mockup_on_a_wooden_barrel_8', NULL, 'Pixel 5 mockup on a wooden barrel 8', 'Pixel 5 mockup on a wooden barrel 8', 1, NULL, 0, '2022-02-22 15:54:14', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(133, 'App\\Models\\ModuleItem', 9, 3, 'Pixel 5 mockup on a wooden barrel 9', 'Pixel_5_mockup_on_a_wooden_barrel_9', NULL, 'Pixel 5 mockup on a wooden barrel 9', 'Pixel 5 mockup on a wooden barrel 9', 1, NULL, 0, '2022-02-22 15:54:37', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(134, 'App\\Models\\ModuleItem', 10, 3, 'Pixel 5 mockup on a wooden barrel 10', 'Pixel_5_mockup_on_a_wooden_barrel_10', NULL, 'Pixel 5 mockup on a wooden barrel 10', 'Pixel 5 mockup on a wooden barrel 10', 1, NULL, 0, '2022-02-22 15:55:05', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(135, 'App\\Models\\ModuleItem', 11, 3, 'Pixel 5 mockup on a wooden barrel 11', 'Pixel_5_mockup_on_a_wooden_barrel_11', NULL, 'Pixel 5 mockup on a wooden barrel 11', 'Pixel 5 mockup on a wooden barrel 11', 1, NULL, 0, '2022-02-22 15:55:23', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(136, 'App\\Models\\ModuleItem', 12, 3, 'Pixel 5 mockup on a wooden barrel 12', 'Pixel_5_mockup_on_a_wooden_barrel_12', NULL, 'Pixel 5 mockup on a wooden barrel 12', 'Pixel 5 mockup on a wooden barrel 12', 1, NULL, 0, '2022-02-22 15:55:39', '2022-07-25 06:14:50', '2022-07-25 06:14:50'),
(137, 'App\\Models\\ModuleItem', 23, 3, 'Trial', 'Trial', NULL, 'Trial', 'Trial', 1, NULL, 0, '2022-02-23 10:42:33', '2022-02-23 10:42:33', NULL),
(138, 'App\\Models\\ModuleItem', 24, 3, 'Basic', 'Basic', NULL, 'Basic', 'Basic', 1, NULL, 0, '2022-02-23 10:43:40', '2022-02-23 10:43:40', NULL),
(139, 'App\\Models\\ModuleItem', 25, 3, 'Professional', 'Professional', NULL, 'Professional', 'Professional', 1, NULL, 0, '2022-02-23 10:45:55', '2022-02-23 10:45:55', NULL),
(140, 'App\\Models\\ModuleItem', 26, 3, 'Pixel 5 mockup on a wooden barrel 1', 'Pixel_5_mockup_on_a_wooden_barrel_1', NULL, 'Pixel 5 mockup on a wooden barrel 1', 'Pixel 5 mockup on a wooden barrel 1', 1, 1, 3, '2022-07-25 06:15:28', '2022-07-25 07:12:59', NULL),
(141, 'App\\Models\\ModuleItem', 27, 3, 'Pixel 5 mockup on a wooden barrel 2', 'Pixel_5_mockup_on_a_wooden_barrel_2', NULL, 'Pixel 5 mockup on a wooden barrel 2', 'Pixel 5 mockup on a wooden barrel 2', 1, 1, 0, '2022-07-25 07:06:34', '2022-07-25 07:13:12', NULL),
(142, 'App\\Models\\ModuleItem', 28, 3, 'Pixel 5 mockup on a wooden barrel 3', 'Pixel_5_mockup_on_a_wooden_barrel_3', NULL, 'Pixel 5 mockup on a wooden barrel 3', 'Pixel 5 mockup on a wooden barrel 3', 1, 1, 0, '2022-07-25 07:06:56', '2022-07-25 07:13:27', NULL),
(143, 'App\\Models\\ModuleItem', 29, 3, 'Pixel 5 mockup on a wooden barrel 4', 'Pixel_5_mockup_on_a_wooden_barrel_4', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:07:14', '2022-07-25 07:13:39', NULL),
(144, 'App\\Models\\ModuleItem', 30, 3, 'Pixel 5 mockup on a wooden barrel 5', 'Pixel_5_mockup_on_a_wooden_barrel_5', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:07:36', '2022-07-25 07:13:49', NULL),
(145, 'App\\Models\\ModuleItem', 31, 3, 'Pixel 5 mockup on a wooden barrel 6', 'Pixel_5_mockup_on_a_wooden_barrel_6', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:08:00', '2022-07-25 07:13:57', NULL),
(146, 'App\\Models\\ModuleItem', 32, 3, 'Pixel 5 mockup on a wooden barrel 7', 'Pixel_5_mockup_on_a_wooden_barrel_7', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:08:20', '2022-07-25 07:14:06', NULL),
(147, 'App\\Models\\ModuleItem', 33, 3, 'Pixel 5 mockup on a wooden barrel 8', 'Pixel_5_mockup_on_a_wooden_barrel_8', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:08:41', '2022-07-25 07:14:15', NULL),
(148, 'App\\Models\\ModuleItem', 34, 3, 'Pixel 5 mockup on a wooden barrel 9', 'Pixel_5_mockup_on_a_wooden_barrel_9', 'XiLwqGQhcJk97cZdJoeqO8DVjdbGYmup6DeFW9RE.png', 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:09:04', '2022-07-25 07:14:25', NULL),
(149, 'App\\Models\\ModuleItem', 35, 3, 'Pixel 5 mockup on a wooden barrel 10', 'Pixel_5_mockup_on_a_wooden_barrel_10', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:09:22', '2022-07-25 07:14:33', NULL),
(150, 'App\\Models\\ModuleItem', 36, 3, 'Pixel 5 mockup on a wooden barrel 11', 'Pixel_5_mockup_on_a_wooden_barrel_11', NULL, 'Pixel 5 mockup on a wooden barrel', 'Pixel 5 mockup on a wooden barrel', 1, 1, 0, '2022-07-25 07:09:40', '2022-07-25 07:14:42', NULL),
(151, 'App\\Models\\Page', 88, 3, 'Cabinet', 'cabinet', NULL, 'Cabinet', 'Cabinet', 1, NULL, 0, '2022-07-26 06:56:06', '2022-07-26 06:56:06', NULL),
(152, 'App\\Models\\ModuleItem', 37, 3, 'artemka.relit', 'artemka.relit', NULL, 'artemka.relit', 'artemka.relit', NULL, NULL, 0, '2022-09-05 16:04:14', '2022-09-05 16:04:14', NULL),
(153, 'App\\Models\\ModuleItem', 38, 3, 'artemka.relit', 'artemka.relit', NULL, 'artemka.relit', 'artemka.relit', NULL, NULL, 0, '2022-09-05 16:06:39', '2022-09-05 16:06:39', NULL),
(154, 'App\\Models\\ModuleItem', 39, 3, 'sergey', 'sergey', NULL, 'sergey', 'sergey', NULL, NULL, 0, '2022-09-05 16:28:38', '2022-09-05 16:28:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `customizable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customizable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `key`, `name`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brand', 'Brand', 1, NULL, '2022-02-22 14:57:22', '2022-02-22 14:57:22', NULL),
(2, 'Model', 'Model', 1, NULL, '2022-02-22 14:57:32', '2022-02-22 14:57:32', NULL),
(3, 'Orientation', 'Orientation', 1, NULL, '2022-02-22 14:57:36', '2022-02-22 14:57:36', NULL),
(4, 'Hand', 'Hand', 1, NULL, '2022-02-22 14:57:43', '2022-02-22 14:57:43', NULL),
(5, 'Type', 'Type', 1, NULL, '2022-02-23 05:06:17', '2022-02-23 05:06:17', NULL),
(6, 'plan_type', 'Тип подписки', 1, NULL, '2022-02-23 08:34:21', '2022-02-23 08:34:21', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomy_attributes`
--

CREATE TABLE `taxonomy_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` smallint(6) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomy_items`
--

CREATE TABLE `taxonomy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `taxonomy_items`
--

INSERT INTO `taxonomy_items` (`id`, `key`, `name`, `taxonomy_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Samsung', 'Samsung', 1, 1, NULL, '2022-02-22 15:00:16', '2022-02-22 15:00:16', NULL),
(2, 'Huawei', 'Huawei', 1, 1, NULL, '2022-02-22 15:00:25', '2022-02-22 15:00:25', NULL),
(3, 'Apple', 'Apple', 1, 1, NULL, '2022-02-22 15:00:33', '2022-02-22 15:00:33', NULL),
(4, 'Google', 'Google', 1, 1, NULL, '2022-02-22 15:00:38', '2022-02-22 15:00:38', NULL),
(5, 'Iphone 13', 'Iphone 13', 2, 1, NULL, '2022-02-22 15:00:44', '2022-02-22 15:00:44', NULL),
(6, 'Iphone 13 PRO', 'Iphone 13 PRO', 2, 1, NULL, '2022-02-22 15:00:50', '2022-02-22 15:00:50', NULL),
(7, 'Iphone 13 PRO MAX', 'Iphone 13 PRO MAX', 2, 1, NULL, '2022-02-22 15:00:55', '2022-02-22 15:00:55', NULL),
(8, 'Iphone 13 MINI', 'Iphone 13 MINI', 2, 1, NULL, '2022-02-22 15:01:00', '2022-02-22 15:01:00', NULL),
(9, 'Iphone 12 MINI', 'Iphone 12 MINI', 2, 1, NULL, '2022-02-22 15:01:05', '2022-02-22 15:01:05', NULL),
(10, 'Iphone 12 PRO', 'Iphone 12 PRO', 2, 1, NULL, '2022-02-22 15:01:10', '2022-02-22 15:01:10', NULL),
(11, 'Iphone 11 PRO', 'Iphone 11 PRO', 2, 1, NULL, '2022-02-22 15:01:15', '2022-02-22 15:01:15', NULL),
(12, 'Iphone 11 PRO MAX', 'Iphone 11 PRO MAX', 2, 1, NULL, '2022-02-22 15:01:20', '2022-02-22 15:01:20', NULL),
(13, 'Iphone 11', 'Iphone 11', 2, 1, NULL, '2022-02-22 15:01:24', '2022-02-22 15:01:24', NULL),
(14, 'Iphone 7/8/SE 2020', 'Iphone 7/8/SE 2020', 2, 1, NULL, '2022-02-22 15:01:31', '2022-02-22 15:01:31', NULL),
(15, 'Iphone 7/8 Plus', 'Iphone 7/8 Plus', 2, 1, NULL, '2022-02-22 15:01:36', '2022-02-22 15:01:36', NULL),
(16, 'Iphone 7/8 Plus', 'Iphone 7/8 Plus', 2, 1, NULL, '2022-02-22 15:01:42', '2022-02-22 15:01:42', NULL),
(17, 'Iphone XR', 'Iphone XR', 2, 1, NULL, '2022-02-22 15:01:47', '2022-02-22 15:01:47', NULL),
(18, 'Iphone XS MAX', 'Iphone XS MAX', 2, 1, NULL, '2022-02-22 15:01:53', '2022-02-22 15:01:53', NULL),
(19, 'Portrait', 'Portrait', 3, 1, NULL, '2022-02-22 15:02:01', '2022-02-22 15:02:01', NULL),
(20, 'Landscaipe', 'Landscaipe', 3, 1, NULL, '2022-02-22 15:02:05', '2022-02-22 15:02:05', NULL),
(21, 'Square', 'Square', 3, 1, NULL, '2022-02-22 15:02:10', '2022-02-22 15:02:10', NULL),
(22, 'No hands', 'No hands', 4, 1, NULL, '2022-02-22 15:02:15', '2022-02-22 15:02:15', NULL),
(23, 'Male', 'Male', 4, 1, NULL, '2022-02-22 15:02:20', '2022-02-22 15:02:20', NULL),
(24, 'Female', 'Female', 4, 1, NULL, '2022-02-22 15:02:24', '2022-02-22 15:02:24', NULL),
(25, 'Free', 'Free', 5, 1, NULL, '2022-02-23 05:06:34', '2022-02-23 05:06:34', NULL),
(26, 'monthly', 'Monthly', 6, 1, NULL, '2022-02-23 08:34:49', '2022-02-23 08:34:49', NULL),
(27, 'annual', 'Annual', 6, 1, NULL, '2022-02-23 08:35:00', '2022-02-23 08:35:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomy_item_properties`
--

CREATE TABLE `taxonomy_item_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `taxonomy_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `template_groups`
--

CREATE TABLE `template_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `block_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `block_template_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `template_groups`
--

INSERT INTO `template_groups` (`id`, `block_template_id`, `block_template_group_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(50, 58, 1, NULL, NULL, NULL, NULL, NULL),
(51, 59, 1, NULL, NULL, NULL, NULL, NULL),
(52, 60, 1, NULL, NULL, NULL, NULL, NULL),
(53, 61, 1, NULL, NULL, NULL, NULL, NULL),
(54, 62, 1, NULL, NULL, NULL, NULL, NULL),
(55, 63, 1, NULL, NULL, NULL, NULL, NULL),
(56, 64, 1, NULL, NULL, NULL, NULL, NULL),
(57, 65, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `module_id`, `module_item_id`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'some@some.com', '2021-09-09 16:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QMA97VEyAWJU0UfZvrR6Rx8IcXYc80rQtOb2s6bo34x5SzXF8xC6h0BZf3iK', NULL, NULL, '2021-09-09 16:11:25', '2022-01-05 22:18:18'),
(2, 'kira-romanivna-kramarenko', 'valeri.pavlyk@example.org', '2021-09-09 16:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Ulvh6pUv9', NULL, NULL, '2021-09-09 16:11:25', '2021-09-09 16:11:25'),
(3, 'anna-oleksandrivna-mirosnicenko', 'sereda.fedr@example.org', '2021-09-09 16:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XbnSVqmB6V', NULL, NULL, '2021-09-09 16:11:25', '2021-09-09 16:11:25'),
(4, 'olena-ivanivna-pavlyuk', 'lydmila.brovarenko@example.com', '2021-09-09 16:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tM1egkwLr2', NULL, NULL, '2021-09-09 16:11:25', '2021-09-09 16:11:25'),
(5, 'vasilcuk-dmitro-mikolaiovic', 'kiril.gnatyk@example.net', '2021-09-09 16:11:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3lsnzRe7Pd', NULL, NULL, '2021-09-09 16:11:25', '2021-09-09 16:11:25'),
(6, 'some', 'some_user@some.com', NULL, '$2y$10$v3j3zuCXbhEV56draW71betrT3vbakaWRbifVfxOeiwcpDJ2vqdXy', 'XyCgpFXacU3xSR7mNQme5QQY27VF5S11xLHShJa8XCpCizHj4alXEjhX8SyU', NULL, NULL, '2022-01-02 14:29:09', '2022-01-02 14:29:09'),
(7, 'asdf', 'asdf@asdf.com', NULL, '$2y$10$DnN0YXHhKe.juu8GkKTqcupxGOL/Q/ZtcRRZnzdOZ.dPzdge981mC', NULL, NULL, NULL, '2022-01-17 16:03:33', '2022-01-17 16:03:33'),
(8, 'sergey', 'sergey@mail.ru', NULL, '$2y$10$MTH8GB3tM8c8oU65HujuNeSCCJrB.BO1JXGr1X/qbaW6nIlZblu0y', NULL, NULL, NULL, '2022-01-18 10:55:56', '2022-01-18 10:55:56'),
(9, 'asdf', 'asdf@asdf.com1', NULL, '$2y$10$gU0WccmhJCbcEBDF7pnj4.NzqgGDmDY/y9XxX6YDZo1jH2TQ1rSUi', NULL, NULL, NULL, '2022-01-19 09:19:52', '2022-01-19 09:19:52'),
(10, '123', 'some@some.com233', NULL, '$2y$10$ytngfcNteq4AUwKK.UJQr.e1bsteSZzlOTSW8/xjB7LVCbVvYzK/6', NULL, NULL, NULL, '2022-02-06 01:44:23', '2022-02-06 01:44:23'),
(12, 'artemka.relit', 'artemka.relit@gmail.com', NULL, '$2y$10$4ouRP.1KvYc9SwI1.3VOOe40rHov9QYWue0/d.P8B.mE9VVlGOqI6', NULL, NULL, 38, '2022-09-05 16:06:39', '2022-09-05 16:06:39'),
(13, 'sergey', 'sergey@ukr.net', NULL, '$2y$10$Ps8GaneTEE6xNF5Q7bvot.n.RI7S9Yr776MfCyEbLTOKsqRFYh/DK', NULL, NULL, 39, '2022-09-05 16:28:38', '2022-09-05 16:28:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 6),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 10),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(12, 11),
(13, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `variables`
--

CREATE TABLE `variables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `variables`
--

INSERT INTO `variables` (`id`, `key`, `name`, `type`, `section`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(50, 'to-main', 'Надпись \"На главную\"', 1, 'general', 1, NULL, '2022-02-22 11:45:31', '2022-02-22 11:45:31', NULL),
(51, 'browse_all_templates', 'Надпись \"Показать все шаблоны\"', 1, 'general', 1, NULL, '2022-02-23 04:53:38', '2022-02-23 04:53:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `variable_translations`
--

CREATE TABLE `variable_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `variable_translations`
--

INSERT INTO `variable_translations` (`id`, `value`, `variable_id`, `lang_id`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(49, 'На главную', 50, 3, 1, NULL, '2022-02-22 11:45:31', '2022-02-22 11:45:31', NULL),
(50, 'Browse all templates', 51, 3, 1, NULL, '2022-02-23 04:53:39', '2022-02-23 04:53:39', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_block_template_id_foreign` (`block_template_id`);

--
-- Индексы таблицы `block_contents`
--
ALTER TABLE `block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_contents_block_id_foreign` (`contentable_id`),
  ADD KEY `block_template_attribute_id` (`block_template_attribute_id`);

--
-- Индексы таблицы `block_content_translations`
--
ALTER TABLE `block_content_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_content_translations_lang_id_foreign` (`lang_id`),
  ADD KEY `block_content_id` (`block_content_id`);

--
-- Индексы таблицы `block_templates`
--
ALTER TABLE `block_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `block_template_attributes`
--
ALTER TABLE `block_template_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_template_id` (`attributable_id`);

--
-- Индексы таблицы `block_template_groups`
--
ALTER TABLE `block_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `block_template_repeaters`
--
ALTER TABLE `block_template_repeaters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `block_template_repeater_iterations`
--
ALTER TABLE `block_template_repeater_iterations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `btr_id_foreign` (`block_template_repeater_id`),
  ADD KEY `block_template_repeator_iterations_block_id_foreign` (`iterable_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Индексы таблицы `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form_items`
--
ALTER TABLE `form_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_items_form_id_foreign` (`form_id`);

--
-- Индексы таблицы `form_item_translations`
--
ALTER TABLE `form_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_item_translations_form_item_id_foreign` (`form_item_id`);

--
-- Индексы таблицы `form_translations`
--
ALTER TABLE `form_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_translations_form_id_foreign` (`form_id`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_items`
--
ALTER TABLE `gallery_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_items_gallery_id_foreign` (`gallery_id`);

--
-- Индексы таблицы `gallery_item_translations`
--
ALTER TABLE `gallery_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_item_translations_gallery_item_id_foreign` (`gallery_item_id`);

--
-- Индексы таблицы `gallery_translations`
--
ALTER TABLE `gallery_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_translations_gallery_id_foreign` (`gallery_id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `model_additions`
--
ALTER TABLE `model_additions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_internals_lang_id_foreign` (`lang_id`);

--
-- Индексы таблицы `model_item_taxonomy_items`
--
ALTER TABLE `model_item_taxonomy_items`
  ADD KEY `model_item_taxonomy_items_taxonomy_item_id_foreign` (`taxonomy_item_id`),
  ADD KEY `model_item_taxonomy_items_module_item_id_foreign` (`module_item_id`);

--
-- Индексы таблицы `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `module_attributes`
--
ALTER TABLE `module_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`attributable_id`);

--
-- Индексы таблицы `module_items`
--
ALTER TABLE `module_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Индексы таблицы `module_item_module_items`
--
ALTER TABLE `module_item_module_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_item_module_items_parent_module_item_id_foreign` (`parent_module_item_id`),
  ADD KEY `module_item_module_items_child_module_item_id_foreign` (`child_module_item_id`);

--
-- Индексы таблицы `module_item_properties`
--
ALTER TABLE `module_item_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_item_id` (`properable_id`),
  ADD KEY `module_attribute_id` (`module_attribute_id`);

--
-- Индексы таблицы `module_modules`
--
ALTER TABLE `module_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `module_repeaters`
--
ALTER TABLE `module_repeaters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `module_repeater_iterations`
--
ALTER TABLE `module_repeater_iterations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mr_id_foreign` (`module_repeater_id`),
  ADD KEY `module_repeater_iterations_module_id_foreign` (`iterable_id`);

--
-- Индексы таблицы `module_taxonomies`
--
ALTER TABLE `module_taxonomies`
  ADD KEY `module_taxonomies_taxonomy_id_foreign` (`taxonomy_id`),
  ADD KEY `module_taxonomies_module_id_foreign` (`module_id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_page_id_foreign` (`parent_page_id`);

--
-- Индексы таблицы `page_properties`
--
ALTER TABLE `page_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_properties_lang_id_foreign` (`lang_id`),
  ADD KEY `page_properties_page_id_foreign` (`page_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_lang_id_foreign` (`lang_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `taxonomy_attributes`
--
ALTER TABLE `taxonomy_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxonomy_attributes_taxonomy_id_foreign` (`taxonomy_id`);

--
-- Индексы таблицы `taxonomy_items`
--
ALTER TABLE `taxonomy_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxonomy_items_taxonomy_id_foreign` (`taxonomy_id`);

--
-- Индексы таблицы `taxonomy_item_properties`
--
ALTER TABLE `taxonomy_item_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxonomy_item_properties_taxonomy_item_id_foreign` (`taxonomy_item_id`),
  ADD KEY `taxonomy_item_properties_taxonomy_attribute_id_foreign` (`taxonomy_attribute_id`);

--
-- Индексы таблицы `template_groups`
--
ALTER TABLE `template_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_groups_block_template_id_foreign` (`block_template_id`),
  ADD KEY `template_groups_block_template_group_id_foreign` (`block_template_group_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `variable_translations`
--
ALTER TABLE `variable_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variable_translations_lang_id_foreign` (`lang_id`),
  ADD KEY `variable_id` (`variable_id`);

--
-- Индексы таблицы `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widgets_slug_unique` (`slug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT для таблицы `block_contents`
--
ALTER TABLE `block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `block_content_translations`
--
ALTER TABLE `block_content_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT для таблицы `block_templates`
--
ALTER TABLE `block_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `block_template_attributes`
--
ALTER TABLE `block_template_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT для таблицы `block_template_groups`
--
ALTER TABLE `block_template_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `block_template_repeaters`
--
ALTER TABLE `block_template_repeaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `block_template_repeater_iterations`
--
ALTER TABLE `block_template_repeater_iterations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `form_items`
--
ALTER TABLE `form_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `form_item_translations`
--
ALTER TABLE `form_item_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `form_translations`
--
ALTER TABLE `form_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gallery_items`
--
ALTER TABLE `gallery_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `gallery_item_translations`
--
ALTER TABLE `gallery_item_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `gallery_translations`
--
ALTER TABLE `gallery_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `model_additions`
--
ALTER TABLE `model_additions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT для таблицы `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `module_attributes`
--
ALTER TABLE `module_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `module_items`
--
ALTER TABLE `module_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `module_item_module_items`
--
ALTER TABLE `module_item_module_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `module_item_properties`
--
ALTER TABLE `module_item_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT для таблицы `module_modules`
--
ALTER TABLE `module_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `module_repeaters`
--
ALTER TABLE `module_repeaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `module_repeater_iterations`
--
ALTER TABLE `module_repeater_iterations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `page_properties`
--
ALTER TABLE `page_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `taxonomy_attributes`
--
ALTER TABLE `taxonomy_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `taxonomy_items`
--
ALTER TABLE `taxonomy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `taxonomy_item_properties`
--
ALTER TABLE `taxonomy_item_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `template_groups`
--
ALTER TABLE `template_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `variables`
--
ALTER TABLE `variables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `variable_translations`
--
ALTER TABLE `variable_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_block_template_id_foreign` FOREIGN KEY (`block_template_id`) REFERENCES `block_templates` (`id`);

--
-- Ограничения внешнего ключа таблицы `block_contents`
--
ALTER TABLE `block_contents`
  ADD CONSTRAINT `block_contents_ibfk_1` FOREIGN KEY (`block_template_attribute_id`) REFERENCES `block_template_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `block_content_translations`
--
ALTER TABLE `block_content_translations`
  ADD CONSTRAINT `block_content_translations_ibfk_1` FOREIGN KEY (`block_content_id`) REFERENCES `block_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `block_content_translations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);

--
-- Ограничения внешнего ключа таблицы `block_template_repeater_iterations`
--
ALTER TABLE `block_template_repeater_iterations`
  ADD CONSTRAINT `block_template_repeater_iterations_ibfk_1` FOREIGN KEY (`block_template_repeater_id`) REFERENCES `block_template_repeaters` (`id`),
  ADD CONSTRAINT `block_template_repeator_iterations_block_id_foreign` FOREIGN KEY (`iterable_id`) REFERENCES `blocks` (`id`);

--
-- Ограничения внешнего ключа таблицы `form_items`
--
ALTER TABLE `form_items`
  ADD CONSTRAINT `form_items_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Ограничения внешнего ключа таблицы `form_item_translations`
--
ALTER TABLE `form_item_translations`
  ADD CONSTRAINT `form_item_translations_form_item_id_foreign` FOREIGN KEY (`form_item_id`) REFERENCES `form_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `form_translations`
--
ALTER TABLE `form_translations`
  ADD CONSTRAINT `form_translations_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Ограничения внешнего ключа таблицы `gallery_items`
--
ALTER TABLE `gallery_items`
  ADD CONSTRAINT `gallery_items_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`);

--
-- Ограничения внешнего ключа таблицы `gallery_item_translations`
--
ALTER TABLE `gallery_item_translations`
  ADD CONSTRAINT `gallery_item_translations_gallery_item_id_foreign` FOREIGN KEY (`gallery_item_id`) REFERENCES `gallery_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `gallery_translations`
--
ALTER TABLE `gallery_translations`
  ADD CONSTRAINT `gallery_translations_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`);

--
-- Ограничения внешнего ключа таблицы `model_additions`
--
ALTER TABLE `model_additions`
  ADD CONSTRAINT `model_internals_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);

--
-- Ограничения внешнего ключа таблицы `model_item_taxonomy_items`
--
ALTER TABLE `model_item_taxonomy_items`
  ADD CONSTRAINT `model_item_taxonomy_items_module_item_id_foreign` FOREIGN KEY (`module_item_id`) REFERENCES `module_items` (`id`),
  ADD CONSTRAINT `model_item_taxonomy_items_taxonomy_item_id_foreign` FOREIGN KEY (`taxonomy_item_id`) REFERENCES `taxonomy_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `module_items`
--
ALTER TABLE `module_items`
  ADD CONSTRAINT `module_items_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `module_item_module_items`
--
ALTER TABLE `module_item_module_items`
  ADD CONSTRAINT `module_item_module_items_child_module_item_id_foreign` FOREIGN KEY (`child_module_item_id`) REFERENCES `module_items` (`id`),
  ADD CONSTRAINT `module_item_module_items_parent_module_item_id_foreign` FOREIGN KEY (`parent_module_item_id`) REFERENCES `module_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `module_item_properties`
--
ALTER TABLE `module_item_properties`
  ADD CONSTRAINT `module_item_properties_ibfk_3` FOREIGN KEY (`module_attribute_id`) REFERENCES `module_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `module_repeater_iterations`
--
ALTER TABLE `module_repeater_iterations`
  ADD CONSTRAINT `mr_id_foreign` FOREIGN KEY (`module_repeater_id`) REFERENCES `module_repeaters` (`id`);

--
-- Ограничения внешнего ключа таблицы `module_taxonomies`
--
ALTER TABLE `module_taxonomies`
  ADD CONSTRAINT `module_taxonomies_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `module_taxonomies_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomies` (`id`);

--
-- Ограничения внешнего ключа таблицы `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_parent_page_id_foreign` FOREIGN KEY (`parent_page_id`) REFERENCES `pages` (`id`);

--
-- Ограничения внешнего ключа таблицы `page_properties`
--
ALTER TABLE `page_properties`
  ADD CONSTRAINT `page_properties_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `page_properties_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Ограничения внешнего ключа таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `seo`
--
ALTER TABLE `seo`
  ADD CONSTRAINT `seo_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);

--
-- Ограничения внешнего ключа таблицы `taxonomy_attributes`
--
ALTER TABLE `taxonomy_attributes`
  ADD CONSTRAINT `taxonomy_attributes_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomies` (`id`);

--
-- Ограничения внешнего ключа таблицы `taxonomy_items`
--
ALTER TABLE `taxonomy_items`
  ADD CONSTRAINT `taxonomy_items_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomies` (`id`);

--
-- Ограничения внешнего ключа таблицы `taxonomy_item_properties`
--
ALTER TABLE `taxonomy_item_properties`
  ADD CONSTRAINT `taxonomy_item_properties_taxonomy_attribute_id_foreign` FOREIGN KEY (`taxonomy_attribute_id`) REFERENCES `taxonomy_attributes` (`id`),
  ADD CONSTRAINT `taxonomy_item_properties_taxonomy_item_id_foreign` FOREIGN KEY (`taxonomy_item_id`) REFERENCES `taxonomy_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `template_groups`
--
ALTER TABLE `template_groups`
  ADD CONSTRAINT `template_groups_block_template_group_id_foreign` FOREIGN KEY (`block_template_group_id`) REFERENCES `block_template_groups` (`id`),
  ADD CONSTRAINT `template_groups_block_template_id_foreign` FOREIGN KEY (`block_template_id`) REFERENCES `block_templates` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `variable_translations`
--
ALTER TABLE `variable_translations`
  ADD CONSTRAINT `variable_translations_ibfk_1` FOREIGN KEY (`variable_id`) REFERENCES `variables` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variable_translations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
