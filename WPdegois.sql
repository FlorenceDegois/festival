-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mer 30 Janvier 2013 à 14:00
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPdegois`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-11-27 15:48:28', '2012-11-27 15:48:28', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-15 16:28:43', '2013-01-15 16:28:43', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=257 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/~degois/wordpress-festival', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'florence.degois@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'yes'),
(36, 'home', 'http://127.0.0.1/~degois/wordpress-festival', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:88:"/mnt/home/degois/public_html/wordpress-festival/wp-content/themes/twentytwelve/style.css";i:1;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:9:"Programme";s:4:"text";s:712:"<p>Vendredi 24 septembre : 20h00</p>\r\n\r\n<p>\r\nSoirée d’ouverture : séance de courts métrages\r\nRencontre-débat avec un réalisateur.\r\n</p>\r\n<p>\r\nSamedi 25 septembre : 19h30                        \r\n</p>\r\n<p>\r\nDocumentaire :\r\nIt’s elementary, talking about gays issues in school\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\nRencontre-débat avec le Groupe Action Gay & Lesbien – Loiret sur les interventions en milieu scolaire.\r\n</p>\r\n<p>\r\nSamedi 25 septembre : 21h45\r\nFiction : Ander                                            \r\n</p>\r\n<p>\r\nDimanche 26 septembre : 16h00\r\nFiction : El niño pez<br /><br />\r\nDimanche 26 septembre : 18h00\r\nFiction : I can’t think straight\r\n</p>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:6:"text-2";i:1;s:10:"archives-2";i:2;s:12:"categories-2";i:3;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1359563328;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1359563412;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359564799;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1359549557;}', 'yes'),
(102, '_transient_random_seed', '0e86262d4b4921d388d189a0022f2a85', 'yes'),
(103, 'auth_key', 'gf6C#aGR^a: &#*.fuvT,v /yOP=i0E0[f8J:gzpmZK);`1bb[b*u_Oxs=s9c?*p', 'yes'),
(104, 'auth_salt', '*@7qr 6C+;9:]XBW*S&HhY|W/+MTZ~5f(?.?-<OXC6A|C%H^A41dI$AjrtY.Dspz', 'yes'),
(105, 'logged_in_key', ',XmV&h*rNDrC`X&WaJKka;Pj*WvyBSAV)C6V0XyM)CC&A/Fh)ymM?{YA-8vA%h|j', 'yes'),
(106, 'logged_in_salt', 'E$:^>,WZx&/h[tGInEM/qb(g8judha*D0(w|S.7z3Q%3VoKIY[a(OHB1.JYl7Ok$', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359549587;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359549617;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:43:"http://127.0.0.1/~degois/wordpress-festival";s:4:"link";s:119:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://127.0.0.1/~degois/wordpress-festival/";s:3:"url";s:152:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1/~degois/wordpress-festival/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '1I@Y+xXCnuJ>jIgdai d4NoS)k`Dy;@|:g9Kc1APqh+I)<opKrFIw$)D?hj?scLu', 'yes'),
(113, 'nonce_salt', 'Q]Du!WcW-~0`kBha,.v&>gEnnXgU5[cTOkqkbv#s__!_4poXgvy9nDe2E+NArz*2', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(128, 'category_children', 'a:0:{}', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358933103;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:10:"archives-2";i:2;s:12:"categories-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(184, '_site_transient_timeout_wporg_theme_feature_list', '1358944022', 'yes'),
(185, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(197, 'current_theme', 'Festival', 'yes'),
(198, 'theme_mods_festival', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(199, 'theme_switched', '', 'yes'),
(230, '_transient_timeout_plugin_slugs', '1359564890', 'no'),
(231, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'no'),
(242, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'yes'),
(243, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'yes'),
(244, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'yes'),
(245, 'slideshow-jquery-image-gallery-plugin-version', '2.1.23', 'yes'),
(247, '_site_transient_timeout_theme_roots', '1359551410', 'yes'),
(248, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(249, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1359592837', 'no'),
(250, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(251, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1359592837', 'no'),
(252, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(253, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1359592838', 'no'),
(254, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(255, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1359592848', 'no'),
(256, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=352 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1358870604:1'),
(4, 4, '_wp_page_template', 'default'),
(7, 1, '_wp_trash_meta_status', 'publish'),
(8, 1, '_wp_trash_meta_time', '1358268961'),
(9, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(10, 4, '_wp_trash_meta_status', 'publish'),
(11, 4, '_wp_trash_meta_time', '1358870743'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1358871023:1'),
(15, 9, '_wp_trash_meta_status', 'publish'),
(16, 9, '_wp_trash_meta_time', '1358871140'),
(17, 12, '_edit_last', '1'),
(18, 12, '_edit_lock', '1358871063:1'),
(19, 12, '_wp_page_template', 'default'),
(20, 14, '_menu_item_type', 'post_type'),
(21, 14, '_menu_item_menu_item_parent', '0'),
(22, 14, '_menu_item_object_id', '12'),
(23, 14, '_menu_item_object', 'page'),
(24, 14, '_menu_item_target', ''),
(25, 14, '_menu_item_classes', 'a:1:{i:0;s:5:"rouge";}'),
(26, 14, '_menu_item_xfn', ''),
(27, 14, '_menu_item_url', ''),
(29, 15, '_edit_last', '1'),
(31, 15, '_edit_lock', '1358872639:1'),
(33, 17, '_edit_last', '1'),
(34, 17, '_wp_page_template', 'default'),
(35, 17, '_edit_lock', '1358871203:1'),
(45, 19, '_edit_last', '1'),
(46, 19, '_edit_lock', '1358872635:1'),
(47, 19, '_wp_page_template', 'default'),
(57, 22, '_edit_last', '1'),
(58, 22, '_edit_lock', '1358871821:1'),
(59, 22, '_wp_page_template', 'default'),
(69, 25, '_edit_last', '1'),
(70, 25, '_wp_page_template', 'default'),
(71, 25, '_edit_lock', '1358872054:1'),
(72, 26, '_edit_last', '1'),
(73, 26, '_edit_lock', '1358931038:1'),
(84, 22, '_wp_trash_meta_status', 'publish'),
(85, 22, '_wp_trash_meta_time', '1358872553'),
(86, 25, '_wp_trash_meta_status', 'publish'),
(87, 25, '_wp_trash_meta_time', '1358872553'),
(88, 32, '_menu_item_type', 'taxonomy'),
(89, 32, '_menu_item_menu_item_parent', '0'),
(90, 32, '_menu_item_object_id', '2'),
(91, 32, '_menu_item_object', 'category'),
(92, 32, '_menu_item_target', ''),
(93, 32, '_menu_item_classes', 'a:1:{i:0;s:5:"jaune";}'),
(94, 32, '_menu_item_xfn', ''),
(95, 32, '_menu_item_url', ''),
(97, 33, '_menu_item_type', 'taxonomy'),
(98, 33, '_menu_item_menu_item_parent', '0'),
(99, 33, '_menu_item_object_id', '3'),
(100, 33, '_menu_item_object', 'category'),
(101, 33, '_menu_item_target', ''),
(102, 33, '_menu_item_classes', 'a:1:{i:0;s:6:"orange";}'),
(103, 33, '_menu_item_xfn', ''),
(104, 33, '_menu_item_url', ''),
(106, 15, '_wp_trash_meta_status', 'publish'),
(107, 15, '_wp_trash_meta_time', '1358872756'),
(108, 35, '_edit_last', '1'),
(109, 35, '_edit_lock', '1358930999:1'),
(115, 40, '_edit_last', '1'),
(116, 40, '_edit_lock', '1358935276:1'),
(118, 42, '_edit_last', '1'),
(119, 42, '_edit_lock', '1358935023:1'),
(121, 44, '_edit_last', '1'),
(122, 44, '_edit_lock', '1359448277:1'),
(124, 46, '_edit_last', '1'),
(125, 46, '_edit_lock', '1358934666:1'),
(127, 48, '_edit_last', '1'),
(128, 48, '_edit_lock', '1358934896:1'),
(130, 50, '_edit_last', '1'),
(131, 50, '_edit_lock', '1358934852:1'),
(133, 52, '_edit_last', '1'),
(134, 52, '_edit_lock', '1358934816:1'),
(136, 54, '_edit_last', '1'),
(137, 54, '_edit_lock', '1358934772:1'),
(139, 56, '_edit_last', '1'),
(140, 56, '_edit_lock', '1358934733:1'),
(142, 58, '_edit_last', '1'),
(143, 58, '_edit_lock', '1359447833:1'),
(145, 61, '_edit_last', '1'),
(146, 61, '_wp_page_template', 'default'),
(147, 61, '_edit_lock', '1358873317:1'),
(148, 62, '_edit_last', '1'),
(149, 62, '_edit_lock', '1358873360:1'),
(150, 62, '_wp_page_template', 'default'),
(151, 64, '_menu_item_type', 'post_type'),
(152, 64, '_menu_item_menu_item_parent', '0'),
(153, 64, '_menu_item_object_id', '61'),
(154, 64, '_menu_item_object', 'page'),
(155, 64, '_menu_item_target', ''),
(156, 64, '_menu_item_classes', 'a:1:{i:0;s:4:"vert";}'),
(157, 64, '_menu_item_xfn', ''),
(158, 64, '_menu_item_url', ''),
(160, 65, '_menu_item_type', 'post_type'),
(161, 65, '_menu_item_menu_item_parent', '0'),
(162, 65, '_menu_item_object_id', '62'),
(163, 65, '_menu_item_object', 'page'),
(164, 65, '_menu_item_target', ''),
(165, 65, '_menu_item_classes', 'a:1:{i:0;s:5:"bleuc";}'),
(166, 65, '_menu_item_xfn', ''),
(167, 65, '_menu_item_url', ''),
(169, 69, '_edit_last', '1'),
(170, 69, '_wp_page_template', 'default'),
(171, 69, '_edit_lock', '1358873375:1'),
(210, 102, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(211, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(212, 58, '_thumbnail_id', '102'),
(214, 104, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(215, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(216, 105, '_wp_attached_file', '2013/01/EL-NINO-PEZ-2.jpg'),
(217, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:4370;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-2-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-624x923.jpg";s:5:"width";i:624;s:6:"height";i:923;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(218, 56, '_thumbnail_id', '105'),
(220, 107, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(221, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(222, 54, '_thumbnail_id', '107'),
(224, 109, '_wp_attached_file', '2013/01/American-boy.png'),
(225, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(226, 52, '_thumbnail_id', '109'),
(228, 111, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(229, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(230, 50, '_thumbnail_id', '111'),
(232, 113, '_wp_attached_file', '2013/01/Odile-.jpg'),
(233, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(234, 46, '_thumbnail_id', '113'),
(237, 117, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(238, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(239, 44, '_thumbnail_id', '117'),
(241, 119, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(242, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(243, 42, '_thumbnail_id', '119'),
(245, 121, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(246, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(247, 40, '_thumbnail_id', '121'),
(250, 58, 'annee', '2007'),
(251, 58, 'duree', '01h20'),
(252, 58, 'type', 'Comédie romantique'),
(253, 58, 'lieux', 'Grande Bretagne'),
(254, 58, 'langue', 'VOSTF'),
(255, 58, 'acteurs', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(259, 56, 'annee', '2088'),
(260, 56, 'duree', '01h36'),
(261, 56, 'langue', 'VOSTF'),
(262, 56, 'lieux', 'Argentine'),
(263, 56, 'acteurs', 'Inés Efron, Mariela Vitale, Pep Munne'),
(265, 54, 'annee', '2009'),
(266, 54, 'duree', '02h08'),
(267, 54, 'langue', 'VOSTF'),
(268, 54, 'lieux', 'Espagne'),
(269, 54, 'acteurs', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(271, 52, 'annee', '2008'),
(272, 52, 'duree', '4 minutes'),
(274, 50, 'annee', '2006'),
(275, 50, 'duree', '26 minutes'),
(277, 48, 'duree', '17 minutes'),
(278, 48, 'langue', 'VOSTF'),
(280, 46, 'realisateur', 'Bénédicte Delgéhier'),
(281, 46, 'annee', '2006'),
(282, 46, 'duree', '10 minutes'),
(283, 46, 'lieux', 'France'),
(285, 58, 'realisateur', 'Shamim Sarif'),
(287, 56, 'realisateur', 'Lucía Puenzo'),
(289, 54, 'realisateur', 'Roberto Castón'),
(292, 52, 'lieux', 'France'),
(293, 52, 'realisateur', 'Patricia & Colette'),
(295, 50, 'realisateur', 'Jean Baptiste Erreca'),
(296, 50, 'lieux', 'France'),
(298, 48, 'realisateur', 'René Guerra Luiz'),
(299, 48, 'lieux', 'Brésil'),
(300, 48, 'annee', '2008'),
(302, 44, 'annee', '2009'),
(303, 44, 'lieux', 'France'),
(304, 44, 'duree', '9 minutes'),
(305, 44, 'realisateur', 'Sébastien Gabriel'),
(307, 42, 'realisateur', 'Céline Sciamma'),
(308, 42, 'lieux', 'France'),
(309, 42, 'annee', '2009'),
(310, 42, 'duree', '7 minutes'),
(312, 40, 'realisateur', 'Pascal-Alex Vincent'),
(313, 40, 'lieux', 'France'),
(314, 40, 'annee', '2009'),
(315, 40, 'duree', '8 minutes'),
(317, 147, '_menu_item_type', 'taxonomy'),
(318, 147, '_menu_item_menu_item_parent', '0'),
(319, 147, '_menu_item_object_id', '3'),
(320, 147, '_menu_item_object', 'category'),
(321, 147, '_menu_item_target', ''),
(322, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(323, 147, '_menu_item_xfn', ''),
(324, 147, '_menu_item_url', ''),
(325, 147, '_menu_item_orphaned', '1359445954'),
(326, 148, '_menu_item_type', 'taxonomy'),
(327, 148, '_menu_item_menu_item_parent', '0'),
(328, 148, '_menu_item_object_id', '2'),
(329, 148, '_menu_item_object', 'category'),
(330, 148, '_menu_item_target', ''),
(331, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(332, 148, '_menu_item_xfn', ''),
(333, 148, '_menu_item_url', ''),
(334, 148, '_menu_item_orphaned', '1359445954'),
(335, 149, '_menu_item_type', 'post_type'),
(336, 149, '_menu_item_menu_item_parent', '0'),
(337, 149, '_menu_item_object_id', '69'),
(338, 149, '_menu_item_object', 'page'),
(339, 149, '_menu_item_target', ''),
(340, 149, '_menu_item_classes', 'a:1:{i:0;s:6:"violet";}'),
(341, 149, '_menu_item_xfn', ''),
(342, 149, '_menu_item_url', ''),
(347, 153, 'settings', 'a:17:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:13:"slidesPerView";s:1:"1";s:5:"width";s:1:"0";s:6:"height";s:3:"400";s:17:"descriptionHeight";s:2:"50";s:13:"stretchImages";s:4:"true";s:12:"controllable";s:4:"true";s:12:"controlPanel";s:5:"false";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(348, 153, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(349, 153, 'slides', 'a:4:{i:1;a:7:{s:5:"title";s:6:"ANDER1";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"107";s:5:"order";s:0:"";}i:2;a:7:{s:5:"title";s:5:"Odile";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"113";s:5:"order";s:0:"";}i:3;a:7:{s:5:"title";s:9:"PAULINE_1";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"119";s:5:"order";s:0:"";}i:4;a:7:{s:5:"title";s:5:"OMAR_";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"117";s:5:"order";s:0:"";}}'),
(350, 153, '_edit_last', '1'),
(351, 153, '_edit_lock', '1359549635:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-15 16:28:43', '2013-01-15 16:28:43', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-15 17:56:01', '2013-01-15 16:56:01', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=1', 0, 'post', '', 1),
(4, 1, '2013-01-15 17:54:20', '2013-01-15 16:54:20', '&nbsp;\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une\r\n\r\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\r\n\r\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\r\n\r\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\r\n\r\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\r\n\r\nweek-end de trois jours, format similaire aux éditions précédentes.\r\n\r\nCette année, l’événement aura pour thème la sensibilisation des\r\n\r\njeunes à la lutte contre les discriminations liées à l’orientation\r\n\r\nsexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous  : 5  séances inédites au cinéma\r\n\r\nLes Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été\r\n\r\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\r\n\r\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\r\n\r\ncontre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays\r\n\r\nissues in school (C’est élémentaire - Parler de l’homosexualité à\r\n\r\nl’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes\r\n\r\npassions que le film d’animation Le baiser de la lune en France\r\n\r\nen  2010. La projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\r\n\r\nlong métrage espagnol mettant en scène une histoire d’amour entre\r\n\r\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\r\n\r\nroad-movie lesbien version argentine et I can’t think straight, une\r\n\r\nsavoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Édito', '', 'trash', 'open', 'open', '', 'edito', '', '', '2013-01-22 17:05:43', '2013-01-22 16:05:43', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=4', 0, 'page', '', 0),
(5, 1, '2013-01-15 17:53:32', '2013-01-15 16:53:32', '', 'Édito', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2013-01-15 17:53:32', '2013-01-15 16:53:32', '', 4, 'http://127.0.0.1/~degois/wordpress-festival/?p=5', 0, 'revision', '', 0),
(7, 1, '2013-01-15 16:28:43', '2013-01-15 16:28:43', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-15 16:28:43', '2013-01-15 16:28:43', '', 1, 'http://127.0.0.1/~degois/wordpress-festival/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-15 17:54:20', '2013-01-15 16:54:20', '&nbsp;\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une\r\n\r\nannée sabbatique, le Festival de films gays &amp; lesbiens revient sous\r\n\r\nune nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,\r\n\r\nl’association culturelle Ciné Mundi axée sur le cinéma indépendant,\r\n\r\nlance en 2010 le festival de films LGBT D’un bord à l’autre sur un\r\n\r\nweek-end de trois jours, format similaire aux éditions précédentes.\r\n\r\nCette année, l’événement aura pour thème la sensibilisation des\r\n\r\njeunes à la lutte contre les discriminations liées à l’orientation\r\n\r\nsexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous  : 5  séances inédites au cinéma\r\n\r\nLes Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été\r\n\r\nréalisés dans le cadre de Jeune et homo sous le regard des autres,\r\n\r\nconcours organisé en 2009 par le Ministère de la Santé et l’INPES\r\n\r\ncontre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays\r\n\r\nissues in school (C’est élémentaire - Parler de l’homosexualité à\r\n\r\nl’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes\r\n\r\npassions que le film d’animation Le baiser de la lune en France\r\n\r\nen  2010. La projection sera suivie d’un débat avec l’association\r\n\r\nG.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un\r\n\r\nlong métrage espagnol mettant en scène une histoire d’amour entre\r\n\r\nun paysan basque et un immigré péruvien, El niño pez, un surprenant\r\n\r\nroad-movie lesbien version argentine et I can’t think straight, une\r\n\r\nsavoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Édito', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2013-01-15 17:54:20', '2013-01-15 16:54:20', '', 4, 'http://127.0.0.1/~degois/wordpress-festival/?p=8', 0, 'revision', '', 0),
(9, 1, '2013-01-22 17:07:52', '2013-01-22 16:07:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'trash', 'open', 'open', '', 'edito', '', '', '2013-01-22 17:12:20', '2013-01-22 16:12:20', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=9', 0, 'post', '', 0),
(10, 1, '2013-01-22 17:07:28', '2013-01-22 16:07:28', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', '', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2013-01-22 17:07:28', '2013-01-22 16:07:28', '', 9, 'http://127.0.0.1/~degois/wordpress-festival/?p=10', 0, 'revision', '', 0),
(11, 1, '2013-01-22 17:07:52', '2013-01-22 16:07:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '9-revision-2', '', '', '2013-01-22 17:07:52', '2013-01-22 16:07:52', '', 9, 'http://127.0.0.1/~degois/wordpress-festival/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-22 17:12:50', '2013-01-22 16:12:50', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'open', 'open', '', 'edito-2', '', '', '2013-01-22 17:12:50', '2013-01-22 16:12:50', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=12', 0, 'page', '', 0),
(13, 1, '2013-01-22 17:12:37', '2013-01-22 16:12:37', '', 'Edito', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2013-01-22 17:12:37', '2013-01-22 16:12:37', '', 12, 'http://127.0.0.1/~degois/wordpress-festival/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-22 17:13:07', '2013-01-22 16:13:07', ' ', '', '', 'publish', 'open', 'open', '', '14', '', '', '2013-01-29 09:22:40', '2013-01-29 08:22:40', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2013-01-22 17:13:43', '2013-01-22 16:13:43', 'Festival de films gays et lesbiens', 'Festival LGBT', '', 'trash', 'open', 'open', '', '15', '', '', '2013-01-22 17:39:16', '2013-01-22 16:39:16', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=15', 0, 'post', '', 0),
(16, 1, '2013-01-22 17:13:43', '2013-01-22 16:13:43', 'Festival de films gays et lesbiens', '', '', 'inherit', 'open', 'open', '', '15-revision', '', '', '2013-01-22 17:13:43', '2013-01-22 16:13:43', '', 15, 'http://127.0.0.1/~degois/wordpress-festival/?p=16', 0, 'revision', '', 0),
(17, 1, '2013-01-22 17:15:14', '2013-01-22 16:15:14', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire. Samedi 25 septembre : 21h45 Fiction : Ander\r\n\r\nDimanche 26 septembre : 16h00 Fiction : El niño pez Dimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'publish', 'open', 'open', '', 'agenda', '', '', '2013-01-22 17:15:14', '2013-01-22 16:15:14', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=17', 0, 'page', '', 0),
(19, 1, '2013-01-22 17:16:26', '2013-01-22 16:16:26', 'Festival de films gays et lesbiens', 'Festival LGBT', '', 'publish', 'open', 'open', '', 'festival-lgbt', '', '', '2013-01-22 17:16:26', '2013-01-22 16:16:26', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=19', 0, 'page', '', 0),
(20, 1, '2013-01-22 17:16:18', '2013-01-22 16:16:18', '', 'Festival LGBT', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2013-01-22 17:16:18', '2013-01-22 16:16:18', '', 19, 'http://127.0.0.1/~degois/wordpress-festival/?p=20', 0, 'revision', '', 0),
(22, 1, '2013-01-22 17:25:29', '2013-01-22 16:25:29', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Courts-metrage', '', 'trash', 'open', 'open', '', 'courts-metrage', '', '', '2013-01-22 17:35:53', '2013-01-22 16:35:53', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=22', 0, 'page', '', 0),
(23, 1, '2013-01-22 17:25:08', '2013-01-22 16:25:08', '', 'Courts ', '', 'inherit', 'open', 'open', '', '22-revision', '', '', '2013-01-22 17:25:08', '2013-01-22 16:25:08', '', 22, 'http://127.0.0.1/~degois/wordpress-festival/?p=23', 0, 'revision', '', 0),
(25, 1, '2013-01-22 17:27:02', '2013-01-22 16:27:02', '', 'Films', '', 'trash', 'open', 'open', '', 'films', '', '', '2013-01-22 17:35:53', '2013-01-22 16:35:53', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=25', 0, 'page', '', 0),
(26, 1, '2013-01-22 17:28:20', '2013-01-22 16:28:20', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=95" rel="attachment wp-att-95"><img class="alignnone size-full wp-image-95" alt="ItsElementaryGBan" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/ItsElementaryGBan.jpg" width="259" height="221" /></a>\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'open', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-23 09:52:30', '2013-01-23 08:52:30', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=26', 0, 'post', '', 0),
(27, 1, '2013-01-22 17:27:54', '2013-01-22 16:27:54', '', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2013-01-22 17:27:54', '2013-01-22 16:27:54', '', 26, 'http://127.0.0.1/~degois/wordpress-festival/?p=27', 0, 'revision', '', 0),
(29, 1, '2013-01-22 17:53:05', '2013-01-22 16:53:05', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-autosave', '', '', '2013-01-22 17:53:05', '2013-01-22 16:53:05', '', 26, 'http://127.0.0.1/~degois/wordpress-festival/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-22 17:25:29', '2013-01-22 16:25:29', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Courts-metrage', '', 'inherit', 'open', 'open', '', '22-revision-2', '', '', '2013-01-22 17:25:29', '2013-01-22 16:25:29', '', 22, 'http://127.0.0.1/~degois/wordpress-festival/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-22 17:27:02', '2013-01-22 16:27:02', '', 'Films', '', 'inherit', 'open', 'open', '', '25-revision', '', '', '2013-01-22 17:27:02', '2013-01-22 16:27:02', '', 25, 'http://127.0.0.1/~degois/wordpress-festival/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-22 17:37:10', '2013-01-22 16:37:10', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2013-01-29 09:22:41', '2013-01-29 08:22:41', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2013-01-22 17:37:09', '2013-01-22 16:37:09', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2013-01-29 09:22:41', '2013-01-29 08:22:41', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2013-01-22 17:13:58', '2013-01-22 16:13:58', 'Festival de films gays et lesbiens', 'Festival LGBT', '', 'inherit', 'open', 'open', '', '15-revision-2', '', '', '2013-01-22 17:13:58', '2013-01-22 16:13:58', '', 15, 'http://127.0.0.1/~degois/wordpress-festival/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-22 17:40:01', '2013-01-22 16:40:01', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'publish', 'open', 'open', '', 'intro', '', '', '2013-01-22 17:41:26', '2013-01-22 16:41:26', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=35', 0, 'post', '', 0),
(36, 1, '2013-01-22 17:39:53', '2013-01-22 16:39:53', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'open', 'open', '', '35-revision', '', '', '2013-01-22 17:39:53', '2013-01-22 16:39:53', '', 35, 'http://127.0.0.1/~degois/wordpress-festival/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-22 17:40:01', '2013-01-22 16:40:01', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'open', 'open', '', '35-revision-2', '', '', '2013-01-22 17:40:01', '2013-01-22 16:40:01', '', 35, 'http://127.0.0.1/~degois/wordpress-festival/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-01-22 17:41:07', '2013-01-22 16:41:07', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'open', 'open', '', '35-revision-3', '', '', '2013-01-22 17:41:07', '2013-01-22 16:41:07', '', 35, 'http://127.0.0.1/~degois/wordpress-festival/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-22 17:41:13', '2013-01-22 16:41:13', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'open', 'open', '', '35-revision-4', '', '', '2013-01-22 17:41:13', '2013-01-22 16:41:13', '', 35, 'http://127.0.0.1/~degois/wordpress-festival/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-22 17:42:04', '2013-01-22 16:42:04', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'open', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-01-23 10:59:53', '2013-01-23 09:59:53', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=40', 0, 'post', '', 0),
(41, 1, '2013-01-22 17:42:02', '2013-01-22 16:42:02', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '40-revision', '', '', '2013-01-22 17:42:02', '2013-01-22 16:42:02', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-22 17:42:58', '2013-01-22 16:42:58', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'open', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-01-23 10:58:53', '2013-01-23 09:58:53', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=42', 0, 'post', '', 0),
(43, 1, '2013-01-22 17:42:52', '2013-01-22 16:42:52', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '42-revision', '', '', '2013-01-22 17:42:52', '2013-01-22 16:42:52', '', 42, 'http://127.0.0.1/~degois/wordpress-festival/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-22 17:43:25', '2013-01-22 16:43:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'open', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-01-29 09:26:54', '2013-01-29 08:26:54', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=44', 0, 'post', '', 0),
(45, 1, '2013-01-22 17:43:11', '2013-01-22 16:43:11', '', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '44-revision', '', '', '2013-01-22 17:43:11', '2013-01-22 16:43:11', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-22 17:43:49', '2013-01-22 16:43:49', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'open', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-01-23 10:52:58', '2013-01-23 09:52:58', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=46', 0, 'post', '', 0),
(47, 1, '2013-01-22 17:43:36', '2013-01-22 16:43:36', '', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision', '', '', '2013-01-22 17:43:36', '2013-01-22 16:43:36', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-22 17:44:17', '2013-01-22 16:44:17', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'publish', 'open', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-01-23 10:56:48', '2013-01-23 09:56:48', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=48', 0, 'post', '', 0),
(49, 1, '2013-01-22 17:44:04', '2013-01-22 16:44:04', '', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '48-revision', '', '', '2013-01-22 17:44:04', '2013-01-22 16:44:04', '', 48, 'http://127.0.0.1/~degois/wordpress-festival/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-22 17:44:45', '2013-01-22 16:44:45', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'publish', 'open', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-01-23 10:56:04', '2013-01-23 09:56:04', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=50', 0, 'post', '', 0),
(51, 1, '2013-01-22 17:44:32', '2013-01-22 16:44:32', '', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision', '', '', '2013-01-22 17:44:32', '2013-01-22 16:44:32', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-01-22 17:45:12', '2013-01-22 16:45:12', 'Comment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'open', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-01-23 10:55:26', '2013-01-23 09:55:26', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=52', 0, 'post', '', 0),
(53, 1, '2013-01-22 17:44:56', '2013-01-22 16:44:56', '', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision', '', '', '2013-01-22 17:44:56', '2013-01-22 16:44:56', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-22 17:46:31', '2013-01-22 16:46:31', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale.\r\n\r\nAlors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'Ander', '', 'publish', 'open', 'open', '', 'ander-realise-par-roberto-caston', '', '', '2013-01-23 10:54:44', '2013-01-23 09:54:44', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=54', 0, 'post', '', 0),
(55, 1, '2013-01-22 17:45:37', '2013-01-22 16:45:37', '', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-revision', '', '', '2013-01-22 17:45:37', '2013-01-22 16:45:37', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-22 17:47:22', '2013-01-22 16:47:22', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\r\n\r\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'open', 'open', '', 'el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-01-23 10:53:53', '2013-01-23 09:53:53', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=56', 0, 'post', '', 0),
(57, 1, '2013-01-22 17:47:06', '2013-01-22 16:47:06', '', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision', '', '', '2013-01-22 17:47:06', '2013-01-22 16:47:06', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-22 17:47:49', '2013-01-22 16:47:49', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'publish', 'open', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-01-23 10:53:27', '2013-01-23 09:53:27', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=58', 0, 'post', '', 0),
(59, 1, '2013-01-22 17:47:33', '2013-01-22 16:47:33', '', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision', '', '', '2013-01-22 17:47:33', '2013-01-22 16:47:33', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=59', 0, 'revision', '', 0),
(61, 1, '2013-01-22 17:48:35', '2013-01-22 16:48:35', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec\r\n\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc\r\n\r\nImpression : Prevost Offset\r\n\r\nContacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'open', 'open', '', 'infos-pratiques', '', '', '2013-01-22 17:50:25', '2013-01-22 16:50:25', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=61', 0, 'page', '', 0),
(62, 1, '2013-01-22 17:49:04', '2013-01-22 16:49:04', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'open', 'open', '', 'remerciements', '', '', '2013-01-22 17:51:05', '2013-01-22 16:51:05', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=62', 0, 'page', '', 0),
(63, 1, '2013-01-22 17:48:49', '2013-01-22 16:48:49', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '62-revision', '', '', '2013-01-22 17:48:49', '2013-01-22 16:48:49', '', 62, 'http://127.0.0.1/~degois/wordpress-festival/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-22 17:49:21', '2013-01-22 16:49:21', ' ', '', '', 'publish', 'open', 'open', '', '64', '', '', '2013-01-29 09:22:41', '2013-01-29 08:22:41', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=64', 4, 'nav_menu_item', '', 0),
(65, 1, '2013-01-22 17:49:21', '2013-01-22 16:49:21', ' ', '', '', 'publish', 'open', 'open', '', '65', '', '', '2013-01-29 09:22:41', '2013-01-29 08:22:41', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2013-01-22 17:48:35', '2013-01-22 16:48:35', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans… Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '61-revision', '', '', '2013-01-22 17:48:35', '2013-01-22 16:48:35', '', 61, 'http://127.0.0.1/~degois/wordpress-festival/?p=66', 0, 'revision', '', 0),
(67, 1, '2013-01-22 17:49:47', '2013-01-22 16:49:47', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '61-revision-2', '', '', '2013-01-22 17:49:47', '2013-01-22 16:49:47', '', 61, 'http://127.0.0.1/~degois/wordpress-festival/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-22 17:49:04', '2013-01-22 16:49:04', '- La Région Centre - La Mairie d''Orléans - Le cinéma des Carmes - Le Groupe Action Gay &amp; Lesbien - Loiret - Citégay - La dixième Muse - Têtu - Yagg.com - France Bleu Orléans - Bagdam Espace Lesbien ( Toulouse ) - Cineffable - Le Festival Tous Courts ( Aix en Provence ) - Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '62-revision-2', '', '', '2013-01-22 17:49:04', '2013-01-22 16:49:04', '', 62, 'http://127.0.0.1/~degois/wordpress-festival/?p=68', 0, 'revision', '', 0),
(69, 1, '2013-01-22 17:51:25', '2013-01-22 16:51:25', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'publish', 'open', 'open', '', 'partenaires', '', '', '2013-01-22 17:51:25', '2013-01-22 16:51:25', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?page_id=69', 0, 'page', '', 0),
(70, 1, '2013-01-22 17:47:49', '2013-01-22 16:47:49', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-2', '', '', '2013-01-22 17:47:49', '2013-01-22 16:47:49', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-22 17:57:08', '2013-01-22 16:57:08', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-3', '', '', '2013-01-22 17:57:08', '2013-01-22 16:57:08', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=71', 0, 'revision', '', 0),
(72, 1, '2013-01-22 17:57:34', '2013-01-22 16:57:34', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-4', '', '', '2013-01-22 17:57:34', '2013-01-22 16:57:34', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-22 17:47:22', '2013-01-22 16:47:22', 'Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision-2', '', '', '2013-01-22 17:47:22', '2013-01-22 16:47:22', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=73', 0, 'revision', '', 0),
(75, 1, '2013-01-22 17:58:05', '2013-01-22 16:58:05', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-5', '', '', '2013-01-22 17:58:05', '2013-01-22 16:58:05', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-23 09:45:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-23 09:45:16', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=76', 0, 'post', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2013-01-22 17:58:33', '2013-01-22 16:58:33', 'Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\r\n\r\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision-3', '', '', '2013-01-22 17:58:33', '2013-01-22 16:58:33', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=79', 0, 'revision', '', 0),
(82, 1, '2013-01-22 17:46:31', '2013-01-22 16:46:31', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-revision-2', '', '', '2013-01-22 17:46:31', '2013-01-22 16:46:31', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=82', 0, 'revision', '', 0),
(84, 1, '2013-01-22 17:45:13', '2013-01-22 16:45:13', '2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision-2', '', '', '2013-01-22 17:45:13', '2013-01-22 16:45:13', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=84', 0, 'revision', '', 0),
(86, 1, '2013-01-22 17:44:45', '2013-01-22 16:44:45', '2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision-2', '', '', '2013-01-22 17:44:45', '2013-01-22 16:44:45', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=86', 0, 'revision', '', 0),
(88, 1, '2013-01-22 17:43:49', '2013-01-22 16:43:49', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision-2', '', '', '2013-01-22 17:43:49', '2013-01-22 16:43:49', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=88', 0, 'revision', '', 0),
(90, 1, '2013-01-22 17:43:25', '2013-01-22 16:43:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '44-revision-2', '', '', '2013-01-22 17:43:25', '2013-01-22 16:43:25', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=90', 0, 'revision', '', 0),
(92, 1, '2013-01-22 17:42:58', '2013-01-22 16:42:58', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '42-revision-2', '', '', '2013-01-22 17:42:58', '2013-01-22 16:42:58', '', 42, 'http://127.0.0.1/~degois/wordpress-festival/?p=92', 0, 'revision', '', 0),
(94, 1, '2013-01-22 17:42:04', '2013-01-22 16:42:04', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '40-revision-2', '', '', '2013-01-22 17:42:04', '2013-01-22 16:42:04', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/?p=94', 0, 'revision', '', 0),
(96, 1, '2013-01-22 17:28:20', '2013-01-22 16:28:20', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-2', '', '', '2013-01-22 17:28:20', '2013-01-22 16:28:20', '', 26, 'http://127.0.0.1/~degois/wordpress-festival/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-23 09:52:23', '2013-01-23 08:52:23', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=95" rel="attachment wp-att-95"><img class="alignnone size-full wp-image-95" alt="ItsElementaryGBan" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/ItsElementaryGBan.jpg" width="259" height="221" /></a>(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-3', '', '', '2013-01-23 09:52:23', '2013-01-23 08:52:23', '', 26, 'http://127.0.0.1/~degois/wordpress-festival/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-23 09:47:49', '2013-01-23 08:47:49', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=83" rel="attachment wp-att-83"><img class="alignnone size-medium wp-image-83" alt="American boy" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/American-boy-300x200.png" width="300" height="200" /></a>2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision-3', '', '', '2013-01-23 09:47:49', '2013-01-23 08:47:49', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-23 09:48:11', '2013-01-23 08:48:11', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=85" rel="attachment wp-att-85"><img class="alignnone size-medium wp-image-85" alt="COWBOY FOREVER" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/COWBOY-FOREVER-300x200.jpg" width="300" height="200" /></a>2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision-3', '', '', '2013-01-23 09:48:11', '2013-01-23 08:48:11', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-23 09:49:29', '2013-01-23 08:49:29', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=87" rel="attachment wp-att-87"><img class="alignnone size-medium wp-image-87" alt="Odile" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/Odile--300x203.jpg" width="300" height="203" /></a>Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision-3', '', '', '2013-01-23 09:49:29', '2013-01-23 08:49:29', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=100', 0, 'revision', '', 0),
(101, 1, '2013-01-23 09:54:40', '2013-01-23 08:54:40', '17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '48-autosave', '', '', '2013-01-23 09:54:40', '2013-01-23 08:54:40', '', 48, 'http://127.0.0.1/~degois/wordpress-festival/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-23 09:55:27', '2013-01-23 08:55:27', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-23 09:55:27', '2013-01-23 08:55:27', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2013-01-23 09:45:00', '2013-01-23 08:45:00', '[gallery ids="74"]\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-6', '', '', '2013-01-23 09:45:00', '2013-01-23 08:45:00', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-23 09:56:11', '2013-01-23 08:56:11', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1', '', '', '2013-01-23 09:56:11', '2013-01-23 08:56:11', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2013-01-23 09:56:13', '2013-01-23 08:56:13', '', 'EL NINO PEZ  2', '', 'inherit', 'open', 'open', '', 'el-nino-pez-2', '', '', '2013-01-23 09:56:13', '2013-01-23 08:56:13', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EL-NINO-PEZ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2013-01-23 09:46:18', '2013-01-23 08:46:18', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=77" rel="attachment wp-att-77"><img class="alignnone size-medium wp-image-77" alt="EL NINO PEZ 1" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EL-NINO-PEZ-1-300x204.jpg" width="300" height="204" /></a> <a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=78" rel="attachment wp-att-78"><img class="alignnone size-medium wp-image-78" alt="EL NINO PEZ  2" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EL-NINO-PEZ-2-202x300.jpg" width="202" height="300" /></a>\r\n\r\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\r\n\r\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision-4', '', '', '2013-01-23 09:46:18', '2013-01-23 08:46:18', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-23 09:57:20', '2013-01-23 08:57:20', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-23 09:57:20', '2013-01-23 08:57:20', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2013-01-23 09:46:58', '2013-01-23 08:46:58', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=80" rel="attachment wp-att-80"><img class="alignnone size-medium wp-image-80" alt="ANDER1" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/ANDER1-300x168.jpg" width="300" height="168" /></a> <a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=81" rel="attachment wp-att-81"><img class="alignnone size-medium wp-image-81" alt="ANDER2" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/ANDER2-300x168.jpg" width="300" height="168" /></a>Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-revision-3', '', '', '2013-01-23 09:46:58', '2013-01-23 08:46:58', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=108', 0, 'revision', '', 0),
(109, 1, '2013-01-23 09:57:58', '2013-01-23 08:57:58', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy', '', '', '2013-01-23 09:57:58', '2013-01-23 08:57:58', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2013-01-23 09:52:46', '2013-01-23 08:52:46', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=83" rel="attachment wp-att-83"><img class="alignnone size-medium wp-image-83" alt="American boy" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/American-boy-300x200.png" width="300" height="200" /></a>\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision-4', '', '', '2013-01-23 09:52:46', '2013-01-23 08:52:46', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-23 09:58:30', '2013-01-23 08:58:30', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever', '', '', '2013-01-23 09:58:30', '2013-01-23 08:58:30', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2013-01-23 09:53:05', '2013-01-23 08:53:05', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=85" rel="attachment wp-att-85"><img class="alignnone size-medium wp-image-85" alt="COWBOY FOREVER" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/COWBOY-FOREVER-300x200.jpg" width="300" height="200" /></a>\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision-4', '', '', '2013-01-23 09:53:05', '2013-01-23 08:53:05', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-23 10:00:00', '2013-01-23 09:00:00', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile', '', '', '2013-01-23 10:00:00', '2013-01-23 09:00:00', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2013-01-23 10:52:45', '2013-01-23 09:52:45', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  -  - France - - ', '', 'inherit', 'open', 'open', '', '46-autosave', '', '', '2013-01-23 10:52:45', '2013-01-23 09:52:45', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-23 09:53:21', '2013-01-23 08:53:21', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=87" rel="attachment wp-att-87"><img class="alignnone size-medium wp-image-87" alt="Odile" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/Odile--300x203.jpg" width="300" height="203" /></a>\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision-4', '', '', '2013-01-23 09:53:21', '2013-01-23 08:53:21', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-23 10:00:04', '2013-01-23 09:00:04', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=87" rel="attachment wp-att-87"><img class="alignnone size-medium wp-image-87" alt="Odile" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/Odile--300x203.jpg" width="300" height="203" /></a>\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision-5', '', '', '2013-01-23 10:00:04', '2013-01-23 09:00:04', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-23 10:00:57', '2013-01-23 09:00:57', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-23 10:00:57', '2013-01-23 09:00:57', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2013-01-23 09:50:10', '2013-01-23 08:50:10', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=89" rel="attachment wp-att-89"><img class="alignnone size-medium wp-image-89" alt="OMAR_" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/OMAR_-300x200.jpg" width="300" height="200" /></a>\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '44-revision-3', '', '', '2013-01-23 09:50:10', '2013-01-23 08:50:10', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-23 10:01:23', '2013-01-23 09:01:23', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-23 10:01:23', '2013-01-23 09:01:23', '', 42, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2013-01-23 09:50:44', '2013-01-23 08:50:44', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=91" rel="attachment wp-att-91"><img class="alignnone size-medium wp-image-91" alt="PAULINE_1" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/PAULINE_1-300x200.jpg" width="300" height="200" /></a>\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '42-revision-3', '', '', '2013-01-23 09:50:44', '2013-01-23 08:50:44', '', 42, 'http://127.0.0.1/~degois/wordpress-festival/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-23 10:02:38', '2013-01-23 09:02:38', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-23 10:02:38', '2013-01-23 09:02:38', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2013-01-23 09:51:43', '2013-01-23 08:51:43', '<a href="http://127.0.0.1/~degois/wordpress-festival/?attachment_id=93" rel="attachment wp-att-93"><img class="alignnone size-medium wp-image-93" alt="EN_COLOricco" src="http://127.0.0.1/~degois/wordpress-festival/wp-content/uploads/2013/01/EN_COLOricco-300x196.jpg" width="300" height="196" /></a>\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '40-revision-3', '', '', '2013-01-23 09:51:43', '2013-01-23 08:51:43', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-23 09:55:45', '2013-01-23 08:55:45', '[gallery ids="74"]\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-7', '', '', '2013-01-23 09:55:45', '2013-01-23 08:55:45', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-29 09:25:29', '2013-01-29 08:25:29', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\n\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\n&nbsp;\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '58-autosave', '', '', '2013-01-29 09:25:29', '2013-01-29 08:25:29', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-23 10:04:53', '2013-01-23 09:04:53', '&nbsp;\r\n\r\nGrande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-8', '', '', '2013-01-23 10:04:53', '2013-01-23 09:04:53', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-23 10:11:29', '2013-01-23 09:11:29', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-9', '', '', '2013-01-23 10:11:29', '2013-01-23 09:11:29', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-01-23 10:35:18', '2013-01-23 09:35:18', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-10', '', '', '2013-01-23 10:35:18', '2013-01-23 09:35:18', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-23 10:46:02', '2013-01-23 09:46:02', '&nbsp;\n\nArgentine -  -  -  Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\n\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\n\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-autosave', '', '', '2013-01-23 10:46:02', '2013-01-23 09:46:02', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-01-23 09:56:32', '2013-01-23 08:56:32', '&nbsp;\r\n\r\nArgentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\r\n\r\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision-5', '', '', '2013-01-23 09:56:32', '2013-01-23 08:56:32', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-01-23 10:48:07', '2013-01-23 09:48:07', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale.\n\nAlors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-autosave', '', '', '2013-01-23 10:48:07', '2013-01-23 09:48:07', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-23 09:57:24', '2013-01-23 08:57:24', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-revision-4', '', '', '2013-01-23 09:57:24', '2013-01-23 08:57:24', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-23 09:58:06', '2013-01-23 08:58:06', '&nbsp;\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision-5', '', '', '2013-01-23 09:58:06', '2013-01-23 08:58:06', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-23 09:58:37', '2013-01-23 08:58:37', '&nbsp;\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision-5', '', '', '2013-01-23 09:58:37', '2013-01-23 08:58:37', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-01-22 17:44:17', '2013-01-22 16:44:17', '17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '48-revision-2', '', '', '2013-01-22 17:44:17', '2013-01-22 16:44:17', '', 48, 'http://127.0.0.1/~degois/wordpress-festival/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-01-23 10:00:30', '2013-01-23 09:00:30', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'open', 'open', '', '46-revision-6', '', '', '2013-01-23 10:00:30', '2013-01-23 09:00:30', '', 46, 'http://127.0.0.1/~degois/wordpress-festival/?p=135', 0, 'revision', '', 0),
(136, 1, '2013-01-23 10:35:39', '2013-01-23 09:35:39', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\n&nbsp;\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'open', 'open', '', '58-revision-11', '', '', '2013-01-23 10:35:39', '2013-01-23 09:35:39', '', 58, 'http://127.0.0.1/~degois/wordpress-festival/?p=136', 0, 'revision', '', 0),
(137, 1, '2013-01-23 10:46:37', '2013-01-23 09:46:37', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans.\r\n\r\nLes deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'open', 'open', '', '56-revision-6', '', '', '2013-01-23 10:46:37', '2013-01-23 09:46:37', '', 56, 'http://127.0.0.1/~degois/wordpress-festival/?p=137', 0, 'revision', '', 0),
(138, 1, '2013-01-23 10:48:27', '2013-01-23 09:48:27', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale.\r\n\r\nAlors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'open', 'open', '', '54-revision-5', '', '', '2013-01-23 10:48:27', '2013-01-23 09:48:27', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-01-23 10:54:33', '2013-01-23 09:54:33', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale.\r\n\r\nAlors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\n&nbsp;\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'open', 'open', '', '54-revision-6', '', '', '2013-01-23 10:54:33', '2013-01-23 09:54:33', '', 54, 'http://127.0.0.1/~degois/wordpress-festival/?p=139', 0, 'revision', '', 0),
(140, 1, '2013-01-23 10:49:27', '2013-01-23 09:49:27', 'Comment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'open', 'open', '', '52-revision-6', '', '', '2013-01-23 10:49:27', '2013-01-23 09:49:27', '', 52, 'http://127.0.0.1/~degois/wordpress-festival/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-01-23 10:50:10', '2013-01-23 09:50:10', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'open', 'open', '', '50-revision-6', '', '', '2013-01-23 10:50:10', '2013-01-23 09:50:10', '', 50, 'http://127.0.0.1/~degois/wordpress-festival/?p=141', 0, 'revision', '', 0),
(142, 1, '2013-01-23 10:51:06', '2013-01-23 09:51:06', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'open', 'open', '', '48-revision-3', '', '', '2013-01-23 10:51:06', '2013-01-23 09:51:06', '', 48, 'http://127.0.0.1/~degois/wordpress-festival/?p=142', 0, 'revision', '', 0),
(143, 1, '2013-01-23 10:01:04', '2013-01-23 09:01:04', '&nbsp;\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '44-revision-4', '', '', '2013-01-23 10:01:04', '2013-01-23 09:01:04', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=143', 0, 'revision', '', 0),
(144, 1, '2013-01-23 10:01:55', '2013-01-23 09:01:55', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '42-revision-4', '', '', '2013-01-23 10:01:55', '2013-01-23 09:01:55', '', 42, 'http://127.0.0.1/~degois/wordpress-festival/?p=144', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(145, 1, '2013-01-23 10:02:45', '2013-01-23 09:02:45', '&nbsp;\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '40-revision-4', '', '', '2013-01-23 10:02:45', '2013-01-23 09:02:45', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/?p=145', 0, 'revision', '', 0),
(146, 1, '2013-01-23 11:00:55', '2013-01-23 10:00:55', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '40-autosave', '', '', '2013-01-23 11:00:55', '2013-01-23 10:00:55', '', 40, 'http://127.0.0.1/~degois/wordpress-festival/?p=146', 0, 'revision', '', 0),
(147, 1, '2013-01-29 08:52:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-29 08:52:33', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=147', 1, 'nav_menu_item', '', 0),
(148, 1, '2013-01-29 08:52:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-29 08:52:34', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=148', 1, 'nav_menu_item', '', 0),
(149, 1, '2013-01-29 08:53:27', '2013-01-29 07:53:27', ' ', '', '', 'publish', 'open', 'open', '', '149', '', '', '2013-01-29 09:22:41', '2013-01-29 08:22:41', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?p=149', 6, 'nav_menu_item', '', 0),
(150, 1, '2013-01-23 10:57:51', '2013-01-23 09:57:51', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '44-revision-5', '', '', '2013-01-23 10:57:51', '2013-01-23 09:57:51', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=150', 0, 'revision', '', 0),
(151, 1, '2013-01-29 09:26:07', '2013-01-29 08:26:07', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '44-revision-6', '', '', '2013-01-29 09:26:07', '2013-01-29 08:26:07', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-01-29 09:27:57', '2013-01-29 08:27:57', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '44-autosave', '', '', '2013-01-29 09:27:57', '2013-01-29 08:27:57', '', 44, 'http://127.0.0.1/~degois/wordpress-festival/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-01-29 17:59:31', '2013-01-29 16:59:31', '', 'Diapo photo', '', 'publish', 'closed', 'closed', '', 'diapo-photo', '', '', '2013-01-30 13:42:25', '2013-01-30 12:42:25', '', 0, 'http://127.0.0.1/~degois/wordpress-festival/?post_type=slideshow&#038;p=153', 0, 'slideshow', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Films', 'films', 0),
(3, 'Courts-métrage', 'court-metrage', 0),
(4, 'menu', 'menu', 0),
(5, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 1, 0),
(14, 4, 0),
(15, 1, 0),
(26, 2, 0),
(32, 4, 0),
(33, 4, 0),
(35, 3, 0),
(40, 3, 0),
(42, 3, 0),
(44, 3, 0),
(46, 3, 0),
(48, 3, 0),
(50, 3, 0),
(52, 3, 0),
(54, 2, 0),
(56, 2, 0),
(58, 2, 0),
(64, 4, 0),
(65, 4, 0),
(149, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 8),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '76'),
(15, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'wp_festival_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse&align=none&imgsize=full&urlbutton=post'),
(18, 1, 'wp_festival_user-settings-time', '1358931601'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:8:{i:0;s:16:"tagsdiv-post_tag";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}'),
(22, 1, 'manageedit-postcolumnshidden', 'a:4:{i:0;s:4:"tags";i:1;s:8:"comments";i:2;s:0:"";i:3;s:0:"";}'),
(23, 1, 'edit_post_per_page', '20');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BE/ddfufCbW5fXdTpIN39wwscEaHGe/', 'admin', 'florence.degois@gmail.com', '', '2013-01-15 16:28:41', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=182 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/~degois/wordpress', 'yes'),
(2, 'blogname', 'Wordpress Essaie', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'florence.degois@laposte.net', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:0:{}', 'yes'),
(37, 'home', 'http://127.0.0.1/~degois/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', 'a:2:{i:0;s:79:"/mnt/home/degois/public_html/wordpress/wp-content/themes/twentyeleven/style.css";i:2;s:0:"";}', 'no'),
(45, 'template', 'twentyeleven', 'yes'),
(46, 'stylesheet', 'twentyeleven', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:14:"julekalender-2";i:1;s:8:"search-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1354679384;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1354722975;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1354723288;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1354636233;}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1354636264;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1354639827;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:34:"http://127.0.0.1/~degois/wordpress";s:4:"link";s:110:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://127.0.0.1/~degois/wordpress/";s:3:"url";s:143:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1/~degois/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'can_compress_scripts', '0', 'yes'),
(126, 'recently_activated', 'a:1:{s:42:"christmas-advent-calendar/julekalender.php";i:1354035454;}', 'yes'),
(132, 'category_children', 'a:0:{}', 'yes'),
(134, 'theme_mods_twentyeleven', 'a:10:{s:16:"header_textcolor";s:6:"703671";s:12:"header_image";s:90:"http://127.0.0.1/~degois/wordpress/wp-content/themes/twentyeleven/images/headers/hanoi.jpg";s:17:"header_image_data";a:3:{s:3:"url";s:90:"http://127.0.0.1/~degois/wordpress/wp-content/themes/twentyeleven/images/headers/hanoi.jpg";s:13:"thumbnail_url";s:100:"http://127.0.0.1/~degois/wordpress/wp-content/themes/twentyeleven/images/headers/hanoi-thumbnail.jpg";s:11:"description";s:16:"Plante de Hanoï";}s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:6:"scroll";s:16:"background_color";s:6:"d6d6d6";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:5;}s:22:"background_image_thumb";s:0:"";}', 'yes'),
(135, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:5:"light";s:10:"link_color";s:7:"#346034";s:12:"theme_layout";s:15:"content-sidebar";}', 'yes'),
(138, 'widget_julekalender', 'a:2:{i:2;a:3:{s:18:"julekalender_title";s:21:"Calendrier de l''avent";s:24:"julekalender_description";s:0:"";s:16:"julekalender_num";s:1:"5";}s:12:"_multiwidget";i:1;}', 'yes'),
(142, '_transient_random_seed', '136bed6309f58acb0f270a022c8ce545', 'yes'),
(144, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1354679490', 'no'),
(145, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(146, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1354679491', 'no'),
(147, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(148, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1354679491', 'no'),
(149, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(150, '_transient_timeout_plugin_slugs', '1354722702', 'no'),
(151, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:42:"christmas-advent-calendar/julekalender.php";i:2;s:9:"hello.php";}', 'no'),
(152, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1354679502', 'no'),
(153, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:5;}}', 'yes'),
(170, '_site_transient_timeout_wporg_theme_feature_list', '1354650631', 'yes'),
(171, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(180, '_site_transient_timeout_theme_roots', '1354641622', 'yes'),
(181, '_site_transient_theme_roots', 'a:2:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1354637093:1'),
(10, 9, '_wp_attached_file', '2012/11/reponse.jpg'),
(11, 9, '_wp_attachment_context', 'custom-background'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:14:"hwstring_small";s:22:"height=''96'' width=''96''";s:4:"file";s:19:"2012/11/reponse.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(13, 9, '_wp_attachment_is_custom_background', 'twentyeleven'),
(14, 10, '_menu_item_type', 'taxonomy'),
(15, 10, '_menu_item_menu_item_parent', '0'),
(16, 10, '_menu_item_object_id', '1'),
(17, 10, '_menu_item_object', 'category'),
(18, 10, '_menu_item_target', ''),
(19, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 10, '_menu_item_xfn', ''),
(21, 10, '_menu_item_url', ''),
(23, 11, '_menu_item_type', 'taxonomy'),
(24, 11, '_menu_item_menu_item_parent', '0'),
(25, 11, '_menu_item_object_id', '3'),
(26, 11, '_menu_item_object', 'category'),
(27, 11, '_menu_item_target', ''),
(28, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 11, '_menu_item_xfn', ''),
(30, 11, '_menu_item_url', ''),
(32, 12, '_menu_item_type', 'custom'),
(33, 12, '_menu_item_menu_item_parent', '0'),
(34, 12, '_menu_item_object_id', '12'),
(35, 12, '_menu_item_object', 'custom'),
(36, 12, '_menu_item_target', ''),
(37, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 12, '_menu_item_xfn', ''),
(39, 12, '_menu_item_url', 'http://127.0.0.1/~degois/wordpress/wp-login.php'),
(41, 13, '_wp_attached_file', '2012/11/acm1.png'),
(42, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:16:"2012/11/acm1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"acm1-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:16:"acm1-300x225.png";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:16:"acm1-800x288.png";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:16:"acm1-800x288.png";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:16:"acm1-400x300.png";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(43, 14, '_wp_attached_file', '2012/11/acm2.png'),
(44, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:16:"2012/11/acm2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"acm2-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:16:"acm2-300x225.png";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:16:"acm2-800x288.png";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:16:"acm2-800x288.png";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:16:"acm2-400x300.png";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-27 15:48:28', '2012-11-27 15:48:28', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-11-27 15:48:28', '2012-11-27 15:48:28', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-11-27 15:48:28', '2012-11-27 15:48:28', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/~degois/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'publish', 'open', 'open', '', 'page-d-exemple', '', '', '2012-11-27 15:48:28', '2012-11-27 15:48:28', '', 0, 'http://127.0.0.1/~degois/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-11-27 17:02:34', '2012-11-27 16:02:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at nibh nec quam pellentesque feugiat quis vel mi. Ut non justo vitae urna porta luctus sit amet id neque. Sed ac mauris ligula. Pellentesque ullamcorper urna lorem. Duis massa purus, dignissim et sollicitudin in, consequat aliquet tellus. Vestibulum dolor erat, rhoncus ut vulputate id, molestie at ligula. Sed rhoncus sem sed nisi ultrices sit amet tristique est tempor. Sed luctus dapibus enim ac sollicitudin. Sed eros nisl, suscipit sit amet pharetra hendrerit, elementum vel ipsum. Sed varius, orci ut malesuada porta, nisl augue vehicula enim, eu commodo nulla turpis et lacus. Vivamus eget auctor tortor. Vestibulum porta bibendum felis, at luctus justo porttitor in. Integer ante enim, porta vel gravida eu, tempor a odio. Cras ac blandit nunc.\r\n\r\n[gallery]\r\n\r\n&nbsp;\r\n\r\nInteger nisl sapien, posuere ac scelerisque at, congue non odio. Quisque luctus, velit vitae auctor eleifend, velit ligula fringilla nulla, nec commodo dui turpis non erat. Maecenas leo augue, lacinia euismod sagittis non, fringilla a ligula. Proin ac tellus suscipit justo iaculis varius. Duis faucibus, ante in imperdiet elementum, diam metus elementum nisi, in ullamcorper leo nisl nec sem. Proin lacus urna, accumsan non sagittis id, facilisis vitae enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel neque et urna molestie euismod. Duis nibh diam, vestibulum feugiat semper fringilla, tempus at orci. Nullam volutpat dignissim augue. Fusce tempor enim eget libero laoreet dignissim. Maecenas feugiat tincidunt arcu, sed bibendum lectus sollicitudin et. Nullam id nibh id magna tincidunt ultricies nec non metus. Maecenas fermentum mauris at odio vestibulum sit amet laoreet velit suscipit.', 'Premier article', '', 'publish', 'open', 'open', '', 'premier-article', '', '', '2012-12-04 17:06:12', '2012-12-04 16:06:12', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2012-11-27 17:02:29', '2012-11-27 16:02:29', 'et hop je test !', 'Premier article', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2012-11-27 17:02:29', '2012-11-27 16:02:29', '', 4, 'http://127.0.0.1/~degois/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-11-27 17:04:09', '2012-11-27 16:04:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at nibh nec quam pellentesque feugiat quis vel mi. Ut non justo vitae urna porta luctus sit amet id neque. Sed ac mauris ligula. Pellentesque ullamcorper urna lorem. Duis massa purus, dignissim et sollicitudin in, consequat aliquet tellus. Vestibulum dolor erat, rhoncus ut vulputate id, molestie at ligula. Sed rhoncus sem sed nisi ultrices sit amet tristique est tempor. Sed luctus dapibus enim ac sollicitudin. Sed eros nisl, suscipit sit amet pharetra hendrerit, elementum vel ipsum. Sed varius, orci ut malesuada porta, nisl augue vehicula enim, eu commodo nulla turpis et lacus. Vivamus eget auctor tortor. Vestibulum porta bibendum felis, at luctus justo porttitor in. Integer ante enim, porta vel gravida eu, tempor a odio. Cras ac blandit nunc.\n\nInteger nisl sapien, posuere ac scelerisque at, congue non odio. Quisque luctus, velit vitae auctor eleifend, velit ligula fringilla nulla, nec commodo dui turpis non erat. Maecenas leo augue, lacinia euismod sagittis non, fringilla a ligula. Proin ac tellus suscipit justo iaculis varius. Duis faucibus, ante in imperdiet elementum, diam metus elementum nisi, in ullamcorper leo nisl nec sem. Proin lacus urna, accumsan non sagittis id, facilisis vitae enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel neque et urna molestie euismod. Duis nibh diam, vestibulum feugiat semper fringilla, tempus at orci. Nullam volutpat dignissim augue. Fusce tempor enim eget libero laoreet dignissim. Maecenas feugiat tincidunt arcu, sed bibendum lectus sollicitudin et. Nullam id nibh id magna tincidunt ultricies nec non metus. Maecenas fermentum mauris at odio vestibulum sit amet laoreet velit suscipit.', 'Premier article', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2012-11-27 17:04:09', '2012-11-27 16:04:09', '', 4, 'http://127.0.0.1/~degois/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2012-11-27 17:02:34', '2012-11-27 16:02:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at nibh nec quam pellentesque feugiat quis vel mi. Ut non justo vitae urna porta luctus sit amet id neque. Sed ac mauris ligula. Pellentesque ullamcorper urna lorem. Duis massa purus, dignissim et sollicitudin in, consequat aliquet tellus. Vestibulum dolor erat, rhoncus ut vulputate id, molestie at ligula. Sed rhoncus sem sed nisi ultrices sit amet tristique est tempor. Sed luctus dapibus enim ac sollicitudin. Sed eros nisl, suscipit sit amet pharetra hendrerit, elementum vel ipsum. Sed varius, orci ut malesuada porta, nisl augue vehicula enim, eu commodo nulla turpis et lacus. Vivamus eget auctor tortor. Vestibulum porta bibendum felis, at luctus justo porttitor in. Integer ante enim, porta vel gravida eu, tempor a odio. Cras ac blandit nunc.\r\n\r\nInteger nisl sapien, posuere ac scelerisque at, congue non odio. Quisque luctus, velit vitae auctor eleifend, velit ligula fringilla nulla, nec commodo dui turpis non erat. Maecenas leo augue, lacinia euismod sagittis non, fringilla a ligula. Proin ac tellus suscipit justo iaculis varius. Duis faucibus, ante in imperdiet elementum, diam metus elementum nisi, in ullamcorper leo nisl nec sem. Proin lacus urna, accumsan non sagittis id, facilisis vitae enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel neque et urna molestie euismod. Duis nibh diam, vestibulum feugiat semper fringilla, tempus at orci. Nullam volutpat dignissim augue. Fusce tempor enim eget libero laoreet dignissim. Maecenas feugiat tincidunt arcu, sed bibendum lectus sollicitudin et. Nullam id nibh id magna tincidunt ultricies nec non metus. Maecenas fermentum mauris at odio vestibulum sit amet laoreet velit suscipit.', 'Premier article', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2012-11-27 17:02:34', '2012-11-27 16:02:34', '', 4, 'http://127.0.0.1/~degois/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-11-27 17:04:11', '2012-11-27 16:04:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at nibh nec quam pellentesque feugiat quis vel mi. Ut non justo vitae urna porta luctus sit amet id neque. Sed ac mauris ligula. Pellentesque ullamcorper urna lorem. Duis massa purus, dignissim et sollicitudin in, consequat aliquet tellus. Vestibulum dolor erat, rhoncus ut vulputate id, molestie at ligula. Sed rhoncus sem sed nisi ultrices sit amet tristique est tempor. Sed luctus dapibus enim ac sollicitudin. Sed eros nisl, suscipit sit amet pharetra hendrerit, elementum vel ipsum. Sed varius, orci ut malesuada porta, nisl augue vehicula enim, eu commodo nulla turpis et lacus. Vivamus eget auctor tortor. Vestibulum porta bibendum felis, at luctus justo porttitor in. Integer ante enim, porta vel gravida eu, tempor a odio. Cras ac blandit nunc.\r\n\r\nInteger nisl sapien, posuere ac scelerisque at, congue non odio. Quisque luctus, velit vitae auctor eleifend, velit ligula fringilla nulla, nec commodo dui turpis non erat. Maecenas leo augue, lacinia euismod sagittis non, fringilla a ligula. Proin ac tellus suscipit justo iaculis varius. Duis faucibus, ante in imperdiet elementum, diam metus elementum nisi, in ullamcorper leo nisl nec sem. Proin lacus urna, accumsan non sagittis id, facilisis vitae enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel neque et urna molestie euismod. Duis nibh diam, vestibulum feugiat semper fringilla, tempus at orci. Nullam volutpat dignissim augue. Fusce tempor enim eget libero laoreet dignissim. Maecenas feugiat tincidunt arcu, sed bibendum lectus sollicitudin et. Nullam id nibh id magna tincidunt ultricies nec non metus. Maecenas fermentum mauris at odio vestibulum sit amet laoreet velit suscipit.', 'Premier article', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2012-11-27 17:04:11', '2012-11-27 16:04:11', '', 4, 'http://127.0.0.1/~degois/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-11-27 17:16:06', '2012-11-27 16:16:06', 'http://127.0.0.1/~degois/wordpress/wp-content/uploads/2012/11/reponse.jpg', 'reponse.jpg', '', 'inherit', 'open', 'open', '', 'reponse-jpg', '', '', '2012-11-27 17:16:06', '2012-11-27 16:16:06', '', 0, 'http://127.0.0.1/~degois/wordpress/wp-content/uploads/2012/11/reponse.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2012-12-04 16:53:39', '2012-12-04 15:53:39', ' ', '', '', 'publish', 'open', 'open', '', '10', '', '', '2012-12-04 16:54:50', '2012-12-04 15:54:50', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2012-12-04 16:53:40', '2012-12-04 15:53:40', ' ', '', '', 'publish', 'open', 'open', '', '11', '', '', '2012-12-04 16:54:50', '2012-12-04 15:54:50', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2012-12-04 16:54:50', '2012-12-04 15:54:50', '', 'Connexion', '', 'publish', 'open', 'open', '', 'connexion', '', '', '2012-12-04 16:54:50', '2012-12-04 15:54:50', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2012-12-04 17:05:39', '2012-12-04 16:05:39', '', 'acm1', '', 'inherit', 'open', 'open', '', 'acm1', '', '', '2012-12-04 17:05:39', '2012-12-04 16:05:39', '', 4, 'http://127.0.0.1/~degois/wordpress/wp-content/uploads/2012/11/acm1.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2012-12-04 17:05:40', '2012-12-04 16:05:40', '', 'acm2', '', 'inherit', 'open', 'open', '', 'acm2', '', '', '2012-12-04 17:05:40', '2012-12-04 16:05:40', '', 4, 'http://127.0.0.1/~degois/wordpress/wp-content/uploads/2012/11/acm2.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2012-11-27 17:06:40', '2012-11-27 16:06:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at nibh nec quam pellentesque feugiat quis vel mi. Ut non justo vitae urna porta luctus sit amet id neque. Sed ac mauris ligula. Pellentesque ullamcorper urna lorem. Duis massa purus, dignissim et sollicitudin in, consequat aliquet tellus. Vestibulum dolor erat, rhoncus ut vulputate id, molestie at ligula. Sed rhoncus sem sed nisi ultrices sit amet tristique est tempor. Sed luctus dapibus enim ac sollicitudin. Sed eros nisl, suscipit sit amet pharetra hendrerit, elementum vel ipsum. Sed varius, orci ut malesuada porta, nisl augue vehicula enim, eu commodo nulla turpis et lacus. Vivamus eget auctor tortor. Vestibulum porta bibendum felis, at luctus justo porttitor in. Integer ante enim, porta vel gravida eu, tempor a odio. Cras ac blandit nunc.\r\n\r\nInteger nisl sapien, posuere ac scelerisque at, congue non odio. Quisque luctus, velit vitae auctor eleifend, velit ligula fringilla nulla, nec commodo dui turpis non erat. Maecenas leo augue, lacinia euismod sagittis non, fringilla a ligula. Proin ac tellus suscipit justo iaculis varius. Duis faucibus, ante in imperdiet elementum, diam metus elementum nisi, in ullamcorper leo nisl nec sem. Proin lacus urna, accumsan non sagittis id, facilisis vitae enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel neque et urna molestie euismod. Duis nibh diam, vestibulum feugiat semper fringilla, tempus at orci. Nullam volutpat dignissim augue. Fusce tempor enim eget libero laoreet dignissim. Maecenas feugiat tincidunt arcu, sed bibendum lectus sollicitudin et. Nullam id nibh id magna tincidunt ultricies nec non metus. Maecenas fermentum mauris at odio vestibulum sit amet laoreet velit suscipit.', 'Premier article', '', 'inherit', 'open', 'open', '', '4-revision-4', '', '', '2012-11-27 17:06:40', '2012-11-27 16:06:40', '', 4, 'http://127.0.0.1/~degois/wordpress/archives/15', 0, 'revision', '', 0),
(16, 1, '2012-12-04 17:50:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-12-04 17:50:09', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/~degois/wordpress/?p=16', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Liens', 'liens', 0),
(3, 'Lorem', 'lorem', 0),
(4, 'blabla', 'blabla', 0),
(5, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(4, 3, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(10, 5, 0),
(11, 5, 0),
(12, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'degois'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '16'),
(15, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'wp_user-settings', 'hidetb=1&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1354032248'),
(19, 1, 'nav_menu_recently_edited', '5'),
(20, 1, 'closedpostboxes_nav-menus', 'a:1:{i:0;s:24:"nav-menu-theme-locations";}'),
(21, 1, 'meta-box-order_nav-menus', 'a:1:{s:4:"side";s:101:"nav-menu-theme-locations,add-custom-links,add-post,add-page,add-category,add-post_tag,add-post_format";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'degois', '$P$Bc4miqkgWgAb854g80ukL2uOwXt4i1.', 'degois', 'florence.degois@laposte.net', '', '2012-11-27 15:48:24', '', 0, 'degois');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
