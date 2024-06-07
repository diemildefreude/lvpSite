-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 05:41 PM
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
-- Database: `wp_lvp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(162, 'action_scheduler/migration_hook', 'complete', '2024-05-03 10:16:28', '2024-05-03 10:16:28', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1714731388;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1714731388;}', 1, 1, '2024-05-03 10:17:23', '2024-05-03 18:17:23', 0, NULL),
(163, 'wpforms_process_forms_locator_scan', 'complete', '2024-05-03 10:17:48', '2024-05-03 10:17:48', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1714731468;s:18:\"\0*\0first_timestamp\";i:1714731468;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1714731468;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-05-03 10:18:35', '2024-05-03 18:18:35', 0, NULL),
(164, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2024-04-29 17:38:42', '2024-04-29 17:38:42', 10, '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1714412322;s:18:\"\0*\0first_timestamp\";i:1714412322;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1714412322;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2024-05-03 10:18:35', '2024-05-03 18:18:35', 0, NULL),
(168, 'wpforms_admin_notifications_update', 'complete', '2024-05-03 10:18:01', '2024-05-03 10:18:01', 10, '{\"tasks_meta_id\":5}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2024-05-03 10:18:36', '2024-05-03 18:18:36', 0, NULL),
(170, 'wpforms_process_forms_locator_scan', 'complete', '2024-05-04 10:18:35', '2024-05-04 10:18:35', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1714817915;s:18:\"\0*\0first_timestamp\";i:1714731468;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1714817915;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-05-04 10:18:43', '2024-05-04 18:18:43', 0, NULL),
(171, 'wpforms_process_forms_locator_save', 'complete', '2024-05-04 10:18:43', '2024-05-04 10:18:43', 10, '{\"tasks_meta_id\":6}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2024-05-04 10:18:43', '2024-05-04 18:18:43', 0, NULL),
(173, 'wpforms_admin_notifications_update', 'complete', '2024-05-04 12:23:43', '2024-05-04 12:23:43', 10, '{\"tasks_meta_id\":7}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2024-05-04 12:25:47', '2024-05-04 20:25:47', 0, NULL),
(174, 'action_scheduler/migration_hook', 'complete', '2024-05-10 14:13:26', '2024-05-10 14:13:26', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1715350406;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1715350406;}', 1, 1, '2024-05-10 14:13:56', '2024-05-10 22:13:56', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 162, 'action created', '2024-05-03 10:15:28', '2024-05-03 10:15:28'),
(2, 162, 'action started via WP Cron', '2024-05-03 10:17:23', '2024-05-03 10:17:23'),
(3, 162, 'action complete via WP Cron', '2024-05-03 10:17:23', '2024-05-03 10:17:23'),
(4, 163, 'action created', '2024-05-03 10:17:48', '2024-05-03 10:17:48'),
(5, 164, 'action created', '2024-05-03 10:17:48', '2024-05-03 10:17:48'),
(9, 168, 'action created', '2024-05-03 10:18:01', '2024-05-03 10:18:01'),
(10, 164, 'action started via WP Cron', '2024-05-03 10:18:34', '2024-05-03 10:18:34'),
(11, 164, 'action complete via WP Cron', '2024-05-03 10:18:35', '2024-05-03 10:18:35'),
(13, 163, 'action started via WP Cron', '2024-05-03 10:18:35', '2024-05-03 10:18:35'),
(14, 163, 'action complete via WP Cron', '2024-05-03 10:18:35', '2024-05-03 10:18:35'),
(15, 170, 'action created', '2024-05-03 10:18:35', '2024-05-03 10:18:35'),
(16, 168, 'action started via WP Cron', '2024-05-03 10:18:35', '2024-05-03 10:18:35'),
(17, 168, 'action complete via WP Cron', '2024-05-03 10:18:36', '2024-05-03 10:18:36'),
(18, 170, 'action started via WP Cron', '2024-05-04 10:18:43', '2024-05-04 10:18:43'),
(19, 171, 'action created', '2024-05-04 10:18:43', '2024-05-04 10:18:43'),
(20, 170, 'action complete via WP Cron', '2024-05-04 10:18:43', '2024-05-04 10:18:43'),
(22, 171, 'action started via WP Cron', '2024-05-04 10:18:43', '2024-05-04 10:18:43'),
(23, 171, 'action complete via WP Cron', '2024-05-04 10:18:43', '2024-05-04 10:18:43'),
(24, 173, 'action created', '2024-05-04 12:23:43', '2024-05-04 12:23:43'),
(25, 173, 'action started via WP Cron', '2024-05-04 12:25:46', '2024-05-04 12:25:46'),
(26, 173, 'action complete via WP Cron', '2024-05-04 12:25:47', '2024-05-04 12:25:47'),
(32, 174, 'action created', '2024-05-10 14:12:26', '2024-05-10 14:12:26'),
(33, 174, 'action started via WP Cron', '2024-05-10 14:13:56', '2024-05-10 14:13:56'),
(34, 174, 'action complete via WP Cron', '2024-05-10 14:13:56', '2024-05-10 14:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_imagify_files`
--

