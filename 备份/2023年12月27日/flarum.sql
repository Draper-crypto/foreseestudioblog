-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-12-27 14:42:53
-- 服务器版本： 5.7.44-log
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `flarum`
--

-- --------------------------------------------------------

--
-- 表的结构 `access_tokens`
--

CREATE TABLE `access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `access_tokens`
--

INSERT INTO `access_tokens` (`id`, `token`, `user_id`, `last_activity_at`, `created_at`, `type`, `title`, `last_ip_address`, `last_user_agent`) VALUES
(1, 'y0aOrwXPkCKG30R0TgnRpYqqmHMx9Ye2aQOCv8PM', 1, '2023-12-27 02:34:19', '2023-12-27 02:32:07', 'session_remember', NULL, '192.168.1.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'),
(4, 'LD7YvyFoUiWy5pdeZZm3Z8aaBjPUS14eicOmJypQ', 1, '2023-12-27 06:03:42', '2023-12-27 05:40:13', 'session', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `api_keys`
--

CREATE TABLE `api_keys` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `allowed_ips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `custom_emojis`
--

CREATE TABLE `custom_emojis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_to_replace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `discussions`
--

CREATE TABLE `discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '1',
  `participant_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_number_index` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `first_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `best_answer_post_id` int(10) UNSIGNED DEFAULT NULL,
  `best_answer_user_id` int(10) UNSIGNED DEFAULT NULL,
  `best_answer_notified` tinyint(1) NOT NULL,
  `best_answer_set_at` datetime DEFAULT NULL,
  `frontpage` tinyint(1) NOT NULL DEFAULT '0',
  `frontdate` datetime DEFAULT NULL,
  `is_stickiest` tinyint(1) NOT NULL DEFAULT '0',
  `is_tag_sticky` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `discussions`
--

INSERT INTO `discussions` (`id`, `title`, `comment_count`, `participant_count`, `post_number_index`, `created_at`, `user_id`, `first_post_id`, `last_posted_at`, `last_posted_user_id`, `last_post_id`, `last_post_number`, `hidden_at`, `hidden_user_id`, `slug`, `is_private`, `is_approved`, `is_sticky`, `is_locked`, `view_count`, `best_answer_post_id`, `best_answer_user_id`, `best_answer_notified`, `best_answer_set_at`, `frontpage`, `frontdate`, `is_stickiest`, `is_tag_sticky`) VALUES
(1, ' 中文文案排版指北', 1, 1, 0, '2023-12-27 03:09:26', 1, 1, '2023-12-27 03:09:26', 1, 1, 1, NULL, NULL, 'zhong-wen-wen-an-pai-ban-zhi-bei', 0, 1, 0, 0, 1, NULL, NULL, 1, NULL, 0, NULL, 0, 0),
(2, 'Foresee Studio论坛隐私政策', 1, 1, 0, '2023-12-27 05:42:39', 1, 2, '2023-12-27 05:42:39', 1, 2, 1, NULL, NULL, 'foresee-studiolun-tan-yin-si-zheng-ce', 0, 1, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, 0, 0),
(3, 'Markdown语法使用指南', 1, 1, 0, '2023-12-27 05:48:10', 1, 3, '2023-12-27 05:48:10', 1, 3, 1, NULL, NULL, 'markdownyu-fa-shi-yong-zhi-nan', 0, 1, 0, 0, 2, NULL, NULL, 0, NULL, 0, NULL, 0, 0),
(6, '更新日志', 1, 1, 0, '2023-12-27 05:51:16', 1, 6, '2023-12-27 05:51:16', 1, 6, 1, NULL, NULL, 'geng-xin-ri-zhi', 0, 1, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, 0, 0),
(7, 'Java学习笔记', 1, 1, 0, '2023-12-27 05:52:36', 1, 7, '2023-12-27 05:52:36', 1, 7, 1, NULL, NULL, 'javaxue-xi-bi-ji', 0, 1, 0, 0, 2, NULL, NULL, 0, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `discussion_sticky_tag`
--

CREATE TABLE `discussion_sticky_tag` (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `discussion_tag`
--

CREATE TABLE `discussion_tag` (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `discussion_tag`
--

INSERT INTO `discussion_tag` (`discussion_id`, `tag_id`, `created_at`) VALUES
(1, 1, '2023-12-27 03:09:25'),
(2, 1, '2023-12-27 05:42:39'),
(3, 1, '2023-12-27 05:48:10'),
(6, 1, '2023-12-27 05:51:16'),
(7, 1, '2023-12-27 05:52:36');

-- --------------------------------------------------------

--
-- 表的结构 `discussion_user`
--

CREATE TABLE `discussion_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `last_read_post_number` int(10) UNSIGNED DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookmarked_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `discussion_user`
--

