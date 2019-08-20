-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-08-2019 a las 15:28:06
-- Versión del servidor: 5.5.60-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `omg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-09 14:16:09', '2019-08-09 12:16:09', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://omg.devlabs.cl/', 'yes'),
(2, 'home', 'http://omg.devlabs.cl/', 'yes'),
(3, 'blogname', 'Omg', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bgaete@innovaweb.cl', 'yes'),
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
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:101:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:59:"index.php/post_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_tag=$matches[1]&feed=$matches[2]";s:54:"index.php/post_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_tag=$matches[1]&feed=$matches[2]";s:35:"index.php/post_tag/([^/]+)/embed/?$";s:41:"index.php?post_tag=$matches[1]&embed=true";s:47:"index.php/post_tag/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?post_tag=$matches[1]&paged=$matches[2]";s:29:"index.php/post_tag/([^/]+)/?$";s:30:"index.php?post_tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:44:"index.php/products/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"index.php/products/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"index.php/products/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"index.php/products/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"index.php/products/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"index.php/products/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"index.php/products/(.+?)/embed/?$";s:41:"index.php?products=$matches[1]&embed=true";s:37:"index.php/products/(.+?)/trackback/?$";s:35:"index.php?products=$matches[1]&tb=1";s:45:"index.php/products/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&paged=$matches[2]";s:52:"index.php/products/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&cpage=$matches[2]";s:41:"index.php/products/(.+?)(?:/([0-9]+))?/?$";s:47:"index.php?products=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:41:"acf-theme-code-pro/acf_theme_code_pro.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:9:"hello.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'omg', 'yes'),
(41, 'stylesheet', 'omg', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Madrid', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:11:"widget-name";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1566231371;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1566260171;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1566303370;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1566303390;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1566303392;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1565353076;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'Omg blank theme', 'yes'),
(145, 'theme_mods_altalena', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1565353068;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:11:"widget-name";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'theme_mods_omg', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"footer";i:2;}}', 'yes'),
(153, 'recently_activated', 'a:1:{s:19:"akismet/akismet.php";i:1565353485;}', 'yes'),
(154, 'acf_version', '5.7.13', 'yes'),
(155, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1565360644;s:7:"version";s:5:"5.1.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(156, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(177, 'category_children', 'a:0:{}', 'yes'),
(329, '_transient_timeout_acf_plugin_updates', '1566313307', 'no'),
(330, '_transient_acf_plugin_updates', 'a:4:{s:7:"plugins";a:1:{s:34:"advanced-custom-fields-pro/acf.php";a:8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.8.3";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:3:"5.2";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:10:"expiration";i:86400;s:6:"status";i:1;s:7:"checked";a:1:{s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.7.13";}}', 'no'),
(331, '_site_transient_timeout_theme_roots', '1566228708', 'no'),
(332, '_site_transient_theme_roots', 'a:1:{s:3:"omg";s:7:"/themes";}', 'no'),
(335, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1566226912;s:15:"version_checked";s:5:"5.2.2";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-04 20:27:10";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(336, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1566226913;s:7:"checked";a:1:{s:3:"omg";s:5:"1.0.0";}s:8:"response";a:1:{s:3:"omg";a:6:{s:5:"theme";s:3:"omg";s:11:"new_version";s:3:"3.4";s:3:"url";s:33:"https://wordpress.org/themes/omg/";s:7:"package";s:49:"https://downloads.wordpress.org/theme/omg.3.4.zip";s:8:"requires";b:0;s:12:"requires_php";b:0;}}s:12:"translations";a:0:{}}', 'no'),
(337, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1566226914;s:7:"checked";a:6:{s:41:"acf-theme-code-pro/acf_theme_code_pro.php";s:5:"2.3.0";s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.7.13";s:19:"akismet/akismet.php";s:5:"4.1.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.3";s:9:"hello.php";s:5:"1.7.2";s:29:"wp-subscribe/wp-subscribe.php";s:6:"1.2.12";}s:8:"response";a:2:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.8.3";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:3:"5.2";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:29:"wp-subscribe/wp-subscribe.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-subscribe";s:4:"slug";s:12:"wp-subscribe";s:6:"plugin";s:29:"wp-subscribe/wp-subscribe.php";s:11:"new_version";s:6:"1.2.12";s:3:"url";s:43:"https://wordpress.org/plugins/wp-subscribe/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-subscribe.1.2.12.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-subscribe/assets/icon-256x256.png?rev=1007129";s:2:"1x";s:65:"https://ps.w.org/wp-subscribe/assets/icon-128x128.png?rev=1007129";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/wp-subscribe/assets/banner-772x250.png?rev=1007129";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class="row" id="form-data">\n       <div class="col-md-4">\n            <div class="form-group">\n               [text* full_name id:full_name class:form-control class:input-style placeholder "Enter your full name"]\n               <label id="for_first_name" class="lbl-frm valid"> Full Name *</label>\n            </div>\n         </div>\n\n        <div class="col-md-4">\n            <div class="form-group">\n               [number* phone id:phone class:form-control class:input-style placeholder "+1 323 283 8165"]\n               <label id="for_phone" class="lbl-frm valid"> Phone *</label>\n            </div>\n        </div> \n       <div class="col-md-4">\n            <div class="form-group">\n               [email* email id:email class:form-control class:input-style placeholder "Enter your comment here"]\n               <label id="for_email" class="lbl-frm valid"> Email *</label>\n            </div>\n        </div> \n         <div class="col-md-12">\n            <div class="form-group">\n                 [textarea mensaje id:mensaje 1x1 class:form-control class:input-style-textarea placeholder "Enter your full name"]\n                 <label id="for_mensaje" class="lbl-frm valid"> Mensaje</label>\n            </div>\n        </div>\n        <div class="col-md-12">\n            [submit class:btn class:btn-white-inverter class:white class:pull-right "Send"]\n        </div>\n    </div>'),
(4, 5, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"Omg "[your-subject]"";s:6:"sender";s:25:"Omg <bgaete@innovaweb.cl>";s:9:"recipient";s:19:"bgaete@innovaweb.cl";s:4:"body";s:183:"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Omg (http://omg.devlabs.cl/)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"Omg "[your-subject]"";s:6:"sender";s:25:"Omg <bgaete@innovaweb.cl>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:128:"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Omg (http://omg.devlabs.cl/)";s:18:"additional_headers";s:29:"Reply-To: bgaete@innovaweb.cl";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 5, '_messages', 'a:23:{s:12:"mail_sent_ok";s:40:"Gracias por tu mensaje. Ha sido enviado.";s:12:"mail_sent_ng";s:85:"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.";s:16:"validation_error";s:74:"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.";s:4:"spam";s:85:"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.";s:12:"accept_terms";s:69:"Debes aceptar los términos y condiciones antes de enviar tu mensaje.";s:16:"invalid_required";s:24:"El campo es obligatorio.";s:16:"invalid_too_long";s:28:"El campo es demasiado largo.";s:17:"invalid_too_short";s:28:"El campo es demasiado corto.";s:12:"invalid_date";s:34:"El formato de fecha es incorrecto.";s:14:"date_too_early";s:50:"La fecha es anterior a la más temprana permitida.";s:13:"date_too_late";s:50:"La fecha es posterior a la más tardía permitida.";s:13:"upload_failed";s:46:"Hubo un error desconocido subiendo el archivo.";s:24:"upload_file_type_invalid";s:52:"No tienes permisos para subir archivos de este tipo.";s:21:"upload_file_too_large";s:31:"El archivo es demasiado grande.";s:23:"upload_failed_php_error";s:43:"Se ha producido un error subiendo la imagen";s:14:"invalid_number";s:36:"El formato de número no es válido.";s:16:"number_too_small";s:45:"El número es menor que el mínimo permitido.";s:16:"number_too_large";s:45:"El número es mayor que el máximo permitido.";s:23:"quiz_answer_not_correct";s:44:"La respuesta al cuestionario no es correcta.";s:17:"captcha_not_match";s:37:"El código introducido es incorrecto.";s:13:"invalid_email";s:71:"La dirección de correo electrónico que has introducido no es válida.";s:11:"invalid_url";s:21:"La URL no es válida.";s:11:"invalid_tel";s:38:"El número de teléfono no es válido.";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'es_ES'),
(9, 2, '_edit_lock', '1565353415:1'),
(10, 6, '_edit_lock', '1565612181:1'),
(11, 6, '_wp_page_template', 'page-home.php'),
(12, 8, '_edit_lock', '1565612648:1'),
(13, 8, '_wp_page_template', 'page-about.php'),
(16, 12, '_edit_lock', '1565612183:1'),
(17, 12, '_wp_page_template', 'page-private-labels.php'),
(18, 14, '_edit_lock', '1565360129:1'),
(19, 14, '_wp_page_template', 'page-contact.php'),
(20, 16, '_menu_item_type', 'post_type'),
(21, 16, '_menu_item_menu_item_parent', '0'),
(22, 16, '_menu_item_object_id', '14'),
(23, 16, '_menu_item_object', 'page'),
(24, 16, '_menu_item_target', ''),
(25, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 16, '_menu_item_xfn', ''),
(27, 16, '_menu_item_url', ''),
(29, 17, '_menu_item_type', 'post_type'),
(30, 17, '_menu_item_menu_item_parent', '0'),
(31, 17, '_menu_item_object_id', '12'),
(32, 17, '_menu_item_object', 'page'),
(33, 17, '_menu_item_target', ''),
(34, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 17, '_menu_item_xfn', ''),
(36, 17, '_menu_item_url', ''),
(38, 18, '_menu_item_type', 'post_type'),
(39, 18, '_menu_item_menu_item_parent', '0'),
(40, 18, '_menu_item_object_id', '8'),
(41, 18, '_menu_item_object', 'page'),
(42, 18, '_menu_item_target', ''),
(43, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 18, '_menu_item_xfn', ''),
(45, 18, '_menu_item_url', ''),
(47, 19, '_menu_item_type', 'post_type'),
(48, 19, '_menu_item_menu_item_parent', '0'),
(49, 19, '_menu_item_object_id', '6'),
(50, 19, '_menu_item_object', 'page'),
(51, 19, '_menu_item_target', ''),
(52, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 19, '_menu_item_xfn', ''),
(54, 19, '_menu_item_url', ''),
(73, 5, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:39:"Sintaxis incorrecta en el campo %name%.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(74, 20, '_edit_last', '1'),
(75, 20, '_edit_lock', '1565393659:1'),
(76, 22, '_edit_last', '1'),
(77, 22, '_edit_lock', '1565610979:1'),
(78, 34, '_edit_last', '1'),
(79, 34, '_edit_lock', '1565546536:1'),
(80, 34, 'products_0_name_product', 'Beaty Blend'),
(81, 34, '_products_0_name_product', 'field_5d4e34f93d5b7'),
(82, 34, 'products_0_country_origin', 'Mexico'),
(83, 34, '_products_0_country_origin', 'field_5d4e330e25875'),
(84, 34, 'products_0_type', 'a:4:{i:0;s:7:"organic";i:1;s:6:"kosher";i:2;s:5:"vegan";i:3;s:3:"raw";}'),
(85, 34, '_products_0_type', 'field_5d4e332325876'),
(86, 34, 'products_1_name_product', 'Detox Blend'),
(87, 34, '_products_1_name_product', 'field_5d4e34f93d5b7'),
(88, 34, 'products_1_country_origin', 'Mexico'),
(89, 34, '_products_1_country_origin', 'field_5d4e330e25875'),
(90, 34, 'products_1_type', 'a:3:{i:0;s:7:"organic";i:1;s:5:"vegan";i:2;s:3:"raw";}'),
(91, 34, '_products_1_type', 'field_5d4e332325876'),
(92, 34, 'products_2_name_product', 'Energy Blend'),
(93, 34, '_products_2_name_product', 'field_5d4e34f93d5b7'),
(94, 34, 'products_2_country_origin', 'USA'),
(95, 34, '_products_2_country_origin', 'field_5d4e330e25875'),
(96, 34, 'products_2_type', 'a:4:{i:0;s:7:"organic";i:1;s:6:"kosher";i:2;s:5:"vegan";i:3;s:3:"raw";}'),
(97, 34, '_products_2_type', 'field_5d4e332325876'),
(98, 34, 'products_3_name_product', 'Recovery Blend'),
(99, 34, '_products_3_name_product', 'field_5d4e34f93d5b7'),
(100, 34, 'products_3_country_origin', 'Peru'),
(101, 34, '_products_3_country_origin', 'field_5d4e330e25875'),
(102, 34, 'products_3_type', 'a:3:{i:0;s:7:"organic";i:1;s:6:"kosher";i:2;s:3:"raw";}'),
(103, 34, '_products_3_type', 'field_5d4e332325876'),
(108, 34, 'products_4_type', 'a:4:{i:0;s:7:"organic";i:1;s:6:"kosher";i:2;s:5:"vegan";i:3;s:3:"raw";}'),
(109, 34, '_products_4_type', 'field_5d4e332325876'),
(110, 34, 'products', '4'),
(111, 34, '_products', 'field_5d4e326125874'),
(112, 34, 'Category', '4'),
(113, 34, '_Category', 'field_5d4e33f2a9f71'),
(114, 34, 'products_0_organic', '1'),
(115, 34, '_products_0_organic', 'field_5d4e332325876'),
(116, 34, 'products_0_kosher', '1'),
(117, 34, '_products_0_kosher', 'field_5d5052fb573d9'),
(118, 34, 'products_0_vegan', '1'),
(119, 34, '_products_0_vegan', 'field_5d50532e573da'),
(120, 34, 'products_0_raw', '1'),
(121, 34, '_products_0_raw', 'field_5d505339573db'),
(122, 34, 'products_1_organic', '1'),
(123, 34, '_products_1_organic', 'field_5d4e332325876'),
(124, 34, 'products_1_kosher', '1'),
(125, 34, '_products_1_kosher', 'field_5d5052fb573d9'),
(126, 34, 'products_1_vegan', '0'),
(127, 34, '_products_1_vegan', 'field_5d50532e573da'),
(128, 34, 'products_1_raw', '1'),
(129, 34, '_products_1_raw', 'field_5d505339573db'),
(130, 34, 'products_2_organic', '1'),
(131, 34, '_products_2_organic', 'field_5d4e332325876'),
(132, 34, 'products_2_kosher', '1'),
(133, 34, '_products_2_kosher', 'field_5d5052fb573d9'),
(134, 34, 'products_2_vegan', '1'),
(135, 34, '_products_2_vegan', 'field_5d50532e573da'),
(136, 34, 'products_2_raw', '1'),
(137, 34, '_products_2_raw', 'field_5d505339573db'),
(138, 34, 'products_3_organic', '1'),
(139, 34, '_products_3_organic', 'field_5d4e332325876'),
(140, 34, 'products_3_kosher', '1'),
(141, 34, '_products_3_kosher', 'field_5d5052fb573d9'),
(142, 34, 'products_3_vegan', '1'),
(143, 34, '_products_3_vegan', 'field_5d50532e573da'),
(144, 34, 'products_3_raw', '1'),
(145, 34, '_products_3_raw', 'field_5d505339573db'),
(146, 38, '_edit_last', '1'),
(147, 38, '_edit_lock', '1565546113:1'),
(148, 38, 'products_0_name_product', 'p1'),
(149, 38, '_products_0_name_product', 'field_5d4e34f93d5b7'),
(150, 38, 'products_0_country_origin', 'USA'),
(151, 38, '_products_0_country_origin', 'field_5d4e330e25875'),
(152, 38, 'products_0_organic', '1'),
(153, 38, '_products_0_organic', 'field_5d4e332325876'),
(154, 38, 'products_0_kosher', '0'),
(155, 38, '_products_0_kosher', 'field_5d5052fb573d9'),
(156, 38, 'products_0_vegan', '1'),
(157, 38, '_products_0_vegan', 'field_5d50532e573da'),
(158, 38, 'products_0_raw', '1'),
(159, 38, '_products_0_raw', 'field_5d505339573db'),
(160, 38, 'products_1_name_product', 'p2'),
(161, 38, '_products_1_name_product', 'field_5d4e34f93d5b7'),
(162, 38, 'products_1_country_origin', 'Peru'),
(163, 38, '_products_1_country_origin', 'field_5d4e330e25875'),
(164, 38, 'products_1_organic', '1'),
(165, 38, '_products_1_organic', 'field_5d4e332325876'),
(166, 38, 'products_1_kosher', '1'),
(167, 38, '_products_1_kosher', 'field_5d5052fb573d9'),
(168, 38, 'products_1_vegan', '0'),
(169, 38, '_products_1_vegan', 'field_5d50532e573da'),
(170, 38, 'products_1_raw', '1'),
(171, 38, '_products_1_raw', 'field_5d505339573db'),
(172, 38, 'products', '2'),
(173, 38, '_products', 'field_5d4e326125874'),
(174, 39, '_edit_last', '1'),
(175, 39, '_edit_lock', '1565564013:1'),
(176, 6, '_edit_last', '1'),
(177, 6, 'meet_omg!_food_company_meet_omg!_food_company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(178, 6, '_meet_omg!_food_company_meet_omg!_food_company', 'field_5d5057b0f4642'),
(179, 6, 'meet_omg!_food_company_buttom_all_products', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(180, 6, '_meet_omg!_food_company_buttom_all_products', 'field_5d5057d3f4643'),
(181, 6, 'meet_omg!_food_company', ''),
(182, 6, '_meet_omg!_food_company', 'field_5d505719f4640'),
(183, 44, 'meet_omg!_food_company_meet_omg!_food_company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(184, 44, '_meet_omg!_food_company_meet_omg!_food_company', 'field_5d5057b0f4642'),
(185, 44, 'meet_omg!_food_company_buttom_all_products', '12'),
(186, 44, '_meet_omg!_food_company_buttom_all_products', 'field_5d5057d3f4643'),
(187, 44, 'meet_omg!_food_company', ''),
(188, 44, '_meet_omg!_food_company', 'field_5d505719f4640'),
(189, 46, 'meet_omg!_food_company_meet_omg!_food_company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(190, 46, 'meet_omg!_food_company_meet_omg!_food_company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(191, 46, '_meet_omg!_food_company_meet_omg!_food_company', 'field_5d5057b0f4642'),
(192, 46, '_meet_omg!_food_company_meet_omg!_food_company', 'field_5d5057b0f4642'),
(193, 46, 'meet_omg!_food_company_buttom_all_products', '12'),
(194, 46, '_meet_omg!_food_company_buttom_all_products', 'field_5d5057d3f4643'),
(195, 46, 'meet_omg!_food_company', ''),
(196, 46, 'meet_omg!_food_company', ''),
(197, 46, '_meet_omg!_food_company', 'field_5d505719f4640'),
(198, 54, '_wp_attached_file', '2019/08/brand-1.jpg'),
(199, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:516;s:6:"height";i:713;s:4:"file";s:19:"2019/08/brand-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"brand-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"brand-1-217x300.jpg";s:5:"width";i:217;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 55, '_wp_attached_file', '2019/08/brand-2.jpg'),
(201, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:475;s:4:"file";s:19:"2019/08/brand-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"brand-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"brand-2-217x300.jpg";s:5:"width";i:217;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 56, '_wp_attached_file', '2019/08/brand-3.jpg'),
(203, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:475;s:4:"file";s:19:"2019/08/brand-3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"brand-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"brand-3-217x300.jpg";s:5:"width";i:217;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(204, 57, '_wp_attached_file', '2019/08/logo-omg-brands.png'),
(205, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:94;s:6:"height";i:103;s:4:"file";s:27:"2019/08/logo-omg-brands.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(206, 6, 'omg_brands_brand_0_imagen', '54'),
(207, 6, '_omg_brands_brand_0_imagen', 'field_5d50594e01f86'),
(208, 6, 'omg_brands_brand_0_logo', '57'),
(209, 6, '_omg_brands_brand_0_logo', 'field_5d50596c01f87'),
(210, 6, 'omg_brands_brand_0_title', 'Organic Meets Good'),
(211, 6, '_omg_brands_brand_0_title', 'field_5d50599401f88'),
(212, 6, 'omg_brands_brand_0_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(213, 6, '_omg_brands_brand_0_content', 'field_5d5059a701f89'),
(214, 6, 'omg_brands_brand_0_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(215, 6, '_omg_brands_brand_0_link', 'field_5d5059d401f8a'),
(216, 6, 'omg_brands_brand_1_imagen', '55'),
(217, 6, '_omg_brands_brand_1_imagen', 'field_5d50594e01f86'),
(218, 6, 'omg_brands_brand_1_logo', '57'),
(219, 6, '_omg_brands_brand_1_logo', 'field_5d50596c01f87'),
(220, 6, 'omg_brands_brand_1_title', 'Organic Meets Good'),
(221, 6, '_omg_brands_brand_1_title', 'field_5d50599401f88'),
(222, 6, 'omg_brands_brand_1_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(223, 6, '_omg_brands_brand_1_content', 'field_5d5059a701f89'),
(224, 6, 'omg_brands_brand_1_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(225, 6, '_omg_brands_brand_1_link', 'field_5d5059d401f8a'),
(226, 6, 'omg_brands_brand_2_imagen', '56'),
(227, 6, '_omg_brands_brand_2_imagen', 'field_5d50594e01f86'),
(228, 6, 'omg_brands_brand_2_logo', '57'),
(229, 6, '_omg_brands_brand_2_logo', 'field_5d50596c01f87'),
(230, 6, 'omg_brands_brand_2_title', 'Organic Meets Good'),
(231, 6, '_omg_brands_brand_2_title', 'field_5d50599401f88'),
(232, 6, 'omg_brands_brand_2_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(233, 6, '_omg_brands_brand_2_content', 'field_5d5059a701f89'),
(234, 6, 'omg_brands_brand_2_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(235, 6, '_omg_brands_brand_2_link', 'field_5d5059d401f8a'),
(236, 6, 'omg_brands_brand', '3'),
(237, 6, '_omg_brands_brand', 'field_5d50592401f85'),
(238, 6, 'omg_brands', ''),
(239, 6, '_omg_brands', 'field_5d50591101f84'),
(240, 59, 'meet_omg!_food_company_meet_omg!_food_company', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(241, 59, '_meet_omg!_food_company_meet_omg!_food_company', 'field_5d5057b0f4642'),
(242, 59, 'meet_omg!_food_company_buttom_all_products', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(243, 59, '_meet_omg!_food_company_buttom_all_products', 'field_5d5057d3f4643'),
(244, 59, 'meet_omg!_food_company', ''),
(245, 59, '_meet_omg!_food_company', 'field_5d505719f4640'),
(246, 59, 'omg_brands_brand_0_imagen', '54'),
(247, 59, '_omg_brands_brand_0_imagen', 'field_5d50594e01f86'),
(248, 59, 'omg_brands_brand_0_logo', '57'),
(249, 59, '_omg_brands_brand_0_logo', 'field_5d50596c01f87'),
(250, 59, '_omg_brands_brand_0_logo', 'field_5d50596c01f87'),
(251, 59, 'omg_brands_brand_0_title', 'Organic Meets Good'),
(252, 59, 'omg_brands_brand_0_title', 'Organic Meets Good'),
(253, 59, '_omg_brands_brand_0_title', 'field_5d50599401f88'),
(254, 59, '_omg_brands_brand_0_title', 'field_5d50599401f88'),
(255, 59, 'omg_brands_brand_0_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(256, 59, 'omg_brands_brand_0_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(257, 59, '_omg_brands_brand_0_content', 'field_5d5059a701f89'),
(258, 59, '_omg_brands_brand_0_content', 'field_5d5059a701f89'),
(259, 59, 'omg_brands_brand_0_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(260, 59, 'omg_brands_brand_0_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(261, 59, '_omg_brands_brand_0_link', 'field_5d5059d401f8a'),
(262, 59, '_omg_brands_brand_0_link', 'field_5d5059d401f8a'),
(263, 59, 'omg_brands_brand_1_imagen', '55'),
(264, 59, '_omg_brands_brand_1_imagen', 'field_5d50594e01f86'),
(265, 59, '_omg_brands_brand_1_imagen', 'field_5d50594e01f86'),
(266, 59, 'omg_brands_brand_1_logo', '57'),
(267, 59, 'omg_brands_brand_1_logo', '57'),
(268, 59, '_omg_brands_brand_1_logo', 'field_5d50596c01f87'),
(269, 59, '_omg_brands_brand_1_logo', 'field_5d50596c01f87'),
(270, 59, 'omg_brands_brand_1_title', 'Organic Meets Good'),
(271, 59, 'omg_brands_brand_1_title', 'Organic Meets Good'),
(272, 59, '_omg_brands_brand_1_title', 'field_5d50599401f88'),
(273, 59, '_omg_brands_brand_1_title', 'field_5d50599401f88'),
(274, 59, 'omg_brands_brand_1_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(275, 59, 'omg_brands_brand_1_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(276, 59, '_omg_brands_brand_1_content', 'field_5d5059a701f89'),
(277, 59, 'omg_brands_brand_1_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(278, 59, 'omg_brands_brand_1_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(279, 59, '_omg_brands_brand_1_link', 'field_5d5059d401f8a'),
(280, 59, '_omg_brands_brand_1_link', 'field_5d5059d401f8a'),
(281, 59, 'omg_brands_brand_2_imagen', '56'),
(282, 59, 'omg_brands_brand_2_imagen', '56'),
(283, 59, '_omg_brands_brand_2_imagen', 'field_5d50594e01f86'),
(284, 59, 'omg_brands_brand_2_logo', '57'),
(285, 59, '_omg_brands_brand_2_logo', 'field_5d50596c01f87'),
(286, 59, 'omg_brands_brand_2_title', 'Organic Meets Good'),
(287, 59, '_omg_brands_brand_2_title', 'field_5d50599401f88'),
(288, 59, 'omg_brands_brand_2_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.'),
(289, 59, '_omg_brands_brand_2_content', 'field_5d5059a701f89'),
(290, 59, 'omg_brands_brand_2_link', 'a:3:{s:5:"title";s:13:"Private Label";s:3:"url";s:45:"http://omg.devlabs.cl//index.php/private-label/";s:6:"target";s:0:"";}'),
(291, 59, '_omg_brands_brand_2_link', 'field_5d5059d401f8a'),
(292, 59, 'omg_brands_brand', '3'),
(293, 59, '_omg_brands_brand', 'field_5d50592401f85'),
(294, 59, 'omg_brands', ''),
(295, 59, '_omg_brands', 'field_5d50591101f84'),
(296, 60, '_edit_last', '1'),
(297, 60, '_edit_lock', '1565564758:1'),
(298, 60, 'products_0_name_product', 'p1'),
(299, 60, '_products_0_name_product', 'field_5d4e34f93d5b7'),
(300, 60, 'products_0_country_origin', 'USA'),
(301, 60, '_products_0_country_origin', 'field_5d4e330e25875'),
(302, 60, 'products_0_organic', '1'),
(303, 60, '_products_0_organic', 'field_5d4e332325876'),
(304, 60, 'products_0_kosher', '1'),
(305, 60, '_products_0_kosher', 'field_5d5052fb573d9'),
(306, 60, 'products_0_vegan', '1'),
(307, 60, '_products_0_vegan', 'field_5d50532e573da'),
(308, 60, 'products_0_raw', '1'),
(309, 60, '_products_0_raw', 'field_5d505339573db'),
(310, 60, 'products_1_name_product', 'p2'),
(311, 60, '_products_1_name_product', 'field_5d4e34f93d5b7'),
(312, 60, 'products_1_country_origin', 'USA'),
(313, 60, '_products_1_country_origin', 'field_5d4e330e25875'),
(314, 60, 'products_1_organic', '1'),
(315, 60, '_products_1_organic', 'field_5d4e332325876'),
(316, 60, 'products_1_kosher', '0'),
(317, 60, '_products_1_kosher', 'field_5d5052fb573d9'),
(318, 60, 'products_1_vegan', '1'),
(319, 60, '_products_1_vegan', 'field_5d50532e573da'),
(320, 60, 'products_1_raw', '1'),
(321, 60, '_products_1_raw', 'field_5d505339573db'),
(322, 60, 'products_2_name_product', 'p3'),
(323, 60, '_products_2_name_product', 'field_5d4e34f93d5b7'),
(324, 60, 'products_2_country_origin', 'Chile'),
(325, 60, '_products_2_country_origin', 'field_5d4e330e25875'),
(326, 60, 'products_2_organic', '1'),
(327, 60, '_products_2_organic', 'field_5d4e332325876'),
(328, 60, 'products_2_kosher', '1'),
(329, 60, '_products_2_kosher', 'field_5d5052fb573d9'),
(330, 60, 'products_2_vegan', '1'),
(331, 60, '_products_2_vegan', 'field_5d50532e573da'),
(332, 60, 'products_2_raw', '1'),
(333, 60, '_products_2_raw', 'field_5d505339573db'),
(334, 60, 'products', '3'),
(335, 60, '_products', 'field_5d4e326125874'),
(336, 61, '_edit_last', '1'),
(337, 61, '_edit_lock', '1565564976:1'),
(338, 61, 'products_0_name_product', 'p1'),
(339, 61, '_products_0_name_product', 'field_5d4e34f93d5b7'),
(340, 61, 'products_0_country_origin', 'USA'),
(341, 61, '_products_0_country_origin', 'field_5d4e330e25875'),
(342, 61, 'products_0_organic', '1'),
(343, 61, '_products_0_organic', 'field_5d4e332325876'),
(344, 61, 'products_0_kosher', '1'),
(345, 61, '_products_0_kosher', 'field_5d5052fb573d9'),
(346, 61, 'products_0_vegan', '1'),
(347, 61, '_products_0_vegan', 'field_5d50532e573da'),
(348, 61, 'products_0_raw', '1'),
(349, 61, '_products_0_raw', 'field_5d505339573db'),
(350, 61, 'products_1_name_product', 'p2'),
(351, 61, '_products_1_name_product', 'field_5d4e34f93d5b7'),
(352, 61, 'products_1_country_origin', 'USA'),
(353, 61, '_products_1_country_origin', 'field_5d4e330e25875'),
(354, 61, 'products_1_organic', '1'),
(355, 61, '_products_1_organic', 'field_5d4e332325876'),
(356, 61, 'products_1_kosher', '1'),
(357, 61, '_products_1_kosher', 'field_5d5052fb573d9'),
(358, 61, 'products_1_vegan', '0'),
(359, 61, '_products_1_vegan', 'field_5d50532e573da'),
(360, 61, 'products_1_raw', '1'),
(361, 61, '_products_1_raw', 'field_5d505339573db'),
(362, 61, 'products_2_name_product', 'p3'),
(363, 61, '_products_2_name_product', 'field_5d4e34f93d5b7'),
(364, 61, 'products_2_country_origin', 'USA'),
(365, 61, '_products_2_country_origin', 'field_5d4e330e25875'),
(366, 61, 'products_2_organic', '1'),
(367, 61, '_products_2_organic', 'field_5d4e332325876'),
(368, 61, 'products_2_kosher', '0'),
(369, 61, '_products_2_kosher', 'field_5d5052fb573d9'),
(370, 61, 'products_2_vegan', '1'),
(371, 61, '_products_2_vegan', 'field_5d50532e573da'),
(372, 61, 'products_2_raw', '1'),
(373, 61, '_products_2_raw', 'field_5d505339573db'),
(374, 61, 'products_3_name_product', 'p4'),
(375, 61, '_products_3_name_product', 'field_5d4e34f93d5b7'),
(376, 61, 'products_3_country_origin', 'USA'),
(377, 61, '_products_3_country_origin', 'field_5d4e330e25875'),
(378, 61, 'products_3_organic', '1'),
(379, 61, '_products_3_organic', 'field_5d4e332325876'),
(380, 61, 'products_3_kosher', '1'),
(381, 61, '_products_3_kosher', 'field_5d5052fb573d9'),
(382, 61, 'products_3_vegan', '1'),
(383, 61, '_products_3_vegan', 'field_5d50532e573da'),
(384, 61, 'products_3_raw', '1'),
(385, 61, '_products_3_raw', 'field_5d505339573db'),
(386, 61, 'products', '4'),
(387, 61, '_products', 'field_5d4e326125874'),
(388, 63, '_edit_last', '1'),
(389, 63, '_edit_lock', '1565612249:1'),
(390, 12, '_edit_last', '1'),
(391, 12, '_edit_last', '1'),
(392, 12, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(393, 12, '_private_label', 'field_5d5153e4ac335'),
(394, 12, '_private_label', 'field_5d5153e4ac335'),
(395, 12, 'as_easy_as_0_image', '57'),
(396, 12, 'as_easy_as_0_image', '57'),
(397, 12, '_as_easy_as_0_image', 'field_5d515424ac337'),
(398, 12, '_as_easy_as_0_image', 'field_5d515424ac337'),
(399, 12, 'as_easy_as_0_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(400, 12, 'as_easy_as_0_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(401, 12, '_as_easy_as_0_description', 'field_5d515445ac338'),
(402, 12, '_as_easy_as_0_description', 'field_5d515445ac338'),
(403, 12, 'as_easy_as_1_image', '57'),
(404, 12, 'as_easy_as_1_image', '57'),
(405, 12, '_as_easy_as_1_image', 'field_5d515424ac337'),
(406, 12, '_as_easy_as_1_image', 'field_5d515424ac337'),
(407, 12, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(408, 12, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(409, 12, '_as_easy_as_1_description', 'field_5d515445ac338'),
(410, 12, '_as_easy_as_1_description', 'field_5d515445ac338'),
(411, 12, 'as_easy_as_2_image', '57'),
(412, 12, '_as_easy_as_2_image', 'field_5d515424ac337'),
(413, 12, 'as_easy_as_2_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(414, 12, '_as_easy_as_2_description', 'field_5d515445ac338'),
(415, 12, '_as_easy_as_2_description', 'field_5d515445ac338'),
(416, 12, 'as_easy_as_3_image', '57'),
(417, 12, 'as_easy_as_3_image', '57'),
(418, 12, '_as_easy_as_3_image', 'field_5d515424ac337'),
(419, 12, '_as_easy_as_3_image', 'field_5d515424ac337'),
(420, 12, 'as_easy_as_3_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(421, 12, 'as_easy_as_3_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(422, 12, '_as_easy_as_3_description', 'field_5d515445ac338'),
(423, 12, '_as_easy_as_3_description', 'field_5d515445ac338'),
(424, 12, 'as_easy_as', '4'),
(425, 12, 'as_easy_as', '4'),
(426, 12, '_as_easy_as', 'field_5d5153fbac336'),
(427, 12, '_as_easy_as', 'field_5d5153fbac336'),
(428, 69, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(429, 69, '_private_label', 'field_5d5153e4ac335'),
(430, 69, 'as_easy_as_0_image', ''),
(431, 69, 'as_easy_as_0_image', ''),
(432, 69, '_as_easy_as_0_image', 'field_5d515424ac337'),
(433, 69, 'as_easy_as_0_description', ''),
(434, 69, 'as_easy_as_0_description', ''),
(435, 69, '_as_easy_as_0_description', 'field_5d515445ac338'),
(436, 69, '_as_easy_as_0_description', 'field_5d515445ac338'),
(437, 69, 'as_easy_as_1_image', ''),
(438, 69, 'as_easy_as_1_image', ''),
(439, 69, '_as_easy_as_1_image', 'field_5d515424ac337'),
(440, 69, '_as_easy_as_1_image', 'field_5d515424ac337'),
(441, 69, 'as_easy_as_1_description', ''),
(442, 69, 'as_easy_as_1_description', ''),
(443, 69, '_as_easy_as_1_description', 'field_5d515445ac338'),
(444, 69, '_as_easy_as_1_description', 'field_5d515445ac338'),
(445, 69, 'as_easy_as_2_image', ''),
(446, 69, '_as_easy_as_2_image', 'field_5d515424ac337'),
(447, 69, '_as_easy_as_2_image', 'field_5d515424ac337'),
(448, 69, 'as_easy_as_2_description', ''),
(449, 69, 'as_easy_as_2_description', ''),
(450, 69, '_as_easy_as_2_description', 'field_5d515445ac338'),
(451, 69, '_as_easy_as_2_description', 'field_5d515445ac338'),
(452, 69, 'as_easy_as_3_image', ''),
(453, 69, 'as_easy_as_3_image', ''),
(454, 69, '_as_easy_as_3_image', 'field_5d515424ac337'),
(455, 69, '_as_easy_as_3_image', 'field_5d515424ac337'),
(456, 69, 'as_easy_as_3_description', ''),
(457, 69, 'as_easy_as_3_description', ''),
(458, 69, '_as_easy_as_3_description', 'field_5d515445ac338'),
(459, 69, '_as_easy_as_3_description', 'field_5d515445ac338'),
(460, 69, 'as_easy_as', '4'),
(461, 69, 'as_easy_as', '4'),
(462, 69, '_as_easy_as', 'field_5d5153fbac336'),
(463, 69, '_as_easy_as', 'field_5d5153fbac336'),
(464, 71, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(465, 71, '_private_label', 'field_5d5153e4ac335'),
(466, 71, '_private_label', 'field_5d5153e4ac335'),
(467, 71, 'as_easy_as_0_image', ''),
(468, 71, 'as_easy_as_0_image', ''),
(469, 71, '_as_easy_as_0_image', 'field_5d515424ac337'),
(470, 71, '_as_easy_as_0_image', 'field_5d515424ac337'),
(471, 71, 'as_easy_as_0_description', ''),
(472, 71, 'as_easy_as_0_description', ''),
(473, 71, '_as_easy_as_0_description', 'field_5d515445ac338'),
(474, 71, '_as_easy_as_0_description', 'field_5d515445ac338'),
(475, 71, 'as_easy_as_1_image', ''),
(476, 71, 'as_easy_as_1_image', ''),
(477, 71, '_as_easy_as_1_image', 'field_5d515424ac337'),
(478, 71, '_as_easy_as_1_image', 'field_5d515424ac337'),
(479, 71, 'as_easy_as_1_description', ''),
(480, 71, 'as_easy_as_1_description', ''),
(481, 71, '_as_easy_as_1_description', 'field_5d515445ac338'),
(482, 71, 'as_easy_as_2_image', ''),
(483, 71, '_as_easy_as_2_image', 'field_5d515424ac337'),
(484, 71, 'as_easy_as_2_description', ''),
(485, 71, '_as_easy_as_2_description', 'field_5d515445ac338'),
(486, 71, '_as_easy_as_2_description', 'field_5d515445ac338'),
(487, 71, 'as_easy_as_3_image', ''),
(488, 71, 'as_easy_as_3_image', ''),
(489, 71, '_as_easy_as_3_image', 'field_5d515424ac337'),
(490, 71, '_as_easy_as_3_image', 'field_5d515424ac337'),
(491, 71, 'as_easy_as_3_description', ''),
(492, 71, 'as_easy_as_3_description', ''),
(493, 71, '_as_easy_as_3_description', 'field_5d515445ac338'),
(494, 71, '_as_easy_as_3_description', 'field_5d515445ac338'),
(495, 71, 'as_easy_as', '4'),
(496, 71, 'as_easy_as', '4'),
(497, 71, '_as_easy_as', 'field_5d5153fbac336'),
(498, 71, '_as_easy_as', 'field_5d5153fbac336'),
(499, 12, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(500, 12, '_superfoods_consumer', 'field_5d5154f19b015'),
(501, 12, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(502, 12, '_certifications', 'field_5d5155249b016'),
(503, 75, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(504, 75, '_private_label', 'field_5d5153e4ac335'),
(505, 75, 'as_easy_as_0_image', ''),
(506, 75, '_as_easy_as_0_image', 'field_5d515424ac337'),
(507, 75, 'as_easy_as_0_description', ''),
(508, 75, 'as_easy_as_0_description', ''),
(509, 75, '_as_easy_as_0_description', 'field_5d515445ac338'),
(510, 75, 'as_easy_as_1_image', ''),
(511, 75, '_as_easy_as_0_description', 'field_5d515445ac338'),
(512, 75, '_as_easy_as_1_image', 'field_5d515424ac337'),
(513, 75, 'as_easy_as_1_description', ''),
(514, 75, 'as_easy_as_1_description', ''),
(515, 75, '_as_easy_as_1_description', 'field_5d515445ac338'),
(516, 75, '_as_easy_as_1_description', 'field_5d515445ac338'),
(517, 75, 'as_easy_as_2_image', ''),
(518, 75, '_as_easy_as_2_image', 'field_5d515424ac337'),
(519, 75, '_as_easy_as_2_image', 'field_5d515424ac337'),
(520, 75, 'as_easy_as_2_description', ''),
(521, 75, 'as_easy_as_2_description', ''),
(522, 75, '_as_easy_as_2_description', 'field_5d515445ac338'),
(523, 75, 'as_easy_as_3_image', ''),
(524, 75, 'as_easy_as_3_image', ''),
(525, 75, '_as_easy_as_3_image', 'field_5d515424ac337'),
(526, 75, '_as_easy_as_3_image', 'field_5d515424ac337'),
(527, 75, 'as_easy_as_3_description', ''),
(528, 75, '_as_easy_as_3_description', 'field_5d515445ac338'),
(529, 75, 'as_easy_as', '4'),
(530, 75, 'as_easy_as', '4'),
(531, 75, '_as_easy_as', 'field_5d5153fbac336'),
(532, 75, '_as_easy_as', 'field_5d5153fbac336'),
(533, 75, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(534, 75, '_superfoods_consumer', 'field_5d5154f19b015'),
(535, 75, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(536, 75, '_certifications', 'field_5d5155249b016'),
(537, 77, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(538, 77, '_private_label', 'field_5d5153e4ac335'),
(539, 77, 'as_easy_as_0_image', ''),
(540, 77, '_as_easy_as_0_image', 'field_5d515424ac337'),
(541, 77, 'as_easy_as_0_description', ''),
(542, 77, '_as_easy_as_0_description', 'field_5d515445ac338'),
(543, 77, 'as_easy_as_1_image', ''),
(544, 77, '_as_easy_as_1_image', 'field_5d515424ac337'),
(545, 77, 'as_easy_as_1_description', ''),
(546, 77, '_as_easy_as_1_description', 'field_5d515445ac338'),
(547, 77, '_as_easy_as_1_description', 'field_5d515445ac338'),
(548, 77, 'as_easy_as_2_image', ''),
(549, 77, 'as_easy_as_2_image', ''),
(550, 77, '_as_easy_as_2_image', 'field_5d515424ac337'),
(551, 77, '_as_easy_as_2_image', 'field_5d515424ac337'),
(552, 77, 'as_easy_as_2_description', ''),
(553, 77, 'as_easy_as_2_description', ''),
(554, 77, '_as_easy_as_2_description', 'field_5d515445ac338'),
(555, 77, '_as_easy_as_2_description', 'field_5d515445ac338'),
(556, 77, 'as_easy_as_3_image', ''),
(557, 77, 'as_easy_as_3_image', ''),
(558, 77, '_as_easy_as_3_image', 'field_5d515424ac337'),
(559, 77, '_as_easy_as_3_image', 'field_5d515424ac337'),
(560, 77, 'as_easy_as_3_description', ''),
(561, 77, 'as_easy_as_3_description', ''),
(562, 77, '_as_easy_as_3_description', 'field_5d515445ac338'),
(563, 77, '_as_easy_as_3_description', 'field_5d515445ac338'),
(564, 77, 'as_easy_as', '4'),
(565, 77, '_as_easy_as', 'field_5d5153fbac336'),
(566, 77, '_as_easy_as', 'field_5d5153fbac336'),
(567, 77, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(568, 77, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(569, 77, '_superfoods_consumer', 'field_5d5154f19b015'),
(570, 77, '_superfoods_consumer', 'field_5d5154f19b015'),
(571, 77, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(572, 77, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(573, 77, '_certifications', 'field_5d5155249b016'),
(574, 77, '_certifications', 'field_5d5155249b016'),
(575, 79, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(576, 79, '_private_label', 'field_5d5153e4ac335'),
(577, 79, '_private_label', 'field_5d5153e4ac335'),
(578, 79, 'as_easy_as_0_image', ''),
(579, 79, 'as_easy_as_0_image', ''),
(580, 79, '_as_easy_as_0_image', 'field_5d515424ac337'),
(581, 79, '_as_easy_as_0_image', 'field_5d515424ac337'),
(582, 79, 'as_easy_as_0_description', ''),
(583, 79, 'as_easy_as_0_description', ''),
(584, 79, '_as_easy_as_0_description', 'field_5d515445ac338'),
(585, 79, '_as_easy_as_0_description', 'field_5d515445ac338'),
(586, 79, 'as_easy_as_1_image', ''),
(587, 79, 'as_easy_as_1_image', ''),
(588, 79, '_as_easy_as_1_image', 'field_5d515424ac337'),
(589, 79, '_as_easy_as_1_image', 'field_5d515424ac337'),
(590, 79, 'as_easy_as_1_description', ''),
(591, 79, 'as_easy_as_1_description', ''),
(592, 79, '_as_easy_as_1_description', 'field_5d515445ac338'),
(593, 79, '_as_easy_as_1_description', 'field_5d515445ac338'),
(594, 79, 'as_easy_as_2_image', ''),
(595, 79, 'as_easy_as_2_image', ''),
(596, 79, '_as_easy_as_2_image', 'field_5d515424ac337'),
(597, 79, '_as_easy_as_2_image', 'field_5d515424ac337'),
(598, 79, 'as_easy_as_2_description', ''),
(599, 79, 'as_easy_as_2_description', ''),
(600, 79, '_as_easy_as_2_description', 'field_5d515445ac338'),
(601, 79, '_as_easy_as_2_description', 'field_5d515445ac338'),
(602, 79, 'as_easy_as_3_image', ''),
(603, 79, 'as_easy_as_3_image', ''),
(604, 79, '_as_easy_as_3_image', 'field_5d515424ac337'),
(605, 79, '_as_easy_as_3_image', 'field_5d515424ac337'),
(606, 79, 'as_easy_as_3_description', ''),
(607, 79, 'as_easy_as_3_description', ''),
(608, 79, '_as_easy_as_3_description', 'field_5d515445ac338'),
(609, 79, 'as_easy_as', '4'),
(610, 79, 'as_easy_as', '4'),
(611, 79, '_as_easy_as', 'field_5d5153fbac336'),
(612, 79, '_as_easy_as', 'field_5d5153fbac336'),
(613, 79, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(614, 79, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(615, 79, '_superfoods_consumer', 'field_5d5154f19b015'),
(616, 79, '_superfoods_consumer', 'field_5d5154f19b015'),
(617, 79, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(618, 79, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(619, 79, '_certifications', 'field_5d5155249b016'),
(620, 81, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(621, 81, '_private_label', 'field_5d5153e4ac335'),
(622, 81, 'as_easy_as_0_image', ''),
(623, 81, '_as_easy_as_0_image', 'field_5d515424ac337'),
(624, 81, 'as_easy_as_0_description', ''),
(625, 81, 'as_easy_as_0_description', ''),
(626, 81, '_as_easy_as_0_description', 'field_5d515445ac338'),
(627, 81, '_as_easy_as_0_description', 'field_5d515445ac338'),
(628, 81, 'as_easy_as_1_image', ''),
(629, 81, 'as_easy_as_1_image', ''),
(630, 81, '_as_easy_as_1_image', 'field_5d515424ac337'),
(631, 81, 'as_easy_as_1_description', ''),
(632, 81, '_as_easy_as_1_description', 'field_5d515445ac338'),
(633, 81, 'as_easy_as_2_image', ''),
(634, 81, 'as_easy_as_2_image', ''),
(635, 81, '_as_easy_as_2_image', 'field_5d515424ac337'),
(636, 81, '_as_easy_as_2_image', 'field_5d515424ac337'),
(637, 81, 'as_easy_as_2_description', ''),
(638, 81, 'as_easy_as_2_description', ''),
(639, 81, '_as_easy_as_2_description', 'field_5d515445ac338'),
(640, 81, '_as_easy_as_2_description', 'field_5d515445ac338'),
(641, 81, 'as_easy_as_3_image', ''),
(642, 81, 'as_easy_as_3_image', ''),
(643, 81, '_as_easy_as_3_image', 'field_5d515424ac337'),
(644, 81, 'as_easy_as_3_description', ''),
(645, 81, 'as_easy_as_3_description', ''),
(646, 81, '_as_easy_as_3_description', 'field_5d515445ac338'),
(647, 81, '_as_easy_as_3_description', 'field_5d515445ac338'),
(648, 81, 'as_easy_as', '4'),
(649, 81, 'as_easy_as', '4'),
(650, 81, '_as_easy_as', 'field_5d5153fbac336'),
(651, 81, '_as_easy_as', 'field_5d5153fbac336'),
(652, 81, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(653, 81, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(654, 81, '_superfoods_consumer', 'field_5d5154f19b015'),
(655, 81, '_superfoods_consumer', 'field_5d5154f19b015'),
(656, 81, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(657, 81, '_certifications', 'field_5d5155249b016'),
(658, 81, '_certifications', 'field_5d5155249b016'),
(659, 12, 'as_easy_as_0_title', '1. PRODUCT'),
(660, 12, '_as_easy_as_0_title', 'field_5d515677160d1'),
(661, 12, '_as_easy_as_0_title', 'field_5d515677160d1'),
(662, 12, 'as_easy_as_1_title', '2. PACKING'),
(663, 12, 'as_easy_as_1_title', '2. PACKING'),
(664, 12, '_as_easy_as_1_title', 'field_5d515677160d1'),
(665, 12, '_as_easy_as_1_title', 'field_5d515677160d1'),
(666, 12, 'as_easy_as_2_title', '3. DESING'),
(667, 12, '_as_easy_as_2_title', 'field_5d515677160d1'),
(668, 12, 'as_easy_as_3_title', '4. SCOPE OF WORK'),
(669, 12, 'as_easy_as_3_title', '4. SCOPE OF WORK'),
(670, 12, '_as_easy_as_3_title', 'field_5d515677160d1'),
(671, 84, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(672, 84, '_private_label', 'field_5d5153e4ac335'),
(673, 84, '_private_label', 'field_5d5153e4ac335'),
(674, 84, 'as_easy_as_0_image', '57'),
(675, 84, 'as_easy_as_0_image', '57'),
(676, 84, '_as_easy_as_0_image', 'field_5d515424ac337'),
(677, 84, '_as_easy_as_0_image', 'field_5d515424ac337'),
(678, 84, 'as_easy_as_0_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(679, 84, 'as_easy_as_0_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(680, 84, '_as_easy_as_0_description', 'field_5d515445ac338'),
(681, 84, '_as_easy_as_0_description', 'field_5d515445ac338'),
(682, 84, 'as_easy_as_1_image', '57'),
(683, 84, 'as_easy_as_1_image', '57'),
(684, 84, '_as_easy_as_1_image', 'field_5d515424ac337'),
(685, 84, '_as_easy_as_1_image', 'field_5d515424ac337'),
(686, 84, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(687, 84, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(688, 84, '_as_easy_as_1_description', 'field_5d515445ac338'),
(689, 84, '_as_easy_as_1_description', 'field_5d515445ac338'),
(690, 84, 'as_easy_as_2_image', '57'),
(691, 84, 'as_easy_as_2_image', '57'),
(692, 84, '_as_easy_as_2_image', 'field_5d515424ac337'),
(693, 84, '_as_easy_as_2_image', 'field_5d515424ac337'),
(694, 84, 'as_easy_as_2_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(695, 84, 'as_easy_as_2_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(696, 84, '_as_easy_as_2_description', 'field_5d515445ac338'),
(697, 84, '_as_easy_as_2_description', 'field_5d515445ac338'),
(698, 84, 'as_easy_as_3_image', '57'),
(699, 84, '_as_easy_as_3_image', 'field_5d515424ac337'),
(700, 84, '_as_easy_as_3_image', 'field_5d515424ac337'),
(701, 84, 'as_easy_as_3_description', ''),
(702, 84, 'as_easy_as_3_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(703, 84, '_as_easy_as_3_description', 'field_5d515445ac338'),
(704, 84, '_as_easy_as_3_description', 'field_5d515445ac338'),
(705, 84, 'as_easy_as', '4'),
(706, 84, '_as_easy_as', 'field_5d5153fbac336'),
(707, 84, '_as_easy_as', 'field_5d5153fbac336'),
(708, 84, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(709, 84, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(710, 84, '_superfoods_consumer', 'field_5d5154f19b015'),
(711, 84, '_superfoods_consumer', 'field_5d5154f19b015'),
(712, 84, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(713, 84, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(714, 84, '_certifications', 'field_5d5155249b016'),
(715, 84, 'as_easy_as_0_title', 'PRODUCT'),
(716, 84, 'as_easy_as_0_title', 'PRODUCT'),
(717, 84, '_as_easy_as_0_title', 'field_5d515677160d1'),
(718, 84, '_as_easy_as_0_title', 'field_5d515677160d1'),
(719, 84, 'as_easy_as_1_title', 'PACKING'),
(720, 84, 'as_easy_as_1_title', 'PACKING'),
(721, 84, '_as_easy_as_1_title', 'field_5d515677160d1'),
(722, 84, '_as_easy_as_1_title', 'field_5d515677160d1'),
(723, 84, 'as_easy_as_2_title', 'DESING'),
(724, 84, 'as_easy_as_2_title', 'DESING'),
(725, 84, '_as_easy_as_2_title', 'field_5d515677160d1'),
(726, 84, '_as_easy_as_2_title', 'field_5d515677160d1'),
(727, 84, 'as_easy_as_3_title', 'SCOPE OF WORK'),
(728, 84, 'as_easy_as_3_title', 'SCOPE OF WORK'),
(729, 84, '_as_easy_as_3_title', 'field_5d515677160d1'),
(730, 84, '_as_easy_as_3_title', 'field_5d515677160d1'),
(731, 86, 'private_label', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>'),
(732, 86, '_private_label', 'field_5d5153e4ac335'),
(733, 86, 'as_easy_as_0_image', '57'),
(734, 86, '_as_easy_as_0_image', 'field_5d515424ac337'),
(735, 86, 'as_easy_as_0_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(736, 86, '_as_easy_as_0_description', 'field_5d515445ac338'),
(737, 86, 'as_easy_as_1_image', '57'),
(738, 86, 'as_easy_as_1_image', '57'),
(739, 86, '_as_easy_as_1_image', 'field_5d515424ac337'),
(740, 86, '_as_easy_as_1_image', 'field_5d515424ac337'),
(741, 86, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(742, 86, 'as_easy_as_1_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(743, 86, '_as_easy_as_1_description', 'field_5d515445ac338'),
(744, 86, '_as_easy_as_1_description', 'field_5d515445ac338'),
(745, 86, 'as_easy_as_2_image', '57'),
(746, 86, '_as_easy_as_2_image', 'field_5d515424ac337'),
(747, 86, '_as_easy_as_2_image', 'field_5d515424ac337'),
(748, 86, 'as_easy_as_2_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(749, 86, '_as_easy_as_2_description', 'field_5d515445ac338'),
(750, 86, '_as_easy_as_2_description', 'field_5d515445ac338'),
(751, 86, 'as_easy_as_3_image', '57'),
(752, 86, 'as_easy_as_3_image', '57'),
(753, 86, '_as_easy_as_3_image', 'field_5d515424ac337'),
(754, 86, '_as_easy_as_3_image', 'field_5d515424ac337'),
(755, 86, 'as_easy_as_3_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(756, 86, 'as_easy_as_3_description', 'Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.'),
(757, 86, '_as_easy_as_3_description', 'field_5d515445ac338'),
(758, 86, '_as_easy_as_3_description', 'field_5d515445ac338'),
(759, 86, 'as_easy_as', '4'),
(760, 86, 'as_easy_as', '4'),
(761, 86, '_as_easy_as', 'field_5d5153fbac336'),
(762, 86, '_as_easy_as', 'field_5d5153fbac336'),
(763, 86, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(764, 86, 'superfoods_consumer', 'Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.'),
(765, 86, '_superfoods_consumer', 'field_5d5154f19b015'),
(766, 86, '_superfoods_consumer', 'field_5d5154f19b015'),
(767, 86, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(768, 86, 'certifications', 'Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.'),
(769, 86, '_certifications', 'field_5d5155249b016'),
(770, 86, '_certifications', 'field_5d5155249b016'),
(771, 86, 'as_easy_as_0_title', '1. PRODUCT'),
(772, 86, 'as_easy_as_0_title', '1. PRODUCT'),
(773, 86, '_as_easy_as_0_title', 'field_5d515677160d1'),
(774, 86, '_as_easy_as_0_title', 'field_5d515677160d1'),
(775, 86, 'as_easy_as_1_title', '2. PACKING'),
(776, 86, 'as_easy_as_1_title', '2. PACKING'),
(777, 86, '_as_easy_as_1_title', 'field_5d515677160d1'),
(778, 86, '_as_easy_as_1_title', 'field_5d515677160d1'),
(779, 86, 'as_easy_as_2_title', '3. DESING'),
(780, 86, 'as_easy_as_2_title', '3. DESING'),
(781, 86, '_as_easy_as_2_title', 'field_5d515677160d1'),
(782, 86, '_as_easy_as_2_title', 'field_5d515677160d1'),
(783, 86, 'as_easy_as_3_title', '4. SCOPE OF WORK'),
(784, 86, '_as_easy_as_3_title', 'field_5d515677160d1'),
(785, 87, '_edit_last', '1'),
(786, 87, '_edit_lock', '1565612396:1'),
(787, 8, '_edit_last', '1'),
(788, 8, 'about_us', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.'),
(789, 8, '_about_us', 'field_5d5158d315b9c'),
(790, 8, 'expertise', 'Headquartered in Los Angeles, California. OMG Superfoods specializes in sourcing and manufacturing Organic Superfoods. We began business in 2010 as the leading importer of Maqui Berry from Chile and have grown by partnering with national and regional retailers to successfully launch products in over 10,000 points of sale in the US market.'),
(791, 8, '_expertise', 'field_5d5158e115b9d'),
(792, 8, 'direct_sourcing', 'We cultivate direct and sustainable sourcing relationships with farmers across the globe, including Peru, India, Mexico, Chile, and others. This ensures we are able to offer a consistent supply of the highest quality ingredients at competitive prices.'),
(793, 8, '_direct_sourcing', 'field_5d5158eb15b9e'),
(794, 91, 'about_us', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.'),
(795, 91, '_about_us', 'field_5d5158d315b9c'),
(796, 91, 'expertise', 'Headquartered in Los Angeles, California. OMG Superfoods specializes in sourcing and manufacturing Organic Superfoods. We began business in 2010 as the leading importer of Maqui Berry from Chile and have grown by partnering with national and regional retailers to successfully launch products in over 10,000 points of sale in the US market.'),
(797, 91, '_expertise', 'field_5d5158e115b9d'),
(798, 91, 'direct_sourcing', 'We cultivate direct and sustainable sourcing relationships with farmers across the globe, including Peru, India, Mexico, Chile, and others. This ensures we are able to offer a consistent supply of the highest quality ingredients at competitive prices.'),
(799, 91, '_direct_sourcing', 'field_5d5158eb15b9e'),
(800, 92, 'about_us', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.'),
(801, 92, '_about_us', 'field_5d5158d315b9c'),
(802, 92, 'expertise', 'Headquartered in Los Angeles, California. OMG Superfoods specializes in sourcing and manufacturing Organic Superfoods. We began business in 2010 as the leading importer of Maqui Berry from Chile and have grown by partnering with national and regional retailers to successfully launch products in over 10,000 points of sale in the US market.'),
(803, 92, '_expertise', 'field_5d5158e115b9d'),
(804, 92, 'direct_sourcing', 'We cultivate direct and sustainable sourcing relationships with farmers across the globe, including Peru, India, Mexico, Chile, and others. This ensures we are able to offer a consistent supply of the highest quality ingredients at competitive prices.'),
(805, 92, '_direct_sourcing', 'field_5d5158eb15b9e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-09 14:16:09', '2019-08-09 12:16:09', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-08-09 14:16:09', '2019-08-09 12:16:09', '', 0, 'http://omg.devlabs.cl//?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-09 14:16:09', '2019-08-09 12:16:09', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href="http://omg.devlabs.cl//wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2019-08-09 14:16:09', '2019-08-09 12:16:09', '', 0, 'http://omg.devlabs.cl//?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-09 14:16:09', '2019-08-09 12:16:09', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://omg.devlabs.cl/.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-08-09 14:16:09', '2019-08-09 12:16:09', '', 0, 'http://omg.devlabs.cl//?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-08-09 14:24:04', '2019-08-09 12:24:04', '<div class="row" id="form-data">\r\n       <div class="col-md-4">\r\n            <div class="form-group">\r\n               [text* full_name id:full_name class:form-control class:input-style placeholder "Enter your full name"]\r\n               <label id="for_first_name" class="lbl-frm valid"> Full Name *</label>\r\n            </div>\r\n         </div>\r\n\r\n        <div class="col-md-4">\r\n            <div class="form-group">\r\n               [number* phone id:phone class:form-control class:input-style placeholder "+1 323 283 8165"]\r\n               <label id="for_phone" class="lbl-frm valid"> Phone *</label>\r\n            </div>\r\n        </div> \r\n       <div class="col-md-4">\r\n            <div class="form-group">\r\n               [email* email id:email class:form-control class:input-style placeholder "Enter your comment here"]\r\n               <label id="for_email" class="lbl-frm valid"> Email *</label>\r\n            </div>\r\n        </div> \r\n         <div class="col-md-12">\r\n            <div class="form-group">\r\n                 [textarea mensaje id:mensaje 1x1 class:form-control class:input-style-textarea placeholder "Enter your full name"]\r\n                 <label id="for_mensaje" class="lbl-frm valid"> Mensaje</label>\r\n            </div>\r\n        </div>\r\n        <div class="col-md-12">\r\n            [submit class:btn class:btn-white-inverter class:white class:pull-right "Send"]\r\n        </div>\r\n    </div>\n1\nOmg "[your-subject]"\nOmg <bgaete@innovaweb.cl>\nbgaete@innovaweb.cl\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Omg (http://omg.devlabs.cl/)\nReply-To: [your-email]\n\n\n\n\nOmg "[your-subject]"\nOmg <bgaete@innovaweb.cl>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Omg (http://omg.devlabs.cl/)\nReply-To: bgaete@innovaweb.cl\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-08-09 18:15:46', '2019-08-09 16:15:46', '', 0, 'http://omg.devlabs.cl//?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2019-08-09 14:26:26', '2019-08-09 12:26:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-08-11 20:30:37', '2019-08-11 18:30:37', '', 0, 'http://omg.devlabs.cl//?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-08-09 14:26:26', '2019-08-09 12:26:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-09 14:26:26', '2019-08-09 12:26:26', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/09/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-08-09 16:15:32', '2019-08-09 14:15:32', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-08-12 14:19:21', '2019-08-12 12:19:21', '', 0, 'http://omg.devlabs.cl//?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-08-09 16:15:32', '2019-08-09 14:15:32', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-09 16:15:32', '2019-08-09 14:15:32', '', 8, 'http://omg.devlabs.cl//index.php/2019/08/09/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-08-09 16:17:00', '2019-08-09 14:17:00', '', 'Private Label', '', 'publish', 'closed', 'closed', '', 'private-label', '', '', '2019-08-12 14:12:13', '2019-08-12 12:12:13', '', 0, 'http://omg.devlabs.cl//?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-08-09 16:17:00', '2019-08-09 14:17:00', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-09 16:17:00', '2019-08-09 14:17:00', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/09/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-08-09 16:17:20', '2019-08-09 14:17:20', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-08-09 16:17:20', '2019-08-09 14:17:20', '', 0, 'http://omg.devlabs.cl//?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-08-09 16:17:20', '2019-08-09 14:17:20', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-08-09 16:17:20', '2019-08-09 14:17:20', '', 14, 'http://omg.devlabs.cl//index.php/2019/08/09/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-08-09 16:24:49', '2019-08-09 14:24:49', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-08-09 18:32:16', '2019-08-09 16:32:16', '', 0, 'http://omg.devlabs.cl//?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2019-08-09 16:24:49', '2019-08-09 14:24:49', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-08-09 18:32:16', '2019-08-09 16:32:16', '', 0, 'http://omg.devlabs.cl//?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2019-08-09 16:24:49', '2019-08-09 14:24:49', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-08-09 18:32:16', '2019-08-09 16:32:16', '', 0, 'http://omg.devlabs.cl//?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2019-08-09 16:24:49', '2019-08-09 14:24:49', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-08-09 18:32:16', '2019-08-09 16:32:16', '', 0, 'http://omg.devlabs.cl//?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-08-10 01:35:48', '2019-08-09 23:35:48', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Product Category', 'product-category', 'publish', 'closed', 'closed', '', 'group_5d4e033267e52', '', '', '2019-08-10 01:36:41', '2019-08-09 23:36:41', '', 0, 'http://omg.devlabs.cl//?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2019-08-10 01:35:48', '2019-08-09 23:35:48', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Color', 'color', 'publish', 'closed', 'closed', '', 'field_5d4e033b306ca', '', '', '2019-08-10 01:35:48', '2019-08-09 23:35:48', '', 20, 'http://omg.devlabs.cl//?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2019-08-10 01:44:04', '2019-08-09 23:44:04', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"products";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Products', 'products', 'publish', 'closed', 'closed', '', 'group_5d4e049308c58', '', '', '2019-08-11 19:42:38', '2019-08-11 17:42:38', '', 0, 'http://omg.devlabs.cl//?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(28, 1, '2019-08-10 05:03:00', '2019-08-10 03:03:00', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:19:"field_5d4e332325876";s:3:"min";i:1;s:3:"max";i:4;s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', 'Products', 'products', 'publish', 'closed', 'closed', '', 'field_5d4e326125874', '', '', '2019-08-11 19:41:49', '2019-08-11 17:41:49', '', 22, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=28', 0, 'acf-field', '', 0),
(29, 1, '2019-08-10 05:03:00', '2019-08-10 03:03:00', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"20";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:10:{s:3:"USA";s:3:"USA";s:6:"Mexico";s:6:"Mexico";s:4:"Peru";s:4:"Peru";s:5:"Chile";s:5:"Chile";s:7:"Bolivia";s:7:"Bolivia";s:9:"Argentina";s:9:"Argentina";s:6:"Brasil";s:6:"Brasil";s:9:"Venezuela";s:9:"Venezuela";s:7:"Ecuador";s:7:"Ecuador";s:6:"Canada";s:6:"Canada";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}', 'Country Origin', 'country_origin', 'publish', 'closed', 'closed', '', 'field_5d4e330e25875', '', '', '2019-08-10 05:08:33', '2019-08-10 03:08:33', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=29', 1, 'acf-field', '', 0),
(30, 1, '2019-08-10 05:03:00', '2019-08-10 03:03:00', 'a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"12";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Organic', 'organic', 'publish', 'closed', 'closed', '', 'field_5d4e332325876', '', '', '2019-08-11 19:42:38', '2019-08-11 17:42:38', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=30', 2, 'acf-field', '', 0),
(33, 1, '2019-08-10 05:08:33', '2019-08-10 03:08:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Name Product', 'name_product', 'publish', 'closed', 'closed', '', 'field_5d4e34f93d5b7', '', '', '2019-08-10 05:08:33', '2019-08-10 03:08:33', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2019-08-10 05:12:40', '2019-08-10 03:12:40', '', 'Superfoods Blends', '', 'publish', 'closed', 'closed', '', 'superfoods-blends', '', '', '2019-08-11 19:42:58', '2019-08-11 17:42:58', '', 0, 'http://omg.devlabs.cl//?post_type=products&#038;p=34', 0, 'products', '', 0),
(35, 1, '2019-08-11 19:41:49', '2019-08-11 17:41:49', 'a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"12";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Kosher', 'kosher', 'publish', 'closed', 'closed', '', 'field_5d5052fb573d9', '', '', '2019-08-11 19:42:38', '2019-08-11 17:42:38', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=35', 3, 'acf-field', '', 0),
(36, 1, '2019-08-11 19:41:49', '2019-08-11 17:41:49', 'a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"12";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Vegan', 'vegan', 'publish', 'closed', 'closed', '', 'field_5d50532e573da', '', '', '2019-08-11 19:42:38', '2019-08-11 17:42:38', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=36', 4, 'acf-field', '', 0),
(37, 1, '2019-08-11 19:41:49', '2019-08-11 17:41:49', 'a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"12";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Raw', 'raw', 'publish', 'closed', 'closed', '', 'field_5d505339573db', '', '', '2019-08-11 19:42:38', '2019-08-11 17:42:38', '', 28, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=37', 5, 'acf-field', '', 0),
(38, 1, '2019-08-11 19:52:38', '2019-08-11 17:52:38', '', 'Cacao Products', '', 'publish', 'closed', 'closed', '', 'cacao-products', '', '', '2019-08-11 19:52:38', '2019-08-11 17:52:38', '', 0, 'http://omg.devlabs.cl//?post_type=products&#038;p=38', 0, 'products', '', 0),
(39, 1, '2019-08-11 20:02:14', '2019-08-11 18:02:14', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5d5057148aea8', '', '', '2019-08-11 20:13:03', '2019-08-11 18:13:03', '', 0, 'http://omg.devlabs.cl//?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2019-08-11 20:02:14', '2019-08-11 18:02:14', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Meet Omg!', 'meet_omg!_food_company', 'publish', 'closed', 'closed', '', 'field_5d505719f4640', '', '', '2019-08-11 20:02:14', '2019-08-11 18:02:14', '', 39, 'http://omg.devlabs.cl//?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2019-08-11 20:02:14', '2019-08-11 18:02:14', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"70";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Meet Omg! Food Company', 'meet_omg!_food_company', 'publish', 'closed', 'closed', '', 'field_5d5057b0f4642', '', '', '2019-08-11 20:02:14', '2019-08-11 18:02:14', '', 40, 'http://omg.devlabs.cl//?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(42, 1, '2019-08-11 20:02:14', '2019-08-11 18:02:14', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Buttom All Products', 'buttom_all_products', 'publish', 'closed', 'closed', '', 'field_5d5057d3f4643', '', '', '2019-08-11 20:11:15', '2019-08-11 18:11:15', '', 40, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(43, 1, '2019-08-11 20:04:17', '2019-08-11 18:04:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:04:17', '2019-08-11 18:04:17', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-08-11 20:04:17', '2019-08-11 18:04:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:04:17', '2019-08-11 18:04:17', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-08-11 20:05:52', '2019-08-11 18:05:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:05:52', '2019-08-11 18:05:52', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-08-11 20:05:52', '2019-08-11 18:05:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:05:52', '2019-08-11 18:05:52', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Omg Brands', 'omg_brands', 'publish', 'closed', 'closed', '', 'field_5d50591101f84', '', '', '2019-08-11 20:11:15', '2019-08-11 18:11:15', '', 39, 'http://omg.devlabs.cl//?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";i:3;s:3:"max";i:3;s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', 'Brand', 'brand', 'publish', 'closed', 'closed', '', 'field_5d50592401f85', '', '', '2019-08-11 20:12:17', '2019-08-11 18:12:17', '', 47, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"25";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'imagen', 'publish', 'closed', 'closed', '', 'field_5d50594e01f86', '', '', '2019-08-11 20:13:03', '2019-08-11 18:13:03', '', 48, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"25";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5d50596c01f87', '', '', '2019-08-11 20:13:03', '2019-08-11 18:13:03', '', 48, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5d50599401f88', '', '', '2019-08-11 20:11:15', '2019-08-11 18:11:15', '', 48, 'http://omg.devlabs.cl//?post_type=acf-field&p=51', 2, 'acf-field', '', 0),
(52, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5d5059a701f89', '', '', '2019-08-11 20:12:17', '2019-08-11 18:12:17', '', 48, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=52', 3, 'acf-field', '', 0),
(53, 1, '2019-08-11 20:11:15', '2019-08-11 18:11:15', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5d5059d401f8a', '', '', '2019-08-11 20:11:15', '2019-08-11 18:11:15', '', 48, 'http://omg.devlabs.cl//?post_type=acf-field&p=53', 4, 'acf-field', '', 0),
(54, 1, '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 'brand-1', '', 'inherit', 'open', 'closed', '', 'brand-1', '', '', '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 6, 'http://omg.devlabs.cl//wp-content/uploads/2019/08/brand-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 'brand-2', '', 'inherit', 'open', 'closed', '', 'brand-2', '', '', '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 6, 'http://omg.devlabs.cl//wp-content/uploads/2019/08/brand-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 'brand-3', '', 'inherit', 'open', 'closed', '', 'brand-3', '', '', '2019-08-11 20:26:08', '2019-08-11 18:26:08', '', 6, 'http://omg.devlabs.cl//wp-content/uploads/2019/08/brand-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-08-11 20:28:27', '2019-08-11 18:28:27', '', 'logo-omg-brands', '', 'inherit', 'open', 'closed', '', 'logo-omg-brands', '', '', '2019-08-11 20:28:27', '2019-08-11 18:28:27', '', 6, 'http://omg.devlabs.cl//wp-content/uploads/2019/08/logo-omg-brands.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-08-11 20:30:37', '2019-08-11 18:30:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:30:37', '2019-08-11 18:30:37', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-08-11 20:30:37', '2019-08-11 18:30:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-11 20:30:37', '2019-08-11 18:30:37', '', 6, 'http://omg.devlabs.cl//index.php/2019/08/11/6-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-08-12 01:08:07', '2019-08-11 23:08:07', '', 'Protein Powder', '', 'publish', 'closed', 'closed', '', 'protein-powder', '', '', '2019-08-12 01:08:07', '2019-08-11 23:08:07', '', 0, 'http://omg.devlabs.cl//?post_type=products&#038;p=60', 0, 'products', '', 0),
(61, 1, '2019-08-12 01:08:51', '2019-08-11 23:08:51', '', 'Seeds & Grains', '', 'publish', 'closed', 'closed', '', 'seeds-grains', '', '', '2019-08-12 01:08:51', '2019-08-11 23:08:51', '', 0, 'http://omg.devlabs.cl//?post_type=products&#038;p=61', 0, 'products', '', 0),
(63, 1, '2019-08-12 13:58:29', '2019-08-12 11:58:29', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"page-private-labels.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Private Label', 'private-label', 'publish', 'closed', 'closed', '', 'group_5d5153bdce96b', '', '', '2019-08-12 14:07:32', '2019-08-12 12:07:32', '', 0, 'http://omg.devlabs.cl//?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2019-08-12 13:58:29', '2019-08-12 11:58:29', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Private Label', 'private_label', 'publish', 'closed', 'closed', '', 'field_5d5153e4ac335', '', '', '2019-08-12 13:58:29', '2019-08-12 11:58:29', '', 63, 'http://omg.devlabs.cl//?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2019-08-12 13:58:29', '2019-08-12 11:58:29', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";i:4;s:3:"max";i:4;s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', 'AS EASY AS', 'as_easy_as', 'publish', 'closed', 'closed', '', 'field_5d5153fbac336', '', '', '2019-08-12 14:02:03', '2019-08-12 12:02:03', '', 63, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=65', 2, 'acf-field', '', 0),
(66, 1, '2019-08-12 13:58:29', '2019-08-12 11:58:29', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"35";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5d515424ac337', '', '', '2019-08-12 13:58:29', '2019-08-12 11:58:29', '', 65, 'http://omg.devlabs.cl//?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2019-08-12 13:58:29', '2019-08-12 11:58:29', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"65";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5d515445ac338', '', '', '2019-08-12 14:07:32', '2019-08-12 12:07:32', '', 65, 'http://omg.devlabs.cl//?post_type=acf-field&#038;p=67', 2, 'acf-field', '', 0),
(68, 1, '2019-08-12 14:00:17', '2019-08-12 12:00:17', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:00:17', '2019-08-12 12:00:17', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-08-12 14:00:17', '2019-08-12 12:00:17', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:00:17', '2019-08-12 12:00:17', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-08-12 14:00:21', '2019-08-12 12:00:21', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:00:21', '2019-08-12 12:00:21', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-08-12 14:00:21', '2019-08-12 12:00:21', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:00:21', '2019-08-12 12:00:21', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-08-12 14:02:03', '2019-08-12 12:02:03', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'SuperFoods Consumer', 'superfoods_consumer', 'publish', 'closed', 'closed', '', 'field_5d5154f19b015', '', '', '2019-08-12 14:02:03', '2019-08-12 12:02:03', '', 63, 'http://omg.devlabs.cl//?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2019-08-12 14:02:03', '2019-08-12 12:02:03', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Certifications', 'certifications', 'publish', 'closed', 'closed', '', 'field_5d5155249b016', '', '', '2019-08-12 14:02:03', '2019-08-12 12:02:03', '', 63, 'http://omg.devlabs.cl//?post_type=acf-field&p=73', 3, 'acf-field', '', 0),
(74, 1, '2019-08-12 14:03:19', '2019-08-12 12:03:19', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:19', '2019-08-12 12:03:19', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-08-12 14:03:19', '2019-08-12 12:03:19', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:19', '2019-08-12 12:03:19', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-08-12 14:03:41', '2019-08-12 12:03:41', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:41', '2019-08-12 12:03:41', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-08-12 14:03:41', '2019-08-12 12:03:41', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:41', '2019-08-12 12:03:41', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-08-12 14:03:44', '2019-08-12 12:03:44', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:44', '2019-08-12 12:03:44', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-08-12 14:03:44', '2019-08-12 12:03:44', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:03:44', '2019-08-12 12:03:44', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-08-12 14:04:56', '2019-08-12 12:04:56', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:04:56', '2019-08-12 12:04:56', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-08-12 14:04:56', '2019-08-12 12:04:56', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:04:56', '2019-08-12 12:04:56', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-08-12 14:07:32', '2019-08-12 12:07:32', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5d515677160d1', '', '', '2019-08-12 14:07:32', '2019-08-12 12:07:32', '', 65, 'http://omg.devlabs.cl//?post_type=acf-field&p=82', 1, 'acf-field', '', 0),
(83, 1, '2019-08-12 14:11:20', '2019-08-12 12:11:20', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:11:20', '2019-08-12 12:11:20', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-08-12 14:11:21', '2019-08-12 12:11:21', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:11:21', '2019-08-12 12:11:21', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-08-12 14:12:13', '2019-08-12 12:12:13', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:12:13', '2019-08-12 12:12:13', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-08-12 14:12:13', '2019-08-12 12:12:13', '', 'Private Label', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-12 14:12:13', '2019-08-12 12:12:13', '', 12, 'http://omg.devlabs.cl//index.php/2019/08/12/12-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-08-12 14:18:07', '2019-08-12 12:18:07', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"8";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_5d5158cdb718e', '', '', '2019-08-12 14:19:01', '2019-08-12 12:19:01', '', 0, 'http://omg.devlabs.cl//?post_type=acf-field-group&#038;p=87', 0, 'acf-field-group', '', 0),
(88, 1, '2019-08-12 14:18:07', '2019-08-12 12:18:07', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'About us', 'about_us', 'publish', 'closed', 'closed', '', 'field_5d5158d315b9c', '', '', '2019-08-12 14:18:07', '2019-08-12 12:18:07', '', 87, 'http://omg.devlabs.cl//?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2019-08-12 14:18:07', '2019-08-12 12:18:07', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Expertise', 'expertise', 'publish', 'closed', 'closed', '', 'field_5d5158e115b9d', '', '', '2019-08-12 14:18:07', '2019-08-12 12:18:07', '', 87, 'http://omg.devlabs.cl//?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2019-08-12 14:18:07', '2019-08-12 12:18:07', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Direct Sourcing', 'direct_sourcing', 'publish', 'closed', 'closed', '', 'field_5d5158eb15b9e', '', '', '2019-08-12 14:18:07', '2019-08-12 12:18:07', '', 87, 'http://omg.devlabs.cl//?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2019-08-12 14:19:21', '2019-08-12 12:19:21', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-12 14:19:21', '2019-08-12 12:19:21', '', 8, 'http://omg.devlabs.cl//index.php/2019/08/12/8-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-08-12 14:19:21', '2019-08-12 12:19:21', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-12 14:19:21', '2019-08-12 12:19:21', '', 8, 'http://omg.devlabs.cl//index.php/2019/08/12/8-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'color', '#73a325'),
(2, 3, '_color', 'field_5d4e033b306ca'),
(3, 4, 'color', '#077591'),
(4, 4, '_color', 'field_5d4e033b306ca'),
(5, 5, 'color', '#a0a0a0'),
(6, 5, '_color', 'field_5d4e033b306ca'),
(7, 6, 'color', '#7d0199'),
(8, 6, '_color', 'field_5d4e033b306ca'),
(9, 7, 'color', '#9ec42b'),
(10, 7, '_color', 'field_5d4e033b306ca'),
(11, 8, 'color', '#82761c'),
(12, 8, '_color', 'field_5d4e033b306ca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0),
(3, 'Protein Powder', 'protein-powder', 0),
(4, 'Superfoods Blends', 'superfoods-blends', 0),
(5, 'Superfoods', 'superfoods', 0),
(6, 'Cacao Products', 'cacao-products', 0),
(7, 'Coconut Products', 'coconut-products', 0),
(8, 'Seeds &amp; Grains', 'seeds-grains', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(34, 4, 0),
(38, 6, 0),
(60, 3, 0),
(61, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"dfe96c6e0434da661e462df1db3640565fa98c76cc313713c5ecff056ea09969";a:4:{s:10:"expiration";i:1565714113;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36";s:5:"login";i:1565541313;}s:64:"a132a8f13ba719bee578445b4716d7ecbd4c875a2c49d2df885ca1e7f92fbf51";a:4:{s:10:"expiration";i:1565783727;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36";s:5:"login";i:1565610927;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:22:"add-post-type-products";i:1;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1565548233'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:6:"normal";s:23:"acf-group_5d5153bdce96b";s:4:"side";s:0:"";s:8:"advanced";s:0:"";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjEU4Qk5QgL8AiD20g2WKMsojUpM5B.', 'admin', 'bgaete@innovaweb.cl', '', '2019-08-09 12:16:09', '', 0, 'admin');

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
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=806;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