CREATE TABLE `wp_imagify_files` (
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(191) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `modified` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `width` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `original_size` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `optimized_size` int(4) UNSIGNED DEFAULT NULL,
  `percent` smallint(2) UNSIGNED DEFAULT NULL,
  `optimization_level` tinyint(1) UNSIGNED DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_imagify_folders`
--

CREATE TABLE `wp_imagify_folders` (
  `folder_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/website/lvpSite', 'yes'),
(2, 'home', 'http://localhost/website/lvpSite', 'yes'),
(3, 'blogname', 'lvp', 'yes'),
(4, 'blogdescription', 'Lourdes Perez | Artist Archive', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 's.elliot.perez@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:98:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '8', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'customOne', 'yes'),
(41, 'stylesheet', 'customOne', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:27:\"wp-optimize/wp-optimize.php\";a:2:{i:0;s:13:\"WPO_Uninstall\";i:1;s:7:\"actions\";}s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '176', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1729265032', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:17:{i:1717691032;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1717696800;a:1:{s:18:\"imagify_sync_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717700214;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717700217;a:1:{s:29:\"wpo_smush_clear_backup_images\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717729017;a:1:{s:21:\"wpo_weekly_cron_tasks\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717730632;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717730678;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717743417;a:1:{s:26:\"wpo_minify_purge_old_cache\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717743600;a:1:{s:20:\"imagify_rating_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717773832;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717773878;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717773881;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717790400;a:1:{s:46:\"imagify_update_library_size_calculations_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717873017;a:1:{s:28:\"wpo_smush_clear_failed_tasks\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"wpo_monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}i:1718000784;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1718033032;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'nonce_key', 'u)dS`;@H_K7*vDu7-Y~*:PIo+#b+4=mAz~0DDKHzk}fzp-[/obcBl?{J5Skv:F[d', 'no'),
(126, 'nonce_salt', '.5/):Od<Tgnc<j[qJo}6J4@Qb4rFXIC(p!sD=WoX%M1]Asla$-|)a/_(Eq<HU<Dx', 'no'),
(127, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1713772990;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717687459;s:7:\"checked\";a:1:{s:9:\"customOne\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(133, 'auth_key', '[^U$Cvh4E>6#WUQE}2gdGlLT%q;bVa]8~@Ld[UTJ:1<>0-a7N~;C)c0OVrr^DKjK', 'no'),
(134, 'auth_salt', 'R;e*=<NT*2.+Mco(u^&a7iTHaKT&917W~Br-39RL?<[Tk=LF0OVK_XgCHrdUUx;U', 'no'),
(135, 'logged_in_key', '(]5p:P*,ad9Nv],2$Z?7%#vdU#7qv#=BXjH~)N?)P6pDcNe9Z]{j+WQZklPMLNU5', 'no'),
(136, 'logged_in_salt', '-`Y#ACY4H9XMG7,:dLSh{d3,95<Mc+Z9l1_L.,4.fHZd~UdZ<&I7q%w6b*C!6K.*', 'no'),
(142, 'can_compress_scripts', '1', 'yes'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(168, 'current_theme', 'Custom One', 'yes'),
(169, 'theme_mods_lvp', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1713773165;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(170, 'theme_switched', '', 'yes'),
(187, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(193, 'WPLANG', '', 'yes'),
(194, 'new_admin_email', 's.elliot.perez@gmail.com', 'yes'),
(214, 'theme_mods_twentytwentythree', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1713773231;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'no'),
(221, 'theme_mods_ttfChild', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1713773694;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(223, 'theme_mods_customOne', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:4:\"menu\";i:4;s:4:\"main\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(228, 'recovery_mode_email_last_sent', '1713882272', 'yes'),
(235, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(236, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":7,\"critical\":0}', 'yes'),
(250, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(264, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(273, 'duplicate_post_show_notice', '1', 'yes'),
(274, 'duplicate_post_copytitle', '1', 'yes'),
(275, 'duplicate_post_copydate', '0', 'yes'),
(276, 'duplicate_post_copystatus', '0', 'yes'),
(277, 'duplicate_post_copyslug', '0', 'yes'),
(278, 'duplicate_post_copyexcerpt', '1', 'yes'),
(279, 'duplicate_post_copycontent', '1', 'yes'),
(280, 'duplicate_post_copythumbnail', '1', 'yes'),
(281, 'duplicate_post_copytemplate', '1', 'yes'),
(282, 'duplicate_post_copyformat', '1', 'yes'),
(283, 'duplicate_post_copyauthor', '0', 'yes'),
(284, 'duplicate_post_copypassword', '0', 'yes'),
(285, 'duplicate_post_copyattachments', '0', 'yes'),
(286, 'duplicate_post_copychildren', '0', 'yes'),
(287, 'duplicate_post_copycomments', '0', 'yes'),
(288, 'duplicate_post_copymenuorder', '1', 'yes'),
(289, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(290, 'duplicate_post_blacklist', '', 'yes'),
(291, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(292, 'duplicate_post_show_original_column', '0', 'yes'),
(293, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(294, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(295, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(296, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(297, 'duplicate_post_version', '4.5', 'yes'),
(395, 'category_children', 'a:0:{}', 'yes'),
(558, 'action_scheduler_hybrid_store_demarkation', '161', 'yes'),
(559, 'schema-ActionScheduler_StoreSchema', '7.0.1714731309', 'yes'),
(560, 'schema-ActionScheduler_LoggerSchema', '3.0.1714731309', 'yes'),
(561, 'wpforms_version', '1.8.8.3', 'yes'),
(562, 'wpforms_version_lite', '1.8.8.3', 'yes'),
(563, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1714731309;}', 'yes'),
(568, 'action_scheduler_lock_async-request-runner', '6650f1e31de435.55977593|1716580895', 'no'),
(569, 'wpforms_versions_lite', 'a:12:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:7:\"1.8.8.3\";i:1714731328;}', 'yes'),
(570, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(573, 'wpforms_settings', 'a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}', 'yes'),
(576, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1714731330;s:9:\"dismissed\";b:0;}}', 'yes'),
(577, '_wpforms_transient_timeout_addons.json', '1715336130', 'no'),
(578, '_wpforms_transient_addons.json', '1714731330', 'no'),
(579, '_wpforms_transient_wpforms_htaccess_file', 'a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1714731331;s:5:\"ctime\";i:1714731331;}', 'yes'),
(580, '_wpforms_transient_wpforms_C:/xampp/htdocs/website/wordpress/wp-content/uploads/wpforms/cache/.htaccess_file', 'a:3:{s:4:\"size\";i:446;s:5:\"mtime\";i:1714731331;s:5:\"ctime\";i:1714731331;}', 'yes'),
(583, '_wpforms_transient_timeout_docs.json', '1715336170', 'no'),
(584, '_wpforms_transient_docs.json', '1714731370', 'no'),
(585, '_wpforms_transient_timeout_templates.json', '1715336171', 'no'),
(586, '_wpforms_transient_templates.json', '1714731371', 'no'),
(589, 'wpforms_builder_opened_date', '1714731373', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(590, 'wpforms_challenge', 'a:13:{s:6:\"status\";s:9:\"completed\";s:4:\"step\";i:5;s:7:\"user_id\";i:1;s:7:\"form_id\";i:161;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2024-05-03 10:18:39\";s:17:\"finished_date_gmt\";s:19:\"2024-05-03 10:19:21\";s:13:\"seconds_spent\";i:134;s:12:\"seconds_left\";i:166;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:1:\"1\";}', 'yes'),
(591, 'wpforms_templates_hash', '68bd1a2ec5f038fe53d5424aa30f1da0', 'yes'),
(593, 'wpforms_forms_first_created', '1714731480', 'no'),
(595, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1714731515', 'yes'),
(596, 'wpforms_process_forms_locator_status', 'completed', 'yes'),
(608, 'wpforms_crypto_secret_key', 'CZ6MXT6uCzj7Aw8aVg9PHQ7XyLndUCS+KX2tpSNW2fM=', 'yes'),
(1325, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-rollback-3.zip\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1717687457;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1326, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"s.elliot.perez@gmail.com\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715102642;}', 'no'),
(1333, 'secure_auth_key', '(C-7x%cj.5stA!K`a>/|~`HGM8$V!]x8taI_l2&<0MX0Z;o>pRi=!V9~*+[cRd7L', 'no'),
(1334, 'secure_auth_salt', 'XLr*@e?PiNJY;R6zLNpt5P@9?%Xt@-]<8-S#BN.:F#)Z/3h0{){,WWEy&tar3A73', 'no'),
(1360, 'wp-optimize-installed-for', '1715247903', 'yes'),
(1361, 'wp-optimize-newly-activated', '1', 'yes'),
(1362, 'wp-optimize-schedule', 'false', 'yes'),
(1363, 'wp-optimize-last-optimized', 'Never', 'yes'),
(1364, 'wp-optimize-schedule-type', 'wpo_weekly', 'yes'),
(1365, 'wp-optimize-retention-enabled', 'false', 'yes'),
(1366, 'wp-optimize-retention-period', '2', 'yes'),
(1367, 'wp-optimize-enable-admin-menu', 'false', 'yes'),
(1368, 'wp-optimize-total-cleaned', '0', 'yes'),
(1369, 'wp-optimize-auto', 'a:8:{s:6:\"drafts\";s:4:\"true\";s:8:\"optimize\";s:5:\"false\";s:9:\"revisions\";s:4:\"true\";s:5:\"spams\";s:4:\"true\";s:9:\"transient\";s:5:\"false\";s:5:\"trash\";s:4:\"true\";s:10:\"unapproved\";s:5:\"false\";s:8:\"usermeta\";s:5:\"false\";}', 'yes'),
(1370, 'wp-optimize-settings', 'a:14:{s:11:\"user-drafts\";s:4:\"true\";s:16:\"user-commentmeta\";s:5:\"false\";s:13:\"user-optimize\";s:4:\"true\";s:15:\"user-orphandata\";s:5:\"false\";s:14:\"user-pingbacks\";s:5:\"false\";s:13:\"user-postmeta\";s:5:\"false\";s:14:\"user-revisions\";s:4:\"true\";s:10:\"user-spams\";s:4:\"true\";s:15:\"user-trackbacks\";s:5:\"false\";s:14:\"user-transient\";s:5:\"false\";s:10:\"user-trash\";s:4:\"true\";s:15:\"user-unapproved\";s:4:\"true\";s:13:\"user-usermeta\";s:5:\"false\";s:13:\"last_saved_in\";s:5:\"3.3.2\";}', 'yes'),
(1371, 'wpo_minify_config', 'a:52:{s:5:\"debug\";b:0;s:19:\"enabled_css_preload\";b:0;s:18:\"enabled_js_preload\";b:0;s:11:\"hpreconnect\";s:0:\"\";s:8:\"hpreload\";s:0:\"\";s:7:\"loadcss\";b:0;s:10:\"remove_css\";b:0;s:17:\"critical_path_css\";s:0:\"\";s:31:\"critical_path_css_is_front_page\";s:0:\"\";s:30:\"preserve_settings_on_uninstall\";b:1;s:22:\"disable_when_logged_in\";b:0;s:16:\"default_protocol\";s:7:\"dynamic\";s:17:\"html_minification\";b:1;s:16:\"clean_header_one\";b:0;s:13:\"emoji_removal\";b:1;s:18:\"merge_google_fonts\";b:1;s:19:\"enable_display_swap\";b:1;s:18:\"remove_googlefonts\";b:0;s:13:\"gfonts_method\";s:7:\"inherit\";s:15:\"fawesome_method\";s:7:\"inherit\";s:10:\"enable_css\";b:1;s:23:\"enable_css_minification\";b:1;s:21:\"enable_merging_of_css\";b:1;s:23:\"remove_print_mediatypes\";b:0;s:10:\"inline_css\";b:0;s:9:\"enable_js\";b:1;s:22:\"enable_js_minification\";b:1;s:20:\"enable_merging_of_js\";b:1;s:15:\"enable_defer_js\";s:10:\"individual\";s:13:\"defer_js_type\";s:5:\"defer\";s:12:\"defer_jquery\";b:1;s:18:\"enable_js_trycatch\";b:0;s:19:\"exclude_defer_login\";b:1;s:7:\"cdn_url\";s:0:\"\";s:9:\"cdn_force\";b:0;s:9:\"async_css\";s:0:\"\";s:8:\"async_js\";s:0:\"\";s:24:\"disable_css_inline_merge\";b:1;s:6:\"ualist\";a:5:{i:0;s:9:\"Googlebot\";i:1;s:17:\"Chrome-Lighthouse\";i:2;s:8:\"GTmetrix\";i:3;s:14:\"HeadlessChrome\";i:4;s:7:\"Pingdom\";}s:32:\"exclude_js_from_page_speed_tools\";b:0;s:33:\"exclude_css_from_page_speed_tools\";b:0;s:9:\"blacklist\";a:0:{}s:11:\"ignore_list\";a:0:{}s:10:\"exclude_js\";s:0:\"\";s:11:\"exclude_css\";s:0:\"\";s:23:\"edit_default_exclutions\";b:0;s:18:\"merge_allowed_urls\";s:0:\"\";s:7:\"enabled\";b:0;s:17:\"last-cache-update\";i:1715350273;s:14:\"plugin_version\";s:5:\"0.0.0\";s:14:\"cache_lifespan\";i:30;s:25:\"merge_inline_extra_css_js\";b:1;}', 'yes'),
(1372, 'updraft_task_manager_plugins', 'a:1:{i:0;s:27:\"wp-optimize/wp-optimize.php\";}', 'yes'),
(1373, 'updraft_task_manager_dbversion', '1.1', 'yes'),
(1374, 'wp-optimize-compression_server', 'resmushit', 'yes'),
(1375, 'wp-optimize-image_quality', '92', 'yes'),
(1376, 'wp-optimize-back_up_original', '1', 'yes'),
(1377, 'wp-optimize-back_up_delete_after', '1', 'yes'),
(1378, 'wp-optimize-back_up_delete_after_days', '50', 'yes'),
(1379, 'wpo_update_version', '3.3.2', 'yes'),
(1381, 'wp-optimize-install-or-update-notice-show-time', '1715247926', 'yes'),
(1383, 'updraft_lock_wpo_page_cache_preloader_creating_tasks', '0', 'no'),
(1384, 'wp-optimize-is_gzip_compression_enabled', 'gzip', 'yes'),
(1385, 'updraft_lock_wpo_minify_preloader_creating_tasks', '0', 'no'),
(1388, 'wp-optimize-corrupted-tables-count', '0', 'yes'),
(1391, 'wp-optimize-enable-auto-backup', 'false', 'yes'),
(1394, 'wpo_cache_config', 'a:24:{s:19:\"enable_page_caching\";b:0;s:23:\"page_cache_length_value\";i:24;s:22:\"page_cache_length_unit\";s:5:\"hours\";s:17:\"page_cache_length\";i:86400;s:32:\"cache_exception_conditional_tags\";a:0:{}s:20:\"cache_exception_urls\";a:0:{}s:23:\"cache_exception_cookies\";a:0:{}s:30:\"cache_exception_browser_agents\";a:0:{}s:22:\"enable_sitemap_preload\";b:0;s:23:\"enable_schedule_preload\";b:0;s:21:\"preload_schedule_type\";s:0:\"\";s:21:\"enable_mobile_caching\";b:0;s:19:\"enable_user_caching\";b:0;s:8:\"site_url\";s:19:\"https://lvpart.com/\";s:24:\"enable_cache_per_country\";b:0;s:19:\"permalink_structure\";s:23:\"/%category%/%postname%/\";s:7:\"uploads\";s:68:\"/home/vol8_6/infinityfree.com/if0_36485246/htdocs/wp-content/uploads\";s:10:\"gmt_offset\";s:1:\"8\";s:15:\"timezone_string\";s:0:\"\";s:11:\"date_format\";s:5:\"Y-m-d\";s:11:\"time_format\";s:3:\"H:i\";s:15:\"use_webp_images\";b:0;s:17:\"wpo_cache_cookies\";a:0:{}s:25:\"wpo_cache_query_variables\";a:0:{}}', 'yes'),
(1395, 'autoptimize_version', '3.1.11', 'yes'),
(1396, 'autoptimize_ccss_version', 'AO_3.1.11', 'yes'),
(1403, 'autoptimize_html', 'on', 'yes'),
(1404, 'autoptimize_html_keepcomments', '', 'yes'),
(1405, 'autoptimize_html_minify_inline', 'on', 'yes'),
(1406, 'autoptimize_enable_site_config', 'on', 'yes'),
(1407, 'autoptimize_js', 'on', 'yes'),
(1408, 'autoptimize_js_aggregate', '', 'yes'),
(1409, 'autoptimize_js_defer_not_aggregate', 'on', 'yes'),
(1410, 'autoptimize_js_defer_inline', 'on', 'yes'),
(1411, 'autoptimize_js_exclude', '', 'yes'),
(1412, 'autoptimize_js_trycatch', '', 'yes'),
(1413, 'autoptimize_js_justhead', '', 'yes'),
(1414, 'autoptimize_js_forcehead', '', 'yes'),
(1415, 'autoptimize_js_include_inline', '', 'yes'),
(1416, 'autoptimize_css', 'on', 'yes'),
(1417, 'autoptimize_css_aggregate', 'on', 'yes'),
(1418, 'autoptimize_css_exclude', ', admin-bar.min.css, dashicons.min.css, wp-content/cache/, wp-content/uploads/', 'yes'),
(1419, 'autoptimize_css_justhead', '', 'yes'),
(1420, 'autoptimize_css_datauris', '', 'yes'),
(1421, 'autoptimize_css_defer', '', 'yes'),
(1422, 'autoptimize_css_defer_inline', '', 'yes'),
(1423, 'autoptimize_css_inline', '', 'yes'),
(1424, 'autoptimize_css_include_inline', 'on', 'yes'),
(1425, 'autoptimize_cdn_url', '', 'yes'),
(1426, 'autoptimize_cache_clean', '', 'yes'),
(1427, 'autoptimize_cache_nogzip', 'on', 'yes'),
(1428, 'autoptimize_optimize_logged', 'on', 'yes'),
(1429, 'autoptimize_optimize_checkout', '', 'yes'),
(1430, 'autoptimize_minify_excluded', 'on', 'yes'),
(1431, 'autoptimize_cache_fallback', 'on', 'yes'),
(1432, 'autoptimize_enable_meta_ao_settings', 'on', 'yes'),
(1433, 'autoptimize_installed_before_compatibility', '', 'yes'),
(1481, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717687459;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.1.4\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.2.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-256x256.jpg?rev=2816275\";s:2:\"1x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-128x128.jpg?rev=2816275\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-1544x500.jpg?rev=2816275\";s:2:\"1x\";s:82:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-772x250.jpg?rev=2816275\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}s:7:\"checked\";a:1:{s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.1.4\";}}', 'no'),
(1484, 'imagify_settings', 'a:19:{s:7:\"version\";s:5:\"2.2.2\";s:7:\"api_key\";s:40:\"7ac8f89dcf26918180d9a7c7dc4090541c25063c\";s:18:\"optimization_level\";i:2;s:8:\"lossless\";i:0;s:13:\"auto_optimize\";i:1;s:6:\"backup\";i:1;s:13:\"resize_larger\";i:1;s:15:\"resize_larger_w\";i:2560;s:15:\"display_nextgen\";i:0;s:22:\"display_nextgen_method\";s:7:\"picture\";s:12:\"display_webp\";i:0;s:19:\"display_webp_method\";s:7:\"picture\";s:7:\"cdn_url\";s:0:\"\";s:16:\"disallowed-sizes\";a:0:{}s:14:\"admin_bar_menu\";i:1;s:13:\"partner_links\";i:1;s:15:\"convert_to_avif\";i:0;s:15:\"convert_to_webp\";i:0;s:19:\"optimization_format\";s:4:\"webp\";}', 'yes'),
(1485, 'imagify_data', 'a:4:{s:7:\"version\";s:5:\"2.2.2\";s:25:\"total_size_images_library\";d:25490070;s:29:\"average_size_images_per_month\";d:8496690;s:22:\"previous_quota_percent\";d:14;}', 'yes'),
(1486, 'imagify_folders_db_version', '100', 'yes'),
(1487, 'imagify_files_db_version', '102', 'yes'),
(1491, 'autoptimize_service_availablity', 'a:2:{s:12:\"extra_imgopt\";a:3:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:28:\"https://sp-ao.shortpixel.ai/\";}s:16:\"launch-threshold\";s:4:\"4096\";}s:7:\"critcss\";a:2:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:24:\"https://criticalcss.com/\";}}}', 'yes'),
(1493, 'action_scheduler_migration_status', 'complete', 'yes'),
(1495, '_site_transient_timeout_imagify_check_licence_1', '1746886556', 'no'),
(1496, '_site_transient_imagify_check_licence_1', '1', 'no'),
(1499, 'autoptimize_imgopt_launched', 'on', 'yes'),
(1579, '_transient_wpo_get_cache_size', 'a:2:{s:4:\"size\";i:0;s:10:\"file_count\";i:0;}', 'yes'),
(3474, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1718185314', 'no'),
(3475, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3476, '_site_transient_timeout_browser_e95fb8733ac3417b3aa284b34753f35d', '1718185317', 'no'),
(3477, '_site_transient_browser_e95fb8733ac3417b3aa284b34753f35d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(3620, '_site_transient_timeout_theme_roots', '1717688612', 'no'),
(3621, '_site_transient_theme_roots', 'a:1:{s:9:\"customOne\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 11, '_edit_lock', '1717599382:1'),
(14, 11, '_edit_last', '1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1714245551:1'),
(29, 22, '_menu_item_type', 'post_type'),
(30, 22, '_menu_item_menu_item_parent', '0'),
(31, 22, '_menu_item_object_id', '15'),
(32, 22, '_menu_item_object', 'page'),
(33, 22, '_menu_item_target', ''),
(34, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 22, '_menu_item_xfn', ''),
(36, 22, '_menu_item_url', ''),
(47, 24, '_edit_last', '1'),
(48, 24, '_edit_lock', '1717604068:1'),
(51, 26, '_menu_item_type', 'taxonomy'),
(52, 26, '_menu_item_menu_item_parent', '0'),
(53, 26, '_menu_item_object_id', '5'),
(54, 26, '_menu_item_object', 'category'),
(55, 26, '_menu_item_target', ''),
(56, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 26, '_menu_item_xfn', ''),
(58, 26, '_menu_item_url', ''),
(61, 22, '_wp_old_date', '2024-04-23'),
(65, 28, '_dp_original', '24'),
(67, 29, '_dp_original', '28'),
(69, 30, '_dp_original', '28'),
(72, 30, '_edit_last', '1'),
(75, 29, '_edit_last', '1'),
(78, 28, '_edit_last', '1'),
(79, 29, '_edit_lock', '1717604099:1'),
(84, 30, '_wp_old_slug', 'first-post-2'),
(85, 30, '_edit_lock', '1717648445:1'),
(88, 29, '_wp_old_slug', 'first-post-3'),
(91, 30, '_wp_old_slug', 'third-post'),
(94, 29, '_wp_old_slug', 'second-post'),
(97, 30, '_wp_old_slug', 'thirfd-post'),
(100, 28, '_wp_old_slug', 'first-post-4'),
(101, 28, '_edit_lock', '1717604140:1'),
(122, 11, '_wp_page_template', 'default'),
(137, 30, '_wp_old_slug', 'second-post'),
(140, 24, '_wp_old_slug', 'first-post'),
(148, 29, '_wp_old_slug', 'third-post'),
(153, 28, '_wp_old_slug', 'fourth-post'),
(154, 56, '_edit_last', '1'),
(155, 56, '_edit_lock', '1717584136:1'),
(161, 59, '_edit_last', '1'),
(162, 59, '_edit_lock', '1717603651:1'),
(170, 62, '_edit_last', '1'),
(171, 62, '_edit_lock', '1717584722:1'),
(190, 70, '_wp_attached_file', '2024/04/sig.png'),
(191, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:344;s:6:\"height\";i:100;s:4:\"file\";s:15:\"2024/04/sig.png\";s:8:\"filesize\";i:3169;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"sig-300x87.png\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12501;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"sig-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2858;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 77, '_wp_attached_file', '2024/04/sig-2.png'),
(205, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:419;s:6:\"height\";i:101;s:4:\"file\";s:17:\"2024/04/sig-2.png\";s:8:\"filesize\";i:12272;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"sig-2-300x72.png\";s:5:\"width\";i:300;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22790;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"sig-2-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10218;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:17:\"sig-2-400x101.png\";s:5:\"width\";i:400;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32067;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 78, '_wp_attached_file', '2024/04/sig-3.png'),
(207, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:192;s:4:\"file\";s:17:\"2024/04/sig-3.png\";s:8:\"filesize\";i:18197;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"sig-3-300x115.png\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28125;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"sig-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15097;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:17:\"sig-3-400x192.png\";s:5:\"width\";i:400;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42191;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 15, '_wp_page_template', 'templates/template-about.php'),
(211, 84, '_wp_attached_file', '2024/04/27.jpg'),
(212, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:480;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2024/04/27.jpg\";s:8:\"filesize\";i:61979;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"27-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25425;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"27-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8998;}s:10:\"small-size\";a:5:{s:4:\"file\";s:14:\"27-405x540.jpg\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67093;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:14:\"27-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44823;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1124898660\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.1\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(214, 86, '_edit_last', '1'),
(215, 86, '_edit_lock', '1717649048:1'),
(219, 89, '_menu_item_type', 'taxonomy'),
(220, 89, '_menu_item_menu_item_parent', '0'),
(221, 89, '_menu_item_object_id', '9'),
(222, 89, '_menu_item_object', 'category'),
(223, 89, '_menu_item_target', ''),
(224, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 89, '_menu_item_xfn', ''),
(226, 89, '_menu_item_url', ''),
(228, 26, '_wp_old_date', '2024-04-24'),
(229, 22, '_wp_old_date', '2024-04-24'),
(290, 28, '_wp_old_slug', 'still-life-02'),
(295, 29, '_wp_old_slug', 'still-life-01'),
(298, 30, '_wp_old_slug', 'still-life-00'),
(378, 30, '_thumbnail_id', '216'),
(392, 59, '_wp_old_slug', 'flamingoes'),
(403, 163, '_edit_last', '1'),
(404, 163, '_wp_page_template', 'templates/template-contact.php'),
(405, 161, 'wpforms_form_locations', 'a:1:{i:0;a:6:{s:4:\"type\";s:4:\"page\";s:5:\"title\";s:7:\"Contact\";s:7:\"form_id\";i:161;s:2:\"id\";i:163;s:6:\"status\";s:7:\"publish\";s:3:\"url\";s:9:\"/contact/\";}}'),
(406, 163, '_edit_lock', '1714895149:1'),
(410, 168, '_menu_item_type', 'post_type'),
(411, 168, '_menu_item_menu_item_parent', '0'),
(412, 168, '_menu_item_object_id', '163'),
(413, 168, '_menu_item_object', 'page'),
(414, 168, '_menu_item_target', ''),
(415, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 168, '_menu_item_xfn', ''),
(417, 168, '_menu_item_url', ''),
(419, 89, '_wp_old_date', '2024-04-26'),
(420, 22, '_wp_old_date', '2024-04-26'),
(421, 26, '_wp_old_date', '2024-04-26'),
(422, 161, 'wpforms_entries_count', '1'),
(440, 176, '_wp_attached_file', '2024/05/favicon.jpg'),
(441, 176, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2024/05/favicon.jpg\";s:8:\"filesize\";i:32687;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"favicon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17194;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"favicon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6566;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:19:\"favicon-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24875;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 177, '_wp_attached_file', '2024/05/favicon2.png'),
(443, 177, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2024/05/favicon2.png\";s:8:\"filesize\";i:69142;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"favicon2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:153513;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"favicon2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45494;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:20:\"favicon2-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:266715;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(444, 178, '_wp_attached_file', '2024/05/momFace.jpg'),
(445, 178, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1423;s:6:\"height\";i:1831;s:4:\"file\";s:19:\"2024/05/momFace.jpg\";s:8:\"filesize\";i:201719;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"momFace-233x300.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13023;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"momFace-796x1024.jpg\";s:5:\"width\";i:796;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101409;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"momFace-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5464;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"momFace-768x988.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:988;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94592;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"momFace-1194x1536.jpg\";s:5:\"width\";i:1194;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:211120;}s:10:\"small-size\";a:5:{s:4:\"file\";s:19:\"momFace-420x540.jpg\";s:5:\"width\";i:420;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33286;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:19:\"momFace-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79518;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:19:\"momFace-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23385;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 86, '_thumbnail_id', '178'),
(457, 178, '_wp_attachment_image_alt', 'Black & white photo of Lourdes Perez, at around age 19, staring into the camera, chin resting on arm.'),
(464, 84, '_wp_attachment_image_alt', 'The artist with her son, Stephan.'),
(475, 62, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_herons.webp'),
(476, 62, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(493, 59, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_flamingos.webp'),
(494, 59, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(497, 56, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_model.webp'),
(498, 56, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(502, 28, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clownish_reflection.webp'),
(503, 28, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(506, 29, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clowns1.webp'),
(507, 29, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(510, 30, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_stillLife0.webp'),
(511, 30, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(514, 24, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_knotted_fabric.webp'),
(515, 24, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(534, 176, '_imagify_optimization_level', '2'),
(535, 176, '_imagify_status', 'already_optimized'),
(536, 176, '_imagify_data', 'a:2:{s:5:\"sizes\";a:5:{s:4:\"full\";a:2:{s:7:\"success\";b:0;s:5:\"error\";s:77:\"WELL DONE. This image is already compressed, no further compression required.\";}s:23:\"blog-small@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:24875;s:14:\"optimized_size\";i:12656;s:7:\"percent\";d:49.11999999999999744204615126363933086395263671875;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:6566;s:14:\"optimized_size\";i:3786;s:7:\"percent\";d:42.340000000000003410605131648480892181396484375;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:17194;s:14:\"optimized_size\";i:9050;s:7:\"percent\";d:47.36999999999999744204615126363933086395263671875;}s:17:\"full@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:32687;s:14:\"optimized_size\";i:17272;s:7:\"percent\";d:47.159999999999996589394868351519107818603515625;}}s:5:\"stats\";a:4:{s:13:\"original_size\";i:81322;s:14:\"optimized_size\";i:42764;s:7:\"percent\";d:47.409999999999996589394868351519107818603515625;s:7:\"message\";s:0:\"\";}}'),
(549, 78, '_imagify_optimization_level', '2'),
(550, 78, '_imagify_status', 'already_optimized'),
(551, 78, '_imagify_data', 'a:2:{s:5:\"sizes\";a:5:{s:4:\"full\";a:2:{s:7:\"success\";b:0;s:5:\"error\";s:77:\"WELL DONE. This image is already compressed, no further compression required.\";}s:23:\"blog-small@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:42191;s:14:\"optimized_size\";i:22544;s:7:\"percent\";d:46.57000000000000028421709430404007434844970703125;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:15097;s:14:\"optimized_size\";i:7650;s:7:\"percent\";d:49.3299999999999982946974341757595539093017578125;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:28125;s:14:\"optimized_size\";i:13658;s:7:\"percent\";d:51.43999999999999772626324556767940521240234375;}s:17:\"full@imagify-webp\";a:2:{s:7:\"success\";b:0;s:5:\"error\";s:77:\"WELL DONE. This image is already compressed, no further compression required.\";}}s:5:\"stats\";a:4:{s:13:\"original_size\";i:85413;s:14:\"optimized_size\";i:43852;s:7:\"percent\";d:48.659999999999996589394868351519107818603515625;s:7:\"message\";s:0:\"\";}}'),
(556, 86, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(562, 56, 'year_medium_size', '1989 Oil on Canvas. 30\" x 38\"'),
(571, 210, '_wp_attached_file', '2024/06/odds_and_ends.webp'),
(572, 210, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:26:\"2024/06/odds_and_ends.webp\";s:8:\"filesize\";i:138418;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18910;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"odds_and_ends-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:94284;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8918;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:67254;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"odds_and_ends-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:144628;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:61952;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:88376;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"odds_and_ends-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38168;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(573, 211, '_wp_attached_file', '2024/06/outcast_clown.webp'),
(574, 211, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:26:\"2024/06/outcast_clown.webp\";s:8:\"filesize\";i:161692;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"outcast_clown-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19122;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"outcast_clown-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:105078;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"outcast_clown-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8266;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"outcast_clown-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:72962;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"outcast_clown-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:163134;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"outcast_clown-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:66804;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"outcast_clown-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:92982;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"outcast_clown-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:36802;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 212, '_wp_attached_file', '2024/06/paradise_life.webp'),
(576, 212, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/paradise_life.webp\";s:8:\"filesize\";i:371808;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"paradise_life-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25342;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"paradise_life-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:204626;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"paradise_life-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9522;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"paradise_life-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:204626;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"paradise_life-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:351758;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"paradise_life-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:72186;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"paradise_life-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:177236;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"paradise_life-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:56246;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 213, '_wp_attached_file', '2024/06/resurrection.webp'),
(578, 213, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:25:\"2024/06/resurrection.webp\";s:8:\"filesize\";i:118818;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"resurrection-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15730;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"resurrection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:78724;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"resurrection-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7838;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"resurrection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:78724;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"resurrection-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:124690;}s:10:\"small-size\";a:5:{s:4:\"file\";s:25:\"resurrection-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35724;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:25:\"resurrection-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:75550;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:25:\"resurrection-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:32696;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(579, 214, '_wp_attached_file', '2024/06/roses_or_butterflies.webp'),
(580, 214, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:33:\"2024/06/roses_or_butterflies.webp\";s:8:\"filesize\";i:119174;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15812;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"roses_or_butterflies-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:81698;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6742;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58512;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"roses_or_butterflies-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:127580;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:53536;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65342;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"roses_or_butterflies-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27034;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 215, '_wp_attached_file', '2024/06/self_portrait.webp'),
(582, 215, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/self_portrait.webp\";s:8:\"filesize\";i:92040;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"self_portrait-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8430;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"self_portrait-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"self_portrait-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3414;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"self_portrait-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51458;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"self_portrait-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:82800;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"self_portrait-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20862;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"self_portrait-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:40642;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"self_portrait-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14708;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(583, 216, '_wp_attached_file', '2024/06/stillLife0.webp'),
(584, 216, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:23:\"2024/06/stillLife0.webp\";s:8:\"filesize\";i:125068;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"stillLife0-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11286;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"stillLife0-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64222;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"stillLife0-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4568;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"stillLife0-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64222;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"stillLife0-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108202;}s:10:\"small-size\";a:5:{s:4:\"file\";s:23:\"stillLife0-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26298;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:23:\"stillLife0-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46604;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:23:\"stillLife0-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18028;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(585, 217, '_wp_attached_file', '2024/06/teddy_and_friends.webp'),
(586, 217, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:30:\"2024/06/teddy_and_friends.webp\";s:8:\"filesize\";i:93530;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11406;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"teddy_and_friends-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:54938;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5686;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38430;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"teddy_and_friends-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:90002;}s:10:\"small-size\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35512;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:48484;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:30:\"teddy_and_friends-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20836;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(589, 219, '_wp_attached_file', '2024/06/the_model.webp'),
(590, 219, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:22:\"2024/06/the_model.webp\";s:8:\"filesize\";i:89830;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"the_model-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13514;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"the_model-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58314;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"the_model-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6802;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"the_model-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58314;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"the_model-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:92460;}s:10:\"small-size\";a:5:{s:4:\"file\";s:22:\"the_model-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27304;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:22:\"the_model-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:50394;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:22:\"the_model-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23080;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 220, '_wp_attached_file', '2024/06/the_quenching.webp'),
(592, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/the_quenching.webp\";s:8:\"filesize\";i:164550;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"the_quenching-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22704;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"the_quenching-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:119480;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"the_quenching-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10876;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"the_quenching-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:119480;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"the_quenching-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:177762;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"the_quenching-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:54488;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"the_quenching-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:113304;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"the_quenching-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:49152;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(593, 221, '_wp_attached_file', '2024/06/the_seamstress.webp'),
(594, 221, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2024/06/the_seamstress.webp\";s:8:\"filesize\";i:163662;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"the_seamstress-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21988;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"the_seamstress-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:112200;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"the_seamstress-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9416;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"the_seamstress-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:112200;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"the_seamstress-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:171122;}s:10:\"small-size\";a:5:{s:4:\"file\";s:27:\"the_seamstress-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:50810;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:27:\"the_seamstress-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:97620;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:27:\"the_seamstress-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:42126;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(595, 222, '_wp_attached_file', '2024/06/the_waif.webp'),
(596, 222, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:21:\"2024/06/the_waif.webp\";s:8:\"filesize\";i:83916;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"the_waif-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10304;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"the_waif-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47590;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"the_waif-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4712;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"the_waif-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47590;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"the_waif-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:79984;}s:10:\"small-size\";a:5:{s:4:\"file\";s:21:\"the_waif-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21586;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:21:\"the_waif-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:40428;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:21:\"the_waif-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17054;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 223, '_wp_attached_file', '2024/06/trumpet_the_orchids.webp'),
(598, 223, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:32:\"2024/06/trumpet_the_orchids.webp\";s:8:\"filesize\";i:74732;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12598;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"trumpet_the_orchids-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:52594;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6012;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38086;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"trumpet_the_orchids-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:80046;}s:10:\"small-size\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35198;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43494;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:32:\"trumpet_the_orchids-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21644;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(599, 224, '_wp_attached_file', '2024/06/beadwork.webp'),
(600, 224, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:21:\"2024/06/beadwork.webp\";s:8:\"filesize\";i:358026;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"beadwork-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17960;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"beadwork-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:191220;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"beadwork-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7152;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"beadwork-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:191220;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"beadwork-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:329004;}s:10:\"small-size\";a:5:{s:4:\"file\";s:21:\"beadwork-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:60534;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:21:\"beadwork-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:170126;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:21:\"beadwork-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:50016;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(601, 225, '_wp_attached_file', '2024/06/cat_on_quilt.webp'),
(602, 225, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:25:\"2024/06/cat_on_quilt.webp\";s:8:\"filesize\";i:109118;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14170;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"cat_on_quilt-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:75488;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6658;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:55644;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"cat_on_quilt-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:117682;}s:10:\"small-size\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51692;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:68756;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:25:\"cat_on_quilt-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:29382;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(603, 226, '_wp_attached_file', '2024/06/clownish_reflection.webp'),
(604, 226, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:32:\"2024/06/clownish_reflection.webp\";s:8:\"filesize\";i:146364;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"clownish_reflection-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18138;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"clownish_reflection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:95320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"clownish_reflection-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7768;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"clownish_reflection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:95320;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"clownish_reflection-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:147560;}s:10:\"small-size\";a:5:{s:4:\"file\";s:32:\"clownish_reflection-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41416;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:32:\"clownish_reflection-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:81422;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:32:\"clownish_reflection-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:32836;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(605, 227, '_wp_attached_file', '2024/06/clownish_reflection_watercolor.webp');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(606, 227, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:43:\"2024/06/clownish_reflection_watercolor.webp\";s:8:\"filesize\";i:116140;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:43:\"clownish_reflection_watercolor-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16924;}s:5:\"large\";a:5:{s:4:\"file\";s:44:\"clownish_reflection_watercolor-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:79736;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:43:\"clownish_reflection_watercolor-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7560;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"clownish_reflection_watercolor-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:79736;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:45:\"clownish_reflection_watercolor-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:120470;}s:10:\"small-size\";a:5:{s:4:\"file\";s:43:\"clownish_reflection_watercolor-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:37654;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:43:\"clownish_reflection_watercolor-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:68844;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:43:\"clownish_reflection_watercolor-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:30280;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(607, 228, '_wp_attached_file', '2024/06/flamingos.webp'),
(608, 228, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:22:\"2024/06/flamingos.webp\";s:8:\"filesize\";i:104086;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"flamingos-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12954;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"flamingos-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:63944;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"flamingos-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6012;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"flamingos-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:63944;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"flamingos-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:100916;}s:10:\"small-size\";a:5:{s:4:\"file\";s:22:\"flamingos-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:28738;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:22:\"flamingos-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:53986;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:22:\"flamingos-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23350;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 229, '_wp_attached_file', '2024/06/floral_desires.webp'),
(610, 229, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2024/06/floral_desires.webp\";s:8:\"filesize\";i:168012;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"floral_desires-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21324;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"floral_desires-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:113958;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"floral_desires-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9766;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"floral_desires-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:113958;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"floral_desires-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:175510;}s:10:\"small-size\";a:5:{s:4:\"file\";s:27:\"floral_desires-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51938;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:27:\"floral_desires-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108962;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:27:\"floral_desires-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45476;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(611, 230, '_wp_attached_file', '2024/06/happy_day.webp'),
(612, 230, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:22:\"2024/06/happy_day.webp\";s:8:\"filesize\";i:73950;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"happy_day-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11352;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"happy_day-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:48768;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"happy_day-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5982;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"happy_day-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:48768;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"happy_day-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:77324;}s:10:\"small-size\";a:5:{s:4:\"file\";s:22:\"happy_day-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23848;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:22:\"happy_day-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46808;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:22:\"happy_day-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21308;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(613, 231, '_wp_attached_file', '2024/06/herons.webp'),
(614, 231, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:19:\"2024/06/herons.webp\";s:8:\"filesize\";i:178446;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"herons-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17896;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"herons-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:110104;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"herons-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7270;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"herons-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:110104;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"herons-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:169692;}s:10:\"small-size\";a:5:{s:4:\"file\";s:19:\"herons-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45460;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:19:\"herons-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:87200;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:19:\"herons-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:33902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(615, 232, '_wp_attached_file', '2024/06/knotted_fabric.webp'),
(616, 232, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:27:\"2024/06/knotted_fabric.webp\";s:8:\"filesize\";i:69424;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10112;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"knotted_fabric-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45078;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4500;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:32848;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"knotted_fabric-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:70398;}s:10:\"small-size\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:30738;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38100;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:27:\"knotted_fabric-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16580;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(617, 233, '_wp_attached_file', '2024/06/las_majas_indias.webp'),
(618, 233, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2024/06/las_majas_indias.webp\";s:8:\"filesize\";i:147342;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"las_majas_indias-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16136;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"las_majas_indias-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:93134;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"las_majas_indias-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7462;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"las_majas_indias-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:93134;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"las_majas_indias-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:150700;}s:10:\"small-size\";a:5:{s:4:\"file\";s:29:\"las_majas_indias-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:39728;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:29:\"las_majas_indias-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:88008;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:29:\"las_majas_indias-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:34254;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(619, 234, '_wp_attached_file', '2024/06/my_other_self.webp'),
(620, 234, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/my_other_self.webp\";s:8:\"filesize\";i:90322;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"my_other_self-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11498;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"my_other_self-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:57710;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"my_other_self-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5964;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"my_other_self-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:57710;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"my_other_self-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:89658;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"my_other_self-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25814;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"my_other_self-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:54494;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"my_other_self-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22572;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(621, 235, '_wp_attached_file', '2024/06/banner_beadwork.webp'),
(622, 235, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:28:\"2024/06/banner_beadwork.webp\";s:8:\"filesize\";i:940190;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"banner_beadwork-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22100;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"banner_beadwork-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:249980;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"banner_beadwork-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8372;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"banner_beadwork-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:249980;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"banner_beadwork-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:508938;}s:10:\"small-size\";a:5:{s:4:\"file\";s:28:\"banner_beadwork-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:77130;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:28:\"banner_beadwork-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:209012;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:28:\"banner_beadwork-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:56290;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(623, 236, '_wp_attached_file', '2024/06/banner_cat_on_quilt.webp'),
(624, 236, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:32:\"2024/06/banner_cat_on_quilt.webp\";s:8:\"filesize\";i:930850;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19700;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"banner_cat_on_quilt-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:200756;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8000;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108348;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"banner_cat_on_quilt-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:417204;}s:10:\"small-size\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:94956;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:166302;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:32:\"banner_cat_on_quilt-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43802;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 237, '_wp_attached_file', '2024/06/banner_clownish_reflection.webp'),
(626, 237, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:39:\"2024/06/banner_clownish_reflection.webp\";s:8:\"filesize\";i:819976;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"banner_clownish_reflection-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22562;}s:5:\"large\";a:5:{s:4:\"file\";s:40:\"banner_clownish_reflection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:191576;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"banner_clownish_reflection-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9214;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"banner_clownish_reflection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:191576;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"banner_clownish_reflection-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:404820;}s:10:\"small-size\";a:5:{s:4:\"file\";s:39:\"banner_clownish_reflection-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65840;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:39:\"banner_clownish_reflection-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:149204;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:39:\"banner_clownish_reflection-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45470;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(627, 238, '_wp_attached_file', '2024/06/banner_clownish_reflection_watercolor.webp'),
(628, 238, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:50:\"2024/06/banner_clownish_reflection_watercolor.webp\";s:8:\"filesize\";i:792020;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"banner_clownish_reflection_watercolor-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20926;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"banner_clownish_reflection_watercolor-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:173374;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"banner_clownish_reflection_watercolor-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8482;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:51:\"banner_clownish_reflection_watercolor-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:173374;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"banner_clownish_reflection_watercolor-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:375858;}s:10:\"small-size\";a:5:{s:4:\"file\";s:50:\"banner_clownish_reflection_watercolor-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:59984;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:50:\"banner_clownish_reflection_watercolor-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:131912;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:50:\"banner_clownish_reflection_watercolor-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41086;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(629, 239, '_wp_attached_file', '2024/06/banner_clowns1.webp'),
(630, 239, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:27:\"2024/06/banner_clowns1.webp\";s:8:\"filesize\";i:981510;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24472;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"banner_clowns1-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:232474;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9888;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:131682;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"banner_clowns1-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:472060;}s:10:\"small-size\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:115538;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:200686;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:27:\"banner_clowns1-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:54808;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(631, 240, '_wp_attached_file', '2024/06/banner_flamingos.webp'),
(632, 240, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2024/06/banner_flamingos.webp\";s:8:\"filesize\";i:780548;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"banner_flamingos-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18042;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"banner_flamingos-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:160576;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"banner_flamingos-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7142;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"banner_flamingos-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:160576;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"banner_flamingos-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:358792;}s:10:\"small-size\";a:5:{s:4:\"file\";s:29:\"banner_flamingos-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:52888;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:29:\"banner_flamingos-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:120874;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:29:\"banner_flamingos-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:34992;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(633, 241, '_wp_attached_file', '2024/06/banner_floral_desires.webp'),
(634, 241, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:34:\"2024/06/banner_floral_desires.webp\";s:8:\"filesize\";i:840230;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"banner_floral_desires-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26228;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"banner_floral_desires-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:209348;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"banner_floral_desires-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10976;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"banner_floral_desires-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:209348;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"banner_floral_desires-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:429386;}s:10:\"small-size\";a:5:{s:4:\"file\";s:34:\"banner_floral_desires-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:74202;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:34:\"banner_floral_desires-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:172376;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:34:\"banner_floral_desires-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:55944;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(635, 242, '_wp_attached_file', '2024/06/banner_happy_day.webp'),
(636, 242, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2024/06/banner_happy_day.webp\";s:8:\"filesize\";i:767250;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"banner_happy_day-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18168;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"banner_happy_day-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:155548;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"banner_happy_day-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7550;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"banner_happy_day-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:155548;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"banner_happy_day-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:347842;}s:10:\"small-size\";a:5:{s:4:\"file\";s:29:\"banner_happy_day-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51926;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:29:\"banner_happy_day-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:116938;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:29:\"banner_happy_day-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:34480;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(637, 243, '_wp_attached_file', '2024/06/banner_herons.webp'),
(638, 243, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/banner_herons.webp\";s:8:\"filesize\";i:808942;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"banner_herons-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20400;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"banner_herons-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:180668;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"banner_herons-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8108;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"banner_herons-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:180668;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"banner_herons-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:392162;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"banner_herons-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:60514;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"banner_herons-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:138978;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"banner_herons-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:42076;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(639, 244, '_wp_attached_file', '2024/06/banner_knotted_fabric.webp'),
(640, 244, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:34:\"2024/06/banner_knotted_fabric.webp\";s:8:\"filesize\";i:904268;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16760;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"banner_knotted_fabric-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:181550;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6582;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:95568;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"banner_knotted_fabric-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:388642;}s:10:\"small-size\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:82820;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:146502;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:34:\"banner_knotted_fabric-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:36052;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 245, '_wp_attached_file', '2024/06/banner_las_majas_indias.webp'),
(642, 245, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:36:\"2024/06/banner_las_majas_indias.webp\";s:8:\"filesize\";i:818542;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"banner_las_majas_indias-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21886;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"banner_las_majas_indias-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:189966;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"banner_las_majas_indias-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8944;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"banner_las_majas_indias-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:189966;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"banner_las_majas_indias-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:403396;}s:10:\"small-size\";a:5:{s:4:\"file\";s:36:\"banner_las_majas_indias-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64192;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:36:\"banner_las_majas_indias-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:152666;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:36:\"banner_las_majas_indias-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45850;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(643, 246, '_wp_attached_file', '2024/06/banner_my_other_self.webp'),
(644, 246, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:33:\"2024/06/banner_my_other_self.webp\";s:8:\"filesize\";i:779626;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_my_other_self-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18058;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_my_other_self-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:162322;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_my_other_self-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7540;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"banner_my_other_self-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:162322;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_my_other_self-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:359416;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_my_other_self-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:53446;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_my_other_self-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:124422;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_my_other_self-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35914;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 247, '_wp_attached_file', '2024/06/banner_odds_and_ends.webp'),
(646, 247, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:33:\"2024/06/banner_odds_and_ends.webp\";s:8:\"filesize\";i:961026;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24380;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_odds_and_ends-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:222026;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10056;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:124044;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_odds_and_ends-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:452134;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108880;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:188238;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_odds_and_ends-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:53268;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 248, '_wp_attached_file', '2024/06/banner_outcast_clown.webp'),
(648, 248, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:33:\"2024/06/banner_outcast_clown.webp\";s:8:\"filesize\";i:969360;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23340;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_outcast_clown-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:225794;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9386;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:126596;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_outcast_clown-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:461892;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:111272;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:192324;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_outcast_clown-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51952;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 249, '_wp_attached_file', '2024/06/banner_paradise_life.webp'),
(650, 249, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:33:\"2024/06/banner_paradise_life.webp\";s:8:\"filesize\";i:995110;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_paradise_life-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27518;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_paradise_life-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:273426;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_paradise_life-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10332;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"banner_paradise_life-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:273426;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_paradise_life-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:561938;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_paradise_life-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:87498;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_paradise_life-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:230078;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_paradise_life-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64456;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 250, '_wp_attached_file', '2024/06/banner_resurrection.webp'),
(652, 250, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:32:\"2024/06/banner_resurrection.webp\";s:8:\"filesize\";i:803144;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"banner_resurrection-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21774;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"banner_resurrection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:179756;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"banner_resurrection-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9142;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"banner_resurrection-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:179756;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"banner_resurrection-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:387320;}s:10:\"small-size\";a:5:{s:4:\"file\";s:32:\"banner_resurrection-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:62622;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:32:\"banner_resurrection-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:143696;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:32:\"banner_resurrection-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:44902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 251, '_wp_attached_file', '2024/06/banner_roses_or_butterflies.webp');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(654, 251, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:40:\"2024/06/banner_roses_or_butterflies.webp\";s:8:\"filesize\";i:946596;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22244;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"banner_roses_or_butterflies-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:212234;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8786;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:118082;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"banner_roses_or_butterflies-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:435234;}s:10:\"small-size\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:102954;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:174270;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:40:\"banner_roses_or_butterflies-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46768;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(655, 252, '_wp_attached_file', '2024/06/banner_self_portrait.webp'),
(656, 252, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:33:\"2024/06/banner_self_portrait.webp\";s:8:\"filesize\";i:761756;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_self_portrait-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14130;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_self_portrait-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:146426;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_self_portrait-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5080;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"banner_self_portrait-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:146426;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_self_portrait-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:338116;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_self_portrait-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45034;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_self_portrait-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:104640;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_self_portrait-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26776;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 253, '_wp_attached_file', '2024/06/banner_stillLife0.webp'),
(658, 253, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:30:\"2024/06/banner_stillLife0.webp\";s:8:\"filesize\";i:772948;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"banner_stillLife0-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15744;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"banner_stillLife0-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:152946;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"banner_stillLife0-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6002;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"banner_stillLife0-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:152946;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"banner_stillLife0-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:350106;}s:10:\"small-size\";a:5:{s:4:\"file\";s:30:\"banner_stillLife0-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:48574;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:30:\"banner_stillLife0-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:110650;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:30:\"banner_stillLife0-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:29844;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(659, 254, '_wp_attached_file', '2024/06/banner_teddy_and_friends.webp'),
(660, 254, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:37:\"2024/06/banner_teddy_and_friends.webp\";s:8:\"filesize\";i:916658;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18430;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"banner_teddy_and_friends-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:187352;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7490;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:99900;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:39:\"banner_teddy_and_friends-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:401024;}s:10:\"small-size\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:86614;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:154164;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:37:\"banner_teddy_and_friends-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38776;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(661, 255, '_wp_attached_file', '2024/06/banner_the_model.webp'),
(662, 255, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2024/06/banner_the_model.webp\";s:8:\"filesize\";i:773206;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"banner_the_model-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19242;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"banner_the_model-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:159162;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"banner_the_model-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8316;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"banner_the_model-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:159162;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"banner_the_model-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:353602;}s:10:\"small-size\";a:5:{s:4:\"file\";s:29:\"banner_the_model-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:53702;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:29:\"banner_the_model-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:118368;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:29:\"banner_the_model-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35714;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 256, '_wp_attached_file', '2024/06/banner_the_quenching.webp'),
(664, 256, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:33:\"2024/06/banner_the_quenching.webp\";s:8:\"filesize\";i:840172;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"banner_the_quenching-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27866;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"banner_the_quenching-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:214850;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"banner_the_quenching-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11908;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"banner_the_quenching-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:214850;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"banner_the_quenching-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:435132;}s:10:\"small-size\";a:5:{s:4:\"file\";s:33:\"banner_the_quenching-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:76862;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:33:\"banner_the_quenching-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:175840;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:33:\"banner_the_quenching-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:59400;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 257, '_wp_attached_file', '2024/06/banner_the_seamstress.webp'),
(666, 257, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:34:\"2024/06/banner_the_seamstress.webp\";s:8:\"filesize\";i:830798;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"banner_the_seamstress-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26288;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"banner_the_seamstress-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:203446;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"banner_the_seamstress-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10648;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"banner_the_seamstress-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:203446;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"banner_the_seamstress-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:420014;}s:10:\"small-size\";a:5:{s:4:\"file\";s:34:\"banner_the_seamstress-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:72658;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:34:\"banner_the_seamstress-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:158906;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:34:\"banner_the_seamstress-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51542;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(667, 258, '_wp_attached_file', '2024/06/banner_the_waif.webp'),
(668, 258, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:28:\"2024/06/banner_the_waif.webp\";s:8:\"filesize\";i:764770;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"banner_the_waif-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15968;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"banner_the_waif-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:149384;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"banner_the_waif-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6172;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"banner_the_waif-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:149384;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"banner_the_waif-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:342202;}s:10:\"small-size\";a:5:{s:4:\"file\";s:28:\"banner_the_waif-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47590;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:28:\"banner_the_waif-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108862;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:28:\"banner_the_waif-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:29736;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 259, '_wp_attached_file', '2024/06/banner_trumpet_the_orchids.webp'),
(670, 259, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:39:\"2024/06/banner_trumpet_the_orchids.webp\";s:8:\"filesize\";i:908978;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18702;}s:5:\"large\";a:5:{s:4:\"file\";s:40:\"banner_trumpet_the_orchids-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:186228;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7460;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:99282;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"banner_trumpet_the_orchids-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:396258;}s:10:\"small-size\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-720x540.webp\";s:5:\"width\";i:720;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:86498;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:151604;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:39:\"banner_trumpet_the_orchids-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38806;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(676, 62, '_thumbnail_id', '231'),
(677, 62, 'year_medium_size', '1998 Oil on Canvas. 30\" x 40\"'),
(682, 62, '_wp_old_date', '2024-04-25'),
(686, 59, '_thumbnail_id', '228'),
(687, 59, 'year_medium_size', '1999 Oil on Canvas. 36\" x 48\"'),
(692, 56, '_thumbnail_id', '219'),
(698, 28, '_thumbnail_id', '226'),
(699, 28, 'year_medium_size', '1981 Oil on Canvas 22\" x 34\"'),
(704, 56, '_wp_old_date', '2024-04-25'),
(707, 59, '_wp_old_date', '2024-04-25'),
(711, 29, '_thumbnail_id', '211'),
(712, 29, 'year_medium_size', '1984 Oil on Canvas 32\" x 44\"'),
(715, 29, 'year_medium_size', '1984 Oil on Canvas 32\" x 44\"'),
(729, 29, '_wp_old_slug', 'still-life-02'),
(734, 28, '_wp_old_slug', 'still-life-03'),
(737, 59, '_wp_old_slug', 'flamingos'),
(740, 62, '_wp_old_slug', 'herons'),
(743, 29, '_wp_old_date', '2024-04-24'),
(746, 28, '_wp_old_date', '2024-04-24'),
(749, 24, '_wp_old_date', '2024-04-24'),
(753, 24, '_wp_old_slug', 'textile'),
(754, 24, '_thumbnail_id', '232'),
(755, 24, 'year_medium_size', '1985 Oil on Canvas 48\" x 36\"'),
(758, 24, 'year_medium_size', '1985 Oil on Canvas 48\" x 36\"'),
(761, 275, '_edit_lock', '1717648387:1'),
(762, 275, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_self_portrait.webp'),
(765, 275, '_thumbnail_id', '215'),
(766, 275, '_edit_last', '1'),
(769, 275, '_wp_old_date', '2024-06-05'),
(770, 277, '_edit_lock', '1717647883:1'),
(771, 277, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_paradise_life.webp'),
(774, 277, '_thumbnail_id', '212'),
(775, 277, 'year_medium_size', '1971 Scratchboard under Glass 27\" x 21\"'),
(776, 277, '_edit_last', '1'),
(779, 277, '_wp_old_date', '2024-06-05'),
(780, 279, '_edit_lock', '1717587467:1'),
(781, 280, '_edit_lock', '1717588095:1'),
(782, 280, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_las_majas_indias.webp'),
(785, 280, '_thumbnail_id', '233'),
(786, 280, 'year_medium_size', '1978 Watercolor. 14\" x 11\"'),
(787, 280, '_edit_last', '1'),
(790, 280, '_wp_old_date', '2024-06-05'),
(791, 282, '_edit_lock', '1717588712:1'),
(792, 282, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_trumpet_the_orchids.webp'),
(795, 282, '_thumbnail_id', '223'),
(796, 282, 'year_medium_size', '1983 Watercolor. 22\" x 30\"'),
(797, 282, '_edit_last', '1'),
(800, 282, '_wp_old_date', '2024-06-05'),
(801, 284, '_edit_lock', '1717603991:1'),
(802, 284, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_cat_on_quilt.webp'),
(805, 284, '_thumbnail_id', '225'),
(806, 284, 'year_medium_size', '1985 Watercolor. 22\" x 30\"'),
(807, 284, '_edit_last', '1'),
(810, 284, '_wp_old_date', '2024-06-05'),
(819, 286, '_edit_lock', '1717603917:1'),
(820, 286, 'year_medium_size', '1985 Watercolor. 22\" x 29\"'),
(823, 286, '_thumbnail_id', '227'),
(824, 286, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clownish_reflection_watercolor.webp'),
(825, 286, '_edit_last', '1'),
(828, 286, '_wp_old_date', '2024-06-05'),
(829, 288, '_edit_lock', '1717647884:1'),
(830, 288, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_resurrection.webp'),
(833, 288, '_thumbnail_id', '213'),
(834, 288, 'year_medium_size', '1976 Oil on Canvas. 36\" x 36\"'),
(835, 288, '_edit_last', '1'),
(838, 290, '_edit_lock', '1717590611:1'),
(839, 290, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_happy_day.webp'),
(842, 290, '_thumbnail_id', '230'),
(843, 290, 'year_medium_size', '1977 Oil on Canvas. 32\" x 35\"'),
(844, 290, '_edit_last', '1'),
(849, 288, '_wp_old_date', '2024-06-05'),
(852, 290, '_wp_old_date', '2024-06-05'),
(855, 30, '_wp_old_date', '2024-04-24'),
(856, 292, '_edit_lock', '1717590885:1'),
(857, 292, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_quenching.webp'),
(860, 292, '_thumbnail_id', '220'),
(861, 292, 'year_medium_size', '1983 Acrylic on Canvas. 24\" x 30\"'),
(862, 292, '_edit_last', '1'),
(865, 292, '_wp_old_date', '2024-06-05'),
(866, 294, '_edit_lock', '1717591047:1'),
(867, 294, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_waif.webp'),
(870, 294, '_thumbnail_id', '222'),
(871, 294, 'year_medium_size', '1982 Oil on Canvas. 20\" x 26\"'),
(872, 294, '_edit_last', '1'),
(875, 294, '_wp_old_date', '2024-06-05'),
(876, 296, '_edit_lock', '1717591244:1'),
(877, 296, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_odds_and_ends.webp'),
(880, 296, '_thumbnail_id', '210'),
(881, 296, 'year_medium_size', '1985 Oil on Canvas. 26\" x 32\"'),
(882, 296, '_edit_last', '1'),
(885, 296, '_wp_old_date', '2024-06-05'),
(886, 298, '_edit_lock', '1717591564:1'),
(887, 298, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_my_other_self.webp'),
(890, 298, '_thumbnail_id', '234'),
(891, 298, 'year_medium_size', '1978 Oil on Canvas 16\" x 20\"'),
(892, 298, '_edit_last', '1'),
(895, 298, '_wp_old_date', '2024-06-05'),
(896, 300, '_edit_lock', '1717591783:1'),
(897, 300, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_floral_desires.webp'),
(900, 300, '_thumbnail_id', '229'),
(901, 300, 'year_medium_size', '1980 Acrylic on Canvas 24\" x 30\"'),
(902, 300, '_edit_last', '1'),
(905, 300, '_wp_old_date', '2024-06-05'),
(906, 302, '_edit_lock', '1717591938:1'),
(907, 302, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_roses_or_butterflies.webp'),
(908, 302, '_edit_last', '1'),
(909, 302, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_roses_or_butterflies.webp'),
(912, 302, '_thumbnail_id', '214'),
(913, 302, 'year_medium_size', '1981 Oil on Canvas Triptych. 21\" x 36\"'),
(916, 302, '_wp_old_date', '2024-06-05'),
(917, 305, '_edit_lock', '1717603815:1'),
(918, 305, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_teddy_and_friends.webp'),
(919, 305, '_edit_last', '1'),
(920, 305, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_teddy_and_friends.webp'),
(923, 305, '_thumbnail_id', '217'),
(924, 305, 'year_medium_size', '1986 Watercolor on Paper. 36\" x 32\"'),
(927, 305, '_wp_old_date', '2024-06-05'),
(928, 308, '_edit_lock', '1717592795:1'),
(929, 308, 'banner_img', 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_seamstress.webp'),
(932, 308, '_thumbnail_id', '221'),
(933, 308, 'year_medium_size', '1980 Watercolor. 30\" x 20\"'),
(934, 308, '_edit_last', '1'),
(937, 308, '_wp_old_date', '2024-06-05'),
(940, 311, '_edit_lock', '1717687112:1'),
(941, 312, '_wp_attached_file', '2024/06/tomAndLourdes.webp'),
(942, 312, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1920;s:4:\"file\";s:26:\"2024/06/tomAndLourdes.webp\";s:8:\"filesize\";i:422288;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"tomAndLourdes-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25592;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"tomAndLourdes-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:224396;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"tomAndLourdes-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9340;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"tomAndLourdes-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:224396;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"tomAndLourdes-1152x1536.webp\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:406954;}s:10:\"small-size\";a:5:{s:4:\"file\";s:26:\"tomAndLourdes-405x540.webp\";s:5:\"width\";i:405;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:75094;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:26:\"tomAndLourdes-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:181786;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:26:\"tomAndLourdes-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:55314;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(946, 311, '_edit_last', '1'),
(952, 252, '_edit_lock', '1717599229:1'),
(963, 312, '_edit_lock', '1717599792:1'),
(964, 312, '_wp_attachment_image_alt', 'The artist, Lourdes Perez, stands with her husband, Thomas, his arm around her, on a bridge over a small, dry canal. Trees with dangling moss line the canal.'),
(965, 312, '_edit_last', '1'),
(967, 322, '_wp_attached_file', '2024/06/2024-05-11-20-06.webp'),
(968, 322, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1428;s:6:\"height\";i:1920;s:4:\"file\";s:29:\"2024/06/2024-05-11-20-06.webp\";s:8:\"filesize\";i:145854;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"2024-05-11-20-06-223x300.webp\";s:5:\"width\";i:223;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7286;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"2024-05-11-20-06-762x1024.webp\";s:5:\"width\";i:762;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46042;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"2024-05-11-20-06-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3156;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"2024-05-11-20-06-768x1033.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1033;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47100;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"2024-05-11-20-06-1142x1536.webp\";s:5:\"width\";i:1142;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:74008;}s:10:\"small-size\";a:5:{s:4:\"file\";s:29:\"2024-05-11-20-06-402x540.webp\";s:5:\"width\";i:402;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18952;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:29:\"2024-05-11-20-06-800x800.webp\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:40986;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:29:\"2024-05-11-20-06-400x400.webp\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15738;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(969, 322, '_edit_lock', '1717600245:1'),
(971, 322, '_wp_attachment_image_alt', 'The artist\'s 1990s resumé for a job application, showing her art education in New York as well as her work and freelance history.'),
(972, 322, '_edit_last', '1'),
(975, 311, '_thumbnail_id', '322'),
(978, 259, '_edit_lock', '1717600263:1'),
(979, 234, '_edit_lock', '1717600798:1'),
(980, 234, '_wp_attachment_image_alt', 'Two versions of the artist with different hair and eye colors. Between and behind them there are multicolored curved stalks and something like a castle in the background'),
(981, 234, '_edit_last', '1'),
(982, 233, '_edit_lock', '1717600898:1'),
(983, 233, '_wp_attachment_image_alt', 'Two women in ornate headpieces and jewelry. A colorful burd sits in front of them. The women are only visible from the chest up and they blend together with tendrils, flowers and abstract patterns to create a larger pattern.'),
(984, 233, '_edit_last', '1'),
(985, 232, '_edit_lock', '1717601008:1'),
(986, 232, '_wp_attachment_image_alt', 'A cloth with a simple multi-colored pattern is tied roughly into two knots allowing folds and creases to form freely. The shapes of the pattern are possibly diamonds but hard to recognize due to the many folds. A thin, white cord winds around the sheet on both ends. The background is white with a grey background consisting of the sheet\'s shadow and nine vertically tilted stripes.'),
(987, 232, '_edit_last', '1'),
(988, 231, '_edit_lock', '1717601461:1'),
(991, 231, '_wp_attachment_image_alt', 'Two herons stand, as if posing, on some sticks at the shore of a lake or swamp. One has its head erect and looks to the right. The other looks downward and to the left, its head-feathers ruffled. Around them are various plants and a foggy golden background.'),
(992, 231, '_edit_last', '1'),
(993, 230, '_edit_lock', '1717601604:1'),
(994, 230, '_wp_attachment_image_alt', 'A large bee flies among pastel-colored flowers set against a whitish background into which the leaves seem to fade, as if it were fog.'),
(995, 230, '_edit_last', '1'),
(996, 229, '_edit_lock', '1717601716:1'),
(997, 229, '_wp_attachment_image_alt', 'A vase containing flowers, with gentle whites contrasted by deep oranges, reds and the dark green of the leaves.'),
(998, 229, '_edit_last', '1'),
(999, 228, '_edit_lock', '1717601759:1'),
(1000, 228, '_wp_attachment_image_alt', 'A profile view of two flamingos, one in front of the other, walking in a tropical swamp or lake area. They can be seen clearly, but dense foliage of green and red leaves crowds the frame of the image. In the distance, a cloudy sky opens up above the swamp.'),
(1001, 228, '_edit_last', '1'),
(1002, 227, '_edit_lock', '1717601805:1'),
(1003, 227, '_wp_attachment_image_alt', 'A porcelain clown dressed in red and yellow with a delicate white face, red lips and dark eyes poses next to a pumpkin, a gold bucket of radishes, a potted plant with big white leaves, two cobs of multi-colored corn and three eggs. The surface is covered with a freely arranged sheet with triangular multicolored pattern - pink, white and dark purple. The background has two mirrors that reflect the back of the objects. One of the mirros has an elaborate wooden frame depicting flowers on its edges.'),
(1004, 227, '_edit_last', '1'),
(1005, 226, '_edit_lock', '1717601824:1'),
(1006, 226, '_wp_attachment_image_alt', 'A porcelain clown dressed in red and yellow with a delicate white face, red lips and dark eyes poses next to a pumpkin, a gold bucket of radishes, a potted plant with big white leaves, two cobs of multi-colored corn and three eggs. The surface is covered with a freely arranged sheet with triangular multicolored pattern - pink, white and dark purple. The background has two mirrors that reflect the back of the objects. One of the mirros has an elaborate wooden frame depicting flowers on its edges.'),
(1007, 226, '_edit_last', '1'),
(1008, 225, '_edit_lock', '1717602004:1'),
(1009, 225, '_wp_attachment_image_alt', 'A quilt with concentric geometric patterns, is spread out organically and unevenly. Upon it are a blue, ceramic cat, a plate of fruit and a glass vase containing delicate white plants.'),
(1010, 225, '_edit_last', '1'),
(1011, 223, '_edit_lock', '1717602003:1'),
(1012, 223, '_wp_attachment_image_alt', 'Orchids of gentle purple, pnk and yellow colors, fading into a foggy, white background.'),
(1013, 223, '_edit_last', '1'),
(1014, 222, '_edit_lock', '1717602171:1'),
(1015, 222, '_wp_attachment_image_alt', 'A young girl with sandy blonde hair, perhaps about seven years old, in a white, sleeveless garment, sits on a box. One of her feet is on the box and she touches it with the fingers of both hands.'),
(1016, 222, '_edit_last', '1'),
(1017, 221, '_edit_lock', '1717602318:1'),
(1018, 221, '_wp_attachment_image_alt', 'A woman with long, dark, wavy hair sits at a table holding a cloth. The woman\'s dress, the cloth and the background wallpaper are all very ornate and colorful. A thin vase on the table holds a few branches completely devoid of leaves or flowers.'),
(1019, 221, '_edit_last', '1'),
(1020, 220, '_edit_lock', '1717602374:1'),
(1021, 220, '_wp_attachment_image_alt', 'Two zebras drink from a pool of water. The shore of the water seems to extend up indefinitely behind the zebras like a wall.'),
(1022, 220, '_edit_last', '1'),
(1023, 219, '_edit_lock', '1717602459:1'),
(1024, 219, '_wp_attachment_image_alt', 'A young woman, the artist\'s daughter, poses with one hand on her head and the other on her waist. Her clothes are reminiscent of traditional middle-eastern garments, but more colorful. Her shirt is a simple turquoise garment folded over and tucked into a cloth, brown belt. Over it she wears a loose, quilted jacket with a multicolored diamond pattern: black, turquoise, purple, pink and salmon. Her shawl consists of many differnt complex patterns patched together. Her expression is cool and confident, perhaps distant.'),
(1025, 219, '_edit_last', '1'),
(1026, 217, '_edit_lock', '1717602789:1'),
(1027, 217, '_wp_attachment_image_alt', 'On top of a white dresser, the following objects are collected. In the foreground: a cube-shaped bank made of metal with the letters A and B visible on its sides. A bottle of Johnson\'s baby powder. A single, blue sneaker, laces untied. A red mouse doll sitting on a fake mousetrap with fake cheese. A picture frame that spells \'Our Baby\' with a picture of a dark-haired baby inside of the \'O\'. In the background are a small white teddy-bear with a bib that has \'I LOVE YOU\' written on it, a ceramic clown doll in red and white, two colorful clown dolls made of cloth and yarn, and a brown teddy-bear with a dark brown ribbon around its neck. An aluminum balloon on a stick is between them.'),
(1028, 217, '_edit_last', '1'),
(1029, 216, '_edit_lock', '1717686358:1'),
(1030, 216, '_wp_attachment_image_alt', 'A marble or ivory bookend resembling a horse or a chess knight sits on a wooden platform together with a glass bottle containing a dark red liquid. In front of them, on the platform, are four pieces of fruit - pears and apples - and a red, glass container, short, round and with a narrow opening that blossoms outward.'),
(1031, 216, '_edit_last', '1'),
(1032, 215, '_edit_lock', '1717603073:1'),
(1033, 215, '_wp_attachment_image_alt', 'Life-size pencil drawing of the artist when she was 17 on a plywood stand. Completely in gray pencil, the artist is depicted with neck-length hair, big round sunglasses on her head, a long collared shirt and buttoned vest, a skirt and airy, heeled shoes.'),
(1034, 215, '_edit_last', '1'),
(1085, 275, 'year_medium_size', '1968 Pencil on Paper, Plywood Stand. 64\" x 16\"'),
(1090, 30, 'year_medium_size', '1974 Oil on Canvas. 12\" x 16\"'),
(1091, 30, '_pingme', '1'),
(1092, 30, '_encloseme', '1'),
(1094, 337, '_wp_attached_file', '2024/06/ogImg.png'),
(1095, 337, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:627;s:4:\"file\";s:17:\"2024/06/ogImg.png\";s:8:\"filesize\";i:305152;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"ogImg-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:74854;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"ogImg-1024x535.png\";s:5:\"width\";i:1024;s:6:\"height\";i:535;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:685687;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"ogImg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46307;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"ogImg-768x401.png\";s:5:\"width\";i:768;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:414229;}s:10:\"small-size\";a:5:{s:4:\"file\";s:17:\"ogImg-960x502.png\";s:5:\"width\";i:960;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:614208;}s:10:\"blog-large\";a:5:{s:4:\"file\";s:17:\"ogImg-800x627.png\";s:5:\"width\";i:800;s:6:\"height\";i:627;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:612759;}s:10:\"blog-small\";a:5:{s:4:\"file\";s:17:\"ogImg-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:281066;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1096, 337, '_edit_lock', '1717686659:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-04-21 15:23:53', '2024-04-21 15:23:53', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-04-21 15:23:53', '2024-04-21 15:23:53', '', 0, 'http://localhost/website/lvpSite/2024/04/21/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-04-21 15:27:01', '2024-04-21 15:27:01', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-04-21 15:27:01', '2024-04-21 15:27:01', '', 0, 'http://localhost/website/lvpSite/2024/04/21/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(7, 1, '2024-04-22 06:17:30', '2024-04-22 06:17:30', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-lvp', '', '', '2024-04-22 06:17:30', '2024-04-22 06:17:30', '', 0, 'http://localhost/website/lvpSite/2024/04/22/wp-global-styles-lvp/', 0, 'wp_global_styles', '', 0),
(11, 1, '2024-04-22 14:42:15', '2024-04-22 06:42:15', 'Welcome to the art archive of Lourdes Perez. For info on individual paintings, you can touch the fading images above, or else go to \'Paintings\' from the menu. Please enjoy your visit.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-06-05 22:56:22', '2024-06-05 14:56:22', '', 0, 'http://localhost/website/lvpSite/?page_id=11', 0, 'page', '', 0),
(15, 1, '2024-04-22 17:48:11', '2024-04-22 09:48:11', '(uses the about blog post)', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2024-04-27 15:50:17', '2024-04-27 07:50:17', '', 0, 'http://localhost/website/lvpSite/?page_id=15', 0, 'page', '', 0),
(22, 1, '2024-05-03 18:25:06', '2024-04-23 14:10:21', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2024-05-03 18:25:06', '2024-05-03 10:25:06', '', 0, 'http://localhost/website/lvpSite/?p=22', 3, 'nav_menu_item', '', 0),
(24, 1, '1985-04-24 14:24:03', '1985-04-24 06:24:03', '<p>The artist ties a colorful textile into two knots, creating many shadowed folds and ridges. She contrasts that with the clean white background and its simple striped pattern.</p>\n\n', 'Knotted Fabric', '', 'publish', 'open', 'open', '', 'knotted-fabric', '', '', '2024-06-06 00:14:28', '2024-06-05 16:14:28', '', 0, 'http://localhost/website/lvpSite/?p=24', 0, 'post', '', 0),
(26, 1, '2024-05-03 18:25:06', '2024-04-24 06:25:09', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-05-03 18:25:06', '2024-05-03 10:25:06', '', 0, 'http://localhost/website/lvpSite/?p=26', 4, 'nav_menu_item', '', 0),
(28, 1, '1981-04-24 14:48:58', '1981-04-24 06:48:58', '<p>I vaguely remember my mother having the colored corn at home to paint this, though I\'m not sure about the other objects. This work combines her interest in simple, geometric textiles and clown dolls, as seen in other works.</p>', 'Clownish Reflection', '', 'publish', 'open', 'open', '', 'clownish-reflection', '', '', '2024-06-06 00:15:40', '2024-06-05 16:15:40', '', 0, 'http://localhost/website/lvpSite/?p=28', 0, 'post', '', 0),
(29, 1, '1984-04-24 14:48:58', '1984-04-24 06:48:58', '<p>Besides painting, Lourdes had many interests throughout her life- beads, stamps and dolls to name a few. She seems to have had a period where she specifically focused on clown dolls, as seen here and in <em>Clownish Reflection</em>.</p>', 'Outcast Clown', '', 'publish', 'open', 'open', '', 'outcast-clown', '', '', '2024-06-06 00:14:58', '2024-06-05 16:14:58', '', 0, 'http://localhost/website/lvpSite/?p=29', 0, 'post', '', 0),
(30, 1, '1990-04-24 14:48:58', '1990-04-24 06:48:58', '<p>This was made with some household objects. I most clearly remember the horse bookends from my childhood- they may still be in the house.</p>', 'Still Life', '', 'publish', 'open', 'open', '', 'still-life-01', '', '', '2024-06-06 12:34:05', '2024-06-06 04:34:05', '', 0, 'http://localhost/website/lvpSite/?p=30', 0, 'post', '', 0),
(56, 1, '1989-04-25 15:16:20', '1989-04-25 07:16:20', '<p>Portrait of the Lourdes\' daughter, Elisa, dressed in a garment of the artist\'s invention. The garment features the multicolor diamond pattern common to a few of her works and shows her interest in textile and pattern design. This interest would continue later in life, when she worked as a carpet designer.</p>\r\n', 'The Model', '', 'publish', 'open', 'open', '', 'elisa', '', '', '2024-06-05 18:42:16', '2024-06-05 10:42:16', '', 0, 'http://localhost/website/lvpSite/?p=56', 0, 'post', '', 0),
(59, 1, '1999-04-25 15:17:29', '1999-04-25 07:17:29', '<p>Inspired by the tropical environment of South Florida, Lourdes made this painting to decorate her home as a way of connecting the inside to the outside. It forms a set with \"Herons\".</p>', 'Flamingos Primeval', '', 'publish', 'open', 'open', '', 'flamingos-primeval', '', '', '2024-06-05 18:51:52', '2024-06-05 10:51:52', '', 0, 'http://localhost/website/lvpSite/?p=59', 0, 'post', '', 0),
(62, 1, '1998-04-25 15:21:38', '1998-04-25 07:21:38', '<p>Inspired by the tropical environment of South Florida, Lourdes made this painting to decorate her home as a way of connecting the inside to the outside. It forms a set with \"Flamingos\".</p>', 'White Herons in the Wood', '', 'publish', 'open', 'open', '', 'white-herons-in-the-wood', '', '', '2024-06-05 18:52:01', '2024-06-05 10:52:01', '', 0, 'http://localhost/website/lvpSite/?p=62', 0, 'post', '', 0),
(70, 1, '2024-04-25 21:33:19', '2024-04-25 13:33:19', '', 'sig', '', 'inherit', 'open', 'closed', '', 'sig', '', '', '2024-04-25 21:33:19', '2024-04-25 13:33:19', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/04/sig.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2024-04-25 21:58:29', '2024-04-25 13:58:29', '', 'sig-2', '', 'inherit', 'open', 'closed', '', 'sig-2', '', '', '2024-04-25 21:58:29', '2024-04-25 13:58:29', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/04/sig-2.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2024-04-26 13:29:53', '2024-04-26 05:29:53', '', 'sig-3', '', 'inherit', 'open', 'closed', '', 'sig-3', '', '', '2024-04-26 13:29:53', '2024-04-26 05:29:53', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/04/sig-3.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2024-04-26 17:51:16', '2024-04-26 09:51:16', '', 'artist-and-son', '', 'inherit', 'open', 'closed', '', '27', '', '', '2024-05-05 14:30:58', '2024-05-05 06:30:58', '', 15, 'http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2024-04-26 18:00:50', '2024-04-26 10:00:50', '<p>Lourdes Vasquez Perez (1950-2022) was born and raised in New York City where she attended the High School of Music & Art and the School of Visual Art. She has a wide range, from expressionism to classical still-life to portrait. Her paintings can be found in the homes of family and friends.</p>\n\n<p>The mission of this archive is to form as complete a picture as possible of her work and identity as an artist. She has left behind little in the way of information or statements. But the works themselves are enough- we will fill in the gaps as best we can.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg 480w, http://localhost/website/lvpSite/wp-content/uploads/2024/04/27-225x300.jpg 225w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Stephan Perez, c. 2002</div></div>\n\n<p>Over the coming years, I will endeavor to work with her other family, friends and colleagues, to add more photos and information. This archive will be a place, not only for Lourdes\' loved ones to revisit her work, but for anyone who might discover its beauty.</p>', 'About this Archive', '', 'publish', 'open', 'open', '', 'about-this-archive', '', '', '2024-06-06 00:01:17', '2024-06-05 16:01:17', '', 0, 'http://localhost/website/lvpSite/?p=86', 0, 'post', '', 0),
(89, 1, '2024-05-03 18:25:06', '2024-04-26 10:04:45', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2024-05-03 18:25:06', '2024-05-03 10:25:06', '', 0, 'http://localhost/website/lvpSite/?p=89', 1, 'nav_menu_item', '', 0),
(161, 1, '2024-05-03 18:18:00', '2024-05-03 10:18:00', '{\"fields\":{\"2\":{\"id\":\"2\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Subject\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"161\",\"field_id\":6,\"settings\":{\"form_title\":\"contact\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"s.elliot.perez@gmail.com\",\"subject\":\"{Subject}\",\"sender_name\":\"stephan e perez\",\"sender_address\":\"s.elliot.perez@gmail.com\",\"replyto\":\"\",\"message\":\"{all_fields}\",\"template\":\"\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us. We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"15\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[],\"store_spam_entries\":\"0\"},\"meta\":{\"template\":\"blank\"}}', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-05-03 18:32:56', '2024-05-03 10:32:56', '', 0, 'http://localhost/website/lvpSite/?post_type=wpforms&#038;p=161', 0, 'wpforms', '', 0),
(163, 1, '2024-05-03 18:19:21', '2024-05-03 10:19:21', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-05-05 15:19:08', '2024-05-05 07:19:08', '', 0, 'http://localhost/website/lvpSite/?page_id=163', 0, 'page', '', 0),
(168, 1, '2024-05-03 18:25:06', '2024-05-03 10:25:06', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2024-05-03 18:25:06', '2024-05-03 10:25:06', '', 0, 'http://localhost/website/lvpSite/?p=168', 2, 'nav_menu_item', '', 0),
(176, 1, '2024-05-04 20:33:35', '2024-05-04 12:33:35', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2024-05-04 20:33:35', '2024-05-04 12:33:35', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/05/favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2024-05-04 22:27:32', '2024-05-04 14:27:32', '', 'favicon2', '', 'inherit', 'open', 'closed', '', 'favicon2', '', '', '2024-05-04 22:27:32', '2024-05-04 14:27:32', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/05/favicon2.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2024-05-05 13:48:59', '2024-05-05 05:48:59', '', 'Lourdes Perez', '', 'inherit', 'open', 'closed', '', 'momface', '', '', '2024-05-05 14:06:22', '2024-05-05 06:06:22', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/05/momFace.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2024-05-12 00:40:56', '2024-05-11 16:40:56', '<p>Lourdes Vasquez Perez (1950-2022) was born and raised in New York City where she attended the  High School of Music & Art in Manhattan. She has a wide range, from expressionism to classical still-life to portrait. Her paintings can be found in the homes of family and friends.</p>\n\n<p>The mission of this archive is to form as complete a picture as possible of her work and identity as an artist. She has left behind no statements or detailed work information. But the works themselves are enough- we will fill in the gaps as best we can.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg 480w, http://localhost/website/lvpSite/wp-content/uploads/2024/04/27-225x300.jpg 225w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Stephan Perez, c. 2002</div></div>\n\n<p>Over the coming years, I will endeavor to work with her other family, friends and colleagues, to add more photos and information. This archive will be a place, not only for Lourdes\' loved ones to revisit her work, but for anyone who might discover its beauty.</p>', 'About this Archive', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2024-05-12 00:40:56', '2024-05-11 16:40:56', '', 86, 'http://localhost/website/lvpSite/?p=204', 0, 'revision', '', 0),
(206, 1, '2024-05-28 22:06:33', '2024-05-28 14:06:33', '<p>Lourdes Vasquez Perez (1950-2022) was born and raised in New York City where she attended the High School of Music & Art and the School of Visual Art. She has a wide range, from expressionism to classical still-life to portrait. Her paintings can be found in the homes of family and friends.</p>\n\n<p>The mission of this archive is to form as complete a picture as possible of her work and identity as an artist. She has left behind no statements or detailed work information. But the works themselves are enough- we will fill in the gaps as best we can.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg 480w, http://localhost/website/lvpSite/wp-content/uploads/2024/04/27-225x300.jpg 225w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Stephan Perez, c. 2002</div></div>\n\n<p>Over the coming years, I will endeavor to work with her other family, friends and colleagues, to add more photos and information. This archive will be a place, not only for Lourdes\' loved ones to revisit her work, but for anyone who might discover its beauty.</p>', 'About this Archive', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2024-05-28 22:06:33', '2024-05-28 14:06:33', '', 86, 'http://localhost/website/lvpSite/?p=206', 0, 'revision', '', 0),
(208, 1, '2024-05-28 22:18:17', '2024-05-28 14:18:17', '<p>Portrait of the Lourdes\' daughter, Elisa, dressed in a garment of the artist\'s invention. The garment features the multicolor diamond pattern common to a few of her works and shows her interest in textile and pattern design. This interest would continue later in life, when she worked as a carpet designer.</p>\r\n', 'The Model (1989)', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-05-28 22:18:17', '2024-05-28 14:18:17', '', 56, 'http://localhost/website/lvpSite/?p=208', 0, 'revision', '', 0),
(209, 1, '2024-05-28 22:30:09', '2024-05-28 14:30:09', '<p>Portrait of the Lourdes\' daughter, Elisa, dressed in a garment of the artist\'s invention. The garment features the multicolor diamond pattern common to a few of her works and shows her interest in textile and pattern design. This interest would continue later in life, when she worked as a carpet designer.</p>\r\n', 'The Model', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-05-28 22:30:09', '2024-05-28 14:30:09', '', 56, 'http://localhost/website/lvpSite/?p=209', 0, 'revision', '', 0),
(210, 1, '2024-06-05 18:08:07', '2024-06-05 10:08:07', '', 'odds_and_ends', '', 'inherit', 'open', 'closed', '', 'odds_and_ends', '', '', '2024-06-05 18:08:07', '2024-06-05 10:08:07', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/odds_and_ends.webp', 0, 'attachment', 'image/webp', 0),
(211, 1, '2024-06-05 18:08:11', '2024-06-05 10:08:11', '', 'outcast_clown', '', 'inherit', 'open', 'closed', '', 'outcast_clown', '', '', '2024-06-05 18:08:11', '2024-06-05 10:08:11', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/outcast_clown.webp', 0, 'attachment', 'image/webp', 0),
(212, 1, '2024-06-05 18:08:14', '2024-06-05 10:08:14', '', 'paradise_life', '', 'inherit', 'open', 'closed', '', 'paradise_life', '', '', '2024-06-05 18:08:14', '2024-06-05 10:08:14', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/paradise_life.webp', 0, 'attachment', 'image/webp', 0),
(213, 1, '2024-06-05 18:08:17', '2024-06-05 10:08:17', '', 'resurrection', '', 'inherit', 'open', 'closed', '', 'resurrection', '', '', '2024-06-05 18:08:17', '2024-06-05 10:08:17', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/resurrection.webp', 0, 'attachment', 'image/webp', 0),
(214, 1, '2024-06-05 18:08:20', '2024-06-05 10:08:20', '', 'roses_or_butterflies', '', 'inherit', 'open', 'closed', '', 'roses_or_butterflies', '', '', '2024-06-05 18:08:20', '2024-06-05 10:08:20', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/roses_or_butterflies.webp', 0, 'attachment', 'image/webp', 0),
(215, 1, '2024-06-05 18:08:22', '2024-06-05 10:08:22', '', 'self_portrait', '', 'inherit', 'open', 'closed', '', 'self_portrait', '', '', '2024-06-05 23:59:23', '2024-06-05 15:59:23', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/self_portrait.webp', 0, 'attachment', 'image/webp', 0),
(216, 1, '2024-06-05 18:08:25', '2024-06-05 10:08:25', '', 'stillLife0', '', 'inherit', 'open', 'closed', '', 'stilllife0-3', '', '', '2024-06-05 23:56:23', '2024-06-05 15:56:23', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/stillLife0.webp', 0, 'attachment', 'image/webp', 0),
(217, 1, '2024-06-05 18:08:27', '2024-06-05 10:08:27', '', 'teddy_and_friends', '', 'inherit', 'open', 'closed', '', 'teddy_and_friends', '', '', '2024-06-05 23:55:32', '2024-06-05 15:55:32', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/teddy_and_friends.webp', 0, 'attachment', 'image/webp', 0),
(219, 1, '2024-06-05 18:08:32', '2024-06-05 10:08:32', '', 'the_model', '', 'inherit', 'open', 'closed', '', 'the_model', '', '', '2024-06-05 23:49:41', '2024-06-05 15:49:41', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/the_model.webp', 0, 'attachment', 'image/webp', 0),
(220, 1, '2024-06-05 18:08:34', '2024-06-05 10:08:34', '', 'the_quenching', '', 'inherit', 'open', 'closed', '', 'the_quenching', '', '', '2024-06-05 23:48:33', '2024-06-05 15:48:33', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/the_quenching.webp', 0, 'attachment', 'image/webp', 0),
(221, 1, '2024-06-05 18:08:37', '2024-06-05 10:08:37', '', 'the_seamstress', '', 'inherit', 'open', 'closed', '', 'the_seamstress', '', '', '2024-06-05 23:47:42', '2024-06-05 15:47:42', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/the_seamstress.webp', 0, 'attachment', 'image/webp', 0),
(222, 1, '2024-06-05 18:08:39', '2024-06-05 10:08:39', '', 'the_waif', '', 'inherit', 'open', 'closed', '', 'the_waif', '', '', '2024-06-05 23:45:14', '2024-06-05 15:45:14', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/the_waif.webp', 0, 'attachment', 'image/webp', 0),
(223, 1, '2024-06-05 18:08:42', '2024-06-05 10:08:42', '', 'trumpet_the_orchids', '', 'inherit', 'open', 'closed', '', 'trumpet_the_orchids', '', '', '2024-06-05 23:42:26', '2024-06-05 15:42:26', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/trumpet_the_orchids.webp', 0, 'attachment', 'image/webp', 0),
(224, 1, '2024-06-05 18:08:44', '2024-06-05 10:08:44', '', 'beadwork', '', 'inherit', 'open', 'closed', '', 'beadwork', '', '', '2024-06-05 18:08:44', '2024-06-05 10:08:44', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/beadwork.webp', 0, 'attachment', 'image/webp', 0),
(225, 1, '2024-06-05 18:08:47', '2024-06-05 10:08:47', '', 'cat_on_quilt', '', 'inherit', 'open', 'closed', '', 'cat_on_quilt', '', '', '2024-06-05 23:41:23', '2024-06-05 15:41:23', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/cat_on_quilt.webp', 0, 'attachment', 'image/webp', 0),
(226, 1, '2024-06-05 18:08:49', '2024-06-05 10:08:49', '', 'clownish_reflection', '', 'inherit', 'open', 'closed', '', 'clownish_reflection', '', '', '2024-06-05 23:39:26', '2024-06-05 15:39:26', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/clownish_reflection.webp', 0, 'attachment', 'image/webp', 0),
(227, 1, '2024-06-05 18:08:52', '2024-06-05 10:08:52', '', 'clownish_reflection_watercolor', '', 'inherit', 'open', 'closed', '', 'clownish_reflection_watercolor', '', '', '2024-06-05 23:39:08', '2024-06-05 15:39:08', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/clownish_reflection_watercolor.webp', 0, 'attachment', 'image/webp', 0),
(228, 1, '2024-06-05 18:08:54', '2024-06-05 10:08:54', '', 'flamingos', '', 'inherit', 'open', 'closed', '', 'flamingos-2', '', '', '2024-06-05 23:38:19', '2024-06-05 15:38:19', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/flamingos.webp', 0, 'attachment', 'image/webp', 0),
(229, 1, '2024-06-05 18:08:57', '2024-06-05 10:08:57', '', 'floral_desires', '', 'inherit', 'open', 'closed', '', 'floral_desires', '', '', '2024-06-05 23:37:37', '2024-06-05 15:37:37', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/floral_desires.webp', 0, 'attachment', 'image/webp', 0),
(230, 1, '2024-06-05 18:09:00', '2024-06-05 10:09:00', '', 'happy_day', '', 'inherit', 'open', 'closed', '', 'happy_day', '', '', '2024-06-05 23:35:46', '2024-06-05 15:35:46', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/happy_day.webp', 0, 'attachment', 'image/webp', 0),
(231, 1, '2024-06-05 18:09:02', '2024-06-05 10:09:02', '', 'herons', '', 'inherit', 'open', 'closed', '', 'herons-2', '', '', '2024-06-05 23:33:20', '2024-06-05 15:33:20', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/herons.webp', 0, 'attachment', 'image/webp', 0),
(232, 1, '2024-06-05 18:09:04', '2024-06-05 10:09:04', '', 'knotted_fabric', '', 'inherit', 'open', 'closed', '', 'knotted_fabric', '', '', '2024-06-05 23:25:50', '2024-06-05 15:25:50', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/knotted_fabric.webp', 0, 'attachment', 'image/webp', 0),
(233, 1, '2024-06-05 18:09:07', '2024-06-05 10:09:07', '', 'las_majas_indias', '', 'inherit', 'open', 'closed', '', 'las_majas_indias', '', '', '2024-06-05 23:24:00', '2024-06-05 15:24:00', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/las_majas_indias.webp', 0, 'attachment', 'image/webp', 0),
(234, 1, '2024-06-05 18:09:10', '2024-06-05 10:09:10', '', 'my_other_self', '', 'inherit', 'open', 'closed', '', 'my_other_self', '', '', '2024-06-05 23:22:21', '2024-06-05 15:22:21', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/my_other_self.webp', 0, 'attachment', 'image/webp', 0),
(235, 1, '2024-06-05 18:11:00', '2024-06-05 10:11:00', '', 'banner_beadwork', '', 'inherit', 'open', 'closed', '', 'banner_beadwork', '', '', '2024-06-05 18:11:00', '2024-06-05 10:11:00', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_beadwork.webp', 0, 'attachment', 'image/webp', 0),
(236, 1, '2024-06-05 18:11:05', '2024-06-05 10:11:05', '', 'banner_cat_on_quilt', '', 'inherit', 'open', 'closed', '', 'banner_cat_on_quilt', '', '', '2024-06-05 18:11:05', '2024-06-05 10:11:05', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_cat_on_quilt.webp', 0, 'attachment', 'image/webp', 0),
(237, 1, '2024-06-05 18:11:09', '2024-06-05 10:11:09', '', 'banner_clownish_reflection', '', 'inherit', 'open', 'closed', '', 'banner_clownish_reflection', '', '', '2024-06-05 18:11:09', '2024-06-05 10:11:09', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clownish_reflection.webp', 0, 'attachment', 'image/webp', 0),
(238, 1, '2024-06-05 18:11:13', '2024-06-05 10:11:13', '', 'banner_clownish_reflection_watercolor', '', 'inherit', 'open', 'closed', '', 'banner_clownish_reflection_watercolor', '', '', '2024-06-05 18:11:13', '2024-06-05 10:11:13', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clownish_reflection_watercolor.webp', 0, 'attachment', 'image/webp', 0),
(239, 1, '2024-06-05 18:11:16', '2024-06-05 10:11:16', '', 'banner_clowns1', '', 'inherit', 'open', 'closed', '', 'banner_clowns1', '', '', '2024-06-05 18:11:16', '2024-06-05 10:11:16', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_clowns1.webp', 0, 'attachment', 'image/webp', 0),
(240, 1, '2024-06-05 18:11:20', '2024-06-05 10:11:20', '', 'banner_flamingos', '', 'inherit', 'open', 'closed', '', 'banner_flamingos', '', '', '2024-06-05 18:11:20', '2024-06-05 10:11:20', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_flamingos.webp', 0, 'attachment', 'image/webp', 0),
(241, 1, '2024-06-05 18:11:23', '2024-06-05 10:11:23', '', 'banner_floral_desires', '', 'inherit', 'open', 'closed', '', 'banner_floral_desires', '', '', '2024-06-05 18:11:23', '2024-06-05 10:11:23', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_floral_desires.webp', 0, 'attachment', 'image/webp', 0),
(242, 1, '2024-06-05 18:11:27', '2024-06-05 10:11:27', '', 'banner_happy_day', '', 'inherit', 'open', 'closed', '', 'banner_happy_day', '', '', '2024-06-05 18:11:27', '2024-06-05 10:11:27', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_happy_day.webp', 0, 'attachment', 'image/webp', 0),
(243, 1, '2024-06-05 18:11:30', '2024-06-05 10:11:30', '', 'banner_herons', '', 'inherit', 'open', 'closed', '', 'banner_herons', '', '', '2024-06-05 18:11:30', '2024-06-05 10:11:30', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_herons.webp', 0, 'attachment', 'image/webp', 0),
(244, 1, '2024-06-05 18:11:33', '2024-06-05 10:11:33', '', 'banner_knotted_fabric', '', 'inherit', 'open', 'closed', '', 'banner_knotted_fabric', '', '', '2024-06-05 18:11:33', '2024-06-05 10:11:33', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_knotted_fabric.webp', 0, 'attachment', 'image/webp', 0),
(245, 1, '2024-06-05 18:11:37', '2024-06-05 10:11:37', '', 'banner_las_majas_indias', '', 'inherit', 'open', 'closed', '', 'banner_las_majas_indias', '', '', '2024-06-05 18:11:37', '2024-06-05 10:11:37', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_las_majas_indias.webp', 0, 'attachment', 'image/webp', 0),
(246, 1, '2024-06-05 18:11:40', '2024-06-05 10:11:40', '', 'banner_my_other_self', '', 'inherit', 'open', 'closed', '', 'banner_my_other_self', '', '', '2024-06-05 18:11:40', '2024-06-05 10:11:40', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_my_other_self.webp', 0, 'attachment', 'image/webp', 0),
(247, 1, '2024-06-05 18:11:44', '2024-06-05 10:11:44', '', 'banner_odds_and_ends', '', 'inherit', 'open', 'closed', '', 'banner_odds_and_ends', '', '', '2024-06-05 18:11:44', '2024-06-05 10:11:44', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_odds_and_ends.webp', 0, 'attachment', 'image/webp', 0),
(248, 1, '2024-06-05 18:11:47', '2024-06-05 10:11:47', '', 'banner_outcast_clown', '', 'inherit', 'open', 'closed', '', 'banner_outcast_clown', '', '', '2024-06-05 18:11:47', '2024-06-05 10:11:47', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_outcast_clown.webp', 0, 'attachment', 'image/webp', 0),
(249, 1, '2024-06-05 18:11:51', '2024-06-05 10:11:51', '', 'banner_paradise_life', '', 'inherit', 'open', 'closed', '', 'banner_paradise_life', '', '', '2024-06-05 18:11:51', '2024-06-05 10:11:51', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_paradise_life.webp', 0, 'attachment', 'image/webp', 0),
(250, 1, '2024-06-05 18:11:54', '2024-06-05 10:11:54', '', 'banner_resurrection', '', 'inherit', 'open', 'closed', '', 'banner_resurrection', '', '', '2024-06-05 18:11:54', '2024-06-05 10:11:54', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_resurrection.webp', 0, 'attachment', 'image/webp', 0),
(251, 1, '2024-06-05 18:11:58', '2024-06-05 10:11:58', '', 'banner_roses_or_butterflies', '', 'inherit', 'open', 'closed', '', 'banner_roses_or_butterflies', '', '', '2024-06-05 18:11:58', '2024-06-05 10:11:58', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_roses_or_butterflies.webp', 0, 'attachment', 'image/webp', 0),
(252, 1, '2024-06-05 18:12:01', '2024-06-05 10:12:01', '', 'banner_self_portrait', '', 'inherit', 'open', 'closed', '', 'banner_self_portrait', '', '', '2024-06-05 18:12:01', '2024-06-05 10:12:01', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_self_portrait.webp', 0, 'attachment', 'image/webp', 0),
(253, 1, '2024-06-05 18:12:04', '2024-06-05 10:12:04', '', 'banner_stillLife0', '', 'inherit', 'open', 'closed', '', 'banner_stilllife0', '', '', '2024-06-05 18:12:04', '2024-06-05 10:12:04', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_stillLife0.webp', 0, 'attachment', 'image/webp', 0),
(254, 1, '2024-06-05 18:12:08', '2024-06-05 10:12:08', '', 'banner_teddy_and_friends', '', 'inherit', 'open', 'closed', '', 'banner_teddy_and_friends', '', '', '2024-06-05 18:12:08', '2024-06-05 10:12:08', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_teddy_and_friends.webp', 0, 'attachment', 'image/webp', 0),
(255, 1, '2024-06-05 18:12:11', '2024-06-05 10:12:11', '', 'banner_the_model', '', 'inherit', 'open', 'closed', '', 'banner_the_model', '', '', '2024-06-05 18:12:11', '2024-06-05 10:12:11', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_model.webp', 0, 'attachment', 'image/webp', 0),
(256, 1, '2024-06-05 18:12:15', '2024-06-05 10:12:15', '', 'banner_the_quenching', '', 'inherit', 'open', 'closed', '', 'banner_the_quenching', '', '', '2024-06-05 18:12:15', '2024-06-05 10:12:15', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_quenching.webp', 0, 'attachment', 'image/webp', 0),
(257, 1, '2024-06-05 18:12:18', '2024-06-05 10:12:18', '', 'banner_the_seamstress', '', 'inherit', 'open', 'closed', '', 'banner_the_seamstress', '', '', '2024-06-05 18:12:18', '2024-06-05 10:12:18', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_seamstress.webp', 0, 'attachment', 'image/webp', 0),
(258, 1, '2024-06-05 18:12:21', '2024-06-05 10:12:21', '', 'banner_the_waif', '', 'inherit', 'open', 'closed', '', 'banner_the_waif', '', '', '2024-06-05 18:12:21', '2024-06-05 10:12:21', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_the_waif.webp', 0, 'attachment', 'image/webp', 0),
(259, 1, '2024-06-05 18:12:25', '2024-06-05 10:12:25', '', 'banner_trumpet_the_orchids', '', 'inherit', 'open', 'closed', '', 'banner_trumpet_the_orchids', '', '', '2024-06-05 18:12:25', '2024-06-05 10:12:25', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/banner_trumpet_the_orchids.webp', 0, 'attachment', 'image/webp', 0),
(260, 1, '2024-06-05 18:14:02', '2024-06-05 10:14:02', '<p>Inspired by the tropical environment of South Florida, Lourdes made this painting to decorate her home as a way of connecting the inside to the outside. It forms a set with \"Flamingos\".</p>', 'Herons', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2024-06-05 18:14:02', '2024-06-05 10:14:02', '', 62, 'http://localhost/website/lvpSite/?p=260', 0, 'revision', '', 0),
(262, 1, '2024-06-05 18:15:49', '2024-06-05 10:15:49', '<p>Inspired by the tropical environment of South Florida, Lourdes made this painting to decorate her home as a way of connecting the inside to the outside. It forms a set with \"Flamingos\".</p>', 'White Herons in the Wood', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2024-06-05 18:15:49', '2024-06-05 10:15:49', '', 62, 'http://localhost/website/lvpSite/?p=262', 0, 'revision', '', 0),
(264, 1, '2024-06-05 18:37:06', '2024-06-05 10:37:06', '<p>Inspired by the tropical environment of South Florida, Lourdes made this painting to decorate her home as a way of connecting the inside to the outside. It forms a set with \"Herons\".</p>', 'Flamingos Primeval', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2024-06-05 18:37:06', '2024-06-05 10:37:06', '', 59, 'http://localhost/website/lvpSite/?p=264', 0, 'revision', '', 0),
(266, 1, '2024-06-05 18:41:41', '2024-06-05 10:41:41', 'I vaguely remember my mother having the colored corn at home to paint this, though I\'m not sure about the other objects. This work combines her interest in simple, geometric textiles and clown dolls, as seen in other works.', 'Clownish Reflection', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2024-06-05 18:41:41', '2024-06-05 10:41:41', '', 28, 'http://localhost/website/lvpSite/?p=266', 0, 'revision', '', 0),
(268, 1, '2024-06-05 18:46:51', '2024-06-05 10:46:51', 'Besides painting, Lourdes had many interests throughout her life- beads, stamps and dolls to name a few. She seems to have had a period where she specifically focused on clown dolls, as seen here and in [em]Clownish Reflection[/em].', 'Outcast Clown', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2024-06-05 18:46:51', '2024-06-05 10:46:51', '', 29, 'http://localhost/website/lvpSite/?p=268', 0, 'revision', '', 0),
(270, 1, '2024-06-05 18:49:02', '2024-06-05 10:49:02', 'This was made with some household objects. I most clearly remember the horse bookends from my childhood- they may still be in the house.', 'Still Life #1', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-06-05 18:49:02', '2024-06-05 10:49:02', '', 30, 'http://localhost/website/lvpSite/?p=270', 0, 'revision', '', 0),
(271, 1, '2024-06-05 18:50:11', '2024-06-05 10:50:11', 'Besides painting, Lourdes had many interests throughout her life- beads, stamps and dolls to name a few. She seems to have had a period where she specifically focused on clown dolls, as seen here and in <em>Clownish Reflection</em>.', 'Outcast Clown', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2024-06-05 18:50:11', '2024-06-05 10:50:11', '', 29, 'http://localhost/website/lvpSite/?p=271', 0, 'revision', '', 0),
(272, 1, '2024-06-05 19:14:24', '2024-06-05 11:14:24', 'The artist ties a colorful textile into two knots, creating many shadowed folds and ridges. She contrasts that with the clean white background and its simple striped pattern.\r\n\r\nI\'m not entirely certain, but I think that striped pattern might have been the shadow of the window blinds at our house.\r\n\r\n', 'Textile', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-06-05 19:14:24', '2024-06-05 11:14:24', '', 24, 'http://localhost/website/lvpSite/?p=272', 0, 'revision', '', 0),
(274, 1, '2024-06-05 19:17:41', '2024-06-05 11:17:41', 'The artist ties a colorful textile into two knots, creating many shadowed folds and ridges. She contrasts that with the clean white background and its simple striped pattern.\n\n', 'Knotted Fabric', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-06-05 19:17:41', '2024-06-05 11:17:41', '', 24, 'http://localhost/website/lvpSite/?p=274', 0, 'revision', '', 0),
(275, 1, '1968-06-05 19:28:32', '1968-06-05 11:28:32', '<p>Note from Thomas Perez Sr., the artist\'s husband:</p>\n\n<p><em>\"She was 17 when she drew that in order to apply for a Scholarship to the prestigious School of Visual Arts. Her Dad glued it to a piece of plywood and added a kickstand. She was awarded the Scholarship. We met shortly afterwards.\"</em></p>', 'Self-Portrait', '', 'publish', 'open', 'open', '', 'self-portrait', '', '', '2024-06-06 12:33:01', '2024-06-06 04:33:01', '', 0, 'http://localhost/website/lvpSite/?p=275', 0, 'post', '', 0),
(276, 1, '2024-06-05 19:28:32', '2024-06-05 11:28:32', 'Made when the artist was about 18 years old, around the time of her graduation from the School of Music & Art in Manhattan, New York.', 'Self-Portrait', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2024-06-05 19:28:32', '2024-06-05 11:28:32', '', 275, 'http://localhost/website/lvpSite/?p=276', 0, 'revision', '', 0),
(277, 1, '1971-06-05 19:39:20', '1971-06-05 11:39:20', '<p>The artist\'s faith as one of Jehovah\'s Witnesses is a clear inspiration for this work. Despite the change of medium from her usual Oil on Canvas, the style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Resurrection</em>.</p>', 'Paradise Life', '', 'publish', 'open', 'open', '', 'paradise-life', '', '', '2024-06-06 00:30:17', '2024-06-05 16:30:17', '', 0, 'http://localhost/website/lvpSite/?p=277', 0, 'post', '', 0),
(278, 1, '2024-06-05 19:39:20', '2024-06-05 11:39:20', 'The artist\'s faith as one of Jehovah\'s Witnesses is clearly the inspiration for this work. Despite the change of medium from her usual Oil on Canvas, the style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Resurrection</em>.', 'Paradise Life', '', 'inherit', 'closed', 'closed', '', '277-revision-v1', '', '', '2024-06-05 19:39:20', '2024-06-05 11:39:20', '', 277, 'http://localhost/website/lvpSite/?p=278', 0, 'revision', '', 0),
(279, 1, '2024-06-05 19:39:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-05 19:39:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/website/lvpSite/?p=279', 0, 'post', '', 0),
(280, 1, '1978-06-05 19:46:46', '1978-06-05 11:46:46', '', 'Las Majas Indias', '', 'publish', 'open', 'open', '', 'las-majas-indias', '', '', '2024-06-05 20:05:26', '2024-06-05 12:05:26', '', 0, 'http://localhost/website/lvpSite/?p=280', 0, 'post', '', 0),
(281, 1, '2024-06-05 19:46:46', '2024-06-05 11:46:46', '', 'Las Majas Indias', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2024-06-05 19:46:46', '2024-06-05 11:46:46', '', 280, 'http://localhost/website/lvpSite/?p=281', 0, 'revision', '', 0),
(282, 1, '1983-06-05 19:58:06', '1983-06-05 11:58:06', '', 'Trumpet the Orchids', '', 'publish', 'open', 'open', '', 'trumpet-the-orchids', '', '', '2024-06-05 20:05:26', '2024-06-05 12:05:26', '', 0, 'http://localhost/website/lvpSite/?p=282', 0, 'post', '', 0),
(283, 1, '2024-06-05 19:58:06', '2024-06-05 11:58:06', '', 'Trumpet the Orchids', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2024-06-05 19:58:06', '2024-06-05 11:58:06', '', 282, 'http://localhost/website/lvpSite/?p=283', 0, 'revision', '', 0),
(284, 1, '1985-06-05 20:04:26', '1985-06-05 12:04:26', '<p>Note from Thomas Perez, the artist\'s husband: </p>\n<p><em>\"The Ceramic Cat and the Quilt were both handmade by the artist\"</em></p>\n<p>This work is a demonstration of the artist\'s many interests, eg. ceramics and textile. I remember the blanket from our sofa at home and the cat also looks familiar. The plate was one of a set we commonly ate from.</p>', 'Cat on Quilt', '', 'publish', 'open', 'open', '', 'cat-on-quilt', '', '', '2024-06-06 00:12:40', '2024-06-05 16:12:40', '', 0, 'http://localhost/website/lvpSite/?p=284', 0, 'post', '', 0),
(285, 1, '2024-06-05 20:04:26', '2024-06-05 12:04:26', 'Note from Thomas Perez, the artist\'s husband: \n<em>\"The Ceramic Cat and the Quilt were both handmade by the artist\"</em>\n<br>\nThis work is a demonstration of the artist\'s many interests, eg. ceramics and textile. I remember the blanket from our sofa at home and the cat also looks familiar. The plate was one of a set we commonly ate from.', 'Cat on Quilt', '', 'inherit', 'closed', 'closed', '', '284-revision-v1', '', '', '2024-06-05 20:04:26', '2024-06-05 12:04:26', '', 284, 'http://localhost/website/lvpSite/?p=285', 0, 'revision', '', 0),
(286, 1, '1985-06-05 20:11:20', '1985-06-05 12:11:20', '<p>Note from Thomas Perez, the artist\'s husband:</p>\n<p><em>\"Painted after the oil on canvas version\"</em></p>', 'Clownish Reflection in Watercolor', '', 'publish', 'open', 'open', '', 'clownish-reflection-in-watercolor', '', '', '2024-06-06 00:11:57', '2024-06-05 16:11:57', '', 0, 'http://localhost/website/lvpSite/?p=286', 0, 'post', '', 0),
(287, 1, '2024-06-05 20:11:20', '2024-06-05 12:11:20', 'Note from Thomas Perez, the artist\'s husband:\n<em>\"Painted after the oil on canvas version\"</em>', 'Clownish Reflection in Watercolor', '', 'inherit', 'closed', 'closed', '', '286-revision-v1', '', '', '2024-06-05 20:11:20', '2024-06-05 12:11:20', '', 286, 'http://localhost/website/lvpSite/?p=287', 0, 'revision', '', 0),
(288, 1, '1976-06-05 20:20:26', '1976-06-05 12:20:26', '<p>The artist’s faith as one of Jehovah’s Witnesses is a clear inspiration for this work. The style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Paradise Life</em>.</p>', 'Resurrection', '', 'publish', 'open', 'open', '', 'resurrection', '', '', '2024-06-06 00:30:01', '2024-06-05 16:30:01', '', 0, 'http://localhost/website/lvpSite/?p=288', 0, 'post', '', 0),
(289, 1, '2024-06-05 20:20:26', '2024-06-05 12:20:26', 'The artist’s faith as one of Jehovah’s Witnesses is clearly the inspiration for this work. The style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Paradise Life</em>.', 'Resurrection', '', 'inherit', 'closed', 'closed', '', '288-revision-v1', '', '', '2024-06-05 20:20:26', '2024-06-05 12:20:26', '', 288, 'http://localhost/website/lvpSite/?p=289', 0, 'revision', '', 0),
(290, 1, '1977-06-05 20:28:10', '1977-06-05 12:28:10', '', 'Happy Day', '', 'publish', 'open', 'open', '', 'happy-day', '', '', '2024-06-05 20:30:11', '2024-06-05 12:30:11', '', 0, 'http://localhost/website/lvpSite/?p=290', 0, 'post', '', 0),
(291, 1, '2024-06-05 20:28:10', '2024-06-05 12:28:10', '', 'Happy Day', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2024-06-05 20:28:10', '2024-06-05 12:28:10', '', 290, 'http://localhost/website/lvpSite/?p=291', 0, 'revision', '', 0),
(292, 1, '1983-06-05 20:34:14', '1983-06-05 12:34:14', '', 'The Quenching', '', 'publish', 'open', 'open', '', 'the-quenching', '', '', '2024-06-05 20:34:45', '2024-06-05 12:34:45', '', 0, 'http://localhost/website/lvpSite/?p=292', 0, 'post', '', 0),
(293, 1, '2024-06-05 20:34:14', '2024-06-05 12:34:14', '', 'The Quenching', '', 'inherit', 'closed', 'closed', '', '292-revision-v1', '', '', '2024-06-05 20:34:14', '2024-06-05 12:34:14', '', 292, 'http://localhost/website/lvpSite/?p=293', 0, 'revision', '', 0),
(294, 1, '1982-06-05 20:37:15', '1982-06-05 12:37:15', '', 'The Waif', '', 'publish', 'open', 'open', '', 'the-waif', '', '', '2024-06-05 20:37:27', '2024-06-05 12:37:27', '', 0, 'http://localhost/website/lvpSite/?p=294', 0, 'post', '', 0),
(295, 1, '2024-06-05 20:37:15', '2024-06-05 12:37:15', '', 'The Waif', '', 'inherit', 'closed', 'closed', '', '294-revision-v1', '', '', '2024-06-05 20:37:15', '2024-06-05 12:37:15', '', 294, 'http://localhost/website/lvpSite/?p=295', 0, 'revision', '', 0),
(296, 1, '1985-06-05 20:40:34', '1985-06-05 12:40:34', '', 'Odds and Ends', '', 'publish', 'open', 'open', '', 'odds-and-ends', '', '', '2024-06-05 20:40:44', '2024-06-05 12:40:44', '', 0, 'http://localhost/website/lvpSite/?p=296', 0, 'post', '', 0),
(297, 1, '2024-06-05 20:40:34', '2024-06-05 12:40:34', '', 'Odds and Ends', '', 'inherit', 'closed', 'closed', '', '296-revision-v1', '', '', '2024-06-05 20:40:34', '2024-06-05 12:40:34', '', 296, 'http://localhost/website/lvpSite/?p=297', 0, 'revision', '', 0),
(298, 1, '1978-06-05 20:45:32', '1978-06-05 12:45:32', '', 'My Other Self', '', 'publish', 'open', 'open', '', 'my-other-self', '', '', '2024-06-05 20:46:04', '2024-06-05 12:46:04', '', 0, 'http://localhost/website/lvpSite/?p=298', 0, 'post', '', 0),
(299, 1, '2024-06-05 20:45:32', '2024-06-05 12:45:32', '', 'My Other Self', '', 'inherit', 'closed', 'closed', '', '298-revision-v1', '', '', '2024-06-05 20:45:32', '2024-06-05 12:45:32', '', 298, 'http://localhost/website/lvpSite/?p=299', 0, 'revision', '', 0),
(300, 1, '1980-06-05 20:49:33', '1980-06-05 12:49:33', '', 'Floral Desires', '', 'publish', 'open', 'open', '', 'floral-desires', '', '', '2024-06-05 20:49:43', '2024-06-05 12:49:43', '', 0, 'http://localhost/website/lvpSite/?p=300', 0, 'post', '', 0),
(301, 1, '2024-06-05 20:49:33', '2024-06-05 12:49:33', '', 'Floral Desires', '', 'inherit', 'closed', 'closed', '', '300-revision-v1', '', '', '2024-06-05 20:49:33', '2024-06-05 12:49:33', '', 300, 'http://localhost/website/lvpSite/?p=301', 0, 'revision', '', 0),
(302, 1, '1981-06-05 20:52:06', '1981-06-05 12:52:06', '', 'Roses or Butterflies?', '', 'publish', 'closed', 'closed', '', 'roses-or-butterflies', '', '', '2024-06-05 20:52:18', '2024-06-05 12:52:18', '', 0, 'http://localhost/website/lvpSite/?p=302', 0, 'post', '', 0),
(303, 1, '2024-06-05 20:51:05', '2024-06-05 12:51:05', '', 'Draft created on June 5, 2024 at 12:51 pm', '', 'inherit', 'closed', 'closed', '', '302-revision-v1', '', '', '2024-06-05 20:51:05', '2024-06-05 12:51:05', '', 302, 'http://localhost/website/lvpSite/?p=303', 0, 'revision', '', 0),
(304, 1, '2024-06-05 20:52:06', '2024-06-05 12:52:06', '', 'Roses or Butterflies?', '', 'inherit', 'closed', 'closed', '', '302-revision-v1', '', '', '2024-06-05 20:52:06', '2024-06-05 12:52:06', '', 302, 'http://localhost/website/lvpSite/?p=304', 0, 'revision', '', 0),
(305, 1, '1986-06-05 21:01:18', '1986-06-05 13:01:18', '<p>This painting was made the year I was born and \"Teddy\" was *my* teddy-bear. It looks like that\'s me in the \"Our Baby\" picture frame as well. Keen-eyed archive-viewers will recognize the porcelain clown doll from <em>Clownish Reflection</em>.</p>', 'Teddy and Friends', '', 'publish', 'closed', 'closed', '', 'teddy-and-friends', '', '', '2024-06-06 00:10:15', '2024-06-05 16:10:15', '', 0, 'http://localhost/website/lvpSite/?p=305', 0, 'post', '', 0),
(306, 1, '2024-06-05 20:53:51', '2024-06-05 12:53:51', '', 'Draft created on June 5, 2024 at 12:53 pm', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2024-06-05 20:53:51', '2024-06-05 12:53:51', '', 305, 'http://localhost/website/lvpSite/?p=306', 0, 'revision', '', 0),
(307, 1, '2024-06-05 21:01:18', '2024-06-05 13:01:18', 'This painting was made the year I was born and \"Teddy\" was *my* teddy-bear. It looks like that\'s me in the \"Our Baby\" picture frame as well. Keen-eyed archive-viewers will recognize the porcelain clown doll from <em>Clownish Reflection</em>.', 'Teddy and Friends', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2024-06-05 21:01:18', '2024-06-05 13:01:18', '', 305, 'http://localhost/website/lvpSite/?p=307', 0, 'revision', '', 0),
(308, 1, '1980-06-05 21:06:15', '1980-06-05 13:06:15', '', 'Seamstress', '', 'publish', 'open', 'open', '', 'seamstress', '', '', '2024-06-05 21:06:35', '2024-06-05 13:06:35', '', 0, 'http://localhost/website/lvpSite/?p=308', 0, 'post', '', 0),
(309, 1, '2024-06-05 21:06:15', '2024-06-05 13:06:15', '', 'Seamstress', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2024-06-05 21:06:15', '2024-06-05 13:06:15', '', 308, 'http://localhost/website/lvpSite/?p=309', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(311, 1, '2024-06-05 22:13:01', '2024-06-05 14:13:01', '<p>This post celebrates a major update. </p>\n\n<p>First, a special thanks to Thomas Perez Jr., the artist\'s son (and my brother), who sent me some photos of Lourdes\' paintings, three of which are still part of the archive (and others find use later on). The first version, which I shared only with our immediate family, was made entirely with his photos.</p>\n\n<p>The website was created and is currently administered by me, Stephan E Perez. You can learn more about my art on my <a href=\"https://selliotp.com/\">website.</a></p>\n\n<p>Finally, the biggest contribution of archive material has come from Thomas Perez Sr., the artist\'s husband (and my father). He has contributed photos and information on over 20 works by the artist, making up the bulk of the current archive. The photos are a mix of recently taken digital photos as well as scans of old photo slides (in the case of works no longer in their home). Nearly as important, he has provided years, titles and measurements for each work, something that would have been very difficult for anyone else.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp 480w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Thomas Perez, c. 2014</div></div>\n\n<p>Additionally, he has provided the old resumé shown here, once used by Lourdes for a job application. It provides a bit of context for this archive.\n\n<p>With this update, I\'m happy to \'officially\' open the website, ie. begin sharing it more publicly.', 'Archive Contributors', '', 'publish', 'open', 'open', '', 'archive-contributors', '', '', '2024-06-05 23:26:02', '2024-06-05 15:26:02', '', 0, 'http://localhost/website/lvpSite/?p=311', 0, 'post', '', 0),
(312, 1, '2024-06-05 21:44:25', '2024-06-05 13:44:25', '', 'tomAndLourdes', '', 'inherit', 'open', 'closed', '', 'tomandlourdes', '', '', '2024-06-05 23:05:35', '2024-06-05 15:05:35', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp', 0, 'attachment', 'image/webp', 0),
(313, 1, '2024-06-05 22:13:01', '2024-06-05 14:13:01', '<p>This post celebrates a major update. </p>\n\n<p>First, a special thanks to Thomas Perez Jr., the artist\'s son (and my brother), who sent me some photos of Lourdes\' paintings, three of which are still part of the archive (and others find use later on). The first version, that I sent to the our immediate family, was made entirely with his photos.</p>\n\n<p>The website was created and is currently administered by me, Stephan E Perez. You can learn more about my art on my <a href=\"https://selliotp.com/\">website.</a></p>\n\n<p>Finally, the biggest contribution of archive material has come from Thomas Perez Sr., the artist\'s husband (and my father). He has contributed photos and information on over 20 works by the artist, making up the bulk of the current archive. The photos are a mix of recently taken digital photos as well as scans of old photo slides (in the case of works no longer in their home). Nearly as important, he has provided years, titles and measurements for each work, something that would have been very difficult for anyone else.</p>\n\n<p>Additionally, he has provided the old resumé shown here, once used by Lourdes for a job application. It provides a bit of context for this archive.\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp 480w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Thomas Perez, c. 2014</div></div>\n\n<p>With this update, I\'m happy to \'officially\' open the website, ie. begin sharing it more publicly.', 'Archive Contributors', '', 'inherit', 'closed', 'closed', '', '311-revision-v1', '', '', '2024-06-05 22:13:01', '2024-06-05 14:13:01', '', 311, 'http://localhost/website/lvpSite/?p=313', 0, 'revision', '', 0),
(315, 1, '2024-06-05 22:17:16', '2024-06-05 14:17:16', '<p>This post celebrates a major update. </p>\n\n<p>First, a special thanks to Thomas Perez Jr., the artist\'s son (and my brother), who sent me some photos of Lourdes\' paintings, three of which are still part of the archive (and others find use later on). The first version, which I shared only with our immediate family, was made entirely with his photos.</p>\n\n<p>The website was created and is currently administered by me, Stephan E Perez. You can learn more about my art on my <a href=\"https://selliotp.com/\">website.</a></p>\n\n<p>Finally, the biggest contribution of archive material has come from Thomas Perez Sr., the artist\'s husband (and my father). He has contributed photos and information on over 20 works by the artist, making up the bulk of the current archive. The photos are a mix of recently taken digital photos as well as scans of old photo slides (in the case of works no longer in their home). Nearly as important, he has provided years, titles and measurements for each work, something that would have been very difficult for anyone else.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/06/tomAndLourdes.webp 480w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Thomas Perez, c. 2014</div></div>\n\n<p>Additionally, he has provided the old resumé shown here, once used by Lourdes for a job application. It provides a bit of context for this archive.\n\n<p>With this update, I\'m happy to \'officially\' open the website, ie. begin sharing it more publicly.', 'Archive Contributors', '', 'inherit', 'closed', 'closed', '', '311-revision-v1', '', '', '2024-06-05 22:17:16', '2024-06-05 14:17:16', '', 311, 'http://localhost/website/lvpSite/?p=315', 0, 'revision', '', 0),
(316, 1, '2024-06-05 22:44:01', '2024-06-05 14:44:01', 'Welcome to the art archive of Lourdes Perez. For info on individual paintings, you can touch the fading images above, or else go to \'Paintings\' from the menu. Please enjoy your visit.', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-06-05 22:44:01', '2024-06-05 14:44:01', '', 11, 'http://localhost/website/lvpSite/?p=316', 0, 'revision', '', 0),
(318, 1, '2024-06-05 22:58:24', '2024-06-05 14:58:24', 'Note from Thomas Perez Sr., the artist\'s husband:\n<em>\"She was 17 when she drew that in order to apply for a Scholarship to the prestigious School of Visual Arts. Her Dad glued it to a piece of plywood and added a kickstand. She was awarded the Scholarship. We met shortly afterwards.\"</em>', 'Self-Portrait', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2024-06-05 22:58:24', '2024-06-05 14:58:24', '', 275, 'http://localhost/website/lvpSite/?p=318', 0, 'revision', '', 0),
(320, 1, '2024-06-05 22:59:27', '2024-06-05 14:59:27', 'Note from Thomas Perez Sr., the artist\'s husband:\n<br>\n<em>\"She was 17 when she drew that in order to apply for a Scholarship to the prestigious School of Visual Arts. Her Dad glued it to a piece of plywood and added a kickstand. She was awarded the Scholarship. We met shortly afterwards.\"</em>', 'Self-Portrait', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2024-06-05 22:59:27', '2024-06-05 14:59:27', '', 275, 'http://localhost/website/lvpSite/?p=320', 0, 'revision', '', 0),
(321, 1, '2024-06-05 22:59:50', '2024-06-05 14:59:50', '<p>Note from Thomas Perez Sr., the artist\'s husband:</p>\n\n<p><em>\"She was 17 when she drew that in order to apply for a Scholarship to the prestigious School of Visual Arts. Her Dad glued it to a piece of plywood and added a kickstand. She was awarded the Scholarship. We met shortly afterwards.\"</em></p>', 'Self-Portrait', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2024-06-05 22:59:50', '2024-06-05 14:59:50', '', 275, 'http://localhost/website/lvpSite/?p=321', 0, 'revision', '', 0),
(322, 1, '2024-06-05 23:09:33', '2024-06-05 15:09:33', '', '2024-05-11 20-06', '', 'inherit', 'open', 'closed', '', '2024-05-11-20-06', '', '', '2024-06-05 23:11:26', '2024-06-05 15:11:26', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/2024-05-11-20-06.webp', 0, 'attachment', 'image/webp', 0),
(324, 1, '2024-06-06 00:01:15', '2024-06-05 16:01:15', '<p>Lourdes Vasquez Perez (1950-2022) was born and raised in New York City where she attended the High School of Music & Art and the School of Visual Art. She has a wide range, from expressionism to classical still-life to portrait. Her paintings can be found in the homes of family and friends.</p>\n\n<p>The mission of this archive is to form as complete a picture as possible of her work and identity as an artist. She has left behind little in the way of information or statements. But the works themselves are enough- we will fill in the gaps as best we can.</p>\n\n<div class=\"captioned-image\"><img loading=\"lazy\" decoding=\"async\" width=\"480\" height=\"640\" class=\"alignnone size-medium wp-image-84\" src=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg\" alt=\"the artist and her son, sitting on a park bench\" srcset=\"http://localhost/website/lvpSite/wp-content/uploads/2024/04/27.jpg 480w, http://localhost/website/lvpSite/wp-content/uploads/2024/04/27-225x300.jpg 225w\" sizes=\"(max-width: 480px) 100vw, 480px\"><div class=\"image-caption\">Lourdes & Stephan Perez, c. 2002</div></div>\n\n<p>Over the coming years, I will endeavor to work with her other family, friends and colleagues, to add more photos and information. This archive will be a place, not only for Lourdes\' loved ones to revisit her work, but for anyone who might discover its beauty.</p>', 'About this Archive', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2024-06-06 00:01:15', '2024-06-05 16:01:15', '', 86, 'http://localhost/website/lvpSite/?p=324', 0, 'revision', '', 0),
(325, 1, '2024-06-06 00:10:14', '2024-06-05 16:10:14', '<p>This painting was made the year I was born and \"Teddy\" was *my* teddy-bear. It looks like that\'s me in the \"Our Baby\" picture frame as well. Keen-eyed archive-viewers will recognize the porcelain clown doll from <em>Clownish Reflection</em>.</p>', 'Teddy and Friends', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2024-06-06 00:10:14', '2024-06-05 16:10:14', '', 305, 'http://localhost/website/lvpSite/?p=325', 0, 'revision', '', 0),
(326, 1, '2024-06-06 00:10:55', '2024-06-05 16:10:55', '<p>This was made with some household objects. I most clearly remember the horse bookends from my childhood- they may still be in the house.</p>', 'Still Life #1', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-06-06 00:10:55', '2024-06-05 16:10:55', '', 30, 'http://localhost/website/lvpSite/?p=326', 0, 'revision', '', 0),
(327, 1, '2024-06-06 00:11:56', '2024-06-05 16:11:56', '<p>Note from Thomas Perez, the artist\'s husband:</p>\n<p><em>\"Painted after the oil on canvas version\"</em></p>', 'Clownish Reflection in Watercolor', '', 'inherit', 'closed', 'closed', '', '286-revision-v1', '', '', '2024-06-06 00:11:56', '2024-06-05 16:11:56', '', 286, 'http://localhost/website/lvpSite/?p=327', 0, 'revision', '', 0),
(328, 1, '2024-06-06 00:12:39', '2024-06-05 16:12:39', '<p>Note from Thomas Perez, the artist\'s husband: </p>\n<p><em>\"The Ceramic Cat and the Quilt were both handmade by the artist\"</em></p>\n<p>This work is a demonstration of the artist\'s many interests, eg. ceramics and textile. I remember the blanket from our sofa at home and the cat also looks familiar. The plate was one of a set we commonly ate from.</p>', 'Cat on Quilt', '', 'inherit', 'closed', 'closed', '', '284-revision-v1', '', '', '2024-06-06 00:12:39', '2024-06-05 16:12:39', '', 284, 'http://localhost/website/lvpSite/?p=328', 0, 'revision', '', 0),
(329, 1, '2024-06-06 00:14:26', '2024-06-05 16:14:26', '<p>The artist ties a colorful textile into two knots, creating many shadowed folds and ridges. She contrasts that with the clean white background and its simple striped pattern.</p>\n\n', 'Knotted Fabric', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-06-06 00:14:26', '2024-06-05 16:14:26', '', 24, 'http://localhost/website/lvpSite/?p=329', 0, 'revision', '', 0),
(330, 1, '2024-06-06 00:14:57', '2024-06-05 16:14:57', '<p>Besides painting, Lourdes had many interests throughout her life- beads, stamps and dolls to name a few. She seems to have had a period where she specifically focused on clown dolls, as seen here and in <em>Clownish Reflection</em>.</p>', 'Outcast Clown', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2024-06-06 00:14:57', '2024-06-05 16:14:57', '', 29, 'http://localhost/website/lvpSite/?p=330', 0, 'revision', '', 0),
(331, 1, '2024-06-06 00:15:39', '2024-06-05 16:15:39', '<p>I vaguely remember my mother having the colored corn at home to paint this, though I\'m not sure about the other objects. This work combines her interest in simple, geometric textiles and clown dolls, as seen in other works.</p>', 'Clownish Reflection', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2024-06-06 00:15:39', '2024-06-05 16:15:39', '', 28, 'http://localhost/website/lvpSite/?p=331', 0, 'revision', '', 0),
(332, 1, '2024-06-06 00:17:51', '2024-06-05 16:17:51', '<p>The artist’s faith as one of Jehovah’s Witnesses is clearly the inspiration for this work. The style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Paradise Life</em>.</p>', 'Resurrection', '', 'inherit', 'closed', 'closed', '', '288-revision-v1', '', '', '2024-06-06 00:17:51', '2024-06-05 16:17:51', '', 288, 'http://localhost/website/lvpSite/?p=332', 0, 'revision', '', 0),
(333, 1, '2024-06-06 00:18:17', '2024-06-05 16:18:17', '<p>The artist\'s faith as one of Jehovah\'s Witnesses is clearly the inspiration for this work. Despite the change of medium from her usual Oil on Canvas, the style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Resurrection</em>.</p>', 'Paradise Life', '', 'inherit', 'closed', 'closed', '', '277-revision-v1', '', '', '2024-06-06 00:18:17', '2024-06-05 16:18:17', '', 277, 'http://localhost/website/lvpSite/?p=333', 0, 'revision', '', 0),
(334, 1, '2024-06-06 00:30:00', '2024-06-05 16:30:00', '<p>The artist’s faith as one of Jehovah’s Witnesses is a clear inspiration for this work. The style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Paradise Life</em>.</p>', 'Resurrection', '', 'inherit', 'closed', 'closed', '', '288-revision-v1', '', '', '2024-06-06 00:30:00', '2024-06-05 16:30:00', '', 288, 'http://localhost/website/lvpSite/?p=334', 0, 'revision', '', 0),
(335, 1, '2024-06-06 00:30:16', '2024-06-05 16:30:16', '<p>The artist\'s faith as one of Jehovah\'s Witnesses is a clear inspiration for this work. Despite the change of medium from her usual Oil on Canvas, the style resembles her other works from the same decade, such as <em>My Other Self</em> and <em>Resurrection</em>.</p>', 'Paradise Life', '', 'inherit', 'closed', 'closed', '', '277-revision-v1', '', '', '2024-06-06 00:30:16', '2024-06-05 16:30:16', '', 277, 'http://localhost/website/lvpSite/?p=335', 0, 'revision', '', 0),
(336, 1, '2024-06-06 12:34:04', '2024-06-06 04:34:04', '<p>This was made with some household objects. I most clearly remember the horse bookends from my childhood- they may still be in the house.</p>', 'Still Life', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-06-06 12:34:04', '2024-06-06 04:34:04', '', 30, 'http://localhost/website/lvpSite/?p=336', 0, 'revision', '', 0),
(337, 1, '2024-06-06 23:11:49', '2024-06-06 15:11:49', '', 'ogImg', '', 'inherit', 'open', 'closed', '', 'ogimg', '', '', '2024-06-06 23:11:49', '2024-06-06 15:11:49', '', 0, 'http://localhost/website/lvpSite/wp-content/uploads/2024/06/ogImg.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'lvp', 'lvp', 0),
(4, 'main', 'main', 0),
(5, 'Blog', 'blog', 0),
(6, 'test1', 'test1', 0),
(7, 'test2', 'test2', 0),
(8, 'test3', 'test3', 0),
(9, 'Paintings', 'paintings', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(7, 3, 0),
(22, 4, 0),
(24, 9, 0),
(26, 4, 0),
(28, 9, 0),
(29, 9, 0),
(30, 9, 0),
(56, 9, 0),
(59, 9, 0),
(62, 9, 0),
(86, 5, 0),
(89, 4, 0),
(168, 4, 0),
(275, 9, 0),
(277, 9, 0),
(280, 9, 0),
(282, 9, 0),
(284, 9, 0),
(286, 9, 0),
(288, 9, 0),
(290, 9, 0),
(292, 9, 0),
(294, 9, 0),
(296, 9, 0),
(298, 9, 0),
(300, 9, 0),
(302, 9, 0),
(305, 9, 0),
(308, 9, 0),
(311, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 2),
(6, 6, 'post_tag', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'category', '', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `wp_tm_taskmeta`
--

CREATE TABLE `wp_tm_taskmeta` (
  `meta_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_tm_tasks`
--

CREATE TABLE `wp_tm_tasks` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(300) NOT NULL,
  `class_identifier` varchar(300) DEFAULT '0',
  `attempts` int(11) DEFAULT 0,
  `description` varchar(300) DEFAULT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_locked_at` bigint(20) DEFAULT 0,
  `status` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sep'),
(2, 1, 'first_name', 'Stephan E'),
(3, 1, 'last_name', 'Perez'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"594762aab1a6d890bc26c1a6c3539eb2418303b0b07e8241cb1f3a06b067f698\";a:4:{s:10:\"expiration\";i:1718114720;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0\";s:5:\"login\";i:1716905120;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '205'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-site\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:1;s:18:\"welcomeGuideStyles\";b:0;}s:9:\"_modified\";s:24:\"2024-06-05T12:11:12.673Z\";s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:2:{s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:23:\"taxonomy-panel-category\";}s:10:\"editorMode\";s:4:\"text\";}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:0:{}'),
(24, 1, 'wp_user-settings', 'posts_list_mode=list&libraryContent=browse&editor=html'),
(25, 1, 'wp_user-settings-time', '1714139298'),
(27, 1, 'wpforms_overview_table_columns', 'a:6:{i:1;s:4:\"name\";i:2;s:4:\"tags\";i:3;s:6:\"author\";i:4;s:9:\"shortcode\";i:5;s:7:\"created\";i:6;s:9:\"locations\";}'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"27.125.240.0\";}'),
(29, 1, 'enable_custom_fields', '1'),
(30, 1, 'wp_media_library_mode', 'list'),
(31, 1, 'meta-box-order_post', 'a:3:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:10:\"postcustom\";s:4:\"side\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sep', '$P$BB/12f75tqFE/L8VqiEysEfCtT10O..', 'sep', 's.elliot.perez@gmail.com', 'http://localhost/website/wordpress', '2024-04-21 15:23:52', '', 0, 'sep');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_logs`
--

CREATE TABLE `wp_wpforms_logs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `types` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_payments`
--

CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `discount_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `total_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `mode` varchar(4) NOT NULL DEFAULT '',
  `transaction_id` varchar(40) NOT NULL DEFAULT '',
  `customer_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_status` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_payment_meta`
--

CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2024-05-03 10:17:48'),
(2, 'wpforms_admin_addons_cache_update', 'W10=', '2024-05-03 10:17:48'),
(3, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2024-05-03 10:17:48'),
(4, 'wpforms_builder_help_cache_update', 'W10=', '2024-05-03 10:18:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_imagify_files`
--
ALTER TABLE `wp_imagify_files`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `folder_id` (`folder_id`),
  ADD KEY `optimization_level` (`optimization_level`),
  ADD KEY `status` (`status`),
  ADD KEY `modified` (`modified`);

--
-- Indexes for table `wp_imagify_folders`
--
ALTER TABLE `wp_imagify_folders`
  ADD PRIMARY KEY (`folder_id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_tm_taskmeta`
--
ALTER TABLE `wp_tm_taskmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `wp_tm_tasks`
--
ALTER TABLE `wp_tm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpforms_logs`
--
ALTER TABLE `wp_wpforms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpforms_payments`
--
ALTER TABLE `wp_wpforms_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`(8)),
  ADD KEY `total_amount` (`total_amount`),
  ADD KEY `type` (`type`(8)),
  ADD KEY `transaction_id` (`transaction_id`(32)),
  ADD KEY `customer_id` (`customer_id`(32)),
  ADD KEY `subscription_id` (`subscription_id`(32)),
  ADD KEY `subscription_status` (`subscription_status`(8)),
  ADD KEY `title` (`title`(64));

--
-- Indexes for table `wp_wpforms_payment_meta`
--
ALTER TABLE `wp_wpforms_payment_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2313;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_imagify_files`
--
ALTER TABLE `wp_imagify_files`
  MODIFY `file_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_imagify_folders`
--
ALTER TABLE `wp_imagify_folders`
  MODIFY `folder_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3625;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1097;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_tm_taskmeta`
--
ALTER TABLE `wp_tm_taskmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_tm_tasks`
--
ALTER TABLE `wp_tm_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpforms_logs`
--
ALTER TABLE `wp_wpforms_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_payments`
--
ALTER TABLE `wp_wpforms_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_payment_meta`
--
ALTER TABLE `wp_wpforms_payment_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
