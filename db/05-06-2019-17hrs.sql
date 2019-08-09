-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-07-2019 a las 23:32:53
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `altalena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-28 06:27:17', '2019-06-28 04:27:17', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/altalena', 'yes'),
(2, 'home', 'http://localhost/altalena', 'yes'),
(3, 'blogname', 'Altalena', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alejandro.isla.c@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"post_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_tag=$matches[1]&feed=$matches[2]\";s:44:\"post_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_tag=$matches[1]&feed=$matches[2]\";s:25:\"post_tag/([^/]+)/embed/?$\";s:41:\"index.php?post_tag=$matches[1]&embed=true\";s:37:\"post_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?post_tag=$matches[1]&paged=$matches[2]\";s:19:\"post_tag/([^/]+)/?$\";s:30:\"index.php?post_tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'altalena', 'yes'),
(41, 'stylesheet', 'altalena', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Madrid', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1562365639;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562387238;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562387239;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1562387252;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562387254;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561696198;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Altalena blank theme', 'yes'),
(146, 'theme_mods_altalena', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"Menu principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'acf_version', '5.7.13', 'yes'),
(158, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1561703484;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1562344069;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(171, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1562344071;s:7:\"checked\";a:2:{s:8:\"altalena\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(180, '_site_transient_timeout_browser_630d2c68223a9b4451a300b70984ca4f', '1562771675', 'no'),
(181, '_site_transient_browser_630d2c68223a9b4451a300b70984ca4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(182, '_site_transient_timeout_php_check_8883e0d0efdc8a3a7f7b7a15e8f243a7', '1562771675', 'no'),
(183, '_site_transient_php_check_8883e0d0efdc8a3a7f7b7a15e8f243a7', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(207, 'recovery_mode_email_last_sent', '1562190282', 'yes'),
(209, 'dd9b23a13775ccc12b5389d301f8ef5d', 'a:2:{s:7:\"timeout\";i:1562210944;s:5:\"value\";s:15343:\"{\"new_version\":\"2.4.0\",\"stable_version\":\"2.4.0\",\"name\":\"ACF Theme Code Pro\",\"slug\":\"acf_theme_code_pro\",\"url\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/?changelog=1\",\"last_updated\":\"2019-06-20 00:02:52\",\"homepage\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/\",\"sections\":{\"description\":\"<p>Save time &amp; automatically generate the code required to implement Advanced Custom Fields in your themes!<br \\/>\\nACF Theme Code Pro is a premium add-on\\u00a0for the awesome\\u00a0<a href=\\\"https:\\/\\/www.advancedcustomfields.com\\/pro\\/\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener noreferrer\\\">Advanced Custom Fields Pro<\\/a>\\u00a0WordPress plugin.<\\/p>\\n<p>[ecquote]<\\/p>\\n<p>Whenever you publish, edit or update an ACF Field Group, the code required to implement your unique custom fields is conveniently displayed in a <strong>Theme Code<\\/strong> section right below the Field Group settings.<\\/p>\\n<p>Features<\\/p>\\n<ul>\\n<li>Clipboard icons to easily copy code blocks into your theme<\\/li>\\n<li>Field names and variables are automatically updated<\\/li>\\n<li>Code generated is based on the official ACF documentation<\\/li>\\n<li>Great for offline ACF documentation<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates code for the premium ACF fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Flexible content field<\\/li>\\n<li>Repeater field<\\/li>\\n<li>Gallery field<\\/li>\\n<li>Clone field<\\/li>\\n<li>Group field<\\/li>\\n<li>Link field<\\/li>\\n<li>Range field<\\/li>\\n<li>Button field<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates code for these 3rd Party fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Font Awesome field<\\/li>\\n<li>Google font selector field<\\/li>\\n<li>Image crop field<\\/li>\\n<li>Markdown field<\\/li>\\n<li>Nav Menu field<\\/li>\\n<li>RGBA Colour field<\\/li>\\n<li>Sidebar Selector field<\\/li>\\n<li>Smart Button field<\\/li>\\n<li>Table field<\\/li>\\n<li>TablePress field<\\/li>\\n<li>Address Field<\\/li>\\n<li>Number Slider Field<\\/li>\\n<li>Post Type Select Field<\\/li>\\n<li>Code Field<\\/li>\\n<li>Link Field<\\/li>\\n<li>Link Picker Field<\\/li>\\n<li>YouTube Picker Field<\\/li>\\n<li>Range Field<\\/li>\\n<li>Focal Point Field<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates the code for all standard ACF fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Text<\\/li>\\n<li>Text Area<\\/li>\\n<li>Number<\\/li>\\n<li>Email<\\/li>\\n<li>Password<\\/li>\\n<li>WYSIWYG<\\/li>\\n<li>File<\\/li>\\n<li>Image<\\/li>\\n<li>Select<\\/li>\\n<li>Checkbox<\\/li>\\n<li>Radio<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>User<\\/li>\\n<li>Google Map<\\/li>\\n<li>Date Picker<\\/li>\\n<li>Date Time Picker<\\/li>\\n<li>Time Picker<\\/li>\\n<li>Color Picker<\\/li>\\n<li>Page Link<\\/li>\\n<li>Post Object<\\/li>\\n<li>Relationship<\\/li>\\n<li>Taxonomy<\\/li>\\n<li>oEmbed<\\/li>\\n<\\/ul>\\n<p>New in Version 2 : Location Rule Support<\\/p>\\n<p>ACF Theme Code Pro can generate code for multiple location rules on each field group, you\\u2019re using ACF Pro this includes locations\\u00a0like <strong>Options<\\/strong>, <strong>Users<\\/strong>, <strong>Widgets<\\/strong>, <strong>Comments<\\/strong>, <strong>Terms<\\/strong> and <strong>Attachments.<\\/strong><br \\/>\\nWorks best with:<\\/p>\\n<ul>\\n<li>Advanced Custom Fields\\u00a0Pro v5.6.8 or higher<\\/li>\\n<li>Advanced Custom Fields (Free) v4.4 or v5.0<\\/li>\\n<li>WordPress 4.9.4 or higher<\\/li>\\n<\\/ul>\\n<p>Current Pro Version<\\/p>\\n<ul>\\n<li>Version 2.3.0\\u00a0released in February 2018<\\/li>\\n<\\/ul>\\n<p>If you\'d like to \'try before you buy\' you can\\u00a0<a href=\\\"https:\\/\\/wordpress.org\\/plugins\\/acf-theme-code\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">check out our free version<\\/a> on WordPress.org. Our free version has basic support for the free version of Advanced Custom Fields.<br \\/>\\nThe ACF Theme Code Plugin was created by:<br \\/>\\nAaron &amp; Ben, two WordPress developers based in Melbourne, Australia.<\\/p>\\n<p>[plugin_authors_block]<\\/p>\\n\",\"changelog\":\"<p>2.4.0<\\/p>\\n<ul>\\n<li>Core: Theme Code Pro generates code to register for ACF Blocks and Options!<\\/li>\\n<li>Core: Theme Code Pro generates code for use within for ACF Blocks!<\\/li>\\n<li>Core: Radio Button field (core): Add support for all return types<\\/li>\\n<li>Core: Refactoring that will allow for the more options for the code generated in the future<\\/li>\\n<li>New Field Supported: ACF Icon Field<\\/li>\\n<li>New Field Supported: ACF Star Rating Field<\\/li>\\n<li>New Field Supported: ACF Color Palette Field<\\/li>\\n<li>New Field Supported: ACF Image Aspect Ratio Crop<\\/li>\\n<li>New Field Supported: ACF Color Swatches<\\/li>\\n<li>New Field Supported: ACF SVG Icon<\\/li>\\n<\\/ul>\\n<p>2.3.0<\\/p>\\n<ul>\\n<li>New Field Supported: ACF Ninja Forms add on<\\/li>\\n<li>New Field Supported: ACF Gravity Forms add on<\\/li>\\n<li>New Field Supported: ACF RGBA Colour picker<\\/li>\\n<li>New Field(s) Supported: ACF qTranslate<\\/li>\\n<li>Core: Resolved EDD Conflicts<\\/li>\\n<li>Core: Improved Widget Location Variables<\\/li>\\n<li>Fix: EDD naming conflict<\\/li>\\n<li>Fix: Location error if visual editor is disabled<\\/li>\\n<li>Fix: Select Conflict with Seamless Field Group Option<\\/li>\\n<\\/ul>\\n<p>2.2.0<\\/p>\\n<ul>\\n<li>New Field Supported: Button Field found in ACF Pro v5.6.3<\\/li>\\n<li>New Field Supported: Range Field found in ACF Pro v5.6.2<\\/li>\\n<li>Core: Copy All Feature Added<\\/li>\\n<\\/ul>\\n<p>2.1.0<\\/p>\\n<ul>\\n<li>New Field Supported: Group Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Link Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Range Field (Third Party)<\\/li>\\n<li>New Field Supported: Focal Point Field (Third Party)<\\/li>\\n<li>Field: Code field improved to escape output by default<\\/li>\\n<li>Field: Google Map field improved to return lat, lng &amp;\\u00a0address<\\/li>\\n<li>Core: resolved an issue with legacy PHP versions<\\/li>\\n<li>Fix: Bug in File field PHP when returned as a URL<\\/li>\\n<\\/ul>\\n<p>2.0.0<\\/p>\\n<ul>\\n<li>Core : Theme Code Pro now generates code based on your location rules!<\\/li>\\n<li>Core : Theme Code Pro now supports all official ACF Add ons!<\\/li>\\n<li>Core : Theme Code Pro now works when ACF Pro is included in a theme!<\\/li>\\n<li>Location Supported : Options Page<\\/li>\\n<li>Location Supported : Widget<\\/li>\\n<li>Location Supported : Comment<\\/li>\\n<li>Location Supported : Taxonomy Term<\\/li>\\n<li>Location Supported : User<\\/li>\\n<li>Location Supported : Attachment<\\/li>\\n<li>Add-on supported : Options Page<\\/li>\\n<li>Add on supported : Repeater Field<\\/li>\\n<li>Add on supported : Gallery Field<\\/li>\\n<li>Add on supported : Flexible Content Field<\\/li>\\n<li>Fix : Minor bug in file field example link markup<\\/li>\\n<li>Fix : Support for Quicklinks feature within locations<\\/li>\\n<\\/ul>\\n<p>1.2.0<\\/p>\\n<ul>\\n<li>Field : Clone - major improvements to the clone field code output<\\/li>\\n<li>New Field Supported : Address Field<\\/li>\\n<li>New Field Supported : Number Slider Field<\\/li>\\n<li>New Field Supported : Post Type Select Field<\\/li>\\n<li>New Field Supported : Code Field<\\/li>\\n<li>New Field Supported : Link Field<\\/li>\\n<li>New Field Supported : Link Picker Field<\\/li>\\n<li>New Field Supported : YouTube Picker Field<\\/li>\\n<li>Core : Special characters now removed from variable names<\\/li>\\n<li>Fix : Compatibility with CPTUI Pro Plugin<\\/li>\\n<\\/ul>\\n<p>1.1.0<\\/p>\\n<ul>\\n<li>Core: Quicklinks feature with anchor links to the relevant theme code block<\\/li>\\n<li>Core: Notice updates &amp; various bug fixes<\\/li>\\n<li>Core: Plugin options screen moved under Settings<\\/li>\\n<\\/ul>\\n<p>1.0.3<\\/p>\\n<ul>\\n<li>Fix: Use the_sub_field method for nested File fields with return format URL<\\/li>\\n<\\/ul>\\n<p>1.0.2<\\/p>\\n<ul>\\n<li>Field: Fix for Post Object when using ACF 4<\\/li>\\n<li>Core: Various internal code improvements<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":\"a:2:{s:2:\\\"1x\\\";s:79:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2016\\/07\\/cover-acf-theme-code-pro.png\\\";s:2:\\\"2x\\\";s:79:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2016\\/07\\/cover-acf-theme-code-pro.png\\\";}\",\"description\":[\"<p>Save time &amp; automatically generate the code required to implement Advanced Custom Fields in your themes!<br \\/>\\nACF Theme Code Pro is a premium add-on\\u00a0for the awesome\\u00a0<a href=\\\"https:\\/\\/www.advancedcustomfields.com\\/pro\\/\\\" target=\\\"_blank\\\" rel=\\\"nofollow noopener noreferrer\\\">Advanced Custom Fields Pro<\\/a>\\u00a0WordPress plugin.<\\/p>\\n<p>[ecquote]<\\/p>\\n<p>Whenever you publish, edit or update an ACF Field Group, the code required to implement your unique custom fields is conveniently displayed in a <strong>Theme Code<\\/strong> section right below the Field Group settings.<\\/p>\\n<p>Features<\\/p>\\n<ul>\\n<li>Clipboard icons to easily copy code blocks into your theme<\\/li>\\n<li>Field names and variables are automatically updated<\\/li>\\n<li>Code generated is based on the official ACF documentation<\\/li>\\n<li>Great for offline ACF documentation<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates code for the premium ACF fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Flexible content field<\\/li>\\n<li>Repeater field<\\/li>\\n<li>Gallery field<\\/li>\\n<li>Clone field<\\/li>\\n<li>Group field<\\/li>\\n<li>Link field<\\/li>\\n<li>Range field<\\/li>\\n<li>Button field<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates code for these 3rd Party fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Font Awesome field<\\/li>\\n<li>Google font selector field<\\/li>\\n<li>Image crop field<\\/li>\\n<li>Markdown field<\\/li>\\n<li>Nav Menu field<\\/li>\\n<li>RGBA Colour field<\\/li>\\n<li>Sidebar Selector field<\\/li>\\n<li>Smart Button field<\\/li>\\n<li>Table field<\\/li>\\n<li>TablePress field<\\/li>\\n<li>Address Field<\\/li>\\n<li>Number Slider Field<\\/li>\\n<li>Post Type Select Field<\\/li>\\n<li>Code Field<\\/li>\\n<li>Link Field<\\/li>\\n<li>Link Picker Field<\\/li>\\n<li>YouTube Picker Field<\\/li>\\n<li>Range Field<\\/li>\\n<li>Focal Point Field<\\/li>\\n<\\/ul>\\n<p>ACF Theme Code Pro generates the code for all standard ACF fields:<\\/p>\\n<ul class=\\\"two-up\\\">\\n<li>Text<\\/li>\\n<li>Text Area<\\/li>\\n<li>Number<\\/li>\\n<li>Email<\\/li>\\n<li>Password<\\/li>\\n<li>WYSIWYG<\\/li>\\n<li>File<\\/li>\\n<li>Image<\\/li>\\n<li>Select<\\/li>\\n<li>Checkbox<\\/li>\\n<li>Radio<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>User<\\/li>\\n<li>Google Map<\\/li>\\n<li>Date Picker<\\/li>\\n<li>Date Time Picker<\\/li>\\n<li>Time Picker<\\/li>\\n<li>Color Picker<\\/li>\\n<li>Page Link<\\/li>\\n<li>Post Object<\\/li>\\n<li>Relationship<\\/li>\\n<li>Taxonomy<\\/li>\\n<li>oEmbed<\\/li>\\n<\\/ul>\\n<p>New in Version 2 : Location Rule Support<\\/p>\\n<p>ACF Theme Code Pro can generate code for multiple location rules on each field group, you\\u2019re using ACF Pro this includes locations\\u00a0like <strong>Options<\\/strong>, <strong>Users<\\/strong>, <strong>Widgets<\\/strong>, <strong>Comments<\\/strong>, <strong>Terms<\\/strong> and <strong>Attachments.<\\/strong><br \\/>\\nWorks best with:<\\/p>\\n<ul>\\n<li>Advanced Custom Fields\\u00a0Pro v5.6.8 or higher<\\/li>\\n<li>Advanced Custom Fields (Free) v4.4 or v5.0<\\/li>\\n<li>WordPress 4.9.4 or higher<\\/li>\\n<\\/ul>\\n<p>Current Pro Version<\\/p>\\n<ul>\\n<li>Version 2.3.0\\u00a0released in February 2018<\\/li>\\n<\\/ul>\\n<p>If you\'d like to \'try before you buy\' you can\\u00a0<a href=\\\"https:\\/\\/wordpress.org\\/plugins\\/acf-theme-code\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">check out our free version<\\/a> on WordPress.org. Our free version has basic support for the free version of Advanced Custom Fields.<br \\/>\\nThe ACF Theme Code Plugin was created by:<br \\/>\\nAaron &amp; Ben, two WordPress developers based in Melbourne, Australia.<\\/p>\\n<p>[plugin_authors_block]<\\/p>\\n\"],\"changelog\":[\"<p>2.4.0<\\/p>\\n<ul>\\n<li>Core: Theme Code Pro generates code to register for ACF Blocks and Options!<\\/li>\\n<li>Core: Theme Code Pro generates code for use within for ACF Blocks!<\\/li>\\n<li>Core: Radio Button field (core): Add support for all return types<\\/li>\\n<li>Core: Refactoring that will allow for the more options for the code generated in the future<\\/li>\\n<li>New Field Supported: ACF Icon Field<\\/li>\\n<li>New Field Supported: ACF Star Rating Field<\\/li>\\n<li>New Field Supported: ACF Color Palette Field<\\/li>\\n<li>New Field Supported: ACF Image Aspect Ratio Crop<\\/li>\\n<li>New Field Supported: ACF Color Swatches<\\/li>\\n<li>New Field Supported: ACF SVG Icon<\\/li>\\n<\\/ul>\\n<p>2.3.0<\\/p>\\n<ul>\\n<li>New Field Supported: ACF Ninja Forms add on<\\/li>\\n<li>New Field Supported: ACF Gravity Forms add on<\\/li>\\n<li>New Field Supported: ACF RGBA Colour picker<\\/li>\\n<li>New Field(s) Supported: ACF qTranslate<\\/li>\\n<li>Core: Resolved EDD Conflicts<\\/li>\\n<li>Core: Improved Widget Location Variables<\\/li>\\n<li>Fix: EDD naming conflict<\\/li>\\n<li>Fix: Location error if visual editor is disabled<\\/li>\\n<li>Fix: Select Conflict with Seamless Field Group Option<\\/li>\\n<\\/ul>\\n<p>2.2.0<\\/p>\\n<ul>\\n<li>New Field Supported: Button Field found in ACF Pro v5.6.3<\\/li>\\n<li>New Field Supported: Range Field found in ACF Pro v5.6.2<\\/li>\\n<li>Core: Copy All Feature Added<\\/li>\\n<\\/ul>\\n<p>2.1.0<\\/p>\\n<ul>\\n<li>New Field Supported: Group Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Link Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Range Field (Third Party)<\\/li>\\n<li>New Field Supported: Focal Point Field (Third Party)<\\/li>\\n<li>Field: Code field improved to escape output by default<\\/li>\\n<li>Field: Google Map field improved to return lat, lng &amp;\\u00a0address<\\/li>\\n<li>Core: resolved an issue with legacy PHP versions<\\/li>\\n<li>Fix: Bug in File field PHP when returned as a URL<\\/li>\\n<\\/ul>\\n<p>2.0.0<\\/p>\\n<ul>\\n<li>Core : Theme Code Pro now generates code based on your location rules!<\\/li>\\n<li>Core : Theme Code Pro now supports all official ACF Add ons!<\\/li>\\n<li>Core : Theme Code Pro now works when ACF Pro is included in a theme!<\\/li>\\n<li>Location Supported : Options Page<\\/li>\\n<li>Location Supported : Widget<\\/li>\\n<li>Location Supported : Comment<\\/li>\\n<li>Location Supported : Taxonomy Term<\\/li>\\n<li>Location Supported : User<\\/li>\\n<li>Location Supported : Attachment<\\/li>\\n<li>Add-on supported : Options Page<\\/li>\\n<li>Add on supported : Repeater Field<\\/li>\\n<li>Add on supported : Gallery Field<\\/li>\\n<li>Add on supported : Flexible Content Field<\\/li>\\n<li>Fix : Minor bug in file field example link markup<\\/li>\\n<li>Fix : Support for Quicklinks feature within locations<\\/li>\\n<\\/ul>\\n<p>1.2.0<\\/p>\\n<ul>\\n<li>Field : Clone - major improvements to the clone field code output<\\/li>\\n<li>New Field Supported : Address Field<\\/li>\\n<li>New Field Supported : Number Slider Field<\\/li>\\n<li>New Field Supported : Post Type Select Field<\\/li>\\n<li>New Field Supported : Code Field<\\/li>\\n<li>New Field Supported : Link Field<\\/li>\\n<li>New Field Supported : Link Picker Field<\\/li>\\n<li>New Field Supported : YouTube Picker Field<\\/li>\\n<li>Core : Special characters now removed from variable names<\\/li>\\n<li>Fix : Compatibility with CPTUI Pro Plugin<\\/li>\\n<\\/ul>\\n<p>1.1.0<\\/p>\\n<ul>\\n<li>Core: Quicklinks feature with anchor links to the relevant theme code block<\\/li>\\n<li>Core: Notice updates &amp; various bug fixes<\\/li>\\n<li>Core: Plugin options screen moved under Settings<\\/li>\\n<\\/ul>\\n<p>1.0.3<\\/p>\\n<ul>\\n<li>Fix: Use the_sub_field method for nested File fields with return format URL<\\/li>\\n<\\/ul>\\n<p>1.0.2<\\/p>\\n<ul>\\n<li>Field: Fix for Post Object when using ACF 4<\\/li>\\n<li>Core: Various internal code improvements<\\/li>\\n<\\/ul>\\n\"]}\";}', 'no'),
(224, '_transient_timeout_acf_plugin_updates', '1562360646', 'no'),
(225, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.13\";}}', 'no'),
(251, '_site_transient_timeout_theme_roots', '1562345870', 'no'),
(252, '_site_transient_theme_roots', 'a:2:{s:8:\"altalena\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(253, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1562344072;s:7:\"checked\";a:5:{s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";s:5:\"2.3.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.13\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(255, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1561696217'),
(5, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1561696218'),
(8, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(9, 7, '_edit_lock', '1562348715:1'),
(10, 7, '_wp_page_template', 'page-home.php'),
(11, 9, '_form', '<label> Your Name (required)\n    [text* FirstName] </label>\n\n<label> Your Name (required)\n    [text* LastName] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Phone\n    [number* Phone] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(12, 9, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Altalena \"[your-subject]\"\";s:6:\"sender\";s:37:\"Altalena <alejandro.isla.c@gmail.com>\";s:9:\"recipient\";s:26:\"alejandro.isla.c@gmail.com\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Altalena (http://localhost/altalena)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(13, 9, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Altalena \"[your-subject]\"\";s:6:\"sender\";s:37:\"Altalena <alejandro.isla.c@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Altalena (http://localhost/altalena)\";s:18:\"additional_headers\";s:36:\"Reply-To: alejandro.isla.c@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(14, 9, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la más tardía permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:43:\"Se ha producido un error subiendo la imagen\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El código introducido es incorrecto.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(15, 9, '_additional_settings', ''),
(16, 9, '_locale', 'es_ES'),
(17, 11, '_edit_lock', '1561697788:1'),
(18, 11, '_wp_page_template', 'page-about.php'),
(19, 13, '_edit_lock', '1561697783:1'),
(20, 14, '_edit_lock', '1561697803:1'),
(21, 14, '_wp_page_template', 'page-products.php'),
(22, 16, '_edit_lock', '1561697823:1'),
(23, 16, '_wp_page_template', 'page-contact.php'),
(24, 18, '_menu_item_type', 'post_type'),
(25, 18, '_menu_item_menu_item_parent', '0'),
(26, 18, '_menu_item_object_id', '16'),
(27, 18, '_menu_item_object', 'page'),
(28, 18, '_menu_item_target', ''),
(29, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 18, '_menu_item_xfn', ''),
(31, 18, '_menu_item_url', ''),
(33, 19, '_menu_item_type', 'post_type'),
(34, 19, '_menu_item_menu_item_parent', '0'),
(35, 19, '_menu_item_object_id', '14'),
(36, 19, '_menu_item_object', 'page'),
(37, 19, '_menu_item_target', ''),
(38, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 19, '_menu_item_xfn', ''),
(40, 19, '_menu_item_url', ''),
(42, 20, '_menu_item_type', 'post_type'),
(43, 20, '_menu_item_menu_item_parent', '0'),
(44, 20, '_menu_item_object_id', '11'),
(45, 20, '_menu_item_object', 'page'),
(46, 20, '_menu_item_target', ''),
(47, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 20, '_menu_item_xfn', ''),
(49, 20, '_menu_item_url', ''),
(51, 21, '_menu_item_type', 'post_type'),
(52, 21, '_menu_item_menu_item_parent', '0'),
(53, 21, '_menu_item_object_id', '7'),
(54, 21, '_menu_item_object', 'page'),
(55, 21, '_menu_item_target', ''),
(56, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 21, '_menu_item_xfn', ''),
(58, 21, '_menu_item_url', ''),
(59, 23, '_edit_last', '1'),
(60, 23, '_edit_lock', '1562347213:1'),
(61, 33, '_edit_last', '1'),
(62, 33, '_edit_lock', '1562303580:1'),
(63, 48, '_edit_last', '1'),
(64, 48, '_edit_lock', '1562196861:1'),
(65, 50, '_form', '<label> Name* \n    [text* your_name] </label>\n\n<label> Company* \n    [text* Company] </label>\n\n<label> Country\n    [text* Country] </label>\n\n<label> Phone \n    [number Phone] </label>\n\n<label> Email \n    [email* email] </label>\n\n<label> Product(s) of interest \n[text Productsofinterest]</label>\n\n[checkbox Askfor use_label_element \"Samples\" \"Certificate of Analysis\" \"Require Customized Services\"]\n\n<label> Message\n    [textarea message] </label>\n\n[submit \"Send\"]'),
(66, 50, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Altalena \"[your-subject]\"\";s:6:\"sender\";s:37:\"Altalena <alejandro.isla.c@gmail.com>\";s:9:\"recipient\";s:26:\"alejandro.isla.c@gmail.com\";s:4:\"body\";s:193:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Altalena (http://localhost/altalena)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(67, 50, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Altalena \"[your-subject]\"\";s:6:\"sender\";s:37:\"Altalena <alejandro.isla.c@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:138:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Altalena (http://localhost/altalena)\";s:18:\"additional_headers\";s:36:\"Reply-To: alejandro.isla.c@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(68, 50, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la más tardía permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:43:\"Se ha producido un error subiendo la imagen\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El código introducido es incorrecto.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(69, 50, '_additional_settings', ''),
(70, 50, '_locale', 'es_ES'),
(76, 50, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:39:\"Sintaxis incorrecta en el campo %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(77, 51, '_edit_last', '1'),
(78, 51, '_edit_lock', '1562300100:1'),
(79, 64, '_edit_last', '1'),
(80, 64, '_edit_lock', '1562301304:1'),
(81, 64, 'description', 'Coconut sugar is a natural sugar made from coconut palm sap, which is the sugary circulating fluid of the coconut plant. It is often confused with palm sugar, which is similar but made from a different type of palm tree. Coconut sugar, unlike white sugar, contains nutrients such as fiber, protein, potassium, calcium and iron. It is a good alternative to sweeten foods because it does not raise the glycemic index like white sugar does.'),
(82, 64, '_description', 'field_5d1d2834cae48'),
(83, 64, 'presentations_available_0_type_', 'Organic'),
(84, 64, '_presentations_available_0_type_', 'field_5d1d2884cae4a'),
(85, 64, 'presentations_available_0_icon', ''),
(86, 64, '_presentations_available_0_icon', 'field_5d1d28b2cae4b'),
(87, 64, 'presentations_available', '1'),
(88, 64, '_presentations_available', 'field_5d1d284dcae49'),
(89, 64, 'quantity_in_stock', ''),
(90, 64, '_quantity_in_stock', 'field_5d1d2b0fd29ad'),
(91, 66, '_wp_attached_file', '2019/07/imagen_header.jpg'),
(92, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1455;s:6:\"height\";i:970;s:4:\"file\";s:25:\"2019/07/imagen_header.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"imagen_header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"imagen_header-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"imagen_header-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"imagen_header-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 67, '_wp_attached_file', '2019/07/g3.jpg'),
(94, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:765;s:4:\"file\";s:14:\"2019/07/g3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"g3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"g3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"g3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"g3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 7, '_edit_last', '1'),
(96, 7, 'slider_header_0_image', '66'),
(97, 7, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(98, 7, 'slider_header_1_image', '67'),
(99, 7, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(100, 7, 'slider_header', '2'),
(101, 7, '_slider_header', 'field_5d1ced7517f94'),
(102, 7, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(103, 7, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(104, 7, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(105, 7, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(106, 7, 'buttom', '14'),
(107, 7, '_buttom', 'field_5d1d0120dde17'),
(108, 7, 'text-about', 'Altalena Wholesale is a So-Cal based direct importer and wholesale distributor of high-quality bulk ingredients. '),
(109, 7, '_text-about', 'field_5d1d0174dde18'),
(110, 7, 'our_clients_say', '2'),
(111, 7, '_our_clients_say', 'field_5d1d08a166425'),
(112, 69, 'slider_header_0_image', '66'),
(113, 69, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(114, 69, 'slider_header_1_image', '67'),
(115, 69, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(116, 69, 'slider_header', '2'),
(117, 69, '_slider_header', 'field_5d1ced7517f94'),
(118, 69, 'message_welcome_-_step_1', ''),
(119, 69, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(120, 69, 'message_welcome_-_step_2', ''),
(121, 69, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(122, 69, 'buttom', ''),
(123, 69, '_buttom', 'field_5d1d0120dde17'),
(124, 69, 'text-about', ''),
(125, 69, '_text-about', 'field_5d1d0174dde18'),
(126, 69, 'our_clients_say', ''),
(127, 69, '_our_clients_say', 'field_5d1d08a166425'),
(128, 70, 'slider_header_0_image', '66'),
(129, 70, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(130, 70, 'slider_header_1_image', '67'),
(131, 70, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(132, 70, 'slider_header', '2'),
(133, 70, '_slider_header', 'field_5d1ced7517f94'),
(134, 70, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(135, 70, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(136, 70, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(137, 70, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(138, 70, 'buttom', ''),
(139, 70, '_buttom', 'field_5d1d0120dde17'),
(140, 70, 'text-about', ''),
(141, 70, '_text-about', 'field_5d1d0174dde18'),
(142, 70, 'our_clients_say', ''),
(143, 70, '_our_clients_say', 'field_5d1d08a166425'),
(144, 71, 'slider_header_0_image', '66'),
(145, 71, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(146, 71, 'slider_header_1_image', '67'),
(147, 71, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(148, 71, 'slider_header', '2'),
(149, 71, '_slider_header', 'field_5d1ced7517f94'),
(150, 71, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(151, 71, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(152, 71, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(153, 71, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(154, 71, 'buttom', ''),
(155, 71, '_buttom', 'field_5d1d0120dde17'),
(156, 71, 'text-about', ''),
(157, 71, '_text-about', 'field_5d1d0174dde18'),
(158, 71, 'our_clients_say', ''),
(159, 71, '_our_clients_say', 'field_5d1d08a166425'),
(160, 7, 'our_clients_say_0_testimony', '<p><strong>We love Altalena!</strong> We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point. And its great to support like minded businesses trying to make a difference in peoples health thru food. And thanks to Ryan, our rep! We appreciate the great communication and personal visits to make sure we are satisfied!</p>'),
(161, 7, '_our_clients_say_0_testimony', 'field_5d1d08d366426'),
(162, 73, 'slider_header_0_image', '66'),
(163, 73, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(164, 73, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(165, 73, 'slider_header_1_image', '67'),
(166, 73, 'slider_header_1_image', '67'),
(167, 73, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(168, 73, 'slider_header', '2'),
(169, 73, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(170, 73, '_slider_header', 'field_5d1ced7517f94'),
(171, 73, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(172, 73, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(173, 73, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(174, 73, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(175, 73, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(176, 73, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(177, 73, 'buttom', ''),
(178, 73, 'buttom', '14'),
(179, 73, '_buttom', 'field_5d1d0120dde17'),
(180, 73, '_buttom', 'field_5d1d0120dde17'),
(181, 73, 'text-about', 'Altalena Wholesale is a So-Cal based direct importer and wholesale distributor of high-quality bulk ingredients. '),
(182, 73, '_text-about', 'field_5d1d0174dde18'),
(183, 73, '_text-about', 'field_5d1d0174dde18'),
(184, 73, 'our_clients_say', '1'),
(185, 73, 'our_clients_say', ''),
(186, 73, '_our_clients_say', 'field_5d1d08a166425'),
(187, 73, '_our_clients_say', 'field_5d1d08a166425'),
(188, 73, 'our_clients_say_0_testimony', '<p>We love Altalena! We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point. And its great to support like minded businesses trying to make a difference in peoples health thru food. And thanks to Ryan, our rep! We appreciate the great communication and personal visits to make sure we are satisfied!</p>'),
(189, 73, '_our_clients_say_0_testimony', 'field_5d1d08d366426'),
(190, 75, 'slider_header_0_image', '66'),
(191, 75, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(192, 75, 'slider_header_1_image', '67'),
(193, 75, 'slider_header_1_image', '67'),
(194, 75, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(195, 75, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(196, 75, 'slider_header', '2'),
(197, 75, 'slider_header', '2'),
(198, 75, '_slider_header', 'field_5d1ced7517f94'),
(199, 75, '_slider_header', 'field_5d1ced7517f94'),
(200, 75, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(201, 75, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(202, 75, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(203, 75, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(204, 75, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(205, 75, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(206, 75, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(207, 75, 'buttom', '14'),
(208, 75, 'buttom', '14'),
(209, 75, '_buttom', 'field_5d1d0120dde17'),
(210, 75, '_buttom', 'field_5d1d0120dde17'),
(211, 75, 'text-about', 'Altalena Wholesale is a So-Cal based direct importer and wholesale distributor of high-quality bulk ingredients. '),
(212, 75, '_text-about', 'field_5d1d0174dde18'),
(213, 75, '_text-about', 'field_5d1d0174dde18'),
(214, 75, 'our_clients_say', '1'),
(215, 75, 'our_clients_say', '1'),
(216, 75, '_our_clients_say', 'field_5d1d08a166425'),
(217, 75, 'our_clients_say_0_testimony', '<p><strong>We love Altalena!</strong> We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point. And its great to support like minded businesses trying to make a difference in peoples health thru food. And thanks to Ryan, our rep! We appreciate the great communication and personal visits to make sure we are satisfied!</p>'),
(218, 75, 'our_clients_say_0_testimony', '<p>We love Altalena! We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point. And its great to support like minded businesses trying to make a difference in peoples health thru food. And thanks to Ryan, our rep! We appreciate the great communication and personal visits to make sure we are satisfied!</p>'),
(219, 75, '_our_clients_say_0_testimony', 'field_5d1d08d366426'),
(220, 76, '_wp_attached_file', '2019/07/g1.jpg'),
(221, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:304;s:4:\"file\";s:14:\"2019/07/g1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"g1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"g1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 77, '_wp_attached_file', '2019/07/g2.jpg'),
(223, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1356;s:6:\"height\";i:904;s:4:\"file\";s:14:\"2019/07/g2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"g2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"g2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"g2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"g2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 7, 'our_clients_say_1_testimony', '<p><strong>We love Altalena!</strong> We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point.</p>'),
(225, 7, '_our_clients_say_1_testimony', 'field_5d1d08d366426'),
(226, 79, 'slider_header_0_image', '66'),
(227, 79, '_slider_header_0_image', 'field_5d1ced9c17f95'),
(228, 79, 'slider_header_1_image', '67'),
(229, 79, '_slider_header_1_image', 'field_5d1ced9c17f95'),
(230, 79, 'slider_header', '2'),
(231, 79, '_slider_header', 'field_5d1ced7517f94'),
(232, 79, 'message_welcome_-_step_1', '<p style=\"text-align: center;\"><strong>Welcome to our world:</strong><br />a place of  superfoods!</p>'),
(233, 79, '_message_welcome_-_step_1', 'field_5d1cfd3017f99'),
(234, 79, 'message_welcome_-_step_2', '<p style=\"text-align: center;\">We have a wide variety of organic, kosher<br />and vegan products!</p>'),
(235, 79, '_message_welcome_-_step_2', 'field_5d1cfe5d17f9a'),
(236, 79, 'buttom', '14'),
(237, 79, '_buttom', 'field_5d1d0120dde17'),
(238, 79, 'text-about', 'Altalena Wholesale is a So-Cal based direct importer and wholesale distributor of high-quality bulk ingredients. '),
(239, 79, '_text-about', 'field_5d1d0174dde18'),
(240, 79, 'our_clients_say', '1'),
(241, 79, '_our_clients_say', 'field_5d1d08a166425'),
(242, 79, 'our_clients_say_0_testimony', '<p><strong>We love Altalena!</strong> We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point. And its great to support like minded businesses trying to make a difference in peoples health thru food. And thanks to Ryan, our rep! We appreciate the great communication and personal visits to make sure we are satisfied!</p>'),
(243, 79, '_our_clients_say_0_testimony', 'field_5d1d08d366426'),
(244, 79, '_our_clients_say_0_testimony', 'field_5d1d08d366426'),
(245, 79, 'our_clients_say_1_testimony', '<p><strong>We love Altalena!</strong> We have been a customer for 5 years and really appreciate their customer service and always going above and beyond to make sure we are taken care of. We are grateful for the integrity they put behind sourcing the best possible ingredients. It is challenging to find raw organic products that have a great price point.</p>'),
(246, 79, '_our_clients_say_1_testimony', 'field_5d1d08d366426');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-28 06:27:17', '2019-06-28 04:27:17', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-06-28 06:27:17', '2019-06-28 04:27:17', '', 0, 'http://localhost/altalena/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-28 06:27:17', '2019-06-28 04:27:17', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/altalena/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2019-06-28 06:30:17', '2019-06-28 04:30:17', '', 0, 'http://localhost/altalena/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-28 06:27:17', '2019-06-28 04:27:17', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/altalena.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2019-06-28 06:30:18', '2019-06-28 04:30:18', '', 0, 'http://localhost/altalena/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-06-28 06:27:34', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-28 06:27:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?p=4', 0, 'post', '', 0),
(5, 1, '2019-06-28 06:30:17', '2019-06-28 04:30:17', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/altalena/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-06-28 06:30:17', '2019-06-28 04:30:17', '', 2, 'http://localhost/altalena/2019/06/28/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-06-28 06:30:18', '2019-06-28 04:30:18', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/altalena.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-06-28 06:30:18', '2019-06-28 04:30:18', '', 3, 'http://localhost/altalena/2019/06/28/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-06-28 06:30:29', '2019-06-28 04:30:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-07-05 19:22:47', '2019-07-05 17:22:47', '', 0, 'http://localhost/altalena/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-06-28 06:30:29', '2019-06-28 04:30:29', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-06-28 06:30:29', '2019-06-28 04:30:29', '', 7, 'http://localhost/altalena/2019/06/28/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-06-28 06:31:24', '2019-06-28 04:31:24', '<label> Your Name (required)\r\n    [text* FirstName] </label>\r\n\r\n<label> Your Name (required)\r\n    [text* LastName] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Phone\r\n    [number* Phone] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nAltalena \"[your-subject]\"\nAltalena <alejandro.isla.c@gmail.com>\nalejandro.isla.c@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Altalena (http://localhost/altalena)\nReply-To: [your-email]\n\n\n\n\nAltalena \"[your-subject]\"\nAltalena <alejandro.isla.c@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Altalena (http://localhost/altalena)\nReply-To: alejandro.isla.c@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-07-04 01:21:14', '2019-07-03 23:21:14', '', 0, 'http://localhost/altalena/?post_type=wpcf7_contact_form&#038;p=9', 0, 'wpcf7_contact_form', '', 0),
(10, 1, '2019-06-28 06:55:39', '2019-06-28 04:55:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-06-28 06:55:39', '2019-06-28 04:55:39', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-06-28 06:58:29', '2019-06-28 04:58:29', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-06-28 06:58:42', '2019-06-28 04:58:42', '', 0, 'http://localhost/altalena/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-06-28 06:58:29', '2019-06-28 04:58:29', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-06-28 06:58:29', '2019-06-28 04:58:29', '', 11, 'http://localhost/altalena/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-06-28 06:58:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-28 06:58:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-06-28 06:59:06', '2019-06-28 04:59:06', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-06-28 06:59:06', '2019-06-28 04:59:06', '', 0, 'http://localhost/altalena/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-06-28 06:59:06', '2019-06-28 04:59:06', '', 'Products', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-06-28 06:59:06', '2019-06-28 04:59:06', '', 14, 'http://localhost/altalena/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-06-28 06:59:18', '2019-06-28 04:59:18', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-06-28 06:59:18', '2019-06-28 04:59:18', '', 0, 'http://localhost/altalena/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-06-28 06:59:18', '2019-06-28 04:59:18', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-06-28 06:59:18', '2019-06-28 04:59:18', '', 16, 'http://localhost/altalena/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-06-28 06:59:57', '2019-06-28 04:59:57', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-06-28 07:00:14', '2019-06-28 05:00:14', '', 0, 'http://localhost/altalena/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2019-06-28 06:59:57', '2019-06-28 04:59:57', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-06-28 07:00:14', '2019-06-28 05:00:14', '', 0, 'http://localhost/altalena/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2019-06-28 06:59:57', '2019-06-28 04:59:57', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-06-28 07:00:14', '2019-06-28 05:00:14', '', 0, 'http://localhost/altalena/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2019-06-28 06:59:56', '2019-06-28 04:59:56', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-06-28 07:00:14', '2019-06-28 05:00:14', '', 0, 'http://localhost/altalena/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-07-03 19:57:12', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-03 19:57:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=acf-field-group&p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2019-07-03 21:14:21', '2019-07-03 19:14:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5d1ced5ad3bd0', '', '', '2019-07-04 23:31:14', '2019-07-04 21:31:14', '', 0, 'http://localhost/altalena/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2019-07-03 21:14:21', '2019-07-03 19:14:21', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider Header', 'slider_header', 'publish', 'closed', 'closed', '', 'field_5d1ced7517f94', '', '', '2019-07-03 21:14:21', '2019-07-03 19:14:21', '', 23, 'http://localhost/altalena/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2019-07-03 21:14:21', '2019-07-03 19:14:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d1ced9c17f95', '', '', '2019-07-03 21:14:21', '2019-07-03 19:14:21', '', 24, 'http://localhost/altalena/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2019-07-03 21:14:21', '2019-07-03 19:14:21', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Message Welcome - Step 1', 'message_welcome_-_step_1', 'publish', 'closed', 'closed', '', 'field_5d1cfd3017f99', '', '', '2019-07-03 21:16:47', '2019-07-03 19:16:47', '', 23, 'http://localhost/altalena/?post_type=acf-field&#038;p=26', 1, 'acf-field', '', 0),
(27, 1, '2019-07-03 21:14:21', '2019-07-03 19:14:21', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Message Welcome - Step 2', 'message_welcome_-_step_2', 'publish', 'closed', 'closed', '', 'field_5d1cfe5d17f9a', '', '', '2019-07-03 21:16:47', '2019-07-03 19:16:47', '', 23, 'http://localhost/altalena/?post_type=acf-field&#038;p=27', 2, 'acf-field', '', 0),
(28, 1, '2019-07-03 21:56:57', '2019-07-03 19:56:57', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Buttom All Products', 'buttom', 'publish', 'closed', 'closed', '', 'field_5d1d0120dde17', '', '', '2019-07-03 21:56:57', '2019-07-03 19:56:57', '', 23, 'http://localhost/altalena/?post_type=acf-field&p=28', 3, 'acf-field', '', 0),
(29, 1, '2019-07-03 21:56:58', '2019-07-03 19:56:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Text About', 'text-about', 'publish', 'closed', 'closed', '', 'field_5d1d0174dde18', '', '', '2019-07-03 21:56:58', '2019-07-03 19:56:58', '', 23, 'http://localhost/altalena/?post_type=acf-field&p=29', 4, 'acf-field', '', 0),
(30, 1, '2019-07-03 21:59:00', '2019-07-03 19:59:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Our clients say', 'our_clients_say', 'publish', 'closed', 'closed', '', 'field_5d1d08a166425', '', '', '2019-07-03 21:59:00', '2019-07-03 19:59:00', '', 23, 'http://localhost/altalena/?post_type=acf-field&p=30', 5, 'acf-field', '', 0),
(31, 1, '2019-07-03 21:59:00', '2019-07-03 19:59:00', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Testimony', 'testimony', 'publish', 'closed', 'closed', '', 'field_5d1d08d366426', '', '', '2019-07-04 23:31:14', '2019-07-04 21:31:14', '', 30, 'http://localhost/altalena/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2019-07-03 22:52:05', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-03 22:52:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=32', 0, 'products', '', 0),
(33, 1, '2019-07-04 00:15:14', '2019-07-03 22:15:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"products\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Products', 'products', 'publish', 'closed', 'closed', '', 'group_5d1d280d7cb6e', '', '', '2019-07-05 07:13:38', '2019-07-05 05:13:38', '', 0, 'http://localhost/altalena/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2019-07-04 00:15:14', '2019-07-03 22:15:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5d1d2834cae48', '', '', '2019-07-05 07:13:38', '2019-07-05 05:13:38', '', 33, 'http://localhost/altalena/?post_type=acf-field&#038;p=34', 1, 'acf-field', '', 0),
(35, 1, '2019-07-04 00:15:14', '2019-07-03 22:15:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"80\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Presentations Available', 'presentations_available', 'publish', 'closed', 'closed', '', 'field_5d1d284dcae49', '', '', '2019-07-05 07:13:38', '2019-07-05 05:13:38', '', 33, 'http://localhost/altalena/?post_type=acf-field&#038;p=35', 2, 'acf-field', '', 0),
(36, 1, '2019-07-04 00:15:14', '2019-07-03 22:15:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"60\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Type', 'type_', 'publish', 'closed', 'closed', '', 'field_5d1d2884cae4a', '', '', '2019-07-04 00:15:14', '2019-07-03 22:15:14', '', 35, 'http://localhost/altalena/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2019-07-04 00:15:14', '2019-07-03 22:15:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:40;s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5d1d28b2cae4b', '', '', '2019-07-04 00:15:14', '2019-07-03 22:15:14', '', 35, 'http://localhost/altalena/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2019-07-04 00:15:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:15:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=38', 0, 'products', '', 0),
(39, 1, '2019-07-04 00:21:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:21:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=39', 0, 'products', '', 0),
(40, 1, '2019-07-04 00:22:04', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:22:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=40', 0, 'products', '', 0),
(41, 1, '2019-07-04 00:25:09', '2019-07-03 22:25:09', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Quantity in Stock', 'quantity_in_stock', 'publish', 'closed', 'closed', '', 'field_5d1d2b0fd29ad', '', '', '2019-07-05 07:13:38', '2019-07-05 05:13:38', '', 33, 'http://localhost/altalena/?post_type=acf-field&#038;p=41', 3, 'acf-field', '', 0),
(42, 1, '2019-07-04 00:25:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:25:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=42', 0, 'products', '', 0),
(43, 1, '2019-07-04 00:25:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=43', 0, 'products', '', 0),
(44, 1, '2019-07-04 00:27:06', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:27:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=44', 0, 'products', '', 0),
(45, 1, '2019-07-04 00:27:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 00:27:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=45', 0, 'products', '', 0),
(46, 1, '2019-07-04 01:28:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 01:28:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=46', 0, 'products', '', 0),
(47, 1, '2019-07-04 01:31:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 01:31:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/altalena/?post_type=products&p=47', 0, 'products', '', 0),
(48, 1, '2019-07-04 01:35:43', '2019-07-03 23:35:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'group_5d1d3b7b57983', '', '', '2019-07-04 01:36:33', '2019-07-03 23:36:33', '', 0, 'http://localhost/altalena/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2019-07-04 01:35:43', '2019-07-03 23:35:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d1d3bb527f83', '', '', '2019-07-04 01:35:43', '2019-07-03 23:35:43', '', 48, 'http://localhost/altalena/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2019-07-04 01:58:17', '2019-07-03 23:58:17', '<label> Name* \r\n    [text* your_name] </label>\r\n\r\n<label> Company* \r\n    [text* Company] </label>\r\n\r\n<label> Country\r\n    [text* Country] </label>\r\n\r\n<label> Phone \r\n    [number Phone] </label>\r\n\r\n<label> Email \r\n    [email* email] </label>\r\n\r\n<label> Product(s) of interest \r\n[text Productsofinterest]</label>\r\n\r\n[checkbox Askfor use_label_element \"Samples\" \"Certificate of Analysis\" \"Require Customized Services\"]\r\n\r\n<label> Message\r\n    [textarea message] </label>\r\n\r\n[submit \"Send\"]\n1\nAltalena \"[your-subject]\"\nAltalena <alejandro.isla.c@gmail.com>\nalejandro.isla.c@gmail.com\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Altalena (http://localhost/altalena)\nReply-To: [your-email]\n\n\n\n\nAltalena \"[your-subject]\"\nAltalena <alejandro.isla.c@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Altalena (http://localhost/altalena)\nReply-To: alejandro.isla.c@gmail.com\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Request for Information', '', 'publish', 'closed', 'closed', '', 'request-for-information', '', '', '2019-07-04 06:42:47', '2019-07-04 04:42:47', '', 0, 'http://localhost/altalena/?post_type=wpcf7_contact_form&#038;p=50', 0, 'wpcf7_contact_form', '', 0),
(51, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_5d1e72836098d', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 0, 'http://localhost/altalena/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About Us', 'about_us', 'publish', 'closed', 'closed', '', 'field_5d1e72a7c800f', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=52', 1, 'acf-field', '', 0),
(53, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Our Value proposition', 'our_value_proposition', 'publish', 'closed', 'closed', '', 'field_5d1e72cec8010', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=53', 3, 'acf-field', '', 0),
(54, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5d1e7311c8011', '', '', '2019-07-04 23:45:44', '2019-07-04 21:45:44', '', 53, 'http://localhost/altalena/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5d1e731ec8012', '', '', '2019-07-04 23:45:44', '2019-07-04 21:45:44', '', 53, 'http://localhost/altalena/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2019-07-04 23:45:44', '2019-07-04 21:45:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5d1e733bc8013', '', '', '2019-07-04 23:45:44', '2019-07-04 21:45:44', '', 53, 'http://localhost/altalena/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2019-07-04 23:48:03', '2019-07-04 21:48:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Cerfications', 'cerfications', 'publish', 'closed', 'closed', '', 'field_5d1e738a982d4', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=57', 4, 'acf-field', '', 0),
(58, 1, '2019-07-04 23:48:03', '2019-07-04 21:48:03', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Icons Certifications', 'icons_certifications', 'publish', 'closed', 'closed', '', 'field_5d1e73ac982d5', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=58', 5, 'acf-field', '', 0),
(59, 1, '2019-07-04 23:48:03', '2019-07-04 21:48:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5d1e73c6982d6', '', '', '2019-07-04 23:48:03', '2019-07-04 21:48:03', '', 58, 'http://localhost/altalena/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2019-07-04 23:48:03', '2019-07-04 21:48:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5d1e73d5982d7', '', '', '2019-07-04 23:48:03', '2019-07-04 21:48:03', '', 58, 'http://localhost/altalena/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2019-07-04 23:49:52', '2019-07-04 21:49:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Header', 'image_header', 'publish', 'closed', 'closed', '', 'field_5d1e7439137a5', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2019-07-04 23:49:52', '2019-07-04 21:49:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Our Value Proposition', 'image_our_value_proposition', 'publish', 'closed', 'closed', '', 'field_5d1e744e137a6', '', '', '2019-07-04 23:50:06', '2019-07-04 21:50:06', '', 51, 'http://localhost/altalena/?post_type=acf-field&#038;p=62', 2, 'acf-field', '', 0),
(63, 1, '2019-07-04 23:49:52', '2019-07-04 21:49:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Newsletter', 'image_newsletter', 'publish', 'closed', 'closed', '', 'field_5d1e746a137a7', '', '', '2019-07-04 23:49:52', '2019-07-04 21:49:52', '', 51, 'http://localhost/altalena/?post_type=acf-field&p=63', 6, 'acf-field', '', 0),
(64, 1, '2019-07-05 06:22:23', '2019-07-05 04:22:23', '', 'Coconut Sugar', '', 'publish', 'closed', 'closed', '', 'coconut-sugar', '', '', '2019-07-05 06:22:35', '2019-07-05 04:22:35', '', 0, 'http://localhost/altalena/?post_type=products&#038;p=64', 0, 'products', '', 0),
(65, 1, '2019-07-05 07:13:28', '2019-07-05 05:13:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d1ed76a8270a', '', '', '2019-07-05 07:13:38', '2019-07-05 05:13:38', '', 33, 'http://localhost/altalena/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(66, 1, '2019-07-05 15:51:53', '2019-07-05 13:51:53', '', 'imagen_header', '', 'inherit', 'open', 'closed', '', 'imagen_header', '', '', '2019-07-05 16:05:13', '2019-07-05 14:05:13', '', 7, 'http://localhost/altalena/wp-content/uploads/2019/07/imagen_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-07-05 16:05:05', '2019-07-05 14:05:05', '', 'g3', '', 'inherit', 'open', 'closed', '', 'g3', '', '', '2019-07-05 16:05:05', '2019-07-05 14:05:05', '', 7, 'http://localhost/altalena/wp-content/uploads/2019/07/g3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2019-07-05 16:05:13', '2019-07-05 14:05:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 16:05:13', '2019-07-05 14:05:13', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-07-05 16:05:13', '2019-07-05 14:05:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 16:05:13', '2019-07-05 14:05:13', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-07-05 18:22:07', '2019-07-05 16:22:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:22:07', '2019-07-05 16:22:07', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-07-05 18:22:07', '2019-07-05 16:22:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:22:07', '2019-07-05 16:22:07', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-07-05 18:23:34', '2019-07-05 16:23:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:23:34', '2019-07-05 16:23:34', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-07-05 18:23:34', '2019-07-05 16:23:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:23:34', '2019-07-05 16:23:34', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-07-05 18:49:46', '2019-07-05 16:49:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:49:46', '2019-07-05 16:49:46', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-07-05 18:49:46', '2019-07-05 16:49:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 18:49:46', '2019-07-05 16:49:46', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-07-05 18:57:10', '2019-07-05 16:57:10', '', 'g1', '', 'inherit', 'open', 'closed', '', 'g1', '', '', '2019-07-05 18:57:10', '2019-07-05 16:57:10', '', 0, 'http://localhost/altalena/wp-content/uploads/2019/07/g1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-07-05 18:57:11', '2019-07-05 16:57:11', '', 'g2', '', 'inherit', 'open', 'closed', '', 'g2', '', '', '2019-07-05 18:57:11', '2019-07-05 16:57:11', '', 0, 'http://localhost/altalena/wp-content/uploads/2019/07/g2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-07-05 19:22:47', '2019-07-05 17:22:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 19:22:47', '2019-07-05 17:22:47', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-07-05 19:22:47', '2019-07-05 17:22:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-05 19:22:47', '2019-07-05 17:22:47', '', 7, 'http://localhost/altalena/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'image', '76'),
(2, 3, '_image', 'field_5d1d3bb527f83'),
(3, 4, 'image', ''),
(4, 4, '_image', 'field_5d1d3bb527f83'),
(5, 5, 'image', ''),
(6, 5, '_image', 'field_5d1d3bb527f83'),
(7, 1, 'image', ''),
(8, 1, '_image', 'field_5d1d3bb527f83');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nuts &amp; Seeds', 'nuts-seeds', 0),
(2, 'Menú Principal', 'menu-principal', 0),
(3, 'Cacao Products', 'cacao-products', 0),
(4, 'Coconut Products', 'coconut-products', 0),
(5, 'Protein Powders', 'protein-powders', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(64, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'soporte.altalena'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"a45423b2cdae42f6adf4b402f60fabe818b86f335d2ad8eadc2302020a63b1cb\";a:4:{s:10:\"expiration\";i:1562339673;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1562166873;}s:64:\"56446627b7f1f1352c16f53794d4e625a3676f07102f61e07d57e88cc921ec92\";a:4:{s:10:\"expiration\";i:1562349422;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1562176622;}s:64:\"22ae4daab457f90fa53ab3c602bf70b465599468f4d7dc52491be74bc0c5b380\";a:4:{s:10:\"expiration\";i:1562364676;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Mobile Safari/537.36\";s:5:\"login\";i:1562191876;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1562305023'),
(22, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:14:\"acftc-meta-box\";}'),
(25, 1, 'screen_layout_acf-field-group', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'soporte.altalena', '$P$BQyaeyoRccHynf2nFJZ7vuU/HOZZeW1', 'soporte-altalena', 'alejandro.isla.c@gmail.com', '', '2019-06-28 04:27:16', '', 0, 'soporte.altalena');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