INSERT INTO `discussion_user` (`user_id`, `discussion_id`, `last_read_at`, `last_read_post_number`, `subscription`, `bookmarked_at`) VALUES
(1, 1, '2023-12-27 03:09:26', 1, NULL, NULL),
(1, 2, '2023-12-27 05:42:40', 1, NULL, NULL),
(1, 3, '2023-12-27 05:48:11', 1, NULL, NULL),
(1, 6, '2023-12-27 05:51:16', 1, NULL, NULL),
(1, 7, '2023-12-27 05:52:37', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `discussion_views`
--

CREATE TABLE `discussion_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `discussion_views`
--

INSERT INTO `discussion_views` (`id`, `user_id`, `discussion_id`, `ip`, `visited_at`) VALUES
(1, 1, 1, '127.0.0.1', '2023-12-27 03:09:27'),
(2, 1, 2, '127.0.0.1', '2023-12-27 05:42:40'),
(3, 1, 3, '127.0.0.1', '2023-12-27 05:48:11'),
(4, 1, 3, '127.0.0.1', '2023-12-27 05:50:11'),
(5, 1, 6, '127.0.0.1', '2023-12-27 05:51:17'),
(6, 1, 7, '127.0.0.1', '2023-12-27 05:52:37'),
(7, 1, 7, '127.0.0.1', '2023-12-27 05:53:01');

-- --------------------------------------------------------

--
-- 表的结构 `doorkeys`
--

CREATE TABLE `doorkeys` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `max_uses` int(10) UNSIGNED NOT NULL,
  `uses` int(10) UNSIGNED NOT NULL,
  `activates` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `drafts`
--

CREATE TABLE `drafts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `relationships` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `scheduled_validation_error` mediumtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `email_tokens`
--

CREATE TABLE `email_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `flags`
--

CREATE TABLE `flags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `fof_linguist_strings`
--

CREATE TABLE `fof_linguist_strings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `fof_terms_policies`
--

CREATE TABLE `fof_terms_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_message` text COLLATE utf8mb4_unicode_ci,
  `terms_updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `fof_terms_policy_user`
--

CREATE TABLE `fof_terms_policy_user` (
  `policy_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `accepted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `groups`
--

INSERT INTO `groups` (`id`, `name_singular`, `name_plural`, `color`, `icon`, `is_hidden`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admins', '#B72A2A', 'fas fa-wrench', 0, NULL, NULL),
(2, 'Guest', 'Guests', NULL, NULL, 0, NULL, NULL),
(3, 'Member', 'Members', NULL, NULL, 0, NULL, NULL),
(4, 'Mod', 'Mods', '#80349E', 'fas fa-bolt', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `group_permission`
--

CREATE TABLE `group_permission` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `group_permission`
--

INSERT INTO `group_permission` (`group_id`, `permission`, `created_at`) VALUES
(2, 'viewForum', NULL),
(3, 'discussion.flagPosts', '2023-12-27 02:32:09'),
(3, 'discussion.likePosts', '2023-12-27 02:32:48'),
(3, 'discussion.reply', NULL),
(3, 'discussion.replyWithoutApproval', '2023-12-27 02:32:17'),
(3, 'discussion.selectBestAnswerOwnDiscussion', '2023-12-27 03:10:52'),
(3, 'discussion.startWithoutApproval', '2023-12-27 02:32:17'),
(3, 'fof-socialprofile.editOwn', '2023-12-27 05:45:43'),
(3, 'fof-socialprofile.view', '2023-12-27 05:45:43'),
(3, 'searchUsers', NULL),
(3, 'setProfileCover', '2023-12-27 06:02:33'),
(3, 'startDiscussion', NULL),
(3, 'user.editOwnNickname', '2023-12-27 05:49:33'),
(4, 'discussion.approvePosts', '2023-12-27 02:32:17'),
(4, 'discussion.editPosts', NULL),
(4, 'discussion.front', '2023-12-27 05:41:27'),
(4, 'discussion.hide', NULL),
(4, 'discussion.hidePosts', NULL),
(4, 'discussion.lock', '2023-12-27 02:32:46'),
(4, 'discussion.rename', NULL),
(4, 'discussion.stickiest', '2023-12-27 05:51:48'),
(4, 'discussion.stickiest.tagSticky', '2023-12-27 05:51:48'),
(4, 'discussion.sticky', '2023-12-27 02:32:35'),
(4, 'discussion.tag', '2023-12-27 02:32:20'),
(4, 'discussion.viewFlags', '2023-12-27 02:32:09'),
(4, 'discussion.viewIpsPosts', NULL),
(4, 'fof-socialprofile.editAny', '2023-12-27 05:45:43'),
(4, 'user.createModeratorNotes', '2023-12-27 05:43:35'),
(4, 'user.saveDrafts', '2023-12-27 03:15:08'),
(4, 'user.scheduleDrafts', '2023-12-27 03:15:09'),
(4, 'user.suspend', '2023-12-27 02:32:31'),
(4, 'user.viewLastSeenAt', NULL),
(4, 'user.viewModeratorNotes', '2023-12-27 05:43:35');

-- --------------------------------------------------------

--
-- 表的结构 `group_user`
--

CREATE TABLE `group_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `group_user`
--

INSERT INTO `group_user` (`user_id`, `group_id`, `created_at`) VALUES
(1, 1, '2023-12-27 02:32:07');

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` enum('everyone','members','guests') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'everyone'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `login_providers`
--

CREATE TABLE `login_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `extension`) VALUES
(1, '2015_02_24_000000_create_access_tokens_table', NULL),
(2, '2015_02_24_000000_create_api_keys_table', NULL),
(3, '2015_02_24_000000_create_config_table', NULL),
(4, '2015_02_24_000000_create_discussions_table', NULL),
(5, '2015_02_24_000000_create_email_tokens_table', NULL),
(6, '2015_02_24_000000_create_groups_table', NULL),
(7, '2015_02_24_000000_create_notifications_table', NULL),
(8, '2015_02_24_000000_create_password_tokens_table', NULL),
(9, '2015_02_24_000000_create_permissions_table', NULL),
(10, '2015_02_24_000000_create_posts_table', NULL),
(11, '2015_02_24_000000_create_users_discussions_table', NULL),
(12, '2015_02_24_000000_create_users_groups_table', NULL),
(13, '2015_02_24_000000_create_users_table', NULL),
(14, '2015_09_15_000000_create_auth_tokens_table', NULL),
(15, '2015_09_20_224327_add_hide_to_discussions', NULL),
(16, '2015_09_22_030432_rename_notification_read_time', NULL),
(17, '2015_10_07_130531_rename_config_to_settings', NULL),
(18, '2015_10_24_194000_add_ip_address_to_posts', NULL),
(19, '2015_12_05_042721_change_access_tokens_columns', NULL),
(20, '2015_12_17_194247_change_settings_value_column_to_text', NULL),
(21, '2016_02_04_095452_add_slug_to_discussions', NULL),
(22, '2017_04_07_114138_add_is_private_to_discussions', NULL),
(23, '2017_04_07_114138_add_is_private_to_posts', NULL),
(24, '2018_01_11_093900_change_access_tokens_columns', NULL),
(25, '2018_01_11_094000_change_access_tokens_add_foreign_keys', NULL),
(26, '2018_01_11_095000_change_api_keys_columns', NULL),
(27, '2018_01_11_101800_rename_auth_tokens_to_registration_tokens', NULL),
(28, '2018_01_11_102000_change_registration_tokens_rename_id_to_token', NULL),
(29, '2018_01_11_102100_change_registration_tokens_created_at_to_datetime', NULL),
(30, '2018_01_11_120604_change_posts_table_to_innodb', NULL),
(31, '2018_01_11_155200_change_discussions_rename_columns', NULL),
(32, '2018_01_11_155300_change_discussions_add_foreign_keys', NULL),
(33, '2018_01_15_071700_rename_users_discussions_to_discussion_user', NULL),
(34, '2018_01_15_071800_change_discussion_user_rename_columns', NULL),
(35, '2018_01_15_071900_change_discussion_user_add_foreign_keys', NULL),
(36, '2018_01_15_072600_change_email_tokens_rename_id_to_token', NULL),
(37, '2018_01_15_072700_change_email_tokens_add_foreign_keys', NULL),
(38, '2018_01_15_072800_change_email_tokens_created_at_to_datetime', NULL),
(39, '2018_01_18_130400_rename_permissions_to_group_permission', NULL),
(40, '2018_01_18_130500_change_group_permission_add_foreign_keys', NULL),
(41, '2018_01_18_130600_rename_users_groups_to_group_user', NULL),
(42, '2018_01_18_130700_change_group_user_add_foreign_keys', NULL),
(43, '2018_01_18_133000_change_notifications_columns', NULL),
(44, '2018_01_18_133100_change_notifications_add_foreign_keys', NULL),
(45, '2018_01_18_134400_change_password_tokens_rename_id_to_token', NULL),
(46, '2018_01_18_134500_change_password_tokens_add_foreign_keys', NULL),
(47, '2018_01_18_134600_change_password_tokens_created_at_to_datetime', NULL),
(48, '2018_01_18_135000_change_posts_rename_columns', NULL),
(49, '2018_01_18_135100_change_posts_add_foreign_keys', NULL),
(50, '2018_01_30_112238_add_fulltext_index_to_discussions_title', NULL),
(51, '2018_01_30_220100_create_post_user_table', NULL),
(52, '2018_01_30_222900_change_users_rename_columns', NULL),
(55, '2018_09_15_041340_add_users_indicies', NULL),
(56, '2018_09_15_041828_add_discussions_indicies', NULL),
(57, '2018_09_15_043337_add_notifications_indices', NULL),
(58, '2018_09_15_043621_add_posts_indices', NULL),
(59, '2018_09_22_004100_change_registration_tokens_columns', NULL),
(60, '2018_09_22_004200_create_login_providers_table', NULL),
(61, '2018_10_08_144700_add_shim_prefix_to_group_icons', NULL),
(62, '2019_10_12_195349_change_posts_add_discussion_foreign_key', NULL),
(63, '2020_03_19_134512_change_discussions_default_comment_count', NULL),
(64, '2020_04_21_130500_change_permission_groups_add_is_hidden', NULL),
(65, '2021_03_02_040000_change_access_tokens_add_type', NULL),
(66, '2021_03_02_040500_change_access_tokens_add_id', NULL),
(67, '2021_03_02_041000_change_access_tokens_add_title_ip_agent', NULL),
(68, '2021_04_18_040500_change_migrations_add_id_primary_key', NULL),
(69, '2021_04_18_145100_change_posts_content_column_to_mediumtext', NULL),
(70, '2018_07_21_000000_seed_default_groups', NULL),
(71, '2018_07_21_000100_seed_default_group_permissions', NULL),
(72, '2021_05_10_000000_rename_permissions', NULL),
(73, '2022_05_20_000000_add_timestamps_to_groups_table', NULL),
(74, '2022_05_20_000001_add_created_at_to_group_user_table', NULL),
(75, '2022_05_20_000002_add_created_at_to_group_permission_table', NULL),
(76, '2022_07_14_000000_add_type_index_to_posts', NULL),
(77, '2022_07_14_000001_add_type_created_at_composite_index_to_posts', NULL),
(78, '2022_08_06_000000_change_access_tokens_last_activity_at_to_nullable', NULL),
(79, '2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags'),
(80, '2015_09_02_000000_create_flags_table', 'flarum-flags'),
(81, '2017_07_22_000000_add_default_permissions', 'flarum-flags'),
(82, '2018_06_27_101500_change_flags_rename_time_to_created_at', 'flarum-flags'),
(83, '2018_06_27_101600_change_flags_add_foreign_keys', 'flarum-flags'),
(84, '2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at', 'flarum-flags'),
(85, '2018_09_15_043621_add_flags_indices', 'flarum-flags'),
(86, '2019_10_22_000000_change_reason_text_col_type', 'flarum-flags'),
(87, '2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval'),
(88, '2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval'),
(89, '2017_07_22_000000_add_default_permissions', 'flarum-approval'),
(90, '2015_02_24_000000_create_discussions_tags_table', 'flarum-tags'),
(91, '2015_02_24_000000_create_tags_table', 'flarum-tags'),
(92, '2015_02_24_000000_create_users_tags_table', 'flarum-tags'),
(93, '2015_02_24_000000_set_default_settings', 'flarum-tags'),
(94, '2015_10_19_061223_make_slug_unique', 'flarum-tags'),
(95, '2017_07_22_000000_add_default_permissions', 'flarum-tags'),
(96, '2018_06_27_085200_change_tags_columns', 'flarum-tags'),
(97, '2018_06_27_085300_change_tags_add_foreign_keys', 'flarum-tags'),
(98, '2018_06_27_090400_rename_users_tags_to_tag_user', 'flarum-tags'),
(99, '2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at', 'flarum-tags'),
(100, '2018_06_27_100200_change_tag_user_add_foreign_keys', 'flarum-tags'),
(101, '2018_06_27_103000_rename_discussions_tags_to_discussion_tag', 'flarum-tags'),
(102, '2018_06_27_103100_add_discussion_tag_foreign_keys', 'flarum-tags'),
(103, '2019_04_21_000000_add_icon_to_tags_table', 'flarum-tags'),
(104, '2022_05_20_000003_add_timestamps_to_tags_table', 'flarum-tags'),
(105, '2022_05_20_000004_add_created_at_to_discussion_tag_table', 'flarum-tags'),
(106, '2023_03_01_000000_create_post_mentions_tag_table', 'flarum-tags'),
(107, '2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend'),
(108, '2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend'),
(109, '2017_07_22_000000_add_default_permissions', 'flarum-suspend'),
(110, '2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until', 'flarum-suspend'),
(111, '2021_10_27_000000_add_suspend_reason_and_message', 'flarum-suspend'),
(112, '2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions'),
(113, '2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky'),
(114, '2017_07_22_000000_add_default_permissions', 'flarum-sticky'),
(115, '2018_09_15_043621_add_discussions_indices', 'flarum-sticky'),
(116, '2021_01_13_000000_add_discussion_last_posted_at_indices', 'flarum-sticky'),
(117, '2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions'),
(118, '2015_05_11_000000_create_mentions_users_table', 'flarum-mentions'),
(119, '2018_06_27_102000_rename_mentions_posts_to_post_mentions_post', 'flarum-mentions'),
(120, '2018_06_27_102100_rename_mentions_users_to_post_mentions_user', 'flarum-mentions'),
(121, '2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id', 'flarum-mentions'),
(122, '2018_06_27_102300_change_post_mentions_post_add_foreign_keys', 'flarum-mentions'),
(123, '2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id', 'flarum-mentions'),
(124, '2018_06_27_102500_change_post_mentions_user_add_foreign_keys', 'flarum-mentions'),
(125, '2021_04_19_000000_set_default_settings', 'flarum-mentions'),
(126, '2022_05_20_000005_add_created_at_to_post_mentions_post_table', 'flarum-mentions'),
(127, '2022_05_20_000006_add_created_at_to_post_mentions_user_table', 'flarum-mentions'),
(128, '2022_10_21_000000_create_post_mentions_group_table', 'flarum-mentions'),
(129, '2021_03_25_000000_default_settings', 'flarum-markdown'),
(130, '2015_02_24_000000_add_locked_to_discussions', 'flarum-lock'),
(131, '2017_07_22_000000_add_default_permissions', 'flarum-lock'),
(132, '2018_09_15_043621_add_discussions_indices', 'flarum-lock'),
(133, '2015_05_11_000000_create_posts_likes_table', 'flarum-likes'),
(134, '2015_09_04_000000_add_default_like_permissions', 'flarum-likes'),
(135, '2018_06_27_100600_rename_posts_likes_to_post_likes', 'flarum-likes'),
(136, '2018_06_27_100700_change_post_likes_add_foreign_keys', 'flarum-likes'),
(137, '2021_05_10_094200_add_created_at_to_post_likes_table', 'flarum-likes'),
(138, '2018_09_29_060444_replace_emoji_shorcuts_with_unicode', 'flarum-emoji'),
(139, '2019_09_22_01_rename_flagrow_tables', 'fof-linguist'),
(140, '2019_09_22_02_create_strings_table', 'fof-linguist'),
(141, '2021_02_24_000000_default_settings', 'askvortsov-checklist'),
(142, '2022_08_17_alter_discussion_user_add_bookmarked', 'clarkwinkelmann-discussion-bookmarks'),
(143, '2017_11_07_223624_discussions_add_views', 'michaelbelgium-discussion-views'),
(144, '2018_11_30_141817_discussions_rename_views', 'michaelbelgium-discussion-views'),
(145, '2020_01_11_220612_add_discussionviews_table', 'michaelbelgium-discussion-views'),
(146, '2020_10_06_alter_users_add_approval_count', 'clarkwinkelmann-first-post-approval'),
(147, '2021_07_06_000000_set_default_settings', 'the-turk-flamoji'),
(148, '2021_07_08_000000_create_custom_emojis_table', 'the-turk-flamoji'),
(149, '2019_11_04_000001_add_columns_to_discussions_table', 'fof-best-answer'),
(150, '2019_11_04_000002_add_foreign_keys_to_best_anwer_columns', 'fof-best-answer'),
(151, '2019_11_04_000003_migrate_extension_settings', 'fof-best-answer'),
(152, '2020_02_04_205300_add_best_answer_set_timestamp', 'fof-best-answer'),
(153, '2021_08_09_add_qna_column_to_tags_table', 'fof-best-answer'),
(154, '2021_08_10_add_reminders_column_to_tags_table', 'fof-best-answer'),
(155, '2021_08_15_migrate_reminder_settings', 'fof-best-answer'),
(156, '2021_09_10_add_default_filter_option_setting', 'fof-best-answer'),
(157, '2022_05_19_000000_add_best_answer_count_to_users_table', 'fof-best-answer'),
(158, '2023_11_23_000000_create_enabled_tags_setting_key', 'fof-best-answer'),
(159, '0000_00_00_000000_migrate_extension_settings', 'fof-cookie-consent'),
(160, '2018_11_18_01_create_doorkey_table', 'fof-doorman'),
(161, '2018_11_19_01_add_invite_code_to_users', 'fof-doorman'),
(162, '2020_11_14_000000_migrate_settings_to_fof', 'fof-doorman'),
(163, '2019_08_02_171300_create_drafts_table', 'fof-drafts'),
(164, '2019_08_02_172100_add_drafts_foreign_keys', 'fof-drafts'),
(165, '2019_08_03_171600_add_default_permissions', 'fof-drafts'),
(166, '2019_08_04_151000_change_content_to_medium_text', 'fof-drafts'),
(167, '2020_05_24_000000_add_scheduled_at_column', 'fof-drafts'),
(168, '2020_05_24_000001_add_schedule_post_permission', 'fof-drafts'),
(169, '2020_05_24_000002_add_error_and_ip_columns', 'fof-drafts'),
(170, '2020_05_24_000003_add_scheduled_post_setting', 'fof-drafts'),
(171, '2020_08_16_000000_add_extra_to_drafts', 'fof-drafts'),
(172, '2022_12_05_000000_modify_drafts_table_allow_null_title', 'fof-drafts'),
(173, '2017_03_08_102708_add_emailed_to_posts', 'fof-filter'),
(174, '2019_07_05_022521_add_auto_mod_to_posts', 'fof-filter'),
(175, '2021_09_12_modify_badwords_delimiter', 'fof-filter'),
(176, '2019_06_11_000000_add_subscription_to_users_tags_table', 'fof-follow-tags'),
(177, '2019_06_28_000000_add_hide_subscription_option', 'fof-follow-tags'),
(178, '2021_01_22_000000_add_indicies', 'fof-follow-tags'),
(179, '2022_05_20_000000_add_timestamps_to_tag_user_table', 'fof-follow-tags'),
(180, '2018_05_01_000000_add_frontpage_table', 'fof-frontpage'),
(181, '2018_05_02_000000_add_default_permissions', 'fof-frontpage'),
(182, '2016_02_13_000000_create_links_table', 'fof-links'),
(183, '2016_04_19_065618_change_links_columns', 'fof-links'),
(184, '2020_03_16_000000_add_child_links', 'fof-links'),
(185, '2020_09_10_000000_add_icon_to_links_table', 'fof-links'),
(186, '2021_01_17_000000_add_registered_users_only_to_links_table', 'fof-links'),
(187, '2021_01_17_000001_add_visibility_to_links_table', 'fof-links'),
(188, '2021_01_17_000001_drop_registered_users_only_column_and_migrate_options', 'fof-links'),
(189, '2020_02_25_000001_create_moderator_notes_table', 'fof-moderator-notes'),
(190, '2020_02_25_000002_add_default_permissions', 'fof-moderator-notes'),
(191, '2020_02_29_000001_modify_users_notes_foreign_keys', 'fof-moderator-notes'),
(192, '2020_04_31_000000_format_note_content_for_renderer', 'fof-moderator-notes'),
(193, '2020_06_27_000000_set_default_theme', 'fof-nightmode'),
(194, '2020_07_12_000000_migrate_old_user_settings', 'fof-nightmode'),
(195, '2019_07_01_000000_add_polls_table', 'fof-polls'),
(196, '2019_07_01_000001_add_poll_options_table', 'fof-polls'),
(197, '2019_07_01_000002_add_poll_votes_table', 'fof-polls'),
(198, '2021_04_06_000000_alter_options_add_vote_count', 'fof-polls'),
(199, '2021_04_06_000001_alter_polls_add_vote_count', 'fof-polls'),
(200, '2022_10_25_000000_alter_options_add_image', 'fof-polls'),
(201, '2023_06_04_000000_add_allow_multiple_votes_option', 'fof-polls'),
(202, '2023_06_05_000000_add_max_votes_option', 'fof-polls'),
(203, '2023_07_05_000001_rename_permissions', 'fof-polls'),
(204, '2023_07_08_000000_rename_polls_discussion_id_column', 'fof-polls'),
(205, '2023_07_08_000001_update_polls_discussion_relation_to_first_post', 'fof-polls'),
(206, '2023_07_14_000000_create_polls_settings_column', 'fof-polls'),
(207, '2023_07_14_000001_polls_use_settings_column', 'fof-polls'),
(208, '2019_06_17_000000_add_settings_social_list', 'fof-share-social'),
(209, '2020_06_07_000000_set_default', 'fof-sitemap'),
(210, '2019_02_05_000000_migrate_from_fa_4', 'fof-socialprofile'),
(211, '2019_02_05_000001_create_socialbuttons_column', 'fof-socialprofile'),
(212, '2021_08_12_000000_add_default_permissions', 'fof-socialprofile'),
(213, '2019_10_22_01_rename_permissions', 'fof-terms'),
(214, '2019_10_22_02_rename_settings', 'fof-terms'),
(215, '2019_10_22_03_rename_flagrow_tables', 'fof-terms'),
(216, '2019_10_22_04_remove_flagrow_migrations', 'fof-terms'),
(217, '2019_10_22_05_create_terms_policies', 'fof-terms'),
(218, '2019_10_22_06_create_terms_policy_user', 'fof-terms'),
(219, '2020_07_01_000000_create_bio_column', 'fof-user-bio'),
(220, '2021_01_17_000000_set_default_bio_length', 'fof-user-bio'),
(221, '2019_06_10_000000_rename_permissions', 'fof-user-directory'),
(222, '2020_11_23_000000_add_nickname_column', 'flarum-nicknames'),
(223, '2020_12_02_000001_set_default_permissions', 'flarum-nicknames'),
(224, '2021_11_16_000000_nickname_column_nullable', 'flarum-nicknames'),
(225, '2020_05_29_000000_add_push_subscriptions_table', 'askvortsov-pwa'),
(226, '2020_08_02_000000_change_endpoint_collation', 'askvortsov-pwa'),
(227, '2020_08_02_000001_remove_unique_constraint', 'askvortsov-pwa'),
(228, '2023_04_13_000000_add_last_used_column', 'askvortsov-pwa'),
(229, '2021_07_04_000000_add_stickies_to_discussions', 'the-turk-stickiest'),
(230, '2021_07_04_000001_add_discussions_stickiest_last_posted_at_indices', 'the-turk-stickiest'),
(231, '2021_07_04_000002_add_discussions_created_at_indices', 'the-turk-stickiest'),
(232, '2021_07_23_000000_add_default_permissions', 'the-turk-stickiest'),
(233, '2022_07_21_000000_drop_discussions_is_tagSticky_indices', 'the-turk-stickiest'),
(234, '2022_07_21_000001_change_discussions_drop_is_tagSticky', 'the-turk-stickiest'),
(235, '2022_07_21_000002_add_is_tag_sticky_to_discussions_table', 'the-turk-stickiest'),
(236, '2022_07_21_000003_add_discussions_is_tag_sticky_indices', 'the-turk-stickiest'),
(237, '2022_07_21_000004_create_discussion_sticky_tag_table', 'the-turk-stickiest'),
(238, '2021_03_13_000000_add_tags_text_color_column', 'nearata-tags-color-generator'),
(239, '2022_08_04_000000_remove_is_custom_color', 'nearata-tags-color-generator'),
(240, '2022_08_13_000000_remove_text_color', 'nearata-tags-color-generator'),
(241, '2020_05_16_01_rename_itnt_settings', 'gitzaai-mobile-ui-tab-2'),
(242, '2021_01_10_01_drop_itnt_settings', 'gitzaai-mobile-ui-tab-2'),
(243, '2021_01_10_02_set_default_settings', 'gitzaai-mobile-ui-tab-2'),
(244, '2019_10_07_000000_add_cover_column', 'sycho-profile-cover'),
(245, '2020_07_25_000000_add_default_cover_permissions', 'sycho-profile-cover');

-- --------------------------------------------------------

--
-- 表的结构 `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `data` blob,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `password_tokens`
--

CREATE TABLE `password_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `polls`
--

CREATE TABLE `polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `public_poll` tinyint(1) NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allow_multiple_votes` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `settings` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT ' ',
  `edited_at` datetime DEFAULT NULL,
  `edited_user_id` int(10) UNSIGNED DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `emailed` tinyint(1) NOT NULL DEFAULT '0',
  `auto_mod` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `discussion_id`, `number`, `created_at`, `user_id`, `type`, `content`, `edited_at`, `edited_user_id`, `hidden_at`, `hidden_user_id`, `ip_address`, `is_private`, `is_approved`, `emailed`, `auto_mod`) VALUES
(1, 1, 1, '2023-12-27 03:09:26', 1, 'comment', '<r><H1><s># </s>中文文案排版指北</H1>\n\n<H4><s>#### </s>本文转载来源：<URL url=\"https://github.com/sparanoid/chinese-copywriting-guidelines\">https://github.com/sparanoid/chinese-copywriting-guidelines</URL></H4>\n\n<p>统一中文文案、排版的相关用法，降低团队成员之间的沟通成本，增强网站气质。</p>\n\n<p>Other languages:</p>\n\n<LIST><LI><s>- </s><URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.en.md\"><s>[</s>英语<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.en.md)</e></URL></LI>\n<LI><s>- </s><URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.md\"><s>[</s>繁体中文<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.md)</e></URL></LI>\n<LI><s>- </s><URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md\"><s>[</s>简体中文<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md)</e></URL></LI></LIST>\n\n<HR>------</HR>\n\n<H2><s>## </s>空格</H2>\n\n<QUOTE><i>&gt; </i><p>「有研究显示，打字的时候不喜欢在中文和英文之间加空格的人，感情路都走得很辛苦，有七成的比例会在 34 岁的时候跟自己不爱的人结婚，而其余三成的人最后只能把遗产留给自己的猫。毕竟爱情跟书写都需要适时地留白。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>与大家共勉之。」——<URL url=\"https://github.com/vinta/pangu.js\"><s>[</s>vinta/paranoid-auto-spacing<e>](https://github.com/vinta/pangu.js)</e></URL></p></QUOTE>\n\n<H3><s>### </s>中英文之间需要增加空格</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>在 LeanCloud 上，数据存储是围绕 <C><s>`</s>AVObject<e>`</e></C> 进行的。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>在LeanCloud上，数据存储是围绕<C><s>`</s>AVObject<e>`</e></C>进行的。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>在 LeanCloud上，数据存储是围绕<C><s>`</s>AVObject<e>`</e></C> 进行的。</p></QUOTE>\n\n<p>完整的正确用法：</p>\n\n<QUOTE><i>&gt; </i><p>在 LeanCloud 上，数据存储是围绕 <C><s>`</s>AVObject<e>`</e></C> 进行的。每个 <C><s>`</s>AVObject<e>`</e></C> 都包含了与 JSON 兼容的 key-value 对应的数据。数据是 schema-free 的，你不需要在每个 <C><s>`</s>AVObject<e>`</e></C> 上提前指定存在哪些键，只要直接设定对应的 key-value 即可。</p></QUOTE>\n\n<p>例外：「豆瓣FM」等产品名词，按照官方所定义的格式书写。</p>\n\n<H3><s>### </s>中文与数字之间需要增加空格</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>今天出去买菜花了 5000 元。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>今天出去买菜花了 5000元。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>今天出去买菜花了5000元。</p></QUOTE>\n\n<H3><s>### </s>数字与单位之间需要增加空格</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>我家的光纤入屋宽带有 10 Gbps，SSD 一共有 20 TB</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>我家的光纤入屋宽带有 10Gbps，SSD 一共有 20TB</p></QUOTE>\n\n<p>例外：度数／百分比与数字之间不需要增加空格：</p>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>角度为 90° 的角，就是直角。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>新 MacBook Pro 有 15% 的 CPU 性能提升。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>角度为 90 ° 的角，就是直角。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>新 MacBook Pro 有 15 % 的 CPU 性能提升。</p></QUOTE>\n\n<H3><s>### </s>全角标点与其他字符之间不加空格</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>刚刚买了一部 iPhone，好开心！</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>刚刚买了一部 iPhone ，好开心！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>刚刚买了一部 iPhone， 好开心！</p></QUOTE>\n\n<H3><s>### </s>用 <C><s>`</s>text-spacing<e>`</e></C> 来挽救？</H3>\n\n<p>CSS Text Module Level 4 的 <URL url=\"https://www.w3.org/TR/css-text-4/#text-spacing-property\"><s>[</s><C><s>`</s>text-spacing<e>`</e></C><e>](https://www.w3.org/TR/css-text-4/#text-spacing-property)</e></URL> 和 Microsoft 的 <URL url=\"https://msdn.microsoft.com/library/ms531164%28v=vs.85%29.aspx\"><s>[</s><C><s>`</s>-ms-text-autospace<e>`</e></C><e>](https://msdn.microsoft.com/library/ms531164(v=vs.85).aspx)</e></URL> 可以实现自动为中英文之间增加空白。不过目前并未普及，另外在其他应用场景，例如 macOS、iOS、Windows 等用户界面目前并不存在这个特性，所以请继续保持随手加空格的习惯。</p>\n\n<H2><s>## </s>标点符号</H2>\n\n<H3><s>### </s>不重复使用标点符号</H3>\n\n<p>即使中国大陆的标点符号用法允许重复使用标点符号，但是这么做会破坏句子的美观性。</p>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>德国队竟然战胜了巴西队！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>她竟然对你说「喵」？！</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>德国队竟然战胜了巴西队！！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>德国队竟然战胜了巴西队！！！！！！！！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>她竟然对你说「喵」？？！！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>她竟然对你说「喵」？！？！？？！！</p></QUOTE>\n\n<H2><s>## </s>全角和半角</H2>\n\n<p>不明白什么是全角（全形）与半角（半形）符号？请查看维基百科条目『<URL url=\"https://zh.wikipedia.org/wiki/%E5%85%A8%E5%BD%A2%E5%92%8C%E5%8D%8A%E5%BD%A2\"><s>[</s>全角和半角<e>](https://zh.wikipedia.org/wiki/全形和半形)</e></URL>』。</p>\n\n<H3><s>### </s>使用全角中文标点</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>嗨！你知道嘛？今天前台的小妹跟我说「喵」了哎！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>核磁共振成像（NMRI）是什么原理都不知道？JFGI！</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>嗨! 你知道嘛? 今天前台的小妹跟我说 “喵” 了哎！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>嗨!你知道嘛?今天前台的小妹跟我说\"喵\"了哎！</p>\n<i>&gt;</i>\n<i>&gt; </i><p>核磁共振成像 (NMRI) 是什么原理都不知道? JFGI!</p>\n<i>&gt;</i>\n<i>&gt; </i><p>核磁共振成像(NMRI)是什么原理都不知道?JFGI!</p></QUOTE>\n\n<H3><s>### </s>数字使用半角字符</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>这个蛋糕只卖 1000 元。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>这个蛋糕只卖 １０００ 元。</p></QUOTE>\n\n<p>例外：在设计稿、宣传海报中如出现极少量数字的情形时，为方便文字对齐，是可以使用全角数字的。</p>\n\n<H3><s>### </s>遇到完整的英文整句、特殊名词，其内容使用半角标点</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>乔布斯那句话是怎么说的？「Stay hungry, stay foolish.」</p>\n<i>&gt;</i>\n<i>&gt; </i><p>推荐你阅读《Hackers &amp; Painters: Big Ideas from the Computer Age》，非常的有趣。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>乔布斯那句话是怎么说的？「Stay hungry，stay foolish。」</p>\n<i>&gt;</i>\n<i>&gt; </i><p>推荐你阅读《Hackers＆Painters：Big Ideas from the Computer Age》，非常的有趣。</p></QUOTE>\n\n<H2><s>## </s>名词</H2>\n\n<H3><s>### </s>专有名词使用正确的大小写</H3>\n\n<p>大小写相关用法原属于英文书写范畴，不属于本 wiki 讨论内容，在这里只对部分易错用法进行简述。</p>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>使用 GitHub 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 GitHub、Foursquare、Microsoft Corporation、Google、Facebook, Inc.。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>使用 github 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>使用 GITHUB 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>使用 Github 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>使用 gitHub 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>使用 gｲんĤЦ8 登录</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 github、foursquare、microsoft corporation、google、facebook, inc.。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 GITHUB、FOURSQUARE、MICROSOFT CORPORATION、GOOGLE、FACEBOOK, INC.。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 Github、FourSquare、MicroSoft Corporation、Google、FaceBook, Inc.。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 gitHub、fourSquare、microSoft Corporation、google、faceBook, Inc.。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>我们的客户有 gｲんĤЦ8、ｷouЯƧquﾑгє、๓เςг๏ร๏Ŧt ς๏гק๏гคtเ๏ภn、900913、ƒ4ᄃëв๏๏к, IПᄃ.。</p></QUOTE>\n\n<p>注意：当网页中需要配合整体视觉风格而出现全部大写／小写的情形，HTML 中请使用标淮的大小写规范进行书写；并通过 <C><s>`</s>text-transform: uppercase;<e>`</e></C>／<C><s>`</s>text-transform: lowercase;<e>`</e></C> 对表现形式进行定义。</p>\n\n<H3><s>### </s>不要使用不地道的缩写</H3>\n\n<p>正确：</p>\n\n<QUOTE><i>&gt; </i><p>我们需要一位熟悉 TypeScript、HTML5，至少理解一种框架（如 React、Next.js）的前端开发者。</p></QUOTE>\n\n<p>错误：</p>\n\n<QUOTE><i>&gt; </i><p>我们需要一位熟悉 Ts、h5，至少理解一种框架（如 RJS、nextjs）的 FED。</p></QUOTE>\n\n<H2><s>## </s>争议</H2>\n\n<p>以下用法略带有个人色彩，即：无论是否遵循下述规则，从语法的角度来讲都是<STRONG><s>**</s>正确<e>**</e></STRONG>的。</p>\n\n<H3><s>### </s>链接之间增加空格</H3>\n\n<p>用法：</p>\n\n<QUOTE><i>&gt; </i><p>请 <URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#\"><s>[</s>提交一个 issue<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#)</e></URL> 并分配给相关同事。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>访问我们网站的最新动态，请 <URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#\"><s>[</s>点击这里<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#)</e></URL> 进行订阅！</p></QUOTE>\n\n<p>对比用法：</p>\n\n<QUOTE><i>&gt; </i><p>请<URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#\"><s>[</s>提交一个 issue<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#)</e></URL>并分配给相关同事。</p>\n<i>&gt;</i>\n<i>&gt; </i><p>访问我们网站的最新动态，请<URL url=\"https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#\"><s>[</s>点击这里<e>](https://github.com/gitzaai/chinese-copywriting-guidelines/blob/master/README.zh-Hans.md#)</e></URL>进行订阅！</p></QUOTE>\n\n<H3><s>### </s>简体中文使用直角引号</H3>\n\n<p>用法：</p>\n\n<QUOTE><i>&gt; </i><p>「老师，『有条不紊』的『紊』是什么意思？」</p></QUOTE>\n\n<p>对比用法：</p>\n\n<QUOTE><i>&gt; </i><p>“老师，‘有条不紊’的‘紊’是什么意思？”</p></QUOTE></r>', NULL, NULL, NULL, NULL, '127.0.0.1', 0, 1, 0, 0),
(2, 2, 1, '2023-12-27 05:42:39', 1, 'comment', '<r><H1><s># </s>论坛隐私政策</H1>\n\n\n\n<H2><s>## </s>引言</H2>\n\n<p>欢迎来到<URL url=\"https://www.foreseestudioblog.top/\"><s>[</s>Foresee Studio论坛<e>](https://www.foreseestudioblog.top/)</e></URL>。我们尊重并致力于保护您的隐私权。本隐私政策旨在透明地说明我们如何收集、使用、保护以及分享您的个人信息。</p>\n\n<H2><s>## </s>收集的信息</H2>\n\n<LIST type=\"decimal\"><LI><s>1. </s><STRONG><s>**</s>注册信息<e>**</e></STRONG>：当您在我们的论坛上注册时，我们可能会收集您的用户名、电子邮件地址、密码以及其他联系信息。</LI>\n<LI><s>2. </s><STRONG><s>**</s>使用信息<e>**</e></STRONG>：我们可能会收集有关您如何访问和使用论坛的信息，包括浏览器类型、访问时间、浏览的页面以及点击的链接。</LI>\n<LI><s>3. </s><STRONG><s>**</s>交流信息<e>**</e></STRONG>：当您与我们联系时，我们可能会保留您的通信记录，包括电子邮件或站内消息。</LI></LIST>\n\n<H2><s>## </s>使用信息的方式</H2>\n\n<LIST type=\"decimal\"><LI><s>1. </s><STRONG><s>**</s>提供服务<e>**</e></STRONG>：使用您的信息来提供论坛服务，包括账户管理、客户支持和论坛功能的维护。</LI>\n<LI><s>2. </s><STRONG><s>**</s>改进服务<e>**</e></STRONG>：使用您的信息来改进我们的服务，包括添加新功能或改善现有服务。</LI>\n<LI><s>3. </s><STRONG><s>**</s>安全和法律目的<e>**</e></STRONG>：使用您的信息来保护论坛的安全，防止欺诈行为，并确保符合适用的法律法规。</LI></LIST>\n\n<H2><s>## </s>数据共享</H2>\n\n<LIST type=\"decimal\"><LI><s>1. </s><STRONG><s>**</s>服务提供商<e>**</e></STRONG>：我们可能会与第三方服务提供商共享您的部分信息，以便他们帮助我们提供和改进服务（例如，托管服务或分析服务）。</LI>\n<LI><s>2. </s><STRONG><s>**</s>法律要求<e>**</e></STRONG>：在法律要求或为响应法律程序（如传票或搜查令）时，我们可能需要披露您的信息。</LI>\n<LI><s>3. </s><STRONG><s>**</s>合并或收购<e>**</e></STRONG>：在合并、出售资产或收购的情况下，您的信息可能会被转移给第三方。</LI></LIST>\n\n<H2><s>## </s>信息的安全</H2>\n\n<p>我们采取各种措施来保护您的个人信息，包括使用加密技术、设置访问控制以及进行定期的安全审核。</p>\n\n<H2><s>## </s>用户权利</H2>\n\n<LIST type=\"decimal\"><LI><s>1. </s><STRONG><s>**</s>访问和更新<e>**</e></STRONG>：您可以通过您的账户设置来访问并更新您的个人信息。</LI>\n<LI><s>2. </s><STRONG><s>**</s>删除账户<e>**</e></STRONG>：您可以请求删除您的账户，但请注意，某些信息可能因法律原因或合理商业目的而保留。</LI>\n<LI><s>3. </s><STRONG><s>**</s>选择退出<e>**</e></STRONG>：您可以选择不接收我们的营销邮件。</LI></LIST>\n\n<H2><s>## </s>政策变更</H2>\n\n<p>我们可能会不时更新此隐私政策。我们建议您定期查看本政策以了解任何变更。变更生效前，我们将通过论坛公告或电子邮件通知您。</p>\n\n<H2><s>## </s>联系方式</H2>\n\n<p>如有关于本隐私政策的问题，请通过[联系方式]与我们联系。</p></r>', NULL, NULL, NULL, NULL, '127.0.0.1', 0, 1, 0, 0),
(3, 3, 1, '2023-12-27 05:48:10', 1, 'comment', '<r><H4><s>#### </s>1 标题</H4>\n\n<p>两种形式：<br/>\n1）使用<C><s>`</s>=<e>`</e></C>和<C><s>`</s>-<e>`</e></C>标记一级和二级标题。</p>\n\n<QUOTE><i>&gt; </i><p>一级标题<br/>\n<i>&gt; </i><C><s>`</s>=========<e>`</e></C><br/>\n<i>&gt; </i>二级标题<br/>\n<i>&gt; </i><C><s>`</s>---------<e>`</e></C></p></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><H1><s># </s>一级标题</H1>\n<i>&gt;</i>\n<i>&gt; </i><H2><s>## </s>二级标题</H2></QUOTE>\n\n<p>2）使用<C><s>`</s>#<e>`</e></C>，可表示1-6级标题。</p>\n\n<QUOTE><i>&gt; </i><p><ESC><s>\\</s>#</ESC> 一级标题<br/>\n<i>&gt; </i><ESC><s>\\</s>#</ESC># 二级标题<br/>\n<i>&gt; </i><ESC><s>\\</s>#</ESC>## 三级标题<br/>\n<i>&gt; </i><ESC><s>\\</s>#</ESC>### 四级标题<br/>\n<i>&gt; </i><ESC><s>\\</s>#</ESC>#### 五级标题<br/>\n<i>&gt; </i><ESC><s>\\</s>#</ESC>##### 六级标题</p></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><H1><s># </s>一级标题</H1>\n<i>&gt;</i>\n<i>&gt; </i><H2><s>## </s>二级标题</H2>\n<i>&gt;</i>\n<i>&gt; </i><H3><s>### </s>三级标题</H3>\n<i>&gt;</i>\n<i>&gt; </i><H4><s>#### </s>四级标题</H4>\n<i>&gt;</i>\n<i>&gt; </i><H5><s>##### </s>五级标题</H5>\n<i>&gt;</i>\n<i>&gt; </i><H6><s>###### </s>六级标题</H6></QUOTE>\n\n<H4><s>#### </s>2 段落</H4>\n\n<p>段落的前后要有空行，所谓的空行是指没有文字内容。若想在段内强制换行的方式是使用<STRONG><s>**</s>两个以上<e>**</e></STRONG>空格加上回车（引用中换行省略回车）。</p>\n\n<H4><s>#### </s>3 区块引用</H4>\n\n<p>在段落的每行或者只在第一行使用符号<C><s>`</s>&gt;<e>`</e></C>,还可使用多个嵌套引用，如：</p>\n\n<QUOTE><i>&gt; </i><p><ESC><s>\\</s>&gt;</ESC> 区块引用<br/>\n<i>&gt; </i><ESC><s>\\</s>&gt;</ESC>&gt; 嵌套引用</p></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><p>区块引用</p>\n<i>&gt;</i>\n<QUOTE><i>&gt; &gt; </i><p>嵌套引用</p></QUOTE></QUOTE>\n\n<H4><s>#### </s>4 代码区块</H4>\n\n<p>代码区块的建立是在每行加上4个空格或者一个制表符（如同写代码一样）。如<br/>\n普通段落：</p>\n\n<p>void main()<br/>\n{<br/>\nprintf(“Hello, Markdown.”);<br/>\n}</p>\n\n<p>代码区块：</p>\n\n<CODE lang=\"cpp\"><s>```cpp</s><i>\n</i>void main()\n{\n    printf(\"Hello, Markdown.\");\n}<i>\n</i><e>```</e></CODE>\n\n<p><STRONG><s>**</s>注意<e>**</e></STRONG>:需要和普通段落之间存在空行。</p>\n\n<H4><s>#### </s>5 强调</H4>\n\n<p>在强调内容两侧分别加上<C><s>`</s>*<e>`</e></C>或者<C><s>`</s>_<e>`</e></C>，如：</p>\n\n<QUOTE><i>&gt; </i><CODE lang=\"markdown\"><s>```markdown</s><i>\n&gt; </i>*斜体*，_斜体_\n<i>&gt; </i>**粗体**，__粗体__<i>\n&gt; </i><e>```</e></CODE></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><p><EM><s>*</s>斜体<e>*</e></EM>，<EM><s>*</s>斜体<e>*</e></EM><br/>\n<i>&gt; </i><STRONG><s>**</s>粗体<e>**</e></STRONG>，<STRONG><s>**</s>粗体<e>**</e></STRONG></p></QUOTE>\n\n<H4><s>#### </s>6 列表</H4>\n\n<p>使用<C><s>`</s>·<e>`</e></C>、<C><s>`</s>+<e>`</e></C>、或<C><s>`</s>-<e>`</e></C>标记无序列表，如：</p>\n\n<QUOTE><i>&gt; </i><p>-（+<EM><s>*</s>） 第一项 -（+<e>*</e></EM>） 第二项 - （+*）第三项</p></QUOTE>\n\n<p><STRONG><s>**</s>注意<e>**</e></STRONG>：标记后面最少有一个<EM><s>*</s>空格<e>*</e></EM>或<EM><s>*</s>制表符<e>*</e></EM>。若不在引用区块中，必须和前方段落之间存在空行。</p>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><LIST><LI><s>- </s>第一项</LI>\n<i>&gt; </i><LI><s>- </s>第二项</LI>\n<i>&gt; </i><LI><s>- </s>第三项</LI></LIST></QUOTE>\n\n<p>有序列表的标记方式是将上述的符号换成数字,并辅以<C><s>`</s>.<e>`</e></C>，如：</p>\n\n<QUOTE><i>&gt; </i><p>1 . 第一项<br/>\n<i>&gt; </i>2 . 第二项<br/>\n<i>&gt; </i>3 . 第三项</p></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><LIST type=\"decimal\"><LI><s>1. </s>第一项</LI>\n<i>&gt; </i><LI><s>2. </s>第二项</LI>\n<i>&gt; </i><LI><s>3. </s>第三项</LI></LIST></QUOTE>\n\n<H4><s>#### </s>7 分割线</H4>\n\n<p>分割线最常使用就是三个或以上<C><s>`</s>*<e>`</e></C>，还可以使用<C><s>`</s>-<e>`</e></C>和<C><s>`</s>_<e>`</e></C>。</p>\n\n<H4><s>#### </s>8 链接</H4>\n\n<p>链接可以由两种形式生成：<STRONG><s>**</s>行内式<e>**</e></STRONG>和<STRONG><s>**</s>参考式<e>**</e></STRONG>。<br/>\n<STRONG><s>**</s>行内式<e>**</e></STRONG>：</p>\n\n<p>语法说明：</p>\n\n<p>[]里写链接文字，()里写链接地址, ()中的”“中可以为链接指定title属性，title属性可加可不加。title属性的效果是鼠标悬停在链接上会出现指定的 title文字。链接地址与链接标题前有一个空格。</p>\n\n<CODE lang=\"less\"><s>```less</s><i>\n</i>[行内式链接](https://forum.gitzaai.com)\n[行内式链接带title属性](https://forum.gitzaai.com \"gitzaai\")<i>\n</i><e>```</e></CODE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><p><URL url=\"https://forum.gitzaai.com/\"><s>[</s>行内式链接<e>](https://forum.gitzaai.com/)</e></URL><br/>\n<i>&gt; </i><URL url=\"https://forum.gitzaai.com/\"><s>[</s>行内式链接带title属性<e>](https://forum.gitzaai.com/)</e></URL></p></QUOTE>\n\n<p><STRONG><s>**</s>参考式<e>**</e></STRONG>：</p>\n\n<p>参考式超链接一般用在学术论文上面，或者另一种情况，如果某一个链接在文章中多处使用，那么使用引用 的方式创建链接将非常好，它可以让你对链接进行统一的管理。</p>\n\n<p>语法说明： 参考式链接分为两部分，文中的写法 [链接文字] [链接标记]，在文本的任意位置添加[链接标记]:链接地址 “链接标题”，链接地址与链接标题前有一个空格。</p>\n\n<p>如果链接文字本身可以做为链接标记，你也可以写成 [链接文字] [] [链接文字]：链接地址的形式，见代码的最后一行。</p>\n\n<QUOTE><i>&gt; </i><CODE lang=\"ruby\"><s>```ruby</s><i>\n&gt; </i>我经常用[Google][1]搜索,在[Youtube][2]看视频，使用[Telegram][3]聊天\n<i>&gt; </i>[1]:https://google.com \"Google\"\n<i>&gt; </i>[2]:https://youtube.com \"Youtube\"\n<i>&gt; </i>[3]:https://telegram.org \"Telegram\"<i>\n&gt; </i><e>```</e></CODE></QUOTE>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><p>我经常用<URL url=\"https://google.com/\"><s>[</s>Google<e>](https://google.com/)</e></URL>搜索,在<URL url=\"https://youtube.com/\"><s>[</s>Youtube<e>](https://youtube.com/)</e></URL>看视频，使用<URL url=\"https://telegram.org/\"><s>[</s>Telegram<e>](https://telegram.org/)</e></URL>聊天</p></QUOTE>\n\n<H4><s>#### </s>9 图片</H4>\n\n<p>添加图片的形式和链接相似，只需在链接的基础上前方加一个<C><s>`</s>！<e>`</e></C>。</p>\n\n<CODE lang=\"less\"><s>```less</s><i>\n</i>[!](https://)<i>\n</i><e>```</e></CODE>\n\n<H4><s>#### </s>10 反斜杠<C><s>`</s>\\<e>`</e></C></H4>\n\n<p>相当于<STRONG><s>**</s>反转义<e>**</e></STRONG>作用。使符号成为普通符号。</p>\n\n<H4><s>#### </s>11 符号’`\'</H4>\n\n<p>起到标记作用。如：</p>\n\n<p><C><s>`</s>ctrl+a<e>`</e></C> // ` 符号要跟内容用空格隔开</p>\n\n<p>效果：</p>\n\n<QUOTE><i>&gt; </i><CODE lang=\"css\"><s>```css</s><i>\n&gt; </i>ctrl+a<i>\n&gt; </i><e>```</e></CODE></QUOTE>\n\n<H4><s>#### </s>12 分级目录</H4>\n\n<H4><s>#### </s>语法：</H4>\n\n<CODE lang=\"bash\"><s>```bash</s><i>\n</i>* [目录1](#0)\n   * [标题1](#1)\n   * [标题2](#2)\n   * [标题3](#3)\n   * [标题4](#4)\n\n&lt;h3 id=\"1\"&gt;标题1&lt;/h3&gt;\n    这是ID1的内容。\n&lt;h3 id=\"2\"&gt;标题2&lt;/h3&gt;\n    这是ID2的内容。\n&lt;h3 id=\"3\"&gt;标题3&lt;/h3&gt;\n    这是ID3的内容。\n&lt;h3 id=\"4\"&gt;标题4&lt;/h3&gt;\n    这是ID4的内容。<i>\n</i><e>```</e></CODE>\n\n<H4><s>#### </s>展示效果：</H4>\n\n<LIST><LI><s>- </s>目录1\n  <LIST><LI><s>- </s><URL url=\"https://forum.gitzaai.com/d/4-markdown%E8%AF%AD%E6%B3%95%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/2#1\"><s>[</s>标题1<e>](https://forum.gitzaai.com/d/4-markdown语法使用指南/2#1)</e></URL></LI>\n  <LI><s>- </s><URL url=\"https://forum.gitzaai.com/d/4-markdown%E8%AF%AD%E6%B3%95%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/2#2\"><s>[</s>标题2<e>](https://forum.gitzaai.com/d/4-markdown语法使用指南/2#2)</e></URL></LI>\n  <LI><s>- </s><URL url=\"https://forum.gitzaai.com/d/4-markdown%E8%AF%AD%E6%B3%95%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/2#3\"><s>[</s>标题3<e>](https://forum.gitzaai.com/d/4-markdown语法使用指南/2#3)</e></URL></LI>\n  <LI><s>- </s><URL url=\"https://forum.gitzaai.com/d/4-markdown%E8%AF%AD%E6%B3%95%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/2#4\"><s>[</s>标题4<e>](https://forum.gitzaai.com/d/4-markdown语法使用指南/2#4)</e></URL></LI></LIST></LI></LIST>\n\n<H4><s>#### </s>13 表格</H4>\n\n<p>竖杠<C><s>`</s>|<e>`</e></C>下划线<C><s>`</s>-<e>`</e></C>写法:</p>\n\n<QUOTE><i>&gt; </i><p>使用竖杠<C><s>`</s>|<e>`</e></C>下划线<C><s>`</s>-<e>`</e></C>写法</p></QUOTE>\n\n<H4><s>#### </s>语法：</H4>\n\n<CODE lang=\"lua\"><s>```lua</s><i>\n</i>  |队列1|队列2|队列3|队列4|\n  |---|----|----|---|\n  |行列A1|行列B1|行列C1|行列D1|\n  |行列A2|行列B1|行列C1|行列D1|\n  |行列A3|行列B1|行列C1|行列D1|<i>\n</i><e>```</e></CODE>\n\n<p>| 队列1  | 队列2  | 队列3  | 队列4  |<br/>\n| :----- | :----- | :----- | :----- |<br/>\n| 行列A1 | 行列B1 | 行列C1 | 行列D1 |<br/>\n| 行列A2 | 行列B1 | 行列C1 | 行列D1 |<br/>\n| 行列A3 | 行列B1 | 行列C1 | 行列D1 |</p>\n\n<H4><s>#### </s>14 待办事项:</H4>\n\n<QUOTE><i>&gt; </i><p>要创建代办事项，前缀列表项<C><s>`</s>[ ]<e>`</e></C>。要将任务标记为完成，请使用<C><s>`</s>[x]<e>`</e></C></p></QUOTE>\n\n<LIST><LI><s>- </s>没打勾</LI></LIST>\n\n<p>-</p> \n\n  <p>打勾</p>\n\n  <LIST><LI><s>-  </s>下一行</LI></LIST>\n\n<p>—</p>\n\n<LIST type=\"decimal\"><LI><s>1.  </s>列表<br/>\n    <IMG alt=\"img\" src=\"https://imgoss.gitzaai.com/2021-03-23/1616493257-887200-snipaste-2021-03-23-17-53-22.png\"><s>![</s>img<e>](https://imgoss.gitzaai.com/2021-03-23/1616493257-887200-snipaste-2021-03-23-17-53-22.png)</e></IMG><br/>\n    代码如下</LI></LIST>\n\n<CODE lang=\"yaml\"><s>```yaml</s><i>\n</i>- [x] 没打勾\n- [ ] 打勾\n  - [x] 下一行\n\n---\n\n1. [ ] 列表<i>\n</i><e>```</e></CODE>\n\n<H4><s>#### </s>15 删除线:</H4>\n\n<H4><s>#### </s>语法：</H4>\n\n<CODE lang=\"undefined\"><s>```undefined</s><i>\n</i>~~删除线文字效果~~<i>\n</i><e>```</e></CODE>\n\n<H4><s>#### </s>效果:</H4>\n\n<p><DEL><s>~~</s>删除线文字效果<e>~~</e></DEL></p>\n\n<H3><s>### </s>这是Flarum 特有的？</H3>\n\n<CODE lang=\"markdown\"><s>```markdown</s><i>\n</i>&gt;!折叠文字内容<i>\n</i><e>```</e></CODE>\n\n<H5><s>##### </s>这是效果演示</H5>\n\n<p>&lt;details class=\"spoiler\" style=\"box-sizing: border-box; display: block;\"&gt;&lt;p style=\"box-sizing: border-box; margin: 0px 0px 1em;\"&gt;&lt;/p&gt;&lt;/details&gt;</p></r>', NULL, NULL, NULL, NULL, '127.0.0.1', 0, 1, 0, 0),
(6, 6, 1, '2023-12-27 05:51:16', 1, 'comment', '<r><H2><s>## </s>网站更新日志</H2>\n\n<H3><s>### </s>2023年12月25日</H3>\n\n<LIST><LI><s>- </s>更换主题，替换原 <C><s>`</s>OYO<e>`</e></C> ，现使用 <C><s>`</s>Fluent<e>`</e></C> 。</LI>\n<LI><s>- </s>更换全站字体</LI> </LIST>\n\n\n<CODE lang=\"css\"><s>```css</s><i>\n</i> /* 字体 */\nbody {\n    font-family: San Francisco, Helvetica Neue, LXGW WenKai Screen, Arial, sans-serif;\n  }\n  \n  h1, h2, h3, h4, .TagsLabel, .Button, .DiscussionListItem-count, .item-discussion-views {\n    font-family: San Francisco, Helvetica Neue, LXGW WenKai Screen, Arial, sans-serif;\n  }<i>\n</i><e>```</e></CODE>\n\n<LIST><LI><s>- </s>去除顶部关闭横幅按钮</LI></LIST>\n\n<CODE lang=\"css\"><s>```css</s><i>\n</i>/* 取消欢迎关闭按钮 */\n.Hero-close{\n	display:none;\n}<i>\n</i><e>```</e></CODE>\n\n<LIST><LI><s>- </s>完成网站https部署</LI></LIST>\n\n<CODE lang=\"shell\"><s>```shell</s><i>\n</i>sudo certbot certonly -d *.foreseestudioblog.top -d foreseestudioblog.top --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory<i>\n</i><e>```</e></CODE>\n\n<p>参考教程：<URL url=\"https://cloud.tencent.com/developer/article/2088187\">https://cloud.tencent.com/developer/article/2088187</URL></p>\n\n</r>', NULL, NULL, NULL, NULL, '127.0.0.1', 0, 1, 0, 0),
(7, 7, 1, '2023-12-27 05:52:36', 1, 'comment', '<r><H1><s># </s>一、类与对象</H1>\n\n\n\n<H2><s>## </s>课时1: 面向对象简介</H2>\n\n<p>&amp;emsp;&amp;emsp;Java语言最大的特点在于面向对象的编程设计，并且面向对象的编程设计也在由于Java最初不支持面向对象的编程也都开始转向了面向对象，但是依然有许多的开发者认为面向过程会比较好。<br/>\n最早并且一直到现在流行的编程语言C、C++、Java。 其中C语言已经变为了面向过程开是面向对象的编程语言。</p>\n\n<p>&amp;emsp;&amp;emsp;最早并且一直到现在流行的编程语言C、C++、Java。其中C语言已经变为了面向过程开发是面向对象的编程语言。</p>\n\n<p>&amp;emsp;&amp;emsp;所谓的面向过程指的是面对于一个问题的解决方案，更多的情况下是不会做出重用的设计思考的，而面向对象的主要设计形式为模块化设计，并且可以进行重用配置。在整个的面向对象的设计里面更多情况下考虑的是标准，在使用的时候根据标准进行拼装，而对于面向对象设计有三个主要的特征：</p>\n\n<LIST><LI><s>- </s>封装性：内部的操作对外部而言不可见，当内部的操作都不可直接使用的时候才是安全的；</LI>\n<LI><s>- </s>继承性：在已有结构的基础上继续进行功能的扩充；</LI>\n<LI><s>- </s>多态性：是在继承性的基础上扩充而来的概念，指的是类型的转换处理。</LI></LIST>\n\n<p>&amp;emsp;&amp;emsp;在进行面向对象程序的开发之中一般还有三个步骤:</p>\n\n<LIST><LI><s>- </s>OOA：面向对象分析；</LI>\n<LI><s>- </s>OOD：面向对象设计；</LI>\n<LI><s>- </s>OOP：面向对象编程。</LI></LIST>\n\n<H2><s>## </s>课时2: 类与对象简介</H2>\n\n<QUOTE><i>&gt; </i><p>面向对象是一个非常庞大的话题，但是任何庞大的话题都有其核心的组成：类与对象</p></QUOTE>\n\n<p>类与对象简介：</p> \n\n<LIST><LI><s>- </s>类是对某一类事物的共性的抽象概念</LI>\n<LI><s>- </s>对象描述的是一个具体的产物。</LI></LIST>\n\n<p><C><s>`</s>类是一个模版，而对象才是类可以使用的实例，先有类再有对象。<e>`</e></C></p>\n\n <p>在类之中一般都会有两个组成:</p>\n\n<LIST><LI><s>- </s>成员属性（Field）：有些时候为了简化称其为属性；\n  <LIST><LI><s>- </s>一个人的年龄、姓名都是不同的，所以这些对于整体来讲就称为属性；</LI></LIST></LI>\n<LI><s>- </s>操作方法（Method）；定义对象具有的处理行为；\n  <LIST><LI><s>- </s>这个人可以唱歌、跳舞、游泳、运动；</LI></LIST></LI></LIST></r>', NULL, NULL, NULL, NULL, '127.0.0.1', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `post_likes`
--

CREATE TABLE `post_likes` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_mentions_group`
--

CREATE TABLE `post_mentions_group` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_mentions_post`
--

CREATE TABLE `post_mentions_post` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_mentions_tag`
--

CREATE TABLE `post_mentions_tag` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_mentions_user`
--

CREATE TABLE `post_mentions_user` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `post_user`
--

CREATE TABLE `post_user` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `vapid_public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_used` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `registration_tokens`
--

CREATE TABLE `registration_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`key`, `value`) VALUES
('allow_hide_own_posts', 'reply'),
('allow_post_editing', 'reply'),
('allow_renaming', '10'),
('allow_sign_up', '1'),
('askvortsov-checklist.cross_out_completed_items', '1'),
('custom_footer', '<footer>\n    <div class=\"site-footer\" style=\"text-align: center; line-height: 1;\">\n        <div style=\"color: rgb(137, 137, 140); font-size:0.9em;\" class=\"footer-container rm-link-color\">\n            <p>\n                <span id=\"copyright_span\">Foresee Studio论坛&nbsp;&copy;&nbsp;2023-2024</span>\n            </p> \n            <p>\n                <a id=\"prot_span\">社区规范</a>\n                <span class=\"mx-2\">|</span>\n                <a id=\"rept_span\" href=\"mailto:jlstudioemail@163.com\">违法和不良信息举报</a>\n                <span class=\"mx-2\">|</span>\n                <a id=\"stats\" href=\"https://stats.uptimerobot.com/QAL8xc6m8y\" target=\"_blank\">状态</a>\n            </p>\n            <p>\n                <span id=\"team_span\">Powered by&nbsp;<a href=\"https://foreseestudio.top/\">Foresee Studio Project Team</a></span>\n            </p>\n        </div>\n    </div>\n</footer>'),
('custom_header', '<link href=\"https://cdn.staticfile.org/lxgw-wenkai-screen-webfont/1.7.0/lxgwwenkaiscreen.css\" rel=\"stylesheet\"></link>\n<script async src=\"/assets/fireworks.js\"></script>\n'),
('custom_less', '/* 表格美化 */\ntable {\n    table-layout:fixed;\n    padding: 0;\n    word-break: break-all;\n    border-collapse: collapse;\n    margin: 0.8em 0;\n    width: 100%;\n}\ntable tr {\n    border: 1px solid #dfe2e5;\n    margin: 0;\n    padding: 0;\n}\ntable tr:nth-child(2n), thead {\n    background-color: #f8f8f8;\n}\ntable th {\n    font-weight: bold;\n    border: 1px solid #dfe2e5;\n    border-bottom: 0;\n    margin: 0;\n    padding: 6px 13px;\n    width: auto ! important;\n}\ntable td {\n    border: 1px solid #dfe2e5;\n    margin: 0;\n    padding: 6px 13px;\n}\ntable th:first-child, table td:first-child {\n    margin-top: 0;\n}\ntable th:last-child, table td:last-child {\n    margin-bottom: 0;\n}\n/* 字体美化 */\nbody {\n    font-family: San Francisco, Helvetica Neue, LXGW WenKai Screen, Arial, sans-serif;\n  }\n  \nh1, h2, h3, h4, .TagsLabel, .Button, .DiscussionListItem-count, .item-discussion-views {\n    font-family: San Francisco, Helvetica Neue, LXGW WenKai Screen, Arial, sans-serif;\n}\n/* 取消欢迎关闭按钮 */\n.Hero-close{\n	display:none;\n}'),
('default_locale', 'zh-Hans'),
('default_route', '/all'),
('display_name_driver', 'nickname'),
('extensions_enabled', '[\"flarum-flags\",\"flarum-tags\",\"flarum-approval\",\"flarum-suspend\",\"flarum-mentions\",\"flarum-subscriptions\",\"flarum-sticky\",\"ianm-level-ranks\",\"fof-user-directory\",\"fof-follow-tags\",\"flarum-markdown\",\"zequeen-acgembed-remastered\",\"v17development-seo\",\"the-turk-stickiest\",\"the-turk-mathren\",\"the-turk-flamoji\",\"sycho-profile-cover\",\"pipecraft-id-slug\",\"nearata-tags-color-generator\",\"nearata-cakeday\",\"michaelbelgium-discussion-views\",\"justoverclock-thread-read-time\",\"justoverclock-christmas-snow-effect\",\"ianm-log-viewer\",\"gitzaai-mobile-ui-tab-2\",\"fof-user-bio\",\"fof-terms\",\"fof-subscribed\",\"fof-socialprofile\",\"fof-sitemap\",\"fof-share-social\",\"fof-profile-image-crop\",\"fof-polls\",\"fof-nightmode\",\"fof-moderator-notes\",\"fof-links\",\"fof-linguist\",\"fof-html-errors\",\"fof-github-autolink\",\"fof-frontpage\",\"fof-filter\",\"fof-drafts\",\"fof-doorman\",\"fof-cookie-consent\",\"fof-best-answer\",\"flarumtr-mobile-search\",\"flarum-statistics\",\"flarum-nicknames\",\"flarum-lock\",\"flarum-likes\",\"flarum-lang-english\",\"flarum-lang-chinese-simplified\",\"flarum-emoji\",\"flarum-bbcode\",\"ffans-clipboardjs\",\"darkle-fancybox\",\"dalez-fluent-flarum\",\"clarkwinkelmann-first-post-approval\",\"clarkwinkelmann-discussion-bookmarks\",\"clarkwinkelmann-circle-groups\",\"clarkwinkelmann-author-change\",\"askvortsov-markdown-tables\",\"askvortsov-checklist\"]'),
('favicon_path', 'favicon-ojrqx2wm.png'),
('flarum-markdown.mdarea', '1'),
('flarum-mentions.allow_username_format', '1'),
('flarum-tags.max_primary_tags', '1'),
('flarum-tags.max_secondary_tags', '3'),
('flarum-tags.min_primary_tags', '1'),
('flarum-tags.min_secondary_tags', '0'),
('fof-best-answer.enabled-tags', '[]'),
('fof-best-answer.remind-tags', '[]'),
('fof-best-answer.show_filter_dropdown', '1'),
('fof-cookie-consent.backgroundColor', '#2b2b2b'),
('fof-cookie-consent.buttonBackgroundColor', '#178e99'),
('fof-cookie-consent.buttonText', 'I Accept'),
('fof-cookie-consent.buttonTextColor', '#ffffff'),
('fof-cookie-consent.ccTheme', '#2b2b2b'),
('fof-cookie-consent.consentText', 'Change this text in your Flarum Admin Panel!'),
('fof-cookie-consent.learnMoreLinkText', 'Learn More'),
('fof-cookie-consent.learnMoreLinkUrl', 'https://learn.more/'),
('fof-cookie-consent.textColor', '#ffffff'),
('fof-filter.autoDeletePosts', ''),
('fof-filter.autoMergePosts', ''),
('fof-filter.censors', '[\"\\/\\/i\"]'),
('fof-filter.emailWhenFlagged', '1'),
('fof-filter.flaggedEmail', ''),
('fof-filter.flaggedSubject', ''),
('fof-filter.words', ''),
('fof-follow-tags.following_page_default', ''),
('fof-links.show_icons_only_on_mobile', '0'),
('fof-nightmode.default_theme', '0'),
('fof-polls.allowOptionImage', '1'),
('fof-share-social.canonical-urls', ''),
('fof-share-social.networks.facebook', '0'),
('fof-share-social.networks.linkedin', ''),
('fof-share-social.networks.my_mail', ''),
('fof-share-social.networks.native', '1'),
('fof-share-social.networks.odnoklassniki', ''),
('fof-share-social.networks.qq', '1'),
('fof-share-social.networks.qzone', '1'),
('fof-share-social.networks.reddit', ''),
('fof-share-social.networks.telegram', '1'),
('fof-share-social.networks.twitter', '1'),
('fof-share-social.networks.vkontakte', ''),
('fof-share-social.networks.whatsapp', ''),
('fof-sitemap.frequency', 'daily'),
('fof-sitemap.mode', 'run'),
('fof-user-directory-link', ''),
('fof-user-directory.default-sort', 'most_discussions'),
('fof-user-directory.use-small-cards', ''),
('fofNightMode.show_theme_toggle_on_header_always', '1'),
('forum_description', 'Foresee Studio工作室官方论坛'),
('forum_title', 'Foresee Studio论坛'),
('ianm-level-ranks.pointsText', 'Lv.'),
('itnt-uitab.home_page', '/'),
('mail_driver', 'smtp'),
('mail_encryption', 'ssl'),
('mail_from', 'jlstudioemail@163.com'),
('mail_host', 'smtp.163.com'),
('mail_password', 'VYUJNTROMCKCMPWL'),
('mail_port', '465'),
('mail_username', 'jlstudioemail@163.com'),
('show_language_selector', '1'),
('slug_driver_Flarum\\Discussion\\Discussion', 'id'),
('slug_driver_Flarum\\User\\User', 'id'),
('the-turk-flamoji.auto_hide', '1'),
('the-turk-flamoji.emoji_data', 'en'),
('the-turk-flamoji.emoji_style', 'twemoji'),
('the-turk-flamoji.emoji_version', '12.1'),
('the-turk-flamoji.initial_category', 'smileys'),
('the-turk-flamoji.recents_count', '50'),
('the-turk-flamoji.show_category_buttons', '1'),
('the-turk-flamoji.show_preview', '0'),
('the-turk-flamoji.show_recents', '1'),
('the-turk-flamoji.show_search', '1'),
('the-turk-flamoji.show_variants', '1'),
('the-turk-flamoji.specify_categories', '[\"smileys\",\"people\",\"animals\",\"food\",\"activities\",\"travel\",\"objects\",\"symbols\",\"flags\"]'),
('the-turk-mathren.enable_fleqn', '0'),
('the-turk-mathren.enable_leqno', '1'),
('the-turk-mathren.macros', ''),
('the-turk-mathren.throw_on_error', '1'),
('theme_colored_header', '1'),
('theme_dark_mode', '0'),
('theme_primary_color', '#6c8ccc'),
('theme_secondary_color', '#506cbc'),
('undefined', ''),
('version', '1.8.4'),
('welcome_message', '登高不傲，居低不怨，保持谦卑<br> 一同追寻智慧，在使命中寻找意义，对抗虚无与虚荣'),
('welcome_title', 'Welcome to Foresee Studio论坛');

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_discussion_id` int(10) UNSIGNED DEFAULT NULL,
  `last_posted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_qna` tinyint(1) NOT NULL DEFAULT '0',
  `qna_reminders` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `color`, `background_path`, `background_mode`, `position`, `parent_id`, `default_sort`, `is_restricted`, `is_hidden`, `discussion_count`, `last_posted_at`, `last_posted_discussion_id`, `last_posted_user_id`, `icon`, `created_at`, `updated_at`, `is_qna`, `qna_reminders`) VALUES
(1, 'General', 'general', NULL, '#888', NULL, NULL, 0, NULL, NULL, 0, 0, 5, '2023-12-27 05:52:36', 7, 1, NULL, NULL, '2023-12-27 05:52:37', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tag_user`
--

CREATE TABLE `tag_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `marked_as_read_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `subscription` enum('follow','lurk','ignore','hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `joined_at` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `marked_all_as_read_at` datetime DEFAULT NULL,
  `read_notifications_at` datetime DEFAULT NULL,
  `discussion_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `read_flags_at` datetime DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `suspend_reason` text COLLATE utf8mb4_unicode_ci,
  `suspend_message` text COLLATE utf8mb4_unicode_ci,
  `first_post_approval_count` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `first_discussion_approval_count` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `best_answer_count` int(10) UNSIGNED DEFAULT NULL,
  `invite_code` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_buttons` longtext COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `cover` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `nickname`, `email`, `is_email_confirmed`, `password`, `avatar_url`, `preferences`, `joined_at`, `last_seen_at`, `marked_all_as_read_at`, `read_notifications_at`, `discussion_count`, `comment_count`, `read_flags_at`, `suspended_until`, `suspend_reason`, `suspend_message`, `first_post_approval_count`, `first_discussion_approval_count`, `best_answer_count`, `invite_code`, `social_buttons`, `bio`, `cover`) VALUES
(1, 'admin', 'John Tao', '2137299207@qq.com', 1, '$2y$10$w7QxQ.tFdgFWvNyZeIgVGOJcm8IDWIAZRserw1Ljc6GYsPdYZW0Q.', 'O6gkxPawmHj9dr0n.png', NULL, '2023-12-27 02:32:07', '2023-12-27 06:03:42', NULL, '2023-12-27 05:56:09', 5, 5, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users_notes`
--

CREATE TABLE `users_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_tokens_token_unique` (`token`),
  ADD KEY `access_tokens_user_id_foreign` (`user_id`),
  ADD KEY `access_tokens_type_index` (`type`);

--
-- 表的索引 `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_keys_key_unique` (`key`),
  ADD KEY `api_keys_user_id_foreign` (`user_id`);

--
-- 表的索引 `custom_emojis`
--
ALTER TABLE `custom_emojis`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_hidden_user_id_foreign` (`hidden_user_id`),
  ADD KEY `discussions_first_post_id_foreign` (`first_post_id`),
  ADD KEY `discussions_last_post_id_foreign` (`last_post_id`),
  ADD KEY `discussions_last_posted_at_index` (`last_posted_at`),
  ADD KEY `discussions_last_posted_user_id_index` (`last_posted_user_id`),
  ADD KEY `discussions_created_at_index` (`created_at`),
  ADD KEY `discussions_user_id_index` (`user_id`),
  ADD KEY `discussions_comment_count_index` (`comment_count`),
  ADD KEY `discussions_participant_count_index` (`participant_count`),
  ADD KEY `discussions_hidden_at_index` (`hidden_at`),
  ADD KEY `discussions_is_sticky_created_at_index` (`is_sticky`,`created_at`),
  ADD KEY `discussions_is_sticky_last_posted_at_index` (`is_sticky`,`last_posted_at`),
  ADD KEY `discussions_is_locked_index` (`is_locked`),
  ADD KEY `discussions_best_answer_post_id_foreign` (`best_answer_post_id`),
  ADD KEY `discussions_best_answer_user_id_foreign` (`best_answer_user_id`),
  ADD KEY `discussions_best_answer_set_at_index` (`best_answer_set_at`),
  ADD KEY `discussions_is_stickiest_last_posted_at_index` (`is_stickiest`,`last_posted_at`),
  ADD KEY `discussions_is_stickiest_created_at_index` (`is_stickiest`,`created_at`),
  ADD KEY `discussions_is_tag_sticky_last_posted_at_index` (`is_tag_sticky`,`last_posted_at`),
  ADD KEY `discussions_is_tag_sticky_created_at_index` (`is_tag_sticky`,`created_at`);
ALTER TABLE `discussions` ADD FULLTEXT KEY `title` (`title`);

--
-- 表的索引 `discussion_sticky_tag`
--
ALTER TABLE `discussion_sticky_tag`
  ADD PRIMARY KEY (`discussion_id`,`tag_id`),
  ADD KEY `discussion_sticky_tag_tag_id_foreign` (`tag_id`);

--
-- 表的索引 `discussion_tag`
--
ALTER TABLE `discussion_tag`
  ADD PRIMARY KEY (`discussion_id`,`tag_id`),
  ADD KEY `discussion_tag_tag_id_foreign` (`tag_id`);

--
-- 表的索引 `discussion_user`
--
ALTER TABLE `discussion_user`
  ADD PRIMARY KEY (`user_id`,`discussion_id`),
  ADD KEY `discussion_user_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_user_bookmarked_at_index` (`bookmarked_at`);

--
-- 表的索引 `discussion_views`
--
ALTER TABLE `discussion_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_views_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_views_user_id_foreign` (`user_id`);

--
-- 表的索引 `doorkeys`
--
ALTER TABLE `doorkeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doorkeys_group_id_foreign` (`group_id`);

--
-- 表的索引 `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drafts_user_id_foreign` (`user_id`);

--
-- 表的索引 `email_tokens`
--
ALTER TABLE `email_tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `email_tokens_user_id_foreign` (`user_id`);

--
-- 表的索引 `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flags_post_id_foreign` (`post_id`),
  ADD KEY `flags_user_id_foreign` (`user_id`),
  ADD KEY `flags_created_at_index` (`created_at`);

--
-- 表的索引 `fof_linguist_strings`
--
ALTER TABLE `fof_linguist_strings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fof_linguist_strings_key_locale_unique` (`key`,`locale`),
  ADD KEY `fof_linguist_strings_key_index` (`key`),
  ADD KEY `fof_linguist_strings_locale_index` (`locale`);

--
-- 表的索引 `fof_terms_policies`
--
ALTER TABLE `fof_terms_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fof_terms_policies_sort_index` (`sort`);

--
-- 表的索引 `fof_terms_policy_user`
--
ALTER TABLE `fof_terms_policy_user`
  ADD PRIMARY KEY (`policy_id`,`user_id`),
  ADD KEY `fof_terms_policy_user_user_id_foreign` (`user_id`),
  ADD KEY `fof_terms_policy_user_accepted_at_index` (`accepted_at`);

--
-- 表的索引 `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`group_id`,`permission`);

--
-- 表的索引 `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `group_user_group_id_foreign` (`group_id`);

--
-- 表的索引 `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_parent_id_foreign` (`parent_id`),
  ADD KEY `links_visibility_index` (`visibility`);

--
-- 表的索引 `login_providers`
--
ALTER TABLE `login_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_providers_provider_identifier_unique` (`provider`,`identifier`),
  ADD KEY `login_providers_user_id_foreign` (`user_id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_from_user_id_foreign` (`from_user_id`),
  ADD KEY `notifications_user_id_index` (`user_id`);

--
-- 表的索引 `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `password_tokens_user_id_foreign` (`user_id`);

--
-- 表的索引 `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_user_id_foreign` (`user_id`),
  ADD KEY `polls_post_id_foreign` (`post_id`);

--
-- 表的索引 `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_options_poll_id_foreign` (`poll_id`);

--
-- 表的索引 `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_votes_poll_id_foreign` (`poll_id`),
  ADD KEY `poll_votes_option_id_foreign` (`option_id`),
  ADD KEY `poll_votes_user_id_foreign` (`user_id`);

--
-- 表的索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  ADD KEY `posts_edited_user_id_foreign` (`edited_user_id`),
  ADD KEY `posts_hidden_user_id_foreign` (`hidden_user_id`),
  ADD KEY `posts_discussion_id_number_index` (`discussion_id`,`number`),
  ADD KEY `posts_discussion_id_created_at_index` (`discussion_id`,`created_at`),
  ADD KEY `posts_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `posts_type_index` (`type`),
  ADD KEY `posts_type_created_at_index` (`type`,`created_at`);
ALTER TABLE `posts` ADD FULLTEXT KEY `content` (`content`);

--
-- 表的索引 `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`);

--
-- 表的索引 `post_mentions_group`
--
ALTER TABLE `post_mentions_group`
  ADD PRIMARY KEY (`post_id`,`mentions_group_id`),
  ADD KEY `post_mentions_group_mentions_group_id_foreign` (`mentions_group_id`);

--
-- 表的索引 `post_mentions_post`
--
ALTER TABLE `post_mentions_post`
  ADD PRIMARY KEY (`post_id`,`mentions_post_id`),
  ADD KEY `post_mentions_post_mentions_post_id_foreign` (`mentions_post_id`);

--
-- 表的索引 `post_mentions_tag`
--
ALTER TABLE `post_mentions_tag`
  ADD PRIMARY KEY (`post_id`,`mentions_tag_id`),
  ADD KEY `post_mentions_tag_mentions_tag_id_foreign` (`mentions_tag_id`);

--
-- 表的索引 `post_mentions_user`
--
ALTER TABLE `post_mentions_user`
  ADD PRIMARY KEY (`post_id`,`mentions_user_id`),
  ADD KEY `post_mentions_user_mentions_user_id_foreign` (`mentions_user_id`);

--
-- 表的索引 `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_user_user_id_foreign` (`user_id`);

--
-- 表的索引 `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_subscriptions_user_id_foreign` (`user_id`);

--
-- 表的索引 `registration_tokens`
--
ALTER TABLE `registration_tokens`
  ADD PRIMARY KEY (`token`);

--
-- 表的索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- 表的索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`),
  ADD KEY `tags_parent_id_foreign` (`parent_id`),
  ADD KEY `tags_last_posted_user_id_foreign` (`last_posted_user_id`),
  ADD KEY `tags_last_posted_discussion_id_foreign` (`last_posted_discussion_id`);

--
-- 表的索引 `tag_user`
--
ALTER TABLE `tag_user`
  ADD PRIMARY KEY (`user_id`,`tag_id`),
  ADD KEY `tag_user_tag_id_foreign` (`tag_id`),
  ADD KEY `tag_user_user_id_subscription_index` (`user_id`,`subscription`),
  ADD KEY `tag_user_subscription_index` (`subscription`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_joined_at_index` (`joined_at`),
  ADD KEY `users_last_seen_at_index` (`last_seen_at`),
  ADD KEY `users_discussion_count_index` (`discussion_count`),
  ADD KEY `users_comment_count_index` (`comment_count`),
  ADD KEY `users_nickname_index` (`nickname`);

--
-- 表的索引 `users_notes`
--
ALTER TABLE `users_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `users_notes_added_by_user_id_foreign` (`added_by_user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `access_tokens`
--
ALTER TABLE `access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `custom_emojis`
--
ALTER TABLE `custom_emojis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `discussion_views`
--
ALTER TABLE `discussion_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `doorkeys`
--
ALTER TABLE `doorkeys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fof_linguist_strings`
--
ALTER TABLE `fof_linguist_strings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fof_terms_policies`
--
ALTER TABLE `fof_terms_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `login_providers`
--
ALTER TABLE `login_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- 使用表AUTO_INCREMENT `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users_notes`
--
ALTER TABLE `users_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `api_keys`
--
ALTER TABLE `api_keys`
  ADD CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_best_answer_post_id_foreign` FOREIGN KEY (`best_answer_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_best_answer_user_id_foreign` FOREIGN KEY (`best_answer_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 限制表 `discussion_sticky_tag`
--
ALTER TABLE `discussion_sticky_tag`
  ADD CONSTRAINT `discussion_sticky_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_sticky_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `discussion_tag`
--
ALTER TABLE `discussion_tag`
  ADD CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- 限制表 `discussion_user`
--
ALTER TABLE `discussion_user`
  ADD CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `discussion_views`
--
ALTER TABLE `discussion_views`
  ADD CONSTRAINT `discussion_views_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `doorkeys`
--
ALTER TABLE `doorkeys`
  ADD CONSTRAINT `doorkeys_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- 限制表 `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `email_tokens`
--
ALTER TABLE `email_tokens`
  ADD CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `flags`
--
ALTER TABLE `flags`
  ADD CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `fof_terms_policy_user`
--
ALTER TABLE `fof_terms_policy_user`
  ADD CONSTRAINT `fof_terms_policy_user_policy_id_foreign` FOREIGN KEY (`policy_id`) REFERENCES `fof_terms_policies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fof_terms_policy_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `group_permission`
--
ALTER TABLE `group_permission`
  ADD CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- 限制表 `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `links` (`id`) ON DELETE SET NULL;

--
-- 限制表 `login_providers`
--
ALTER TABLE `login_providers`
  ADD CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 限制表 `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- 限制表 `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD CONSTRAINT `poll_votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 限制表 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 限制表 `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `post_mentions_group`
--
ALTER TABLE `post_mentions_group`
  ADD CONSTRAINT `post_mentions_group_mentions_group_id_foreign` FOREIGN KEY (`mentions_group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_mentions_group_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- 限制表 `post_mentions_post`
--
ALTER TABLE `post_mentions_post`
  ADD CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- 限制表 `post_mentions_tag`
--
ALTER TABLE `post_mentions_tag`
  ADD CONSTRAINT `post_mentions_tag_mentions_tag_id_foreign` FOREIGN KEY (`mentions_tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_mentions_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- 限制表 `post_mentions_user`
--
ALTER TABLE `post_mentions_user`
  ADD CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- 限制表 `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD CONSTRAINT `push_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL;

--
-- 限制表 `tag_user`
--
ALTER TABLE `tag_user`
  ADD CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `users_notes`
--
ALTER TABLE `users_notes`
  ADD CONSTRAINT `users_notes_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
