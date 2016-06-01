-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2016 at 03:01 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
`id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `ctsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_assets`
--

CREATE TABLE IF NOT EXISTS `i1hzw_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=93 ;

--
-- Dumping data for table `i1hzw_assets`
--

INSERT INTO `i1hzw_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 179, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 32, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 33, 34, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 35, 36, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 37, 38, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 39, 40, 1, 'com_login', 'com_login', '{}'),
(13, 1, 41, 42, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 43, 44, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 45, 46, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 47, 48, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 49, 50, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 51, 128, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 129, 132, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 133, 134, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 135, 136, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 137, 138, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 139, 140, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 141, 144, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 145, 146, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 31, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 130, 131, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 142, 143, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 147, 148, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 149, 150, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 151, 152, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 153, 154, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 155, 156, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 157, 158, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 52, 53, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 54, 55, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 56, 57, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 58, 59, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 60, 61, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 62, 63, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 64, 65, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 66, 67, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 68, 69, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 70, 71, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 72, 73, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 74, 75, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 76, 77, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 78, 79, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 80, 81, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 82, 83, 2, 'com_modules.module.87', 'Popular Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 84, 85, 2, 'com_modules.module.88', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 86, 87, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 88, 89, 2, 'com_modules.module.90', 'Latest Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 90, 91, 2, 'com_modules.module.91', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 92, 93, 2, 'com_modules.module.92', 'Image Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 94, 95, 2, 'com_modules.module.93', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 159, 160, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(63, 1, 161, 162, 1, 'com_comprofiler', 'comprofiler', '{}'),
(64, 18, 96, 97, 2, 'com_modules.module.94', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(65, 18, 98, 99, 2, 'com_modules.module.95', 'Online Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(66, 18, 100, 101, 2, 'com_modules.module.96', 'Approve List', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(67, 18, 102, 103, 2, 'com_modules.module.97', 'CB Admin Dropdown Menu', '{}'),
(68, 18, 104, 105, 2, 'com_modules.module.98', 'Community Builder News', '{}'),
(69, 18, 106, 107, 2, 'com_modules.module.99', 'Community Builder Updates', '{}'),
(70, 18, 108, 109, 2, 'com_modules.module.100', 'CB Admin Version Checker', '{}'),
(71, 1, 163, 164, 1, 'com_kunena', 'com_kunena', '{}'),
(72, 18, 110, 111, 2, 'com_modules.module.101', 'ARI Image Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(73, 27, 21, 22, 3, 'com_content.article.2', 'Finance Qlikview', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(74, 27, 23, 24, 3, 'com_content.article.3', 'Finance Qlikview', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(75, 1, 165, 166, 1, 'com_jcomments', 'JComments', '{}'),
(76, 18, 112, 113, 2, 'com_modules.module.102', 'jDownloads Latest', '{}'),
(77, 18, 114, 115, 2, 'com_modules.module.103', 'jDownloads Top', '{}'),
(78, 18, 116, 117, 2, 'com_modules.module.104', 'jDownloads Last Updated', '{}'),
(79, 18, 118, 119, 2, 'com_modules.module.105', 'jDownloads Most Recently Downloaded', '{}'),
(80, 18, 120, 121, 2, 'com_modules.module.106', 'jDownloads Stats', '{}'),
(81, 18, 122, 123, 2, 'com_modules.module.107', 'jDownloads Tree', '{}'),
(82, 18, 124, 125, 2, 'com_modules.module.108', 'jDownloads Related', '{}'),
(83, 18, 126, 127, 2, 'com_modules.module.109', 'jDownloads Rated', '{}'),
(84, 1, 167, 178, 1, 'com_jdownloads', 'com_jDownloads', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[],"download":{"1":1},"edit.config":[],"edit.user.limits":[]}'),
(85, 84, 168, 173, 2, 'com_jdownloads.category.2', 'RFP Documents', '{"core.create":{"6":1,"2":1,"3":1},"core.delete":{"6":1,"2":1},"core.edit":{"6":1,"2":1,"4":1},"core.edit.state":{"6":1,"2":1,"5":1},"core.edit.own":{"6":1,"2":1,"3":1},"download":{"2":1}}'),
(86, 85, 169, 170, 3, 'com_jdownloads.download.1', 'Sanofi RFP', '{"core.create":{"1":1},"core.delete":{"1":1},"core.edit":{"1":1},"core.edit.state":{"1":1},"core.edit.own":{"1":1},"download":{"1":1}}'),
(87, 85, 171, 172, 3, 'com_jdownloads.download.2', 'ABC', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[],"download":[]}'),
(88, 84, 174, 177, 2, 'com_jdownloads.category.3', 'Whitepapers', '{"core.create":{"6":1,"2":1,"3":1},"core.delete":{"6":1,"2":1},"core.edit":{"6":1,"2":1,"4":1},"core.edit.state":{"6":1,"2":1,"5":1},"core.edit.own":{"6":1,"2":1,"3":1},"download":{"2":1}}'),
(89, 88, 175, 176, 3, 'com_jdownloads.download.3', 'Qlikview Section Access', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[],"download":[]}'),
(90, 27, 25, 26, 3, 'com_content.article.4', 'Qlikview Interview Questions', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(91, 27, 27, 28, 3, 'com_content.article.5', 'Qliksense Interview Questions', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(92, 27, 29, 30, 3, 'com_content.article.6', 'Questions & Answers', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_associations`
--

CREATE TABLE IF NOT EXISTS `i1hzw_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_banner_clients`
--

CREATE TABLE IF NOT EXISTS `i1hzw_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `i1hzw_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_banners`
--

CREATE TABLE IF NOT EXISTS `i1hzw_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_categories`
--

CREATE TABLE IF NOT EXISTS `i1hzw_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `i1hzw_categories`
--

INSERT INTO `i1hzw_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 879, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT '1',
  `canvas` varchar(255) DEFAULT NULL,
  `canvasapproved` tinyint(4) NOT NULL DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) NOT NULL DEFAULT '',
  `cbactivation` varchar(50) NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext,
  `acceptedterms` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_comprofiler`
--

INSERT INTO `i1hzw_comprofiler` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `hits`, `message_last_sent`, `message_number_sent`, `avatar`, `avatarapproved`, `canvas`, `canvasapproved`, `approved`, `confirmed`, `lastupdatedate`, `registeripaddr`, `cbactivation`, `banned`, `banneddate`, `unbanneddate`, `bannedby`, `unbannedby`, `bannedreason`, `acceptedterms`) VALUES
(879, 879, 'Priyal', NULL, 'Shah', 0, '0000-00-00 00:00:00', 0, '879_574b4e2bed1ba.JPG', 1, 'gallery/tnkarpathos_diakoftis.jpg', 1, 1, 1, '2016-05-29 20:16:42', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0),
(884, 884, 'sonu', NULL, 'shah', 0, '0000-00-00 00:00:00', 0, 'gallery/tncartoon_elephant.png', 1, 'gallery/tnsantorini_blue_domes.jpg', 1, 1, 1, '2016-05-28 18:42:02', '::1', '', 0, NULL, NULL, NULL, NULL, NULL, 0),
(885, 885, 'darshan', NULL, 'shah', 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, 1, 1, 1, '0000-00-00 00:00:00', '::1', '', 0, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_field_values`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_field_values` (
`fieldvalueid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldlabel` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_fields`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_fields` (
`fieldid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tablecolumns` text NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '#__comprofiler',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `tabid` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `profile` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `pluginid` int(11) NOT NULL DEFAULT '0',
  `cssclass` varchar(255) DEFAULT NULL,
  `params` mediumtext
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `i1hzw_comprofiler_fields`
--

INSERT INTO `i1hzw_comprofiler_fields` (`fieldid`, `name`, `tablecolumns`, `table`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `tabid`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `edit`, `profile`, `readonly`, `searchable`, `calculated`, `sys`, `pluginid`, `cssclass`, `params`) VALUES
(17, 'canvas', 'canvas,canvasapproved', '#__comprofiler', 'USER_CANVAS_IMAGE_TITLE', '', 'image', NULL, NULL, 0, 7, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 4, 0, 0, 1, 1, 1, NULL, NULL),
(24, 'connections', '', '#__comprofiler', '_UE_CONNECTION', '', 'connections', NULL, NULL, 0, 6, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, NULL),
(25, 'hits', 'hits', '#__comprofiler', '_UE_HITS', '_UE_HITS_DESC', 'counter', NULL, NULL, 0, 6, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, NULL),
(26, 'onlinestatus', '', '#__comprofiler', '_UE_ONLINESTATUS', '', 'status', NULL, NULL, 0, 20, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 4, 0, 0, 1, 1, 1, NULL, NULL),
(27, 'lastvisitDate', 'lastvisitDate', '#__users', '_UE_LASTONLINE', '', 'datetime', NULL, NULL, 0, 21, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=2'),
(28, 'registerDate', 'registerDate', '#__users', '_UE_MEMBERSINCE', '', 'datetime', NULL, NULL, 0, 21, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=6'),
(29, 'avatar', 'avatar,avatarapproved', '#__comprofiler', '_UE_IMAGE', '', 'image', NULL, NULL, 0, 20, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 4, 0, 0, 1, 1, 1, NULL, NULL),
(41, 'name', 'name', '#__users', '_UE_NAME', '_UE_REGWARN_NAME', 'predefined', NULL, NULL, 1, 11, 2, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL),
(42, 'username', 'username', '#__users', '_UE_UNAME', '_UE_VALID_UNAME', 'predefined', NULL, NULL, 1, 11, 6, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL),
(44, 'acceptedterms', 'acceptedterms', '#__comprofiler', 'USER_TERMS_AND_CONDITIONS_TITLE', '', 'terms', NULL, NULL, 0, 11, 11, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL),
(45, 'formatname', '', '#__comprofiler', '_UE_FORMATNAME', '', 'formatname', NULL, NULL, 0, 11, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 1, NULL, NULL),
(46, 'firstname', 'firstname', '#__comprofiler', '_UE_YOUR_FNAME', '_UE_REGWARN_FNAME', 'predefined', NULL, NULL, 1, 11, 3, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(47, 'middlename', 'middlename', '#__comprofiler', '_UE_YOUR_MNAME', '_UE_REGWARN_MNAME', 'predefined', NULL, NULL, 0, 11, 4, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(48, 'lastname', 'lastname', '#__comprofiler', '_UE_YOUR_LNAME', '_UE_REGWARN_LNAME', 'predefined', NULL, NULL, 1, 11, 5, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(49, 'lastupdatedate', 'lastupdatedate', '#__comprofiler', '_UE_LASTUPDATEDON', '', 'datetime', NULL, NULL, 0, 21, 3, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=2'),
(50, 'email', 'email', '#__users', '_UE_EMAIL', '_UE_REGWARN_MAIL', 'primaryemailaddress', NULL, NULL, 1, 11, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(51, 'password', 'password', '#__users', '_UE_PASS', '_UE_VALID_PASS', 'password', 50, NULL, 1, 11, 8, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(52, 'params', 'params', '#__users', '_UE_USERPARAMS', '', 'userparams', NULL, NULL, 0, 11, 9, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(53, 'pm', '', '#__comprofiler', '_UE_PM', '', 'pm', NULL, NULL, 0, 11, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_lists`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_lists` (
`listid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `usergroupids` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_members`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_members` (
  `referenceid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '1',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `membersince` date NOT NULL DEFAULT '0000-00-00',
  `reason` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `type` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_plugin`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_plugin` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT '',
  `folder` varchar(100) DEFAULT '',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `backend_menu` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

--
-- Dumping data for table `i1hzw_comprofiler_plugin`
--

INSERT INTO `i1hzw_comprofiler_plugin` (`id`, `name`, `element`, `type`, `folder`, `viewaccesslevel`, `backend_menu`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'CB Core', 'cb.core', 'user', 'plug_cbcore', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '{"name_style":"2","name_format":"3","date_format":"m\\/d\\/Y","time_format":"H:i:s","calendar_type":"2","allow_email_display":"3","allow_email_public":"0","allow_email_replyto":"1","allow_email":"1","allow_website":"1","allow_onlinestatus":"1","icons_display":"3","login_type":"0","reg_admin_allowcbregistration":"1","emailpass":"0","reg_admin_approval":"1","reg_confirmation":"0","reg_username_checker":"0","reg_show_login_on_page":"0","reg_email_name":"REGISTRATION_EMAIL_FROM_NAME","reg_email_from":"","reg_email_replyto":"","reg_email_html":"0","reg_pend_appr_sub":"YOUR_REGISTRATION_IS_PENDING_APPROVAL_SUBJECT","reg_pend_appr_msg":"YOUR_REGISTRATION_IS_PENDING_APPROVAL_MESSAGE","reg_welcome_sub":"YOUR_REGISTRATION_IS_APPROVED_SUBJECT","reg_welcome_msg":"YOUR_REGISTRATION_IS_APPROVED_MESSAGE","reg_layout":"flat","reg_show_icons_explain":"0","reg_title_img":"general","reg_intro_msg":"REGISTRATION_GREETING","reg_conclusion_msg":"REGISTRATION_CONCLUSION","reg_first_visit_url":"index.php?option=com_comprofiler&view=userprofile","usernameedit":"1","usernamefallback":"name","adminrequiredfields":"1","profile_viewaccesslevel":"2","maxEmailsPerHr":"10","profile_recordviews":"1","minHitsInterval":"60","templatedir":"default","use_divs":"1","left2colsWidth":"40","left3colsWidth":"32","right3colsWidth":"32","showEmptyTabs":"1","showEmptyFields":"1","emptyFieldsText":"-","frontend_userparams":"1","profile_edit_layout":"tabbed","profile_edit_show_icons_explain":"0","html_filter_allowed_tags":"","conversiontype":"4","avatarResizeAlways":"1","avatarHeight":"500","avatarWidth":"200","avatarSize":"2000","thumbHeight":"86","thumbWidth":"60","avatarMaintainRatio":"1","moderator_viewaccesslevel":"3","allowModUserApproval":"1","moderatorEmail":"1","allowUserReports":"1","avatarUploadApproval":"1","allowModeratorsUserEdit":"0","allowUserBanning":"1","allowConnections":"1","connectionDisplay":"0","connectionPath":"1","useMutualConnections":"1","conNotifyType":"0","autoAddConnections":"1","connection_categories":"Friend\\r\\nCo Worker\\r\\nFamily","translations_debug":"0","enableSpoofCheck":"1","noVersionCheck":"0","sendemails":"1","templateBootstrap":"1","templateFontawesme":"1","jsJquery":"1","jsJqueryMigrate":"1"}'),
(2, 'CB Connections', 'cb.connections', 'user', 'plug_cbconnections', 1, '', 3, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Default', 'default', 'templates', 'default', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'Default language (English)', 'default_language', 'language', 'default_language', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'CB Menu', 'cb.menu', 'user', 'plug_cbmenu', 1, '', 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Private Message System', 'pms.mypmspro', 'user', 'plug_pms_mypmspro', 1, '', 8, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'CB Articles', 'cbarticles', 'user', 'plug_cbarticles', 1, '', 8, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'CB Forums', 'cbforums', 'user', 'plug_cbforums', 1, '', 9, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'CB Blogs', 'cbblogs', 'user', 'plug_cbblogs', 1, '', 10, 1, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_plugin_blogs`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_plugin_blogs` (
`id` int(11) unsigned NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `blog_intro` text,
  `blog_full` text,
  `category` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '99999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_ratings`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_ratings` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'field',
  `item` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `ip_address` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_sessions`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_sessions` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ui` tinyint(4) NOT NULL DEFAULT '0',
  `incoming_ip` varchar(39) NOT NULL DEFAULT '',
  `client_ip` varchar(39) NOT NULL DEFAULT '',
  `session_id` varchar(33) NOT NULL DEFAULT '',
  `session_data` mediumtext NOT NULL,
  `expiry_time` int(14) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_tabs`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_tabs` (
`tabid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `ordering_register` int(11) NOT NULL DEFAULT '10',
  `width` varchar(10) NOT NULL DEFAULT '.5',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `pluginclass` varchar(255) DEFAULT NULL,
  `pluginid` int(11) DEFAULT NULL,
  `fields` tinyint(1) NOT NULL DEFAULT '1',
  `params` mediumtext,
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `displaytype` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cssclass` varchar(255) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `i1hzw_comprofiler_tabs`
--

INSERT INTO `i1hzw_comprofiler_tabs` (`tabid`, `title`, `description`, `ordering`, `ordering_register`, `width`, `enabled`, `pluginclass`, `pluginid`, `fields`, `params`, `sys`, `displaytype`, `position`, `viewaccesslevel`, `cssclass`) VALUES
(6, 'USER_STATISTICS_TITLE', '', 1, 10, '.5', 1, 'getStatsTab', 1, 1, NULL, 1, 'html', 'canvas_stats_bottom', 1, NULL),
(7, 'USER_CANVAS_TITLE', '', 1, 11, '1', 1, 'getCanvasTab', 1, 1, NULL, 1, 'html', 'canvas_background', 1, NULL),
(8, 'BLOGS_TITLE', '', 3, 10, '1', 1, 'cbblogsTab', 19, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(9, 'FORUMS_TITLE', '', 4, 10, '1', 1, 'cbforumsTab', 18, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(10, 'ARTICLES_TITLE', '', 2, 10, '1', 1, 'cbarticlesTab', 17, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(11, '_UE_CONTACT_INFO_HEADER', '', 1, 10, '1', 1, 'getContactTab', 1, 1, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(15, '_UE_CONNECTION', '', 5, 10, '1', 1, 'getConnectionTab', 2, 0, NULL, 1, 'menunested', 'canvas_main_middle', 1, NULL),
(17, '_UE_MENU', '', 1, 10, '1', 1, 'getMenuTab', 14, 0, NULL, 1, 'html', 'canvas_menu', 1, NULL),
(18, '_UE_CONNECTIONPATHS', '', 1, 10, '1', 1, 'getConnectionPathsTab', 2, 0, NULL, 1, 'html', 'cb_head', 1, NULL),
(19, '_UE_PROFILE_PAGE_TITLE', '', 1, 10, '1', 1, 'getPageTitleTab', 1, 1, NULL, 1, 'html', 'canvas_title_middle', 1, NULL),
(20, '_UE_PORTRAIT', '', 1, 11, '1', 1, 'getPortraitTab', 1, 1, NULL, 1, 'html', 'canvas_photo', 1, NULL),
(21, '_UE_USER_STATUS', '', 1, 10, '.5', 1, 'getStatusTab', 14, 1, NULL, 1, 'html', 'canvas_main_right', 1, NULL),
(22, '_UE_PMSTAB', '', 6, 10, '.5', 0, 'getmypmsproTab', 15, 0, NULL, 1, 'menunested', 'canvas_main_middle', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_userreports`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_userreports` (
`reportid` int(11) NOT NULL,
  `reporteduser` int(11) NOT NULL DEFAULT '0',
  `reportedbyuser` int(11) NOT NULL DEFAULT '0',
  `reportedondate` date NOT NULL DEFAULT '0000-00-00',
  `reportexplaination` text NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_comprofiler_views`
--

CREATE TABLE IF NOT EXISTS `i1hzw_comprofiler_views` (
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  `lastview` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL DEFAULT '0',
  `vote` tinyint(3) DEFAULT NULL,
  `lastvote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_contact_details`
--

CREATE TABLE IF NOT EXISTS `i1hzw_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_content`
--

CREATE TABLE IF NOT EXISTS `i1hzw_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `i1hzw_content`
--

INSERT INTO `i1hzw_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="https://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', '', 1, 2, '2013-11-16 00:00:00', 879, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 153, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 73, 'Finance Qlikview', 'finance-qlikview', '<p><a title="Expense Management" href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true" target="_blank"><img src="images/slider/Nature.jpg" alt="" />                                                </a><a title="Expense Management" href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true"><img src="images/slider/Slide1.jpg" alt="" /></a> </p>\r\n<p><em><strong>  <a href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true" target="_blank">  Finance Stock Analysis</a>                                                          <a href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true" target="_blank">Expense Management</a>                                         </strong></em></p>\r\n<p> {jcomments on}                                                                       </p>', '', 1, 2, '2016-05-29 10:38:24', 879, '', '2016-05-29 11:17:13', 879, 0, '0000-00-00 00:00:00', '2016-05-29 10:38:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 3, '', '', 1, 33, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 74, 'Finance Qlikview', 'finance-qlikview-2', '<p><a title="Finance Stock Analysis" href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true" target="_blank"><img src="images/slider/Slide1.jpg" alt="" /></a></p>\r\n<p><em><strong>  <a href="http://ap-a.demo.qlik.com/QvAJAXZfc/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true" target="_blank"> Finance Stock Analysis</a></strong></em></p>\r\n<p> </p>\r\n<p> </p>', '', -2, 2, '2016-05-29 10:38:27', 879, '', '2016-05-29 10:38:27', 0, 0, '0000-00-00 00:00:00', '2016-05-29 10:38:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 90, 'Qlikview Interview Questions', 'interview-questions', '<p>Question 1 : What is BI?</p>\r\n<p>Answer 1 : BI stands for Business Inteligence</p>\r\n<p> </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Question 2 : What is Qlikview?</p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">Answer 2 : Qlikview provides analytical solution for any type of organization and It works on  AQL Technology</p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;"> </p>\r\n<p style="font-size: 12.16px; line-height: 15.808px;">{jcomments on}</p>\r\n<p> </p>', '', 1, 2, '2016-05-29 20:01:44', 879, '', '2016-05-29 20:03:39', 879, 0, '0000-00-00 00:00:00', '2016-05-29 20:01:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 91, 'Qliksense Interview Questions', 'qliksense-interview-questions', '<p>Que 1 : What is Qliksense?</p>\r\n<p>Ans 1: Qliksense is dashboarding tool ment for user.</p>\r\n<p> </p>\r\n<p>{jcomments on}</p>', '', 1, 2, '2016-05-29 20:05:44', 879, '', '2016-05-29 20:05:44', 0, 0, '0000-00-00 00:00:00', '2016-05-29 20:05:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 92, 'Questions & Answers', 'questions-answers', '<h1><strong>Questions and Answers </strong></h1>\r\n<p><strong>Enter your comments below we will get back to you soon</strong></p>\r\n<p> </p>\r\n<p><strong>{jcomments on}</strong></p>\r\n<p><strong> </strong></p>', '', 1, 2, '2016-05-29 20:22:27', 879, '', '2016-05-29 20:22:27', 0, 0, '0000-00-00 00:00:00', '2016-05-29 20:22:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `i1hzw_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_content_rating`
--

CREATE TABLE IF NOT EXISTS `i1hzw_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_content_types`
--

CREATE TABLE IF NOT EXISTS `i1hzw_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10002 ;

--
-- Dumping data for table `i1hzw_content_types`
--

INSERT INTO `i1hzw_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10000, 'jDownloads Download', 'com_jdownloads.download', '{"special":{"dbtable":"#__jdownloads_files","key":"file_id","type":"Download","prefix":"JdownloadsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Download","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"file_id","core_title":"file_title","core_state":"published","core_alias":"file_alias","core_created_time":"null","core_modified_time":"null","core_body":"description", "core_hits":"views","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"cat_id", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"null","rgt":"null","level":"null","path":"null","extension":"null","note":"null"}}', 'JdownloadsHelperRoute::getDownloadRoute', NULL),
(10001, 'jDownloads Category', 'com_jdownloads.category', '{"special":{"dbtable":"#__jdownloads_categories","key":"id","type":"Category","prefix":"JdownloadsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Category","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"views","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"null","extension":"null","note":"null"}}', 'JdownloadsHelperRoute::getCategoryRoute', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `i1hzw_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `i1hzw_contentitem_tag_map`
--

INSERT INTO `i1hzw_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2013-11-16 06:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `i1hzw_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_extensions`
--

CREATE TABLE IF NOT EXISTS `i1hzw_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10045 ;

--
-- Dumping data for table `i1hzw_extensions`
--

INSERT INTO `i1hzw_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"eac04a4b67ccb41e000b91d2620121c9"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `i1hzw_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1464741758}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'kunena_tmpl_crypsisb3', 'file', 'kunena_tmpl_crypsisb3', '', 0, 1, 0, 0, '{"name":"kunena_tmpl_crypsisb3","type":"file","creationDate":"2016-02-18","author":"Kunena Team","copyright":"Kunena Team","authorEmail":"team@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"COM_KUNENA_TEMPLATE_CRYPSIS_DESC","group":"","filename":"kunena_tmpl_crypsis"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Community Builder Library', 'library', 'CBLib', '', 0, 1, 1, 0, '{"name":"Community Builder Library","type":"library","creationDate":"2016-03-22","author":"CB Team","copyright":"(C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Community Builder Library","group":"","filename":"CBLib"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Community Builder System plugin', 'plugin', 'communitybuilder', 'system', 0, 1, 1, 0, '{"name":"Community Builder System plugin","type":"plugin","creationDate":"2016-03-22","author":"CB Team","copyright":"Copyright (C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Community Builder System Plugin for Joomla!","group":"","filename":"communitybuilder"}', '{"redirect_urls":"1","rewrite_urls":"0","return_urls":"1","itemids":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'comprofiler', 'component', 'com_comprofiler', '', 1, 1, 0, 0, '{"name":"comprofiler","type":"component","creationDate":"2016-03-22","author":"CB Team","copyright":"Copyright (C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Community Builder for Joomla!","group":"","filename":"comprofiler"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Community Builder Login module', 'module', 'mod_cblogin', '', 0, 1, 0, 0, '{"name":"Community Builder Login module","type":"module","creationDate":"2016-03-22","author":"CB Team","copyright":"(C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Login module to be used with Community Builder instead of the Login module.","group":"","filename":"mod_cblogin"}', '{"show_buttons_icons":"0","https_post":"0","cb_plugins":"0","pretext":"","posttext":"","login":"","name_label":"5","name_length":"14","pass_label":"5","pass_length":"14","key_label":"5","key_length":"14","remember_enabled":"1","show_lostpass":"1","show_newaccount":"1","login_message":"0","logoutpretext":"","logoutposttext":"","logout":"index.php","greeting":"1","show_avatar":"1","text_show_profile":"","icon_show_profile":"0","text_edit_profile":"","icon_edit_profile":"0","show_pms":"0","show_pms_icon":"0","show_connection_notifications":"0","show_connection_notifications_icon":"0","logout_message":"0","layout":"_:bootstrap","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Community Builder Online module', 'module', 'mod_comprofileronline', '', 0, 1, 0, 0, '{"name":"Community Builder Online module","type":"module","creationDate":"2016-03-22","author":"CB Team","copyright":"(C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Displays a list of users logged in with a link to their profile.","group":"","filename":"mod_comprofileronline"}', '{"mode":"1","pretext":"","posttext":"","limit":"30","cb_plugins":"0","custom_field":"username","custom_direction":"ASC","label":"1","separator":",","layout":"_:default","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Community Builder Workflows module', 'module', 'mod_comprofilermoderator', '', 0, 1, 0, 0, '{"name":"Community Builder Workflows module","type":"module","creationDate":"2016-03-22","author":"CB Team","copyright":"(C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved2 License","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Displays Notifications of pending actions for the moderator and connections functionality of Community Builder.","group":"","filename":"mod_comprofilermoderator"}', '{"pretext":"","posttext":"","show_banned":"1","show_image_approval":"1","show_user_reports":"1","show_uban_requests":"1","show_user_approval":"1","show_pms":"1","show_connections":"1","cb_plugins":"0","layout":"_:default","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Community Builder Admin module', 'module', 'mod_cbadmin', '', 1, 1, 2, 0, '{"name":"Community Builder Admin module","type":"module","creationDate":"2016-03-22","author":"CB Team","copyright":"Copyright (C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com","version":"2.0.14","description":"Community Builder Admin Module for Joomla!","group":"","filename":"mod_cbadmin"}', '{"mode":"1","menu_cb":"1","menu_cbsubs":"1","menu_cbgj":"1","menu_plugins":"0","feed_entries":"5","feed_duration":"12","modal_display":"1","modal_width":"90%","modal_height":"90vh"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Community Builder Package', 'package', 'pkg_communitybuilder', '', 0, 1, 1, 0, '{"name":"Community Builder Package","type":"package","creationDate":"2016-03-22","author":"CB Team","copyright":"Copyright (C) 2004-2016 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved","authorEmail":"cbteam@joomlapolis.com","authorUrl":"http:\\/\\/www.joomlapolis.com\\/","version":"2.0.14","description":"Community Builder 2.0.14","group":"","filename":"pkg_communitybuilder"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"name":"plg_system_kunena","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_SYSTEM_KUNENA_DESC","group":"","filename":"kunena"}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_QUICKICON_KUNENA_DESC","group":"","filename":"kunena"}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"name":"Kunena Framework","type":"library","creationDate":"2016-02-18","author":"Kunena Team","copyright":"(C) 2008 - 2016 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"Kunena Framework.","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Kunena Media Files', 'file', 'KunenaMediaFiles', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2016-02-18","author":"Kunena Team","copyright":"(C) 2008 - 2016 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"name":"com_kunena","type":"component","creationDate":"2016-02-18","author":"Kunena Team","copyright":"(C) 2008 - 2016 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"COM_KUNENA_XML_DESCRIPTION","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"name":"Kunena Forum Package","type":"package","creationDate":"2016-02-18","author":"Kunena Team","copyright":"(C) 2008 - 2016 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"Kunena Forum Package.","group":"","filename":"pkg_kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":"","filename":"alphauserpoints"}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10016, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_community","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":"","filename":"community"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10017, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":"","filename":"comprofiler"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10018, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":"","filename":"gravatar"}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10019, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":"","filename":"uddeim"}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10020, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_kunena","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":"","filename":"kunena"}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10021, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_joomla","type":"plugin","creationDate":"2016-02-18","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"4.0.10","description":"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION","group":"","filename":"joomla"}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10022, 'ARI Image Slider', 'module', 'mod_ariimageslider', '', 0, 1, 0, 0, '{"name":"ARI Image Slider","type":"module","creationDate":"March 2016","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"2.2.1","description":"ARI_IMAGE_SLIDER_MODULE","group":"","filename":"mod_ariimageslider"}', '{"width":"300","height":"220","responsive":"1","theme":"default","sourceHeader":"AIM_LOADIMAGESFROM","subdirLevel":"0","subdir":"0","imgNumber":"0","sortBy":"","sortDir":"asc","lpHeader":"AIM_LIGHTBOX_PARAMS","lightboxEngine":"","lightbox_width":"450","lightbox_height":"300","lightbox_grouping":"1","lightbox_bgColor":"","spHeader":"AIM_SLIDER_PARAMS","opt_manualAdvance":"0","fixTransparentBg":"0","opt_disableClick":"0","opt_effect":"random","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"0","opt_randomStart":"0","showNav":"1","opt_controlNav":"1","opt_keyboardNav":"1","opt_pauseOnHover":"1","opt_stopOnEnd":"0","sspHeader":"AIM_SLIDES_PARAMS","linkTarget":"_self","customLinkTarget":"","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","loadMethod":"ready","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'com_jcomments', 'component', 'com_jcomments', '', 1, 1, 0, 0, '{"name":"JComments","type":"component","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"3.0.5","description":"JComments lets your users comment on content items.","group":"","filename":"jcomments"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'plg_content_jcomments', 'plugin', 'jcomments', 'content', 0, 1, 1, 0, '{"name":"plg_content_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION","group":"","filename":"jcomments"}', '{"show_frontpage":"1","enable_for_archived":"0","comments_count":"1","add_comments":"1","links_position":"1","readmore_link":"1","readmore_css_class":"readmore-link","comments_css_class":"comments-link","show_hits":"0","show_comments_event":"onAfterDisplayContent"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'plg_editors-xtd_jcommentson', 'plugin', 'jcommentson', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_jcommentson","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION","group":"","filename":"jcommentson"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'plg_editors-xtd_jcommentsoff', 'plugin', 'jcommentsoff', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_jcommentsoff","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION","group":"","filename":"jcommentsoff"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'plg_search_jcomments', 'plugin', 'jcomments', 'search', 0, 1, 1, 0, '{"name":"plg_search_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION","group":"","filename":"jcomments"}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'plg_system_jcomments', 'plugin', 'jcomments', 'system', 0, 1, 1, 0, '{"name":"plg_system_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION","group":"","filename":"jcomments"}', '{"disable_template_css":"0","disable_error_reporting":"0","clear_rss":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'plg_user_jcomments', 'plugin', 'jcomments', 'user', 0, 1, 1, 0, '{"name":"plg_user_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_USER_JCOMMENTS_XML_DESCRIPTION","group":"","filename":"jcomments"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'plg_quickicon_jcomments', 'plugin', 'jcomments', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION","group":"","filename":"jcomments"}', '{"context":"mod_quickicon","displayedtext":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'com_jDownloads', 'component', 'com_jdownloads', '', 1, 1, 0, 0, '{"name":"com_jDownloads","type":"component","creationDate":"2016-05-08","author":"Arno Betz","copyright":"(C) 2007-2016 www.jdownloads.com","authorEmail":"info@jdownloads.com","authorUrl":"http:\\/\\/www.jdownloads.com","version":"3.2.44","description":"","group":"","filename":"jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'plg_system_jdownloads', 'plugin', 'jdownloads', 'system', 0, 1, 1, 0, '{"name":"plg_system_jdownloads","type":"plugin","creationDate":"2016-04-04","author":"Arno Betz","copyright":"Copyright (C) 2007 - 2016 by Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.42","description":"PLG_SYSTEM_JDOWNLOADS_DESCRIPTION","group":"","filename":"jdownloads"}', '{"reduce_log_data_sets_to":"","rules":"option=com_jdownloads","enable_again_after_dispatch":"0","use_hider":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'jDownloads Example', 'plugin', 'example_plugin_jdownloads', 'jdownloads', 0, 0, 1, 0, '{"name":"jDownloads Example","type":"plugin","creationDate":"2014-03-28","author":"Arno Betz","copyright":"Copyright (C) 2014 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2","description":"Example Plugin to handle events triggered by jDownloads and used by other extensions.","group":"","filename":"example_plugin_jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'plg_search_jdownloads', 'plugin', 'jdownloads', 'search', 0, 0, 1, 0, '{"name":"plg_search_jdownloads","type":"plugin","creationDate":"2015-04-29","author":"Arno Betz","copyright":"Copyright (C) 2014 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.32","description":"PLG_SEARCH_JDOWNLOADS_XML_DESCRIPTION","group":"","filename":"jdownloads"}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'Button - jDownloads Content', 'plugin', 'jdownloads', 'editors-xtd', 0, 0, 1, 0, '{"name":"Button - jDownloads Content","type":"plugin","creationDate":"2016-04-12","author":"Arno Betz","copyright":"Copyright (C) 2015 Arno Betz","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.42","description":"PLG_EDITORS-XTD_JDOWNLOADS_DESCRIPTION","group":"","filename":"jdownloads"}', '{"frontend":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'Content - jDownloads', 'plugin', 'jdownloads', 'content', 0, 0, 1, 0, '{"name":"Content - jDownloads","type":"plugin","creationDate":"2016-04-12","author":"Arno Betz","copyright":"(c) Arno Betz 2015","authorEmail":"info@jdownloads.com","authorUrl":"www.jdownloads.com","version":"3.2.42","description":"PLG_CONTENT_JDOWNLOADS_XML_DESC","group":"","filename":"jdownloads"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'jDownloads Latest', 'module', 'mod_jdownloads_latest', '', 0, 1, 0, 0, '{"name":"jDownloads Latest","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2007-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_latest"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_date":"1","view_date_same_line":"0","date_format":"","date_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'jDownloads Top', 'module', 'mod_jdownloads_top', '', 0, 1, 0, 0, '{"name":"jDownloads Top","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 by Arno Betz. All rights reserved.","authorEmail":"info@jDownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_TOP_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_top"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_hits":"1","hits_label":"","view_hits_same_line":"1","hits_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'jDownloads Last Updated', 'module', 'mod_jdownloads_last_updated', '', 0, 1, 0, 0, '{"name":"jDownloads Last Updated","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_LAST_UPDATED_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_last_updated"}', '{"text_before":"","text_after":"","spacer1":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"100","spacer2":"","view_date":"1","view_date_same_line":"0","view_date_text":"","date_format":"","date_alignment":"left","spacer3":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","spacer4":"","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","spacer5":"","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","spacer6":"","alignment":"left","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'jDownloads Most Recently Downloaded', 'module', 'mod_jdownloads_most_recently_downloaded', '', 0, 1, 0, 0, '{"name":"jDownloads Most Recently Downloaded","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2008\\/2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_MOST_RECENTLY_DOWNLOADED_DESCRIPTION","group":"","filename":"mod_jdownloads_most_recently_downloaded"}', '{"text_before":"","text_after":"","cat_id":"","sum_view":"5","sum_char":"25","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"200","view_date":"1","view_date_same_line":"0","view_date_text":"","date_format":"Y-m-d H:i:s","date_alignment":"left","view_user":"1","view_user_by":"","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","alignment":"left","moduleclass_sfx":"","spacer6":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'jDownloads Stats', 'module', 'mod_jdownloads_stats', '', 0, 1, 0, 0, '{"name":"jDownloads Stats","type":"module","creationDate":"2015-03-26","author":"Arno Betz","copyright":"(C) 2007-2015 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.31","description":"MOD_JDOWNLOADS_STATS_DESC","group":"","filename":"mod_jdownloads_stats"}', '{"text":"{en-GB}The download archive contains currently #1 Downloads in #2 Categories. To date, these have been downloaded #3 times.{\\/en-GB} {de-DE}Das Download Archiv enth\\u00e4lt aktuell #1 Dateien in #2 Kategorien. Bis heute wurden diese #3 mal heruntergeladen.{\\/de-DE}","use_all_items":"0","value_color":"#990000","alignment":"left","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'jDownloads Tree', 'module', 'mod_jdownloads_tree', '', 0, 1, 0, 0, '{"name":"jDownloads Tree","type":"module","creationDate":"2015-09-17","author":"Josh Prakash","copyright":"Copyright (C) 2008-2010 youthpole.com. All rights reserved.","authorEmail":"joshprakash@yahoo.com","authorUrl":"www.youthpole.com","version":"3.2.38","description":"MOD_JDOWNLOADS_TREE_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_tree"}', '{"lengthc":"20","catoption":"1","catid":"","maxlevel":"0","view_amount_cat_items":"0","view_amount_items":"0","view_zero_values":"0","view_tooltip":"0","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `i1hzw_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10043, 'jDownloads Related', 'module', 'mod_jdownloads_related', '', 0, 1, 0, 0, '{"name":"jDownloads Related","type":"module","creationDate":"2015-09-17","author":"Arno Betz","copyright":"(C) 2009-2015 by Arno Betz. All rights reserved.","authorEmail":"info@jDownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.38","description":"MOD_JDOWNLOADS_RELATED_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_related"}', '{"text_before":"","text_after":"","title":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_tooltip":"1","view_tooltip_length":"250","view_not_found":"1","view_hits":"1","hits_label":"","view_hits_same_line":"1","hits_alignment":"left","view_date":"0","view_date_same_line":"0","date_format":"","date_alignment":"left","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","view_thumbnails":"0","view_thumbnails_dummy":"1","view_thumbnails_size":"100","cat_show":"1","cat_show_type":"all","cat_show_text":"","cat_show_text_color":"#808080","cat_show_text_size":"8pt","cat_show_as_link":"1","show_child_category_downloads":"0","levels":"1","download_ordering":"a.title","download_ordering_direction":"ASC","layout":"","moduleclass_sfx":"","alignment":"left","spacer6":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'jDownloads Rated', 'module', 'mod_jdownloads_rated', '', 0, 1, 0, 0, '{"name":"jDownloads Rated","type":"module","creationDate":"2016-04-03","author":"Arno Betz","copyright":"(C) 2007-2016 Arno Betz. All rights reserved.","authorEmail":"info@jdownloads.com","authorUrl":"www.jDownloads.com","version":"3.2.42","description":"MOD_JDOWNLOADS_RATED_XML_DESCRIPTION","group":"","filename":"mod_jdownloads_rated"}', '{"top_view":"1","text_before":"","text_after":"","cat_id":"","sum_view":"5","sum_char":"","short_char":"","short_version":"","detail_view":"1","view_pics":"1","view_pics_size":"18","view_numerical_list":"0","view_stars":"1","view_stars_new_line":"1","view_stars_rating_count":"1","alignment":"left","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_filters`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `i1hzw_finder_taxonomy`
--

INSERT INTO `i1hzw_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_terms`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `i1hzw_finder_terms_common`
--

INSERT INTO `i1hzw_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_finder_types`
--

CREATE TABLE IF NOT EXISTS `i1hzw_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `i1hzw_finder_types`
--

INSERT INTO `i1hzw_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments` (
`id` int(11) unsigned NOT NULL,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `i1hzw_jcomments`
--

INSERT INTO `i1hzw_jcomments` (`id`, `parent`, `thread_id`, `path`, `level`, `object_id`, `object_group`, `object_params`, `lang`, `userid`, `name`, `username`, `email`, `homepage`, `title`, `comment`, `ip`, `date`, `isgood`, `ispoor`, `published`, `deleted`, `subscribe`, `source`, `source_id`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 0, 0, '0', 0, 2, 'com_content', '', 'en-GB', 0, 'Priyal', 'Priyal', 'shaloni_88@yahoo.co.in', '', '', ':-) Finance Stock Analysis application is realli nice KPI information', '::1', '2016-05-29 11:19:15', 0, 1, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(2, 0, 0, '0', 0, 2, 'com_content', '', 'en-GB', 879, 'Priyal Shah', 'admin', 'priyalshah9779@gmail.com', '', '', 'What is THis????', '::1', '2016-05-29 11:25:38', 1, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(3, 0, 0, '0', 0, 6, 'com_content', '', 'en-GB', 879, 'Priyal Shah', 'admin', 'priyalshah9779@gmail.com', '', '', 'Hi<br /><br />Are providing demo on adhoc request??', '::1', '2016-05-29 20:24:36', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(4, 0, 0, '0', 0, 6, 'com_content', '', 'en-GB', 0, 'Vaishal', 'Vaishal', 'shaloni_88@yahoo.co.in', '', '', 'Yes, But you have to notify us at least 1 week before<br />:)', '::1', '2016-05-29 20:26:21', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(5, 0, 0, '0', 0, 6, 'com_content', '', 'en-GB', 0, 'Shaloni', 'Shaloni', 'shaloni_88@yahoo.co.in', '', '', 'I want to have demo session with client??<br />Will get involve in this activity??', '::1', '2016-05-30 02:35:58', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(6, 0, 0, '0', 0, 6, 'com_content', '', 'en-GB', 879, 'Priyal Shah', 'admin', 'priyalshah9779@gmail.com', '', '', 'Yes', '192.168.0.100', '2016-05-30 15:47:35', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_blacklist`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_blacklist` (
`id` int(11) unsigned NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_custom_bbcodes`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_custom_bbcodes` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `i1hzw_jcomments_custom_bbcodes`
--

INSERT INTO `i1hzw_jcomments_custom_bbcodes` (`id`, `name`, `simple_pattern`, `simple_replacement_html`, `simple_replacement_text`, `pattern`, `replacement_html`, `replacement_text`, `button_acl`, `button_open_tag`, `button_close_tag`, `button_title`, `button_prompt`, `button_image`, `button_css`, `button_enabled`, `ordering`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'YouTube Video', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '[youtube]', '[/youtube]', 'YouTube Video', '', '', 'bbcode-youtube', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(2, 'YouTube Video (short syntax)', '[youtube]{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 2, 1, 0, '0000-00-00 00:00:00'),
(3, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '[youtube]', '[/youtube]', 'YouTube Video', '', '', '', 0, 3, 1, 0, '0000-00-00 00:00:00'),
(4, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 4, 1, 0, '0000-00-00 00:00:00'),
(5, 'YouTube Video (alternate syntax)', '[youtube]http://youtu.be/{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 5, 1, 0, '0000-00-00 00:00:00'),
(6, 'Facebook Video', '[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '[fv]', '[/fv]', 'Facebook Video', '', '', 'bbcode-facebook', 1, 6, 1, 0, '0000-00-00 00:00:00'),
(7, 'Facebook Video (short syntax)', '[fv]{IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 7, 1, 0, '0000-00-00 00:00:00'),
(8, 'Facebook Video (alternate syntax)', '[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 8, 1, 0, '0000-00-00 00:00:00'),
(9, 'Instagram', '[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '[instagram]', '[/instagram]', 'Instagram Photo', '', '', 'bbcode-instagram', 1, 9, 1, 0, '0000-00-00 00:00:00'),
(10, 'Instagram (short syntax)', '[instagram]{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 10, 1, 0, '0000-00-00 00:00:00'),
(11, 'Instagram (alternate syntax)', '[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 11, 1, 0, '0000-00-00 00:00:00'),
(12, 'Vimeo', '[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '[vimeo]', '[/vimeo]', 'Vimeo Video', '', '', 'bbcode-vimeo', 1, 12, 1, 0, '0000-00-00 00:00:00'),
(13, 'Vimeo (short syntax)', '[vimeo]{IDENTIFIER}[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(14, 'Vimeo (alternate syntax)', '[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/${1}/', '1,2,3,4,5,6,7,8,9', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(15, 'Wiki', '[wiki]{SIMPLETEXT}[/wiki]', '<a href="http://www.wikipedia.org/wiki/{SIMPLETEXT}" title="{SIMPLETEXT}" target="_blank">{SIMPLETEXT}</a>', '{SIMPLETEXT}', '\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]', '<a href="http://www.wikipedia.org/wiki/${1}" title="${1}" target="_blank">${1}</a>', '${1}', '1,2,3,4,5,6,7,8,9', '[wiki]', '[/wiki]', 'Wikipedia', '', '', 'bbcode-wiki', 1, 14, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_mailq`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_mailq` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_objects`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_objects` (
`id` int(11) unsigned NOT NULL,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `i1hzw_jcomments_objects`
--

INSERT INTO `i1hzw_jcomments_objects` (`id`, `object_id`, `object_group`, `category_id`, `lang`, `title`, `link`, `access`, `userid`, `expired`, `modified`) VALUES
(1, 2, 'com_content', 2, 'en-GB', 'Finance Qlikview', '/cts/index.php/coe-demos/finance/qlikview', 1, 879, 0, '2016-05-29 11:25:38'),
(2, 5, 'com_content', 2, 'en-GB', 'Qliksense Interview Questions', '/cts/index.php/artifacts/interview-questions/qlikview', 1, 879, 0, '2016-05-29 20:08:25'),
(3, 4, 'com_content', 2, 'en-GB', 'Qlikview Interview Questions', '/cts/index.php/artifacts/interview-questions/qlikview', 1, 879, 0, '2016-05-29 20:09:24'),
(4, 6, 'com_content', 2, 'en-GB', 'Questions & Answers', '/cts/index.php/artifacts/probable-questions', 1, 879, 0, '2016-05-30 15:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_reports`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_reports` (
`id` int(11) unsigned NOT NULL,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_settings`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_jcomments_settings`
--

INSERT INTO `i1hzw_jcomments_settings` (`component`, `lang`, `name`, `value`) VALUES
('', '', 'author_email', '2'),
('', '', 'author_homepage', '1'),
('', '', 'author_name', '2'),
('', '', 'autolinkurls', '6,7,2,3,4,5,8'),
('', '', 'autopublish', '6,7,2,3,4,5,8'),
('', '', 'badwords', ''),
('', '', 'can_ban', '7,8'),
('', '', 'can_comment', '1,9,6,7,2,3,4,5,8'),
('', '', 'can_delete', '6,7,8'),
('', '', 'can_delete_for_my_object', ''),
('', '', 'can_delete_own', '6,7,8'),
('', '', 'can_edit', '6,7,8'),
('', '', 'can_edit_for_my_object', ''),
('', '', 'can_edit_own', '6,7,2,3,4,5,8'),
('', '', 'can_publish', '6,7,5,8'),
('', '', 'can_publish_for_my_object', ''),
('', '', 'can_reply', '1,9,6,7,2,3,4,5,8'),
('', '', 'can_report', '6,7,2,3,4,5,8'),
('', '', 'can_view_email', '6,7,8'),
('', '', 'can_view_homepage', '6,7,2,3,4,5,8'),
('', '', 'can_view_ip', '7,8'),
('', '', 'can_vote', '1,9,6,7,2,3,4,5,8'),
('', '', 'captcha_engine', 'kcaptcha'),
('', '', 'censor_replace_word', '[censored]'),
('', '', 'comments_list_order', 'DESC'),
('', '', 'comments_page_limit', '15'),
('', '', 'comments_pagination', 'both'),
('', '', 'comments_per_page', '10'),
('', '', 'comments_tree_order', '0'),
('', '', 'comment_maxlength', '1000'),
('', '', 'comment_minlength', '0'),
('', '', 'comment_title', '0'),
('', '', 'delete_mode', '0'),
('', '', 'display_author', 'name'),
('', '', 'emailprotection', '1,9'),
('', '', 'enable_autocensor', '1,9'),
('', '', 'enable_bbcode_b', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_code', '2,3,4,5,6,7,8'),
('', '', 'enable_bbcode_hide', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_i', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_img', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_list', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_quote', '1,9,6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_s', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_u', '6,7,2,3,4,5,8'),
('', '', 'enable_bbcode_url', '6,7,2,3,4,5,8'),
('', '', 'enable_blacklist', '0'),
('', '', 'enable_captcha', '1,9'),
('', '', 'enable_categories', ''),
('', '', 'enable_comment_length_check', '1,9,2'),
('', '', 'enable_comment_maxlength_check', ''),
('', '', 'enable_custom_bbcode', '0'),
('', '', 'enable_geshi', '0'),
('', '', 'enable_gravatar', ''),
('', '', 'enable_nested_quotes', '1'),
('', '', 'enable_notification', '0'),
('', '', 'enable_plugins', '1'),
('', '', 'enable_quick_moderation', '0'),
('', '', 'enable_reports', '1'),
('', '', 'enable_rss', '1'),
('', '', 'enable_smilies', '1'),
('', '', 'enable_subscribe', '1,9,6,7,2,3,4,5,8'),
('', '', 'enable_username_check', '1'),
('', '', 'enable_voting', '1'),
('', '', 'feed_limit', '100'),
('', '', 'floodprotection', '1,9,2,3,4'),
('', '', 'flood_time', '30'),
('', '', 'forbidden_names', 'administrator,moderator'),
('', '', 'form_position', '0'),
('', '', 'form_show', '1'),
('', '', 'link_maxlength', '50'),
('', '', 'load_cached_comments', '1'),
('', '', 'max_comments_per_object', '0'),
('', '', 'merge_time', '0'),
('', '', 'message_banned', ''),
('', '', 'message_locked', 'Comments are now closed for this entry'),
('', '', 'message_policy_post', ''),
('', '', 'message_policy_whocancomment', 'You have no rights to post comments'),
('', '', 'notification_email', ''),
('', '', 'notification_type', '1,2'),
('', '', 'reports_before_unpublish', '0'),
('', '', 'reports_per_comment', '0'),
('', '', 'report_reason_required', '1'),
('', '', 'show_commentlength', '1'),
('', '', 'show_policy', '1,9,2'),
('', '', 'smilies', ':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif'),
('', '', 'smilies_path', '/components/com_jcomments/images/smilies/'),
('', '', 'template', 'default'),
('', '', 'template_view', 'list'),
('', '', 'username_maxlength', '20'),
('', '', 'word_maxlength', '50');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_smilies`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_smilies` (
`id` int(11) unsigned NOT NULL,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `i1hzw_jcomments_smilies`
--

INSERT INTO `i1hzw_jcomments_smilies` (`id`, `code`, `alias`, `image`, `name`, `published`, `ordering`, `checked_out`, `checked_out_time`) VALUES
(1, ':D', '', 'laugh.gif', 'Laugh', 1, 1, 0, '0000-00-00 00:00:00'),
(2, ':lol:', '', 'lol.gif', 'Lol', 1, 2, 0, '0000-00-00 00:00:00'),
(3, ':-)', '', 'smile.gif', 'Smile', 1, 3, 0, '0000-00-00 00:00:00'),
(4, ';-)', '', 'wink.gif', 'Wink', 1, 4, 0, '0000-00-00 00:00:00'),
(5, '8)', '', 'cool.gif', 'Cool', 1, 5, 0, '0000-00-00 00:00:00'),
(6, ':-|', '', 'normal.gif', 'Normal', 1, 6, 0, '0000-00-00 00:00:00'),
(7, ':-*', '', 'whistling.gif', 'Whistling', 1, 7, 0, '0000-00-00 00:00:00'),
(8, ':oops:', '', 'redface.gif', 'Redface', 1, 8, 0, '0000-00-00 00:00:00'),
(9, ':sad:', '', 'sad.gif', 'Sad', 1, 9, 0, '0000-00-00 00:00:00'),
(10, ':cry:', '', 'cry.gif', 'Cry', 1, 10, 0, '0000-00-00 00:00:00'),
(11, ':o', '', 'surprised.gif', 'Surprised', 1, 11, 0, '0000-00-00 00:00:00'),
(12, ':-?', '', 'confused.gif', 'Confused', 1, 12, 0, '0000-00-00 00:00:00'),
(13, ':-x', '', 'sick.gif', 'Sick', 1, 13, 0, '0000-00-00 00:00:00'),
(14, ':eek:', '', 'shocked.gif', 'Shocked', 1, 14, 0, '0000-00-00 00:00:00'),
(15, ':zzz', '', 'sleeping.gif', 'Sleeping', 1, 15, 0, '0000-00-00 00:00:00'),
(16, ':P', '', 'tongue.gif', 'Tongue', 1, 16, 0, '0000-00-00 00:00:00'),
(17, ':roll:', '', 'rolleyes.gif', 'Rolleyes', 1, 17, 0, '0000-00-00 00:00:00'),
(18, ':sigh:', '', 'unsure.gif', 'Unsure', 1, 18, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_subscriptions`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_subscriptions` (
`id` int(11) unsigned NOT NULL,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_version`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jcomments_votes`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jcomments_votes` (
`id` int(11) unsigned NOT NULL,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `i1hzw_jcomments_votes`
--

INSERT INTO `i1hzw_jcomments_votes` (`id`, `commentid`, `userid`, `ip`, `date`, `value`) VALUES
(1, 2, 884, '::1', '2016-05-29 16:58:56', 1),
(2, 1, 879, '::1', '2016-05-29 17:00:11', -1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_categories`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_categories` (
`id` int(11) NOT NULL,
  `cat_dir` text NOT NULL,
  `cat_dir_parent` text NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `robots` varchar(255) NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL,
  `notes` text NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_md5` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `i1hzw_jdownloads_categories`
--

INSERT INTO `i1hzw_jdownloads_categories` (`id`, `cat_dir`, `cat_dir_parent`, `parent_id`, `lft`, `rgt`, `level`, `title`, `alias`, `description`, `pic`, `access`, `metakey`, `metadesc`, `robots`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `language`, `notes`, `views`, `params`, `password`, `password_md5`, `ordering`, `published`, `checked_out`, `checked_out_time`, `asset_id`) VALUES
(1, '', '', 0, 0, 5, 0, 'ROOT', 'root', '', '', 1, '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '*', '', 0, '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 0),
(2, 'RFP Documents', '', 1, 1, 2, 1, 'RFP Documents', 'rfp-documents', '', 'folder.png', 1, '', '', '', 879, '2016-05-29 18:30:57', 879, '2016-05-29 19:19:41', '*', '', 0, '', '', '', 1, 1, 0, '0000-00-00 00:00:00', 85),
(3, 'Whitepapers', '', 1, 3, 4, 1, 'Whitepapers', 'whitepapers', '', 'folder.png', 1, '', '', '', 879, '2016-05-29 19:35:12', 879, '2016-05-29 19:35:42', '*', '', 0, '', '', '', 2, 1, 0, '0000-00-00 00:00:00', 88);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_config`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_config` (
`id` int(11) NOT NULL,
  `setting_name` varchar(64) NOT NULL DEFAULT '',
  `setting_value` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=268 ;

--
-- Dumping data for table `i1hzw_jdownloads_config`
--

INSERT INTO `i1hzw_jdownloads_config` (`id`, `setting_name`, `setting_value`) VALUES
(1, 'files.uploaddir', 'C:/xampp/htdocs/cts/jdownloads'),
(2, 'global.datetime', 'Y-m-d'),
(3, 'files.autodetect', '1'),
(4, 'send.mailto', 'info@yourwebsite.com'),
(5, 'send.mailto.option', '0'),
(6, 'send.mailto.betreff', 'Information about the downloads'),
(7, 'send.mailto.from', 'webmaster@yourwebsite.com'),
(8, 'send.mailto.fromname', 'jDownloads'),
(9, 'send.mailto.html', '1'),
(10, 'zipfile.prefix', 'downloads_'),
(11, 'files.order', '0'),
(12, 'checkbox.top.text', '<b>Select all files: </b>'),
(13, 'downloads.titletext', ''),
(14, 'layouts.editor', '0'),
(15, 'licenses.editor', '1'),
(16, 'files.editor', '1'),
(17, 'categories.editor', '1'),
(18, 'info.icons.size', '20'),
(19, 'cat.pic.size', '48'),
(20, 'file.pic.size', '32'),
(21, 'offline', '0'),
(22, 'offline.text', '<table width="70%" align="center" cellspacing="0" cellpadding="20" border="1"><tr><td align="center"><h3>At the moment the Downloads area is undergoing maintenance.<br /><br />Please try again in a few minutes.</h3><br /><img src="components/com_jdownloads/assets/images/offline.png" /></td></tr></table>'),
(23, 'system.list', '- Select -, Joomla 1.0, Joomla 1.5, Windows, Linux, MacIntosh, See description'),
(24, 'language.list', '- Select -, English, German, French, Italian, Spanish, Portuguese, Russian, Polish, Dutch, Turkish, Multilanguage, See description'),
(25, 'file.types.view', 'html,htm,txt,pdf,doc,jpg,jpeg,png,gif'),
(26, 'directories.autodetect', '1'),
(27, 'mail.cloaking', '1'),
(28, 'tempfile.delete.time', '20'),
(29, 'frontend.upload.active', '1'),
(30, 'allowed.upload.file.types', 'zip,rar'),
(31, 'allowed.upload.file.size', '2048'),
(32, 'upload.access', '0'),
(33, 'files.per.side', '10'),
(34, 'upload.form.text', ''),
(35, 'jd.header.title', 'Downloads'),
(36, 'files.per.side.be', '15'),
(37, 'last.log.message', ''),
(38, 'last.restore.log', ''),
(39, 'show.header.catlist', '1'),
(40, 'anti.leech', '0'),
(41, 'direct.download', '0'),
(42, 'days.is.file.new', '15'),
(43, 'picname.is.file.new', 'blue.png'),
(44, 'loads.is.file.hot', '100'),
(45, 'picname.is.file.hot', 'red.png'),
(46, 'download.pic.details', 'download_blue.png'),
(47, 'upload.auto.publish', '0'),
(48, 'cats.order', '0'),
(49, 'autopublish.founded.files', '0'),
(50, 'all.files.autodetect', '1'),
(51, 'file.types.autodetect', 'zip,rar,exe,pdf,doc,gif,jpg,png'),
(52, 'jcomments.active', '0'),
(53, 'fileplugin.defaultlayout', 'Standard Files Layout v3.2'),
(54, 'fileplugin.show_hot', '1'),
(55, 'fileplugin.show_new', '1'),
(56, 'fileplugin.enable_plugin', '1'),
(57, 'fileplugin.show_jdfiledisabled', '1'),
(58, 'fileplugin.layout_disabled', 'Standard Files Layout v3.2'),
(59, 'fileplugin.show_downloadtitle', '1'),
(60, 'fileplugin.offline_title', 'Downloads are disabled.'),
(61, 'fileplugin.offline_descr', 'If you are allowed to download, but you cannot download, please contact the webmaster.'),
(62, 'cat.pic.default.filename', 'folder.png'),
(63, 'file.pic.default.filename', 'zip.png'),
(64, 'jd.version', '3.2.44'),
(65, 'send.mailto.upload', 'info@yourwebsite.com'),
(66, 'send.mailto.option.upload', '0'),
(67, 'send.mailto.betreff.upload', 'A new file has been uploaded.'),
(68, 'send.mailto.from.upload', 'webmaster@yourwebsite.com'),
(69, 'send.mailto.fromname.upload', 'jDownloads'),
(70, 'send.mailto.html.upload', '1'),
(71, 'send.mailto.template.upload', 'File Upload Report<br /><br />Sender: {name}<br />E-Mail: {mail}<br />IP-Adress: {ip}<br /><br />Downloaded details<br /><br />Filename: {file_name}<br />Title: {file_title}<br />Description: {description}<br />Date: {date}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(72, 'send.mailto.template.download', 'Download Notice.<br /><br />The following files were downloaded:<br />{file_list}<br /><br />Date and time: {date_time}<br />Name: {user_name}<br />Usergroup: {user_group}<br />User IP-Adress: {ip_address}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(73, 'download.pic.mirror_1', 'mirror_blue1.png'),
(74, 'download.pic.mirror_2', 'mirror_blue2.png'),
(75, 'picname.is.file.updated', 'green.png'),
(76, 'days.is.file.updated', '15'),
(77, 'thumbnail.size.width', '125'),
(78, 'thumbnail.size.height', '125'),
(79, 'thumbnail.view.placeholder', '0'),
(80, 'thumbnail.view.placeholder.in.lists', '0'),
(81, 'option.navigate.bottom', '0'),
(82, 'option.navigate.top', '1'),
(83, 'view.category.info', '0'),
(84, 'save.monitoring.log', '1'),
(85, 'view.subheader', '1'),
(86, 'view.detailsite', '1'),
(87, 'check.leeching', '1'),
(88, 'allowed.leeching.sites', ''),
(89, 'block.referer.is.empty', '0'),
(90, 'fe.upload.view.author', '1'),
(91, 'fe.upload.view.author.url', '1'),
(92, 'fe.upload.view.release', '1'),
(93, 'fe.upload.view.price', '1'),
(94, 'fe.upload.view.license', '1'),
(95, 'fe.upload.view.language', '1'),
(96, 'fe.upload.view.system', '1'),
(97, 'fe.upload.view.pic.upload', '1'),
(98, 'fe.upload.view.desc.long', '1'),
(99, 'mp3.player.config', 'loop=0;showvolume=1;showstop=1;bgcolor1=006699;bgcolor2=66CCFF'),
(100, 'mp3.view.id3.info', '1'),
(101, 'use.php.script.for.download', '1'),
(102, 'mp3.info.layout', ' <div class="jd_mp3_id3tag_name">{album_title}</div>\n <div class="jd_mp3_id3tag_value">{album}</div>\n <div class="jd_mp3_id3tag_name">{name_title}</div>\n <div class="jd_mp3_id3tag_value">{name}</div>\n <div class="jd_mp3_id3tag_name">{year_title}</div>\n <div class="jd_mp3_id3tag_value">{year}</div>\n <div class="jd_mp3_id3tag_name">{artist_title}</div>\n <div class="jd_mp3_id3tag_value">{artist}</div>\n <div class="jd_mp3_id3tag_name">{genre_title}</div>\n <div class="jd_mp3_id3tag_value">{genre}</div>\n <div class="jd_mp3_id3tag_name">{length_title}</div>\n <div class="jd_mp3_id3tag_value">{length}</div>'),
(103, 'google.adsense.active', '0'),
(104, 'google.adsense.code', ''),
(105, 'countdown.active', '0'),
(106, 'countdown.start.value', '15'),
(107, 'countdown.text', ''),
(108, 'fe.upload.view.extern.file', '0'),
(109, 'fe.upload.view.select.file', '1'),
(110, 'fe.upload.view.desc.short', '1'),
(111, 'fix.upload.filename.blanks', '0'),
(112, 'fix.upload.filename.uppercase', '0'),
(113, 'fix.upload.filename.specials', '1'),
(114, 'use.report.download.link', '1'),
(115, 'send.mailto.report', ''),
(116, 'download.pic.files', 'download2.png'),
(117, 'view.sum.jcomments', '1'),
(118, 'be.new.files.order.first', '1'),
(119, 'downloads.footer.text', ''),
(120, 'view.back.button', '1'),
(121, 'create.auto.cat.dir', '1'),
(122, 'reset.counters', '0'),
(123, 'report.link.only.regged', '1'),
(124, 'view.ratings', '1'),
(125, 'rating.only.for.regged', '0'),
(126, 'view.also.download.link.text', '1'),
(127, 'auto.file.short.description', '0'),
(128, 'auto.file.short.description.value', '200'),
(129, 'view.jom.comment', '0'),
(130, 'use.lightbox.function', '1'),
(131, 'use.alphauserpoints', '0'),
(132, 'use.alphauserpoints.with.price.field', '0'),
(133, 'user.can.download.file.when.zero.points', '0'),
(134, 'user.message.when.zero.points', 'Sorry, you do not have enough points to allow downloading of this file. Please recharge your points account.'),
(135, 'limited.download.number.per.day', '0'),
(136, 'limited.download.reached.message', 'COM_JDOWNLOADS_FE_MESSAGE_AMOUNT_FILES_LIMIT'),
(137, 'download.pic.plugin', 'download2.png'),
(138, 'plugin.auto.file.short.description', '0'),
(139, 'plugin.auto.file.short.description.value', '200'),
(140, 'view.sort.order', '1'),
(141, 'activate.general.plugin.support', '0'),
(142, 'activate.download.log', '1'),
(143, 'categories.per.side', '5'),
(144, 'upload.access.group', '0'),
(145, 'redirect.after.download', '0'),
(146, 'use.tabs.type', '0'),
(147, 'additional.tab.title.1', 'Additional'),
(148, 'additional.tab.title.2', 'Additional'),
(149, 'additional.tab.title.3', 'Additional'),
(150, 'remove.field.title.when.empty', '0'),
(151, 'use.download.title.as.download.link', '0'),
(152, 'custom.field.1.title', ''),
(153, 'custom.field.2.title', ''),
(154, 'custom.field.3.title', ''),
(155, 'custom.field.4.title', ''),
(156, 'custom.field.5.title', ''),
(157, 'custom.field.6.title', ''),
(158, 'custom.field.7.title', ''),
(159, 'custom.field.8.title', ''),
(160, 'custom.field.9.title', ''),
(161, 'custom.field.10.title', ''),
(162, 'custom.field.11.title', ''),
(163, 'custom.field.12.title', ''),
(164, 'custom.field.13.title', ''),
(165, 'custom.field.14.title', ''),
(166, 'custom.field.1.values', ''),
(167, 'custom.field.2.values', ''),
(168, 'custom.field.3.values', ''),
(169, 'custom.field.4.values', ''),
(170, 'custom.field.5.values', ''),
(171, 'custom.field.6.values', ''),
(172, 'custom.field.7.values', ''),
(173, 'custom.field.8.values', ''),
(174, 'custom.field.9.values', ''),
(175, 'custom.field.10.values', ''),
(176, 'group.can.edit.fe', '0'),
(177, 'uploader.can.edit.fe', '0'),
(178, 'use.sef.with.file.titles', '1'),
(179, 'use.general.plugin.support.only.for.descriptions', '0'),
(180, 'com', ''),
(181, 'use.blocking.list', '0'),
(182, 'blocking.list', 'GOOGLE\r\n66.249.72.1 	crawl-66-249-72-1.googlebot.com\r\n66.249.71.153 	crawl-66-249-71-153.googlebot.com\r\n66.249.66.22 	crawl-66-249-66-22.googlebot.com\r\n66.249.71.19 	crawl-66-249-71-19.googlebot.com\r\n66.249.71.132 	crawl-66-249-71-132.googlebot.com \r\n66.249.71.36 	crawl-66-249-71-36.googlebot.com\r\n66.249.72.74 	crawl-66-249-72-74.googlebot.com\r\n66.249.72.199 	crawl-66-249-72-199.googlebot.com\r\n66.249.72.80 	crawl-66-249-72-80.googlebot.com\r\n66.249.66.215   crawl-66-249-66-215.googlebot.com\r\n66.249.67.122   crawl-66-249-67-122.googlebot.com\r\n66.249.67.98	crawl-66-249-67-98.googlebot.com\r\n66.249.66.65	crawl-66-249-66-65.googlebot.com\r\n66.249.66.169   crawl-66-249-66-169.googlebot.com\r\n66.249.71.27    crawl-66-249-71-27.googlebot.com\r\n66.249.72.155   crawl-66-249-72-155.googlebot.com\r\n66.249.72.178   crawl-66-249-72-178.googlebot.com\r\n66.249.66.151   crawl-66-249-66-151.googlebot.com\r\n66.249.71.38    crawl-66-249-71-38.googlebot.com\r\n66.249.71.76    crawl-66-249-71-76.googlebot.com\r\n66.249.72.248   crawl-66-249-72-248.googlebot.com\r\n66.249.66.193	crawl-66-249-66-193.googlebot.com\r\n66.249.66.51	crawl-66-249-66-51.googlebot.com\r\n66.249.72.233   crawl-66-249-72-233.googlebot.com\r\n66.249.66.233   crawl-66-249-66-233.googlebot.com\r\n66.249.71.68    crawl-66-249-71-68.googlebot.com\r\n66.249.72.164   crawl-66-249-72-164.googlebot.com\r\n66.249.72.208   crawl-66-249-72-208.googlebot.com\r\n66.249.72.205   crawl-66-249-72-205.googlebot.com\r\n66.249.72.152   crawl-66-249-72-152.googlebot.com\r\n66.249.71.105   crawl-66-249-71-105.googlebot.com\r\n66.249.72.131   crawl-66-249-72-131.googlebot.com\r\n66.249.72.167   crawl-66-249-72-167.googlebot.com\r\n66.249.71.106   crawl-66-249-71-106.googlebot.com\r\n66.249.66.161   crawl-66-249-66-161.googlebot.com\r\n66.249.66.203   crawl-66-249-66-203.googlebot.com\r\n66.249.71.123   crawl-66-249-71-123.googlebot.com\r\n66.249.72.129   crawl-66-249-72-129.googlebot.com\r\n66.249.72.230   crawl-66-249-72-230.googlebot.com\r\n66.249.66.179   crawl-66-249-66-179.googlebot.com\r\n66.249.66.11    crawl-66-249-66-11.googlebot.com\r\n66.249.72.228   crawl-66-249-72-228.googlebot.com\r\n66.249.66.41    crawl-66-249-66-41.googlebot.com\r\n66.249.66.129   crawl-66-249-66-129.googlebot.com\r\n66.249.66.97    crawl-66-249-66-97.googlebot.com\r\n66.249.72.231   crawl-66-249-72-231.googlebot.com\r\n66.249.72.166   crawl-66-249-72-166.googlebot.com\r\n66.249.72.217   crawl-66-249-72-217.googlebot.com\r\n66.249.72.137   crawl-66-249-72-137.googlebot.com\r\n66.249.76.227   crawl-66-249-76-227.googlebot.com\r\n66.249.76.24    crawl-66-249-76-24.googlebot.com\r\n66.249.71.118   crawl-66-249-71-118.googlebot.com\r\n66.249.66.105   crawl-66-249-66-105.googlebot.com\r\n66.249.66.87    crawl-66-249-66-87.googlebot.com\r\n66.249.66.225   crawl-66-249-66-225.googlebot.com\r\n66.249.71.4     crawl-66-249-71-4.googlebot.com\r\n66.249.73.73   crawl-66-249-73-73.googlebot.com\r\n66.249.73.55   crawl-66-249-73-55.googlebot.com\r\n66.249.74.21   crawl-66-249-74-21.googlebot.com\r\n66.249.75.24   crawl-66-249-75-24.googlebot.com\r\n66.249.75.227  crawl-66-249-75-227.googlebot.com\r\n66.249.76.25   crawl-66-249-76-25.googlebot.com\r\n66.249.78.40   crawl-66-249-78-40.googlebot.com\r\n\r\nYAHOO\r\n67.195.113.227 	b3091030.crawl.yahoo.net\r\n67.195.111.174 	b3091334.crawl.yahoo.net\r\n72.30.161.248 	llf531012.crawl.yahoo.net\r\n67.195.111.46 	b3091201.crawl.yahoo.net\r\n\r\nMSN\r\n207.46.12.240 	msnbot-207-46-12-240.search.msn.com\r\n207.46.204.164 	msnbot-207-46-204-164.search.msn.com\r\n207.46.13.96 	msnbot-207-46-13-96.search.msn.com\r\n207.46.199.50 	msnbot-207-46-199-50.search.msn.com\r\n207.46.204.180 	msnbot-207-46-204-180.search.msn.com\r\n207.46.199.49 	msnbot-207-46-199-49.search.msn.com\r\n207.46.195.242  msnbot-207-46-195-242.search.msn.com\r\n65.52.104.21    msnbot-65-52-104-21.search.msn.com\r\n65.52.109.19	msnbot-65-52-109-19.search.msn.com\r\n157.55.16.230   msnbot-157-55-16-230.search.msn.com\r\n157.55.17.195   msnbot-157-55-17-195.search.msn.com\r\n207.46.204.192  msnbot-207-46-204-192.search.msn.com\r\n207.46.199.53   msnbot-207-46-199-53.search.msn.com\r\n207.46.204.188  msnbot-207-46-204-188.search.msn.com\r\n157.55.17.144   msnbot-157-55-17-144.search.msn.com\r\n207.46.199.22   msnbot-207-46-199-22.search.msn.com\r\n65.52.110.201   msnbot-65-52-110-201.search.msn.com\r\n207.46.199.45   msnbot-207-46-199-45.search.msn.com\r\n65.52.104.27    msnbot-65-52-104-27.search.msn.com\r\n207.46.13.100   msnbot-207-46-13-100.search.msn.com\r\n207.46.204.166  msnbot-207-46-204-166.search.msn.com\r\n65.52.110.23    msnbot-65-52-110-23.search.msn.com\r\n65.52.109.150   msnbot-65-52-109-150.search.msn.com\r\n65.52.110.198   msnbot-65-52-110-198.search.msn.com\r\n65.52.110.152   msnbot-65-52-110-152.search.msn.com\r\n157.55.16.57    msnbot-157-55-16-57.search.msn.com\r\n65.52.111.9     msnbot-65-52-111-9.search.msn.com\r\n65.52.109.151   msnbot-65-52-109-151.search.msn.com\r\n207.46.13.15    msnbot-207-46-13-15.search.msn.com\r\n207.46.13.157   msnbot-207-46-13-157.search.msn.com\r\n157.55.18.26    msnbot-157-55-18-26.search.msn.com\r\n65.52.109.73    msnbot-65-52-109-73.search.msn.com\r\n157.55.16.86    msnbot-157-55-16-86.search.msn.com\r\n65.52.110.17    msnbot-65-52-110-17.search.msn.com\r\n157.55.16.219   msnbot-157-55-16-219.search.msn.com\r\n157.55.17.201   msnbot-157-55-17-201.search.msn.com\r\n207.46.199.39   msnbot-207-46-199-39.search.msn.com\r\n207.46.199.55   msnbot-207-46-199-55.search.msn.com\r\n65.52.108.69    msnbot-65-52-108-69.search.msn.com\r\n65.52.104.87    msnbot-65-52-104-87.search.msn.com\r\n65.52.108.26    msnbot-65-52-108-26.search.msn.com\r\n157.55.16.87    msnbot-157-55-16-87.search.msn.com\r\n207.46.204.224  msnbot-207-46-204-224.search.msn.com\r\n65.52.108.66    msnbot-65-52-108-66.search.msn.com\r\n157.55.17.148   msnbot-157-55-17-148.search.msn.com\r\n65.52.110.153   msnbot-65-52-110-153.search.msn.com\r\n65.52.108.66    msnbot-65-52-108-66.search.msn.com\r\n157.55.16.56    msnbot-157-55-16-56.search.msn.com\r\n157.55.17.146   msnbot-157-55-17-146.search.msn.com\r\n65.52.108.147   msnbot-65-52-108-147.search.msn.com\r\n207.46.199.54   msnbot-207-46-199-54.search.msn.com\r\n157.55.17.199   msnbot-157-55-17-199.search.msn.com\r\n65.52.109.26   msnbot-65-52-109-26.search.msn.com\r\n65.52.104.90   msnbot-65-52-104-90.search.msn.com\r\n65.52.110.16   msnbot-65-52-110-16.search.msn.com\r\n207.46.13.97   msnbot-207-46-13-97.search.msn.com\r\n207.46.13.170  msnbot-207-46-13-170.search.msn.com\r\n207.46.192.48  msnbot-207-46-192-48.search.msn.com\r\n207.46.199.47  msnbot-207-46-199-47.search.msn.com\r\n157.55.112.233 msnbot-157-55-112-233.search.msn.com\r\n207.46.13.117   msnbot-207-46-13-117.search.msn.com\r\n207.46.13.101   msnbot-207-46-13-101.search.msn.com\r\n207.46.204.181  msnbot-207-46-204-181.search.msn.com\r\n207.46.204.243  msnbot-207-46-204-243.search.msn.com\r\n65.52.104.28    msnbot-65-52-104-28.search.msn.com\r\n65.52.111.7    msnbot-65-52-111-7.search.msn.com\r\n65.52.110.145  msnbot-65-52-110-145.search.msn.com\r\n207.46.13.203  msnbot-207-46-13-203.search.msn.com\r\n65.52.109.149  msnbot-65-52-109-149.search.msn.com\r\n207.46.192.50  msnbot-207-46-192-50.search.msn.com\r\n207.46.13.147  msnbot-207-46-13-147.search.msn.com\r\n65.52.104.29  msnbot-65-52-104-29.search.msn.com\r\n65.52.104.11  msnbot-65-52-104-11.search.msn.com\r\n65.52.108.67  msnbot-65-52-108-67.search.msn.com\r\n157.55.16.231 msnbot-157-55-16-231.search.msn.com\r\n207.46.192.45 msnbot-207-46-192-45.search.msn.com\r\n65.52.110.22 msnbot-65-52-110-22.search.msn.com\r\n207.46.13.206 msnbot-207-46-13-206.search.msn.com\r\n157.55.17.200 msnbot-157-55-17-200.search.msn.com\r\n157.55.16.55 msnbot-157-55-16-55.search.msn.com\r\n65.52.108.58 msnbot-65-52-108-58.search.msn.com\r\n157.55.17.149  msnbot-157-55-17-149.search.msn.com\r\n65.52.110.190 msnbot-65-52-110-190.search.msn.com\r\n65.52.110.199 msnbot-65-52-110-199.search.msn.com\r\n65.52.111.245 msnbot-65-52-111-245.search.msn.com\r\n65.52.109.153 msnbot-65-52-109-153.search.msn.com\r\n65.52.109.152 msnbot-65-52-109-152.search.msn.com\r\n65.52.109.146 msnbot-65-52-109-146.search.msn.com\r\n65.52.104.19  msnbot-65-52-104-19.search.msn.com\r\n207.46.13.49  msnbot-207-46-13-49.search.msn.com\r\n207.46.13.93  msnbot-207-46-13-93.search.msn.com\r\n207.46.13.145 msnbot-207-46-13-145.search.msn.com\r\n207.46.13.146 msnbot-207-46-13-146.search.msn.com\r\n157.55.16.11  msnbot-157-55-16-11.search.msn.com\r\n157.55.17.147 msnbot-157-55-17-147.search.msn.com\r\n207.46.13.99  msnbot-207-46-13-99.search.msn.com\r\n65.52.108.24    msnbot-65-52-108-24.search.msn.com\r\n65.52.109.9     msnbot-65-52-109-9.search.msn.com\r\n65.52.109.194   msnbot-65-52-109-194.search.msn.com\r\n207.46.204.191  msnbot-207-46-204-191.search.msn.com\r\n157.55.17.103   msnbot-157-55-17-103.search.msn.com\r\n207.46.13.118   msnbot-207-46-13-118.search.msn.com\r\n207.46.199.37   msnbot-207-46-199-37.search.msn.com\r\n65.52.104.10    msnbot-65-52-104-10.search.msn.com\r\n65.52.108.142   msnbot-65-52-108-142.search.msn.com\r\n65.52.108.146   msnbot-65-52-108-146.search.msn.com\r\n65.52.108.199   msnbot-65-52-108-199.search.msn.com\r\n157.55.18.24    msnbot-157-55-18-24.search.msn.com\r\n157.56.92.141   msnbot-157-56-92-141.search.msn.com\r\n157.56.93.227   msnbot-157-56-93-227.search.msn.com\r\n207.46.13.169   msnbot-207-46-13-169.search.msn.com\r\n207.46.204.175  msnbot-207-46-204-175.search.msn.com\r\n207.46.204.177  msnbot-207-46-204-177.search.msn.com\r\n207.46.204.234  msnbot-207-46-204-234.search.msn.com\r\n65.52.104.20   msnbot-65-52-104-20.search.msn.com\r\n65.52.110.13   msnbot-65-52-110-13.search.msn.com\r\n157.55.16.220  msnbot-157-55-16-220.search.msn.com\r\n157.55.16.222  msnbot-157-55-16-222.search.msn.com\r\n157.55.17.192  msnbot-157-55-17-192.search.msn.com\r\n207.46.13.148  msnbot-207-46-13-148.search.msn.com\r\n65.52.109.199   msnbot-65-52-109-199.search.msn.com\r\n65.55.52.119    msnbot-65-55-52-119.search.msn.com\r\n65.55.52.117    msnbot-65-55-52-117.search.msn.com\r\n65.55.52.116    msnbot-65-55-52-116.search.msn.com\r\n65.55.52.115    msnbot-65-55-52-115.search.msn.com\r\n65.55.52.113    msnbot-65-55-52-113.search.msn.com\r\n65.55.52.111    msnbot-65-55-52-111.search.msn.com\r\n65.55.52.97     msnbot-65-55-52-97.search.msn.com\r\n65.55.52.96     msnbot-65-55-52-96.search.msn.com\r\n157.55.16.99    msnbot-157-55-16-99.search.msn.com\r\n157.55.33.40    msnbot-157-55-33-40.search.msn.com \r\n157.55.35.94    msnbot-157-55-35-94.search.msn.com\r\n131.253.47.248  msnbot-131-253-47-248.search.msn.com\r\n131.253.46.112  msnbot-131-253-46-112.search.msn.com\r\n131.253.46.216  msnbot-131-253-46-216.search.msn.com\r\n157.55.32.106   msnbot-157-55-32-106.search.msn.com\r\n157.55.33.253   msnbot-157-55-33-253.search.msn.com\r\n157.55.32.186   msnbot-157-55-32-186.search.msn.com\r\n157.55.32.83    msnbot-157-55-32-83.search.msn.com\r\n157.55.32.58    msnbot-157-55-32-58.search.msn.com\r\n157.55.32.96    msnbot-157-55-32-96.search.msn.com\r\n157.55.35.53    msnbot-157-55-35-53.search.msn.com\r\n157.55.35.81    msnbot-157-55-35-81.search.msn.com\r\n157.55.35.46    msnbot-157-55-35-46.search.msn.com\r\n157.55.34.183   msnbot-157-55-34-183.search.msn.com\r\n157.56.229.189  msnbot-157-56-229-189.search.msn.com\r\n131.253.47.173  msnbot-131-253-47-173.search.msn.com\r\n131.253.47.230  msnbot-131-253-47-230.search.msn.com\r\n131.253.47.253  msnbot-131-253-47-253.search.msn.com\r\n131.253.47.188  msnbot-131-253-47-188.search.msn.com\r\n131.253.47.158  msnbot-131-253-47-158.search.msn.com\r\n131.253.47.219  msnbot-131-253-47-219.search.msn.com\r\n157.56.93.150   msnbot-157-56-93-150.search.msn.com\r\n157.55.32.109   msnbot-157-55-32-109.search.msn.com\r\n157.55.36.39    msnbot-157-55-36-39.search.msn.com\r\n157.55.32.111   msnbot-157-55-32-111.search.msn.com\r\n157.55.35.37    msnbot-157-55-35-37.search.msn.com\r\n157.55.34.32    msnbot-157-55-34-32.search.msn.com\r\n157.55.33.20    msnbot-157-55-33-20.search.msn.com\r\n157.55.33.24    msnbot-157-55-33-24.search.msn.com\r\n157.55.33.80    msnbot-157-55-33-80.search.msn.com\r\n157.55.32.149   msnbot-157-55-32-149.search.msn.com\r\n157.55.34.180   msnbot-157-55-34-180.search.msn.com\r\n157.55.33.123   msnbot-157-55-33-123.search.msn.com\r\n157.55.35.38    msnbot-157-55-35-38.search.msn.com\r\n157.55.32.80    msnbot-157-55-32-80.search.msn.com\r\n157.55.35.48    msnbot-157-55-35-48.search.msn.com\r\n157.55.32.98    msnbot-157-55-32-98.search.msn.com\r\n131.253.46.114  msnbot-131-253-46-114.search.msn.com\r\n131.253.46.241   msnbot-131-253-46-241.search.msn.com\r\n131.253.47.155   msnbot-131-253-47-155.search.msn.com\r\n131.253.47.180   msnbot-131-253-47-180.search.msn.com\r\n157.56.229.88    msnbot-157-56-229-88.search.msn.com\r\n157.55.33.14     msnbot-157-55-33-14.search.msn.com\r\n65.55.24.236     msnbot-65-55-24-236.search.msn.com\r\n157.55.35.100   msnbot-157-55-35-100.search.msn.com\r\n131.253.46.246  msnbot-131-253-46-246.search.msn.com\r\n131.253.46.251  msnbot-131-253-46-251.search.msn.com\r\n131.253.47.195  msnbot-131-253-47-195.search.msn.com\r\n157.55.33.22    msnbot-157-55-33-22.search.msn.com\r\n157.55.36.52    msnbot-157-55-36-52.search.msn.com\r\n157.55.35.91    msnbot-157-55-35-91.search.msn.com\r\n157.55.33.79    msnbot-157-55-33-79.search.msn.com\r\n157.56.93.204   msnbot-157-56-93-204.search.msn.com\r\n157.56.93.191   msnbot-157-56-93-191.search.msn.com\r\n131.253.47.195  msnbot-131-253-47-195.search.msn.com\r\n65.52.111.142   msnbot-65-52-111-142.search.msn.com\r\n65.55.24.237    msnbot-65-55-24-237.search.msn.com\r\n157.55.33.19    msnbot-157-55-33-19.search.msn.com\r\n157.55.33.182   msnbot-157-55-33-182.search.msn.com\r\n131.253.46.124   msnbot-131-253-46-124.search.msn.com\r\n131.253.46.231   msnbot-131-253-46-231.search.msn.com\r\n131.253.46.105   msnbot-131-253-46-105.search.msn.com\r\n157.55.34.179    msnbot-157-55-34-179.search.msn.com\r\n157.55.34.166    msnbot-157-55-34-166.search.msn.com\r\n157.56.229.141   msnbot-157-56-229-141.search.msn.com\r\n157.55.32.75   msnbot-157-55-32-75.search.msn.com\r\n157.55.32.86   msnbot-157-55-32-86.search.msn.com\r\n157.55.32.60   msnbot-157-55-32-60.search.msn.com\r\n157.55.36.36   msnbot-157-55-36-36.search.msn.com\r\n157.55.36.49   msnbot-157-55-36-49.search.msn.com\r\n157.56.93.201  msnbot-157-56-93-201.search.msn.com\r\n157.55.36.49   msnbot-157-55-36-49.search.msn.com\r\n157.55.35.36   msnbot-157-55-35-36.search.msn.com\r\n157.55.35.105  msnbot-157-55-35-105.search.msn.com\r\n131.253.47.150 msnbot-131-253-47-150.search.msn.com\r\n131.253.47.177 msnbot-131-253-47-177.search.msn.com\r\n157.55.33.248  msnbot-157-55-33-248.search.msn.com\r\n157.55.32.77   msnbot-157-55-32-77.search.msn.com\r\n157.55.32.77   msnbot-157-55-32-77.search.msn.com\r\n131.253.46.212  msnbot-131-253-46-212.search.msn.com\r\n157.55.34.25    msnbot-157-55-34-25.search.msn.com\r\n157.55.35.112   msnbot-157-55-35-112.search.msn.com\r\n157.55.32.164   msnbot-157-55-32-164.search.msn.com\r\n65.55.24.239    msnbot-65-55-24-239.search.msn.com\r\n131.253.47.235   msnbot-131-253-47-235.search.msn.com\r\n131.253.47.145   msnbot-131-253-47-145.search.msn.com\r\n157.56.93.194    msnbot-157-56-93-194.search.msn.com\r\n157.55.32.108    msnbot-157-55-32-108.search.msn.com\r\n131.253.47.164   msnbot-131-253-47-164.search.msn.com\r\n157.55.32.188    msnbot-157-55-32-188.search.msn.com\r\n157.55.32.184   msnbot-157-55-32-184.search.msn.com\r\n157.55.33.109   msnbot-157-55-33-109.search.msn.com\r\n65.55.208.117   msnbot-65-55-208-117.search.msn.com\r\n65.55.208.6     msnbot-65-55-208-6.search.msn.com\r\n65.55.24.244    msnbot-65-55-24-244.search.msn.com\r\n157.56.92.145   msnbot-157-56-92-145.search.msn.com\r\n157.55.35.79    msnbot-157-55-35-79.search.msn.com\r\n157.55.32.152   msnbot-157-55-32-152.search.msn.com\r\n157.55.34.35    msnbot-157-55-34-35.search.msn.com\r\n157.55.33.44    msnbot-157-55-33-44.search.msn.com\r\n157.55.33.49    msnbot-157-55-33-49.search.msn.com\r\n65.52.111.41    msnbot-65-52-111-41.search.msn.com\r\n157.55.32.93    msnbot-157-55-32-93.search.msn.com\r\n157.55.35.88    msnbot-157-55-35-88.search.msn.com\r\n157.55.33.125   msnbot-157-55-33-125.search.msn.com\r\n65.55.208.25    msnbot-65-55-208-25.search.msn.com\r\n157.55.33.251   msnbot-157-55-33-251.search.msn.com\r\n157.55.33.181   msnbot-157-55-33-181.search.msn.com\r\n207.46.199.23   msnbot-207-46-199-23.search.msn.com\r\n157.55.32.116   msnbot-157-55-32-116.search.msn.com\r\n157.55.36.37    msnbot-157-55-36-37.search.msn.com\r\n65.55.24.221    msnbot-65-55-24-221.search.msn.com\r\n157.55.33.47    msnbot-157-55-33-47.search.msn.com\r\n157.55.32.56   msnbot-157-55-32-56.search.msn.com\r\n157.55.32.82   msnbot-157-55-32-82.search.msn.com\r\n157.55.32.144  msnbot-157-55-32-144.search.msn.com\r\n157.55.33.50   msnbot-157-55-33-50.search.msn.com\r\n65.55.24.216   msnbot-65-55-24-216.search.msn.com\r\n65.55.208.77   msnbot-65-55-208-77.search.msn.com\r\n65.55.213.67   msnbot-65-55-213-67.search.msn.com\r\n65.55.213.68   msnbot-65-55-213-68.search.msn.com\r\n65.55.213.77   msnbot-65-55-213-77.search.msn.com\r\n157.55.33.31   msnbot-157-55-33-31.search.msn.com\r\n157.55.33.98   msnbot-157-55-33-98.search.msn.com\r\n157.55.32.117  msnbot-157-55-32-117.search.msn.com\r\n157.55.34.168  msnbot-157-55-34-168.search.msn.com\r\n157.55.35.98   msnbot-157-55-35-98.search.msn.com\r\n157.56.93.207  msnbot-157-56-93-207.search.msn.com\r\n157.56.93.208  msnbot-157-56-93-208.search.msn.com\r\n157.55.33.113  msnbot-157-55-33-113.search.msn.com\r\n157.55.35.113  msnbot-157-55-35-113.search.msn.com\r\n157.55.33.250  msnbot-157-55-33-250.search.msn.com\r\n157.55.35.75   msnbot-157-55-35-75.search.msn.com\r\n157.55.33.114  msnbot-157-55-33-114.search.msn.com\r\n157.56.92.176  msnbot-157-56-92-176.search.msn.com\r\n157.56.93.39   msnbot-157-56-93-39.search.msn.com\r\n157.55.32.61   msnbot-157-55-32-61.search.msn.com\r\n157.55.34.94   msnbot-157-55-34-94.search.msn.com\r\n157.55.35.33   msnbot-157-55-35-33.search.msn.com\r\n157.55.32.222  msnbot-157-55-32-222.search.msn.com\r\n157.55.34.24   msnbot-157-55-34-24.search.msn.com\r\n157.56.93.94   msnbot-157-56-93-94.search.msn.com\r\n157.55.32.39   msnbot-157-55-32-39.search.msn.com\r\n65.55.52.88    msnbot-65-55-52-88.search.msn.com\r\n\r\nBAIDU (Chinese spider)\r\n123.125.71.96 	baiduspider-123-125-71-96.crawl.baidu.com\r\n123.125.71.117 	baiduspider-123-125-71-117.crawl.baidu.com\r\n123.125.71.106 	baiduspider-123-125-71-106.crawl.baidu.com\r\n123.125.71.98 	baiduspider-123-125-71-98.crawl.baidu.com\r\n123.125.71.94 	baiduspider-123-125-71-94.crawl.baidu.com\r\n123.125.71.101 	baiduspider-123-125-71-101.crawl.baidu.com\r\n123.125.71.105 	baiduspider-123-125-71-105.crawl.baidu.com\r\n\r\nYANDEX\r\n95.108.240.250 	spider30.yandex.ru\r\n95.108.158.236 	imparser06.yandex.ru\r\n178.154.243.101 spider-178-154-243-101.yandex.com\r\n\r\nCHOOPA\r\n173.199.120.43   173.199.120.43.choopa.net\r\n173.199.119.11   173.199.119.11.choopa.net\r\n173.199.115.51   173.199.115.51.choopa.net\r\n173.199.116.91   173.199.116.91.choopa.net\r\n173.199.115.179  173.199.115.179.choopa.net\r\n173.199.115.35   173.199.115.35.choopa.net\r\n173.199.115.147  173.199.115.147.choopa.net\r\n173.199.114.235  173.199.114.235.choopa.net\r\n173.199.117.235  173.199.117.235.choopa.net\r\n173.199.120.131  173.199.120.131.choopa.net\r\n173.199.115.107  173.199.115.107.choopa.net\r\n173.199.119.155  173.199.119.155.choopa.net\r\n173.199.116.219  173.199.116.219.choopa.net\r\n173.199.117.251  173.199.117.251.choopa.net\r\n173.199.115.123  173.199.115.123.choopa.net\r\n173.199.115.171  173.199.115.171.choopa.net\r\n173.199.114.91   173.199.114.91.choopa.net\r\n173.199.114.51   173.199.114.51.choopa.net\r\n173.199.114.139  173.199.114.139.choopa.net\r\n173.199.116.51   173.199.116.51.choopa.net\r\n173.199.119.67   173.199.119.67.choopa.net\r\n173.199.115.11   173.199.115.11.choopa.net\r\n173.199.115.155  173.199.115.155.choopa.net\r\n173.199.120.59   173.199.120.59.choopa.net\r\n173.199.120.91   173.199.120.91.choopa.net\r\n173.199.120.123  173.199.120.123.choopa.net\r\n173.199.114.195  173.199.114.195.choopa.net\r\n173.199.116.235  173.199.116.235.choopa.net\r\n173.199.119.19   173.199.119.19.choopa.net\r\n173.199.115.59   173.199.115.59.choopa.net\r\n173.199.116.179  173.199.116.179.choopa.net\r\n173.199.114.211  173.199.114.211.choopa.net\r\n173.199.115.99   173.199.115.99.choopa.net\r\n173.199.119.147  173.199.119.147.choopa.net\r\n173.199.115.139  173.199.115.139.choopa.net\r\n173.199.114.187  173.199.114.187.choopa.net\r\n173.199.120.51   173.199.120.51.choopa.net\r\n\r\nOTHER\r\n174.129.237.157 ec2-174-129-237-157.compute-1.amazonaws.com\r\n174.129.169.190 ec2-174-129-169-190.compute-1.amazonaws.com\r\n23.22.134.71    ec2-23-22-134-71.compute-1.amazonaws.com\r\n23.20.26.170    ec2-23-20-26-170.compute-1.amazonaws.com\r\n213.186.120.196 213.186.120.196.utel.net.ua\r\n\r\n5.10.83.65   5.10.83.65-static.reverse.softlayer.com\r\n5.10.83.21   5.10.83.21-static.reverse.softlayer.com\r\n5.10.83.41   5.10.83.41-static.reverse.softlayer.com\r\n5.10.83.35   5.10.83.35-static.reverse.softlayer.com\r\n5.10.83.82   5.10.83.82-static.reverse.softlayer.com\r\n5.10.83.15   5.10.83.15-static.reverse.softlayer.com\r\n5.10.83.31   5.10.83.31-static.reverse.softlayer.com\r\n5.10.83.36   5.10.83.36-static.reverse.softlayer.com\r\n5.10.83.19   5.10.83.19-static.reverse.softlayer.com\r\n5.10.83.11   5.10.83.11-static.reverse.softlayer.com\r\n5.10.83.46   5.10.83.46-static.reverse.softlayer.com\r\n5.10.83.23   5.10.83.23-static.reverse.softlayer.com\r\n5.10.83.101  5.10.83.101-static.reverse.softlayer.com\r\n5.10.83.18   ahrefsbot-5-10-83-18.ahrefs.com\r\n'),
(183, 'remove.empty.tags', '0'),
(184, 'create.pdf.thumbs', '0'),
(185, 'create.pdf.thumbs.by.scan', '0'),
(186, 'pdf.thumb.height', '200'),
(187, 'pdf.thumb.width', '200'),
(188, 'pdf.thumb.pic.height', '400'),
(189, 'pdf.thumb.pic.width', '400'),
(190, 'pdf.thumb.image.type', 'GIF'),
(191, 'create.auto.thumbs.from.pics', '0'),
(192, 'create.auto.thumbs.from.pics.image.height', '400'),
(193, 'create.auto.thumbs.from.pics.image.width', '400'),
(194, 'create.auto.thumbs.from.pics.by.scan', '0'),
(195, 'fe.upload.amount.of.pictures', '10'),
(196, 'be.upload.amount.of.pictures', '10'),
(197, 'imagemagick.path', ''),
(198, 'uncategorised.files.folder.name', '_uncategorised_files'),
(199, 'tempzipfiles.folder.name', '_tempzipfiles'),
(200, 'categories.batch.in.progress', '0'),
(201, 'downloads.batch.in.progress', '0'),
(202, 'use.unicode.path.names', '0'),
(203, 'report.mail.subject', 'A user has reported this file.'),
(204, 'report.mail.layout', 'The following Download has been Reported by a user:<br /><br />Category<br />ID: {cat_id}<br />{category}<br /><br />Download<br />ID: {file_id}<br />Title: {file_title}<br />Filename: {file_name}<br /><br />Reason:<br />{reason}<br />Message:<br />{message}<br /><br />Date and time: {date_time}<br />Reported by<br />Name: {name}<br />E-Mail: {mail}<br />User IP: {ip}<br /><br />Please do not respond directly to this email as it is automatically generated and you will not receive a reply.'),
(205, 'report.form.layout', ''),
(206, 'report.form.layout.css', ''),
(207, 'robots', ''),
(208, 'use.real.user.name.in.frontend', '1'),
(209, 'global.datetime.short', 'Y-m-d'),
(210, 'use.css.buttons.instead.icons', '1'),
(211, 'view.empty.categories', '1'),
(212, 'view.empty.sub.categories', '1'),
(213, 'cat.pic.size.height', '48'),
(214, 'file.pic.size.height', '32'),
(215, 'autopublish.default.description', ''),
(216, 'view.no.file.message.in.empty.category', '0'),
(217, 'plupload.runtime', 'full'),
(218, 'plupload.max.file.size', '10'),
(219, 'plupload.chunk.size', '0'),
(220, 'plupload.chunk.unit', 'mb'),
(221, 'plupload.rename', '0'),
(222, 'plupload.image.file.extensions', 'gif,png,jpg,jpeg,GIF,PNG,JPG,JPEG'),
(223, 'plupload.other.file.extensions', 'zip,rar,pdf,doc,txt,ZIP,RAR,PDF,DOC,TXT'),
(224, 'plupload.unique.names', '0'),
(225, 'plupload.enable.image.resizing', '0'),
(226, 'plupload.resize.width', '640'),
(227, 'plupload.resize.height', '480'),
(228, 'plupload.resize.quality', '90'),
(229, 'plupload.enable.uploader.log', '0'),
(230, 'private.area.folder.name', '_private_user_area'),
(231, 'delete.also.images.from.downloads', '0'),
(232, 'preview.files.folder.name', '_preview_files'),
(233, 'delete.also.preview.files.from.downloads', '0'),
(234, 'css.button.color.hot', 'jred'),
(235, 'css.button.color.new', 'jorange'),
(236, 'css.button.color.updated', 'jblue'),
(237, 'css.button.color.download', 'jorange'),
(238, 'css.button.color.mirror1', 'jgray'),
(239, 'css.button.color.mirror2', 'jgray'),
(240, 'css.button.size.download', ''),
(241, 'css.button.size.download.mirror', 'jmedium'),
(242, 'css.button.color.download.mirror', 'jorange'),
(243, 'css.button.size.download.small', 'jsmall'),
(244, 'flowplayer.use', '0'),
(245, 'flowplayer.playerwidth', '300'),
(246, 'flowplayer.playerheight', '200'),
(247, 'flowplayer.playerheight.audio', '30'),
(248, 'flowplayer.control.settings', ''),
(249, 'flowplayer.view.video.only.in.details', '0'),
(250, 'use.pagination.subcategories', '0'),
(251, 'amount.subcats.per.page.in.pagination', '5'),
(252, 'shortened.filename.length', '15'),
(253, 'old.jd.release.found', '0'),
(254, 'show.header.catlist.uncategorised', '1'),
(255, 'show.header.catlist.all', '1'),
(256, 'show.header.catlist.topfiles', '0'),
(257, 'show.header.catlist.newfiles', '0'),
(258, 'show.header.catlist.levels', '0'),
(259, 'html5player.use', '1'),
(260, 'html5player.width', '320'),
(261, 'html5player.height', '240'),
(262, 'html5player.audio.width', '250'),
(263, 'html5player.view.video.only.in.details', '0'),
(264, 'featured.pic.size', '48'),
(265, 'featured.pic.size.height', '48'),
(266, 'featured.pic.filename', 'featured_orange_star.png'),
(267, 'sortorder.fields', '0,1,2,3,4');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_files`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_files` (
`file_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_alias` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `description_long` longtext NOT NULL,
  `file_pic` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `thumbnail2` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `thumbnail3` varchar(255) NOT NULL COMMENT 'Marked as deprecated',
  `images` text NOT NULL COMMENT 'Here are now stored all selected thumbnail images from this download (prior thumbnail to thumbnail3)',
  `price` varchar(20) NOT NULL DEFAULT '',
  `release` varchar(255) NOT NULL DEFAULT '',
  `file_language` int(3) NOT NULL DEFAULT '0',
  `system` int(3) NOT NULL DEFAULT '0',
  `license` varchar(255) NOT NULL DEFAULT '',
  `url_license` varchar(255) NOT NULL DEFAULT '',
  `license_agree` tinyint(1) NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_timeframe` tinyint(1) NOT NULL DEFAULT '0',
  `url_download` varchar(255) NOT NULL COMMENT 'contains only the assigned filename',
  `preview_filename` varchar(255) NOT NULL,
  `other_file_id` int(11) NOT NULL,
  `md5_value` varchar(100) NOT NULL,
  `sha1_value` varchar(100) NOT NULL,
  `extern_file` varchar(255) NOT NULL DEFAULT '',
  `extern_site` tinyint(1) NOT NULL DEFAULT '0',
  `mirror_1` varchar(255) NOT NULL DEFAULT '',
  `mirror_2` varchar(255) NOT NULL DEFAULT '',
  `extern_site_mirror_1` tinyint(1) NOT NULL DEFAULT '0',
  `extern_site_mirror_2` tinyint(1) NOT NULL DEFAULT '0',
  `url_home` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `url_author` varchar(255) NOT NULL DEFAULT '',
  `created_by` varchar(255) NOT NULL DEFAULT '' COMMENT 'Marked as deprecated',
  `created_id` int(11) NOT NULL DEFAULT '0',
  `created_mail` varchar(255) NOT NULL DEFAULT '',
  `modified_by` varchar(255) NOT NULL DEFAULT '' COMMENT 'Marked as deprecated',
  `modified_id` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `submitted_by` int(11) NOT NULL DEFAULT '0',
  `set_aup_points` tinyint(1) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `changelog` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_md5` varchar(100) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `robots` varchar(255) NOT NULL,
  `update_active` tinyint(1) NOT NULL DEFAULT '0',
  `custom_field_1` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_2` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_3` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_4` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_5` tinyint(2) NOT NULL DEFAULT '0',
  `custom_field_6` varchar(255) NOT NULL DEFAULT '',
  `custom_field_7` varchar(255) NOT NULL DEFAULT '',
  `custom_field_8` varchar(255) NOT NULL DEFAULT '',
  `custom_field_9` varchar(255) NOT NULL DEFAULT '',
  `custom_field_10` varchar(255) NOT NULL DEFAULT '',
  `custom_field_11` date NOT NULL DEFAULT '0000-00-00',
  `custom_field_12` date NOT NULL DEFAULT '0000-00-00',
  `custom_field_13` text NOT NULL,
  `custom_field_14` text NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `language` char(7) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `i1hzw_jdownloads_files`
--

INSERT INTO `i1hzw_jdownloads_files` (`file_id`, `file_title`, `file_alias`, `description`, `description_long`, `file_pic`, `thumbnail`, `thumbnail2`, `thumbnail3`, `images`, `price`, `release`, `file_language`, `system`, `license`, `url_license`, `license_agree`, `size`, `date_added`, `file_date`, `publish_from`, `publish_to`, `use_timeframe`, `url_download`, `preview_filename`, `other_file_id`, `md5_value`, `sha1_value`, `extern_file`, `extern_site`, `mirror_1`, `mirror_2`, `extern_site_mirror_1`, `extern_site_mirror_2`, `url_home`, `author`, `url_author`, `created_by`, `created_id`, `created_mail`, `modified_by`, `modified_id`, `modified_date`, `submitted_by`, `set_aup_points`, `downloads`, `cat_id`, `notes`, `changelog`, `password`, `password_md5`, `views`, `metakey`, `metadesc`, `robots`, `update_active`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `custom_field_5`, `custom_field_6`, `custom_field_7`, `custom_field_8`, `custom_field_9`, `custom_field_10`, `custom_field_11`, `custom_field_12`, `custom_field_13`, `custom_field_14`, `access`, `language`, `ordering`, `featured`, `published`, `checked_out`, `checked_out_time`, `asset_id`) VALUES
(1, 'Sanofi RFP', 'sanofi-rfp', '<p>Sanofi Q4</p>', '<p>Sanofi Q4</p>', 'zip.png', '', '', '', '', '', '', 1, 0, '0', '', 0, '138.52 KB', '2016-05-29 18:49:36', '2016-05-29 19:04:39', '2016-05-29 18:57:34', '0000-00-00 00:00:00', 0, '3A - Oracle10g Database Architecture.pdf', 'New Microsoft Office Excel Worksheet.xlsx', 0, '0c13498ccaff09d11392d56a04b6fde8', '831ec89fb2ccc865f36c4dfdcdfd3bccd8730e9f', '', 0, '', '', 0, 0, '', '', '', '', 879, '', '', 879, '2016-05-29 19:05:14', 879, 0, 2, 2, '', '', '', '', 1, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', 1, '*', 1, 0, 1, 0, '0000-00-00 00:00:00', 86),
(2, 'ABC', 'abc', '<p>HI</p>', '', 'zip.png', '', '', '', '', '', '', 0, 0, '0', '', 0, '89.04 KB', '2016-05-29 19:11:12', '2016-05-29 19:11:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '6 - Storage.pdf', '', 0, 'f5300bc7a77407127c6c66e0a87c68c9', '86324ff4e118ee199ee5964e3245ef8a59492e17', '', 0, '', '', 0, 0, '', '', '', '', 879, '', '', 0, '0000-00-00 00:00:00', 879, 0, 1, 2, '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', 1, '*', 2, 0, 1, 0, '0000-00-00 00:00:00', 87),
(3, 'Qlikview Section Access', 'qlikview-section-access', '<p>Qlikview Security Control</p>', '', 'zip.png', '', '', '', '', '', '', 0, 0, '0', '', 0, '107.47 KB', '2016-05-29 19:39:43', '2016-05-29 19:39:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '7 - Table Management.pdf', '', 0, '19cb0d27005694ff3184c528b4588357', '242479ef49f6524daa8e71c36a3f9094c8ffb409', '', 0, '', '', 0, 0, '', '', '', '', 884, '', '', 879, '0000-00-00 00:00:00', 884, 0, 0, 3, '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', 1, '*', 3, 0, 1, 0, '0000-00-00 00:00:00', 89);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_licenses`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_licenses` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `i1hzw_jdownloads_licenses`
--

INSERT INTO `i1hzw_jdownloads_licenses` (`id`, `title`, `alias`, `description`, `url`, `language`, `checked_out`, `checked_out_time`, `published`, `ordering`) VALUES
(1, 'GNU/GPL', 'gnu-gpl', '', 'http://www.gnu.org/licenses/gpl.html', '*', 0, '0000-00-00 00:00:00', 1, 1),
(2, 'GNU/LGPL', 'gnu-lgpl', '', 'http://www.gnu.org/licenses/lgpl.html', '*', 0, '0000-00-00 00:00:00', 1, 1),
(3, 'Donationware', 'donationware', 'The donation is to aid further development and support.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(4, 'Linkware', 'linkware', 'The Linkware licence requires that a link to the original document, image or software supplier is included.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(5, 'Charityware', 'charityware', 'The Charityware licence is free to use, the author requests you to please make a donation to a good cause.', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(6, 'Commercial license', 'commercial-license', '', '', '*', 0, '0000-00-00 00:00:00', 1, 1),
(7, 'Creative Commons', 'creative-commons', '', 'http://en.wikipedia.org/wiki/Creative_Commons', '*', 0, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_logs`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_logs` (
`id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `log_file_id` int(11) NOT NULL,
  `log_file_size` varchar(20) NOT NULL DEFAULT '',
  `log_file_name` varchar(255) NOT NULL DEFAULT '',
  `log_title` varchar(255) NOT NULL DEFAULT '',
  `log_ip` varchar(25) NOT NULL DEFAULT '',
  `log_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_user` int(11) NOT NULL DEFAULT '0',
  `log_browser` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `i1hzw_jdownloads_logs`
--

INSERT INTO `i1hzw_jdownloads_logs` (`id`, `type`, `log_file_id`, `log_file_size`, `log_file_name`, `log_title`, `log_ip`, `log_datetime`, `log_user`, `log_browser`, `language`, `ordering`) VALUES
(1, 2, 1, '0', '', 'Sanofi RFP', '::1', '2016-05-29 18:49:36', 879, '', '', 0),
(2, 1, 1, '138', '3A - Oracle10g Database Architecture.pdf', 'Sanofi RFP', '::1', '2016-05-29 19:07:27', 884, '', '', 0),
(3, 2, 2, '89', '6 - Storage.pdf', 'ABC', '::1', '2016-05-29 19:11:12', 879, '', '', 0),
(4, 1, 2, '89', '6 - Storage.pdf', 'ABC', '::1', '2016-05-29 19:11:31', 879, '', '', 0),
(5, 1, 1, '138', '3A - Oracle10g Database Architecture.pdf', 'Sanofi RFP', '::1', '2016-05-29 19:12:07', 879, '', '', 0),
(6, 2, 3, '107', '7 - Table Management.pdf', 'Qlikview Section Access', '::1', '2016-05-29 19:39:43', 884, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_ratings`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_ratings` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_jdownloads_ratings`
--

INSERT INTO `i1hzw_jdownloads_ratings` (`file_id`, `rating_sum`, `rating_count`, `lastip`) VALUES
(1, 4, 1, '::1'),
(2, 2, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_templates`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_templates` (
`id` int(11) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_typ` tinyint(2) NOT NULL DEFAULT '0',
  `template_header_text` longtext NOT NULL,
  `template_subheader_text` longtext NOT NULL,
  `template_footer_text` longtext NOT NULL,
  `template_before_text` text NOT NULL,
  `template_text` longtext NOT NULL,
  `template_after_text` text NOT NULL,
  `template_active` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `cols` tinyint(1) NOT NULL DEFAULT '1',
  `checkbox_off` tinyint(1) NOT NULL DEFAULT '0',
  `use_to_view_subcats` tinyint(1) NOT NULL DEFAULT '0',
  `symbol_off` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `i1hzw_jdownloads_templates`
--

INSERT INTO `i1hzw_jdownloads_templates` (`id`, `template_name`, `template_typ`, `template_header_text`, `template_subheader_text`, `template_footer_text`, `template_before_text`, `template_text`, `template_after_text`, `template_active`, `locked`, `note`, `cols`, `checkbox_off`, `use_to_view_subcats`, `symbol_off`, `language`, `checked_out`, `checked_out_time`) VALUES
(1, 'Standard Categories Layout v3.2', 1, '<div class="jd_top_navi" style=""><!-- Categories layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="" >{category_listbox}</div>\n</div>', '<div class="jd_cats_subheader" style="border:none; padding-bottom: 5px;"><!--Categories layout subheader-->\n  <div class="jd_cat_subheader_title" style="">{subheader_title}</div>\n  <div class="jd_clear"></div>  \n  <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n  <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div> \n</div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!-- Categories layout footer -->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{cat_title_begin}<div class= "jd_subcats_title_text" style="">{subcats_title_text}</div>{cat_title_end}\n{cat_info_begin}\n<div class="jd_cat_main" style=""><!-- Standard Categories layout main -->\n    <div class="jd_categories_title" style="">{cat_pic}{cat_title}</div>\n    <div class= "jd_sum_subcats" style="">{sum_subcats}</div>\n    <div class="jd_clear_right"></div>\n    <div class="jd_sum_files_cat" style="">{sum_files_cat}</div>\n    <div  class="jd_cat_description" style="">{cat_description}</div>\n    <div class="jd_clear_left">{tags}</div>\n</div>\n{cat_info_end}', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(2, 'Categories Example with 4 columns v3.2', 1, '<div class="jd_top_navi" style=""><!-- Categories layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="" >{category_listbox}</div>\n</div>', '<div class="jd_cats_subheader" style="border:none; padding-bottom: 5px;"><!--Categories layout subheader-->\n  <div class="jd_cat_subheader_title" style="">{subheader_title}</div>\n  <div class="jd_clear"></div>  \n  <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n  <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div> \n</div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!-- Categories layout footer -->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{cat_info_begin}\n<div class="jd_cats_4col_wrapper" style="">\n  <!-- cat pics -->\n   <div class="jd_cats_4col_inner_wrapper" style="">\n      <div class= "jd_cats_4col">{cat_pic1}</div>\n      <div class= "jd_cats_4col">{cat_pic2}</div>\n      <div class= "jd_cats_4col">{cat_pic3}</div>\n      <div class= "jd_cats_4col">{cat_pic4}</div>\n   </div>\n  <!-- cat titles -->\n   <div class="jd_cats_4col_inner_wrapper" style="font-weight: bold;">\n      <div class= "jd_cats_4col">{cat_title1}</div>\n      <div class= "jd_cats_4col">{cat_title2}</div>\n      <div class= "jd_cats_4col">{cat_title3}</div>\n      <div class= "jd_cats_4col">{cat_title4}</div>\n   </div>\n  <!-- num subcats -->\n   <div class="jd_cats_4col_inner_wrapper" style="">\n      <div class= "jd_cats_4col">{sum_subcats1}&#160;</div>\n      <div class= "jd_cats_4col">{sum_subcats2}&#160;</div>\n      <div class= "jd_cats_4col">{sum_subcats3}&#160;</div>\n      <div class= "jd_cats_4col">{sum_subcats4}&#160;</div>\n   </div>\n  <!-- num files -->\n    <div class="jd_cats_4col_inner_wrapper" style="">\n      <div class= "jd_cats_4col">{sum_files_cat1}&#160;</div>\n      <div class= "jd_cats_4col">{sum_files_cat2}&#160;</div>\n      <div class= "jd_cats_4col">{sum_files_cat3}&#160;</div>\n      <div class= "jd_cats_4col">{sum_files_cat4}&#160;</div>\n    </div>\n<div class="jd_clear"></div>\n</div>\n{cat_info_end}', '', 0, 1, 'Here is a sample layout with 4 columns. If you create your own layout with more then one column, you must observe the rules which may be found in the FAQ.', 4, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(3, 'Categories Example with 2 columns v3.2', 1, '<div class="jd_top_navi" style=""><!-- Categories layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="" >{category_listbox}</div>\n</div>', '<div class="jd_cats_subheader" style="border:none; padding-bottom: 5px;"><!--Categories layout subheader-->\n  <div class="jd_cat_subheader_title" style="">{subheader_title}</div>\n  <div class="jd_clear"></div>  \n  <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n  <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div> \n</div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!-- Categories layout footer -->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{cat_info_begin}\n<div class="jd_cats_2col_wrapper" style="">\n    <div class="jd_2col_inner_wrapper" style="">\n        <div class="jd_inline" style="">\n            <div class= "jd_cats_2col" style="font-weight: bold;">{cat_title1}</div>\n            <div class= "jd_cats_2col" style="">{sum_subcats1}&#160;</div>\n            <div class= "jd_cats_2col" style="">{sum_files_cat1}&#160;</div>\n        </div>\n                <div class= "jd_cats_2col jd_cats_2col_left"  style="">{cat_pic1}</div>\n        <div class= "jd_cats_2col"  style="width:100%;">{cat_description1}&#160;</div>\n    </div>\n    <div class="jd_2col_inner_wrapper_right" style="float:right;">\n        <div class="jd_inline" style="">\n            <div class= "jd_cats_2col"  style="font-weight: bold;">{cat_title2}</div>\n            <div class= "jd_cats_2col"  style="">{sum_subcats2}&#160;</div>\n            <div class= "jd_cats_2col"  style="">{sum_files_cat2}&#160;</div>\n        </div>\n        <div class= "jd_cats_2col jd_cats_2col_left"  style="">{cat_pic2}</div> \n        <div class= "jd_cats_2col" style="width:100%;">{cat_description2}&#160;</div>\n    </div>\n </div>\n<div class="jd_clear"></div>\n{cat_info_end}', '', 0, 1, '', 2, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(4, 'Standard Categories Layout for paginated Subcategories 3.2', 1, '', '', '', '{cat_title_begin}\n<div class="jd_subcats_title_text"  style=" width: 100%;">{subcats_title_text}</div>\n<div id="pageNavPosition" class="pageNavPosition"></div>\n{cat_title_end}\n<div class="jd_clear"></div>\n<div id="results" class="jd_subcats_main" style="" />', '{cat_info_begin}\n<div class="jd_subcat_pagination_inner_wrapper" style="">\n<div class="" style="padding:0px 5px; display:inline-block;">{cat_pic}<b>{cat_title}</b></div>\n<div style="display: inline-block; float: right; text-align: right;">\n    <div class="jd_sum_files_cat" style="">{sum_files_cat}</div>\n    <div class="jd_sum_subcats" style="">{sum_subcats}</div>\n</div>\n<div class="jd_clear"></div>\n<div  class="jd_cat_description" style="">{cat_description}</div>\n</div>\n<div class="jd_clear"></div> \n{cat_info_end}', '</div>', 0, 1, 'This is a subcategory layout used in categories when subcategory pagination is enabled by the ''Show page navigation for subcategories?'' option in the Frontend tab of the Configuration. This layout must not be activated because it is automatically used when the above option is selected. It is not intended as a standalone category layout.', 1, 0, 1, 0, '*', 0, '0000-00-00 00:00:00'),
(5, 'Standard Category Layout v3.2', 4, '<div class="jd_top_navi" style=""><!-- Category layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_cat_subheader" style="height:3em;"><!-- Category layout subheader -->\n   <div  class="jd_cat_subheader_title" style="vertical-align:top;">{subheader_title}</div>\n   <div class="jd_clear"></div>\n   <div class ="jd_subcat_count" style="vertical-align:top;">{count_of_sub_categories}</div>\n   <div class="jd_page_nav" style="vertical-align:top;">{page_navigation_pages_counter}{page_navigation}</div>\n</div>', '<div class="jd_footer jd_page_nav">{page_navigation}</div>\n<!-- Category layout footer -->\n<div class="jd_back_button" style="">{back_link}</div>', '', '{cat_title_begin}<div class="jd_subcats_title_text" style="">{subcats_title_text}</div>{cat_title_end}\n{cat_info_begin}\n<div class="jd_cat_wrapper" style=""><!-- Category layout -->\n    <div class="jd_categories_title" style="">{cat_pic}{cat_title}</div>\n    <div class="jd_sum_subcats" style="">{sum_subcats}&#160;</div>\n    <div class="jd_sum_files_cat" style="">{sum_files_cat}&#160;</div>\n    <div class="jd_cat_description" style="">{cat_description}</div>\n    <div class="jd_ tags">{tags}</div>\n</div>\n<div class="jd_clear"></div>\n{cat_info_end}\n{sub_categories}\n<div class="jd_right" style="">{checkbox_top}</div>\n{files}\n{form_hidden}\n<div style="text-align:right">{form_button}</div>', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(6, 'Standard Files Layout v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{files_title_begin}<div class="jd_files_title" style="">{files_title_text}</div>{files_title_end}\n<div class= "{featured_class} jd_download_title" style="">\n    <div class="jd_title_block" style="">{file_pic}{file_title}{release}{pic_is_new}{pic_is_hot}{pic_is_updated}</div>\n    <div class="jd_rating" style="">{rating}</div>\n    <div class="jd_featured_pic" style="">{featured_pic}</div>\n    <div class="jd_clear"></div>\n</div><!-- end of featured class -->\n<div class="jd_clear">{tags}</div>\n<div class="jd_download_wrapper" style="">\n   <div class ="{featured_detail_class}  jd_description_wrapper"  style=""> \n        <div class="jd_image_right" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img src="{thumbnail}" style="" /></a>{screenshot_end} </div>    \n        <div class="jd_clear_left"></div>\n        <div class="jd_download_description" style="">{description}</div>\n    {mp3_player}{mp3_id3_tag}\n   </div><!-- end of featured_detail class -->\n   <!-- now the details note this layout uses mini symbols -->\n   <div class="jd_clear"></div>    \n   <div class="jd_minipic_wrapper" style="" >\n     <small>\n        <div class="jd_files_minipic" style="">{license_text}</div>\n        <div class="jd_files_minipic" style="">{author_text}</div>\n        <div class="jd_files_minipic" style="">{author_url_text}</div>\n        <div class="jd_files_minipic" style="">{created_date_value}</div>\n        <div class="jd_files_minipic" style="">{language_text}</div>\n        <div class="jd_files_minipic" style="">{system_text}</div>\n        <div class="jd_files_minipic" style="">{filesize_value}</div>\n        <div class="jd_files_minipic" style="">{hits_value}</div>\n     </small>\n     <div class="jd_left" style="">{sum_jcomments}</div>\n     <div class="jd_url_download_right" style="">{url_download}</div>\n   </div> \n</div>', '', 0, 1, '', 1, 1, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(7, 'Standard Files Layout with Checkboxes v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{files_title_begin}<div class="jd_files_title" style="">{files_title_text}</div>{files_title_end}\n<div class= "{featured_class}" style="width: 100%;">\n      <div class="jd_clear"></div>\n      <div class="jd_left" style="">{file_pic}{file_title}{release}{pic_is_new}{pic_is_hot}{pic_is_updated}</div>\n<div class="jd_checkbox_wrapper" style="">\n      <div class="jd_featured_pic jd_files_checkbox" style="">{featured_pic}</div>\n      <div class="jd_rating_field" style="">{rating}</div>\n      <div class="jd_checkbox_file" style="">{checkbox_list}</div>\n</div>\n</div>\n<!-- now the details -->\n<div class="jd_clear">{tags}</div>\n<div class ="jd_content_wrapper {featured_detail_class}" style="">   \n    <div class ="jd_clear jd_content_left" style=""> \n        <div class="jd_image_right" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img src="{thumbnail}" style="" /></a>{screenshot_end}</div>    \n        <div class="jd_clear_left" style="">{description}</div>\n   </div>\n <div class="jd_clear"> </div>\n   <div class="jd_fields_wrapper " style="width:100%;">\n           <div class="jd_fields_caption" style="">Information</div> \n           <div class="jd_fields" style="width:100%;">\n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title}</span>\n                 <span class="jd_field_value">{created_date_value}</span>\n             </div>\n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title}</span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{system_title}</span>\n                 <span class="jd_field_value">{system_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{hits_title}</span>\n                 <span class="jd_field_value">{hits_value}</span>\n            </div>\n        </div>\n   </div>\n   <div class="jd_preview" style="">{mp3_player}</div>\n   <div class="jd_preview" style="">{mp3_id3_tag}</div>\n</div>\n<div class="jd_clear"></div>', '', 0, 1, '', 1, 0, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(8, 'Standard Files Layout without Checkboxes v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{files_title_begin}<div class="jd_files_title" style="">{files_title_text}</div>{files_title_end}\n<div class= "{featured_class}" style="width: 100%;">\n     <div class="jd_clear"></div><!-- files layout without checkboxes -->\n     <div class="jd_left" style="">{file_pic}{file_title}{release}{pic_is_new}{pic_is_hot}{pic_is_updated}</div>\n     <div class="jd_download_url jd_download_url_position" style="">{url_download}</div>\n     <div class="jd_rating" style="">{rating}</div>\n     <div class="jd_featured_pic" style="text-align:center; float:right; margin:0 10px;">{featured_pic}</div>\n</div>\n<!-- now the details -->\n<div class="jd_clear">{tags}</div>\n<div class ="jd_content_wrapper {featured_detail_class}" style="">   \n    <div class ="jd_clear jd_content_left" style=""> \n        <div class="jd_image_right" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img src="{thumbnail}" style="" /></a>{screenshot_end}</div>    \n        <div class="jd_clear_left" style="">{description}</div>\n   </div>\n <div class="jd_clear"> </div>\n   <div class="jd_fields_wrapper " style="width:100%;">\n          <div class="jd_fields_caption" style="">Information</div> \n          <div class="jd_fields" style="width:100%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title}</span>\n                 <span class="jd_field_value">{created_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title}</span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{system_title}</span>\n                 <span class="jd_field_value">{system_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{hits_title}</span>\n                 <span class="jd_field_value">{hits_value}</span>\n            </div>\n          </div>\n   </div>\n   <div class="jd_preview" style="">{mp3_player}</div>\n   <div class="jd_preview" style="">{mp3_id3_tag}</div>\n</div>\n<div class="jd_clear"></div>', '', 1, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(9, 'Alternate Files Layout v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{files_title_begin}<div class="jd_files_title" style="">{files_title_text}</div>{files_title_end}\n <div class= "{featured_class} jd_download_title" style="">\n     <div class="jd_left" style=""> {file_pic} {file_title} {pic_is_new} {pic_is_hot} {pic_is_updated}{featured_pic}</div>\n     <div class="jd_rating" style=""> {rating} </div>\n</div>\n<div class="jd_clear"></div>\n<div class="jd_tags">{tags}</div>\n<div class="jd_download_wrapper" style="">\n    <div class="{featured_detail_class} jd_clear">\n       <div class="jd_words_wrapper" style="" >\n           <div class="jd_words_left" style="padding-left:5px;">\n                  <span style="font-weight: 600">{created_date_title}:&#160;</span><span>{created_date_value}</span></div>\n           <div class="jd_words_left"><span style="font-weight: 600">{release_title}:&#160;</span><span>{release}</span></div>\n           <div class="jd_words_left"><span style="font-weight: 600">{license_title}:&#160;</span><span>{license_text}</span></div>\n           <div class="jd_words_left"><span style="font-weight: 600">{filesize_title}:&#160;</span><span>{filesize_value}</span></div>\n         <div class="jd_words_right">{url_download}</div>\n</div>\n     <div class="jd_clear"></div>\n     <div class ="jd_description_wrapper"  style=""> \n         <div class="jd_image_right" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"> \n             <img src="{thumbnail}" style="" /></a>{screenshot_end}</div>    \n         <div class="jd_clear_left"></div>\n         <div class="jd_download_description" style="">{description}</div>\n     </div>\n     <div class="jd_clear"></div>\n     <div class="jd_readmore">{link_to_details}</div>\n    </div>\n</div>', '', 0, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(10, 'Files Layout Full Info v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '{files_title_begin}<div class = "jd_files_title" style="">{files_title_text}</div>{files_title_end}\n<div class="jd_download_wrapper">\n        <!--  title section  -->\n        <div class="jd_header" style="border:0px none;">\n             <div class="jd_title_left"><h4>{file_pic}{file_title}{pic_is_new}{pic_is_hot}{pic_is_updated}</h4></div>\n             <div class="jd_title_right jd_download_url_position" style="margin-top:15px;">{url_download}</div>\n             <div class="jd_title_right">{featured_pic}</div>\n        </div>\n        <div class="jd_clear"></div>\n        <div class="jd_tags" style="">{tags}</div>\n        <!-- preview, description and screen shots section  -->\n        <div class="jd_main {featured_class}" style="">\n              <div class="jd_description jd_clear">{description}</div>\n              <div class="jd_preview" style="">{preview_player}</div>\n              <div class="jd_preview" style="">{mp3_id3_tag}</div>\n              <div class="jd_screenshot_zone jd_clear" style="">\n                <span class="jd_screenshot">{screenshot_begin}<a href="{screenshot}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail}" /></a>{screenshot_end} </span>\n                <span class="jd_screenshot">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail2}" /></a>{screenshot_end2} </span>\n                <span class="jd_screenshot"> {screenshot_begin3}<a href="{screenshot3}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail3}" /></a>{screenshot_end3}</span>\n              </div> <!-- end of screenshot zone -->\n</div><!-- end of jd_main -->\n<div class="jd_clear"> </div>\n<!--  information section  -->\n   <div class="jd_fields_wrapper {featured_detail_class}" style="">\n        <div class="jd_fields_caption" style="">Information</div> \n        <!--  set width to 50% as we have two columns -->\n        <div class="jd_fields" style="width: 50%;">\n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title}</span>\n                 <span class="jd_field_value">{created_date_value}</span>\n             </div>\n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title}</span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="width:100%">\n                 <span class="jd_field_title">{rating_title}</span>\n                 <span class="jd_field_value jd_rating_field" style="">{rating}</span>\n            </div>\n        </div>\n        <!-- end of first jd_fields column -->\n        <div class="jd_fields" style="width:50%;">\n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_by_title}</span>\n                 <span class="jd_field_value">{created_by_value}</span>\n             </div>  \n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_by_title}</span>\n                 <span class="jd_field_value">{modified_by_value}</span>\n             </div> \n             <div class="jd_field_row" style=""> \n                     <span class="jd_field_title">{hits_title}</span>\n                     <span class="jd_field_value">{hits_value}</span>\n             </div>\n             <div class="jd_field_row" style="">\n                      <span class="jd_field_title">{license_title}</span>\n                     <span class="jd_field_value">{license_text}</span>\n             </div>\n             <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{price_title}</span>\n                    <span class="jd_field_value">{price_value}</span>\n             </div>\n        </div><!-- end of second jd_fields -->\n  </div><!-- end of information section -->\n  <div class="jd_clear"></div>\n</div>', '', 0, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(11, 'Files link only v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '<div class = "jd_files_oneline" style="">{file_title}{release}{pic_is_new}{pic_is_hot}{pic_is_updated}&#160;</div>', '', 0, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(12, 'Files Layout Single Line v3.2', 2, '<div class="jd_top_navi" style=""><!--Files layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_files_subheader" style=""><!--Files layout subheader-->\n    <div class="jd_clear"></div>\n    <div class="jd_files_subheader_title" style="">{subheader_title}</div>\n    <div class="jd_page_nav" style="">{page_navigation_pages_counter}{page_navigation}</div>\n    <div class="jd_clear"></div>\n    <div class="jd_subcat_count" style="">{count_of_sub_categories}</div>\n    <div class="jd_sort_order" style="">{sort_order}</div>\n</div>\n<div class="jd_clear"></div>', '<div class="jd_footer jd_page_nav" style="">{page_navigation}</div><!--Files layout footer-->\n<div style="" class="jd_back_button">{back_link}</div>', '', '<div class="jd_content_wrapper">\n<div class ="jd_clear {featured_class}" style="width:100%; padding:3px 0px; ">\n      <div class = "jd_left" style="">{file_pic}{file_title}{release}{pic_is_new}{pic_is_hot}{pic_is_updated}</div>\n      <div class = "jd_right jd_download_url_position" style="">{url_download}</div>\n      <div class="jd_featured_pic" style="">{featured_pic}</div>\n      <div class="jd_clear" style=""></div>\n  </div>\n</div>\n<div class="jd_clear" style=""></div>', '', 0, 1, '', 1, 1, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(13, 'Standard Details Layout v3.2 - Full Info', 5, '<div class="jd_top_navi" style=""><!-- Details layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_cat_subheader" style="font-weight: bold;">{detail_title}</div><!-- Details layout subheader -->', '<div class="jd_back_button" style="">{back_link}</div><!-- Details layout footer -->', '', '<div class="jd_download_details_wrapper"><!--  Details Full Info layout main -->\n<!--  title section  -->\n    <div class="jd_header" style ="border: 0px none;">\n        <div class="jd_title_left"><h4>{file_pic} {file_title} {pic_is_new} {pic_is_hot} {pic_is_updated}</h4></div>\n        <div class="jd_title_right  jd_download_url_position" style="">{url_download}</div>\n        <div class="jd_title_right">{featured_pic}</div>\n    </div>\n    <div class="jd_clear"></div>\n    <div class="jd_tags" style="">{tags}</div>\n<!-- preview, description and screen shots section  -->\n    <div class="jd_main {featured_class}" style="">\n        <div class="jd_description jd_clear">{description_long} </div>\n        <div class="jd_preview" style="">{preview_player}</div>\n        <div class="jd_preview" style="">{mp3_id3_tag}</div>\n        <div class="jd_screenshot_zone jd_clear" style="">\n            <span class="jd_screenshot">{screenshot_begin}<a href="{screenshot}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail}" /></a>{screenshot_end} </span>\n            <span class="jd_screenshot">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail2}" /></a>{screenshot_end2} </span>\n            <span class="jd_screenshot">{screenshot_begin3}<a href="{screenshot3}" rel="lightbox" target="_blank"><img class="jd_image-left" src="{thumbnail3}" /></a>{screenshot_end3} </span>\n        </div> <!-- end of screenshot zone -->\n    </div><!-- end of jd_main -->\n    <div class="jd_clear"></div>\n<!--  information section  -->\n    <div class="jd_fields_wrapper {featured_detail_class}" style="">\n        <div class="jd_fields_caption" style="">Information </div> \n<!--  set width to 50% as we have two columns  -->\n        <div class="jd_fields" style="width: 50%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title} </span>\n                 <span class="jd_field_value">{created_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title} </span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{rating_title}</span>\n                 <span class="jd_field_value jd_rating_field" style="">{rating}</span>\n            </div>\n        </div>\n <!-- end of first jd_fields column -->\n        <div class="jd_fields" style="width: 50%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_by_title} </span>\n                 <span class="jd_field_value">{created_by_value}</span>\n            </div>  \n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_by_title} </span>\n                 <span class="jd_field_value">{modified_by_value}</span>\n            </div> \n            <div class="jd_field_row" style=""> \n                <span class="jd_field_title">{hits_title}</span>\n                <span class="jd_field_value">{hits_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{license_title}</span>\n                <span class="jd_field_value">{license_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{price_title}</span>\n                <span class="jd_field_value">{price_value}</span>\n            </div>\n        </div><!-- end of second jd_fields column -->\n    </div><!--  end of information section jd_fields_wrapper -->\n    <div class="jd_clear"></div>\n    <div class="jd_report_link" style="">{report_link}</div>\n</div>', '', 1, 1, '', 1, 0, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(14, 'Example Details Layout with Tabs v3.2', 5, '<div class="jd_top_navi" style=""><!-- Details layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_cat_subheader" style="font-weight: bold;">{detail_title}</div><!-- Details layout subheader -->', '<div class="jd_back_button" style="">{back_link}</div><!-- Details layout footer -->', '', '<div class="jd_download_details_title {featured_class}" style="">{file_pic}{file_title}{pic_is_new}{pic_is_hot}{pic_is_updated}\n     <div  class="jd_right" style="">{featured_pic}</div>\n     <div style="padding-top:7px;">{rating}</div>\n</div><!-- Example Details with Tabs layout main -->\n{tabs begin}\n{tab description}\n<div>{description_long}</div>\n{tab description end}\n{tab pics}\n<div class="jd_download_detail_pics_wrapper" style="">\n     <div class="jd_download_detail_pics" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail}" /></a>{screenshot_end}</div>\n     <div class="jd_download_detail_pics" style=""">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail2}" align="right" /></a>{screenshot_end2}</div>\n     <div class="jd_download_detail_pics" style=""">{screenshot_begin3}<a href="{screenshot3}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail3}" align="right" /></a>{screenshot_end3}</div>\n     <div class="jd_download_detail_pics" style=""">{screenshot_begin4}<a href="{screenshot4}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail4}" align="right" /></a>{screenshot_end4}</div> \n     <div class="jd_download_detail_pics" style=""">{screenshot_begin5}<a href="{screenshot5}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail5}" align="right" /></a>{screenshot_end5}</div>\n</div>\n<div class="jd_clear"> </div>\n{tab pics end}\n{tab mp3}\n<div>{mp3_player}</div>\n<div>{mp3_id3_tag}</div>\n{tab mp3 end}\n{tab data}\n     <div class="jd_fields_wrapper {featured_detail_class}"  style="">\n           <div class="jd_fields_caption" style="">{details_block_title}</div> \n<!--  set width to 50% as we have two columns  -->\n            <div class="jd_fields" style="width: 50%;">\n               <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title}</span>\n                 <span class="jd_field_value">{created_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title}</span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{rating_title}</span>\n                 <span class="jd_field_value jd_rating_field" style="">{rating}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{author_title}</span>\n                    <span class="jd_field_value">{author_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{md5_title}</span>\n                    <span class="jd_field_value">{md5_value}</span>\n            </div>\n        </div>\n <!-- end of first jd_fields column -->\n        <div class="jd_fields" style="width:50%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_by_title}</span>\n                 <span class="jd_field_value">{created_by_value}</span>\n            </div>  \n             <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_by_title}</span>\n                 <span class="jd_field_value">{modified_by_value}</span>\n            </div> \n            <div class="jd_field_row" style=""> \n                     <span class="jd_field_title">{hits_title}</span>\n                     <span class="jd_field_value">{hits_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{license_title}</span>\n                <span class="jd_field_value">{license_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{price_title}</span>\n                <span class="jd_field_value">{price_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{author_url_title}</span>\n                <span class="jd_field_value">{author_url_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{sha1_title}</span>\n                <span class="jd_field_value">{sha1_value}</span>\n            </div>\n        </div><!-- end of second jd_fields -->\n    </div>\n{tab data end}\n{tab download}\n        <div class="jd_field_row_wide" style="">{file_name_title}:{file_name}</div> \n        <div class="jd_field_row_wide" style="">{filesize_title}:{filesize_value}</div> \n        <div class="jd_field_row_wide" style="">{url_download}{mirror_1}{mirror_2}</div> \n        <div class="jd_field_row_wide" style="">{report_link}</div>\n{tab download end}\n{tab custom1}\n \n{tab custom1 end}\n{tabs end}', '', 0, 1, '', 1, 0, 0, 1, '*', 0, '0000-00-00 00:00:00'),
(15, 'Example Details Layout v3.2', 5, '<div class="jd_top_navi" style=""><!-- Details layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_cat_subheader" style="font-weight: bold;">{detail_title}</div><!-- Details layout subheader -->', '<div class="jd_back_button" style="">{back_link}</div><!-- Details layout footer -->', '', '<div class="jd_download_details_wrapper"><!-- Example Details layout main -->\n    <div class="jd_download_details_title {featured_class}" style="">\n    {file_pic}{file_title}{pic_is_new}{pic_is_hot}{pic_is_updated}\n	<div class="jd_right" style=""> {featured_pic}</div>\n		<div class="jd_rating_field" style="font-size: 11px; padding-top:7px;">{rating}</div>\n    </div>\n    <div class="jd_clear"></div>\n    <div class="jd_tags">{tags}</div>\n    <div class="jd_clear"></div>\n    <div style="font-weight:normal">{description_long}</div>\n    <div class="jd_video_and_images_wrapper" style="width:100%">.\n        <div>{mp3_player}</div>\n        <div>{mp3_id3_tag}</div>\n        <div class="jd_download_detail_pics_wrapper" style="">\n            <div class="jd_download_detail_pics" style="">{screenshot_begin}<a href="{screenshot}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail}" /></a>{screenshot_end}</div>\n            <div class="jd_download_detail_pics" style=""">{screenshot_begin2}<a href="{screenshot2}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail2}" align="right" /></a>{screenshot_end2}</div>\n            <div class="jd_download_detail_pics" style=""">{screenshot_begin3}<a href="{screenshot3}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail3}" align="right" /></a>{screenshot_end3}</div>\n            <div class="jd_download_detail_pics" style=""">{screenshot_begin4}<a href="{screenshot4}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail4}" align="right" /></a>{screenshot_end4}</div> \n            <div class="jd_download_detail_pics" style=""">{screenshot_begin5}<a href="{screenshot5}" rel="lightbox"><img class="jd_download_detail_img" src="{thumbnail5}" align="right" /></a>{screenshot_end5}</div>\n        </div>\n    </div>\n    <div class="jd_clear"> </div>\n<!--  information section  -->\n    <div class="jd_fields_wrapper {featured_detail_class}"  style="">\n        <div class="jd_fields_caption" style="">{details_block_title}</div> \n<!--  set width to 50% as we have two columns  -->\n        <div class="jd_fields" style="width: 50%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_date_title} </span>\n                 <span class="jd_field_value">{created_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{modified_date_title} </span>\n                 <span class="jd_field_value">{modified_date_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{release_title}</span>\n                 <span class="jd_field_value">{release}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{filesize_title}</span>\n                 <span class="jd_field_value">{filesize_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{rating_title}</span>\n                 <span class="jd_field_value jd_rating_field" style="">{rating}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{author_title}</span>\n                    <span class="jd_field_value">{author_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{md5_title}</span>\n                    <span class="jd_field_value">{md5_value}</span>\n            </div>\n        </div>\n <!-- end of first jd_fields column -->\n        <div class="jd_fields" style="width:50%;">\n            <div class="jd_field_row" style="">\n                 <span class="jd_field_title">{created_by_title} </span>\n                 <span class="jd_field_value">{created_by_value}</span>\n            </div>  \n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{modified_by_title} </span>\n                <span class="jd_field_value">{modified_by_value}</span>\n            </div> \n            <div class="jd_field_row" style=""> \n                <span class="jd_field_title">{hits_title}</span>\n                <span class="jd_field_value">{hits_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{license_title}</span>\n                <span class="jd_field_value">{license_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{price_title}</span>\n                <span class="jd_field_value">{price_value}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                    <span class="jd_field_title">{author_url_title}</span>\n                    <span class="jd_field_value">{author_url_text}</span>\n            </div>\n            <div class="jd_field_row" style="">\n                <span class="jd_field_title">{sha1_title}</span>\n                <span class="jd_field_value">{sha1_value}</span>\n            </div>\n        </div><!-- end of second jd_fields -->\n        <div class="jd_field_row_wide" style="text-align: center; font-size:1em;">{url_download}{mirror_1}{mirror_2}</div> \n        <div class="jd_field_row_wide" style="text-align: center; font-size:small;">{report_link}</div>\n    </div><!--  end of information section  -->\n</div><!--  end of jd_download_wrapper  -->', '', 0, 1, '', 1, 0, 0, 1, '*', 0, '0000-00-00 00:00:00');
INSERT INTO `i1hzw_jdownloads_templates` (`id`, `template_name`, `template_typ`, `template_header_text`, `template_subheader_text`, `template_footer_text`, `template_before_text`, `template_text`, `template_after_text`, `template_active`, `locked`, `note`, `cols`, `checkbox_off`, `use_to_view_subcats`, `symbol_off`, `language`, `checked_out`, `checked_out_time`) VALUES
(16, 'Standard Summary Layout v3.2', 3, '<div class="jd_top_navi" style=""><!--summary layout header-->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '<div class="jd_cat_subheader" style="font-weight: bold;">{summary_title}</div><!--summary layout subheader-->', '<div class="jd_back_button" style="">{back_link}</div><!--summary layout footer-->', '', '<div class="jd_summary_title" style="">{summary_pic}{title_text}</div>\n<div style="padding:5px;">{download_liste}</div>\n<div>{captcha}</div>\n<div>{password}</div>\n<div style="padding:5px;">{aup_points_info}</div>\n<div style="padding:5px; text-align:center;"><b>{license_title}</b></div>\n<div>{license_text}</div>\n<div style="text-align:center">{license_checkbox}</div>\n<div style="text-align:center; padding:5px;">{download_link}</div>\n<div style="text-align:center;">{info_zip_file_size}</div>\n<div style="text-align:center;">{external_download_info}</div>\n<div style="text-align:center;">{user_limitations}</div>\n<div>{google_adsense}</div>', '', 1, 1, '', 1, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(17, 'Search Form Vertical Layout v3.2 - Standard', 7, '<div class="jd_top_navi" style=""><!-- Search layout header -->\n    <div class="jd_top_navi_item" style="">{home_link}</div>\n    <div class="jd_top_navi_item" style="">{search_link}</div>\n    <div class="jd_top_navi_item" style="">{upper_link}</div>\n    <div class="jd_top_navi_item" style="">{upload_link}</div>\n    <div class="jd_top_navi_catbox" style="">{category_listbox}</div>\n</div>', '', '', '', '', '', 1, 1, '', 4, 0, 0, 0, '*', 0, '0000-00-00 00:00:00'),
(18, 'Search Form Horizontal Layout v3.2', 7, '', '<div class=jd_search_form_wrapper><!-- Search horizontal layout Subheader -->', '</div>  <!-- end of class jd_search_form_wrapper --><!-- Search horizontal layout footer -->', '', '', '', 0, 1, '', 4, 0, 0, 0, '*', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_jdownloads_usergroups_limits`
--

CREATE TABLE IF NOT EXISTS `i1hzw_jdownloads_usergroups_limits` (
`id` int(11) NOT NULL,
  `importance` smallint(6) NOT NULL DEFAULT '0',
  `group_id` int(10) NOT NULL,
  `download_limit_daily` int(10) NOT NULL DEFAULT '0',
  `download_limit_daily_msg` text NOT NULL,
  `download_limit_weekly` int(10) NOT NULL DEFAULT '0',
  `download_limit_weekly_msg` text NOT NULL,
  `download_limit_monthly` int(10) NOT NULL DEFAULT '0',
  `download_limit_monthly_msg` text NOT NULL,
  `download_volume_limit_daily` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_daily_msg` text NOT NULL,
  `download_volume_limit_weekly` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_weekly_msg` text NOT NULL,
  `download_volume_limit_monthly` int(10) NOT NULL DEFAULT '0',
  `download_volume_limit_monthly_msg` text NOT NULL,
  `how_many_times` int(10) NOT NULL DEFAULT '0',
  `how_many_times_msg` text NOT NULL,
  `download_limit_after_this_time` int(4) NOT NULL DEFAULT '60',
  `transfer_speed_limit_kb` int(10) NOT NULL DEFAULT '0',
  `upload_limit_daily` int(10) NOT NULL DEFAULT '0',
  `upload_limit_daily_msg` text NOT NULL,
  `view_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `view_inquiry_form` tinyint(1) NOT NULL DEFAULT '0',
  `view_report_form` tinyint(1) NOT NULL DEFAULT '0',
  `must_form_fill_out` tinyint(1) NOT NULL DEFAULT '0',
  `countdown_timer_duration` int(10) NOT NULL DEFAULT '0',
  `countdown_timer_msg` text NOT NULL,
  `may_edit_own_downloads` tinyint(1) NOT NULL DEFAULT '0',
  `may_edit_all_downloads` tinyint(1) NOT NULL DEFAULT '0',
  `use_private_area` tinyint(1) NOT NULL DEFAULT '0',
  `view_user_his_limits` tinyint(1) NOT NULL DEFAULT '0',
  `view_user_his_limits_msg` text NOT NULL,
  `uploads_only_in_cat_id` int(11) NOT NULL DEFAULT '0',
  `uploads_auto_publish` tinyint(1) NOT NULL DEFAULT '0',
  `uploads_allowed_types` text NOT NULL,
  `uploads_use_editor` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_use_tabs` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_allowed_preview_types` text NOT NULL,
  `uploads_maxfilesize_kb` char(15) NOT NULL DEFAULT '2048',
  `uploads_form_text` text NOT NULL,
  `uploads_max_amount_images` int(3) NOT NULL DEFAULT '3',
  `uploads_can_change_category` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_default_access_level` int(10) NOT NULL DEFAULT '0',
  `uploads_view_upload_icon` tinyint(1) NOT NULL DEFAULT '1',
  `uploads_allow_custom_tags` tinyint(1) NOT NULL DEFAULT '1',
  `form_title` tinyint(1) NOT NULL DEFAULT '1',
  `form_alias` tinyint(1) NOT NULL DEFAULT '1',
  `form_alias_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_version` tinyint(1) NOT NULL DEFAULT '1',
  `form_version_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_access` tinyint(1) NOT NULL DEFAULT '0',
  `form_access_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_update_active` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_language` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_language_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_system` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_system_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_license` tinyint(1) NOT NULL DEFAULT '1',
  `form_license_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_confirm_license` tinyint(1) NOT NULL DEFAULT '1',
  `form_short_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_short_desc_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_long_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_long_desc_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_changelog` tinyint(1) NOT NULL DEFAULT '1',
  `form_changelog_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_category` tinyint(1) NOT NULL DEFAULT '1',
  `form_view_access` tinyint(1) NOT NULL DEFAULT '0',
  `form_language` tinyint(1) NOT NULL DEFAULT '0',
  `form_language_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_published` tinyint(1) NOT NULL DEFAULT '0',
  `form_featured` tinyint(1) NOT NULL DEFAULT '0',
  `form_creation_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_creation_date_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_modified_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_timeframe` tinyint(1) NOT NULL DEFAULT '0',
  `form_views` tinyint(1) NOT NULL DEFAULT '0',
  `form_downloaded` tinyint(1) NOT NULL DEFAULT '0',
  `form_ordering` tinyint(1) NOT NULL DEFAULT '0',
  `form_password` tinyint(1) NOT NULL DEFAULT '0',
  `form_password_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_price` tinyint(1) NOT NULL DEFAULT '1',
  `form_price_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_website` tinyint(1) NOT NULL DEFAULT '1',
  `form_website_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_author_name` tinyint(1) NOT NULL DEFAULT '1',
  `form_author_name_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_author_mail` tinyint(1) NOT NULL DEFAULT '1',
  `form_author_mail_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_pic` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_pic_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_select_main_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_select_main_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_file_size` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_date` tinyint(1) NOT NULL DEFAULT '1',
  `form_file_date_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_select_preview_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_select_preview_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_external_file` tinyint(1) NOT NULL DEFAULT '1',
  `form_external_file_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_mirror_1` tinyint(1) NOT NULL DEFAULT '1',
  `form_mirror_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_mirror_2` tinyint(4) NOT NULL DEFAULT '1',
  `form_mirror_2_x` tinyint(4) NOT NULL DEFAULT '0',
  `form_images` tinyint(1) NOT NULL DEFAULT '1',
  `form_images_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_meta_desc` tinyint(1) NOT NULL DEFAULT '1',
  `form_meta_key` tinyint(1) NOT NULL DEFAULT '1',
  `form_robots` tinyint(1) NOT NULL DEFAULT '1',
  `form_tags` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_3` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_3_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_4` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_4_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_5` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_select_box_5_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_3` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_3_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_4` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_4_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_5` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_short_input_5_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_date_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_1` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_1_x` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_2` tinyint(1) NOT NULL DEFAULT '0',
  `form_extra_large_input_2_x` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `i1hzw_jdownloads_usergroups_limits`
--

INSERT INTO `i1hzw_jdownloads_usergroups_limits` (`id`, `importance`, `group_id`, `download_limit_daily`, `download_limit_daily_msg`, `download_limit_weekly`, `download_limit_weekly_msg`, `download_limit_monthly`, `download_limit_monthly_msg`, `download_volume_limit_daily`, `download_volume_limit_daily_msg`, `download_volume_limit_weekly`, `download_volume_limit_weekly_msg`, `download_volume_limit_monthly`, `download_volume_limit_monthly_msg`, `how_many_times`, `how_many_times_msg`, `download_limit_after_this_time`, `transfer_speed_limit_kb`, `upload_limit_daily`, `upload_limit_daily_msg`, `view_captcha`, `view_inquiry_form`, `view_report_form`, `must_form_fill_out`, `countdown_timer_duration`, `countdown_timer_msg`, `may_edit_own_downloads`, `may_edit_all_downloads`, `use_private_area`, `view_user_his_limits`, `view_user_his_limits_msg`, `uploads_only_in_cat_id`, `uploads_auto_publish`, `uploads_allowed_types`, `uploads_use_editor`, `uploads_use_tabs`, `uploads_allowed_preview_types`, `uploads_maxfilesize_kb`, `uploads_form_text`, `uploads_max_amount_images`, `uploads_can_change_category`, `uploads_default_access_level`, `uploads_view_upload_icon`, `uploads_allow_custom_tags`, `form_title`, `form_alias`, `form_alias_x`, `form_version`, `form_version_x`, `form_access`, `form_access_x`, `form_update_active`, `form_file_language`, `form_file_language_x`, `form_file_system`, `form_file_system_x`, `form_license`, `form_license_x`, `form_confirm_license`, `form_short_desc`, `form_short_desc_x`, `form_long_desc`, `form_long_desc_x`, `form_changelog`, `form_changelog_x`, `form_category`, `form_view_access`, `form_language`, `form_language_x`, `form_published`, `form_featured`, `form_creation_date`, `form_creation_date_x`, `form_modified_date`, `form_timeframe`, `form_views`, `form_downloaded`, `form_ordering`, `form_password`, `form_password_x`, `form_price`, `form_price_x`, `form_website`, `form_website_x`, `form_author_name`, `form_author_name_x`, `form_author_mail`, `form_author_mail_x`, `form_file_pic`, `form_file_pic_x`, `form_select_main_file`, `form_select_main_file_x`, `form_file_size`, `form_file_date`, `form_file_date_x`, `form_select_preview_file`, `form_select_preview_file_x`, `form_external_file`, `form_external_file_x`, `form_mirror_1`, `form_mirror_1_x`, `form_mirror_2`, `form_mirror_2_x`, `form_images`, `form_images_x`, `form_meta_desc`, `form_meta_key`, `form_robots`, `form_tags`, `form_extra_select_box_1`, `form_extra_select_box_1_x`, `form_extra_select_box_2`, `form_extra_select_box_2_x`, `form_extra_select_box_3`, `form_extra_select_box_3_x`, `form_extra_select_box_4`, `form_extra_select_box_4_x`, `form_extra_select_box_5`, `form_extra_select_box_5_x`, `form_extra_short_input_1`, `form_extra_short_input_1_x`, `form_extra_short_input_2`, `form_extra_short_input_2_x`, `form_extra_short_input_3`, `form_extra_short_input_3_x`, `form_extra_short_input_4`, `form_extra_short_input_4_x`, `form_extra_short_input_5`, `form_extra_short_input_5_x`, `form_extra_date_1`, `form_extra_date_1_x`, `form_extra_date_2`, `form_extra_date_2_x`, `form_extra_large_input_1`, `form_extra_large_input_1_x`, `form_extra_large_input_2`, `form_extra_large_input_2_x`, `notes`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 1, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(2, 20, 2, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(3, 30, 3, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(4, 40, 4, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(5, 50, 5, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(6, 60, 6, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(7, 70, 7, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(8, 100, 8, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 1, 'zip,rar,pdf,txt,doc,gif,png,jpg', 1, 1, 'mp3,mp4', '16384', '', 10, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00'),
(9, 0, 9, 0, '{en-GB}You have reached your daily limit for the allowed number of Downloads.<br />You can can resume downloading tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have reached your weekly limit for the maximum permitted number of Downloads.<br />You can download more next week.{/en-GB}', 0, '{en-GB}You have reached your monthly limit for the maximum permitted number of downloads.<br />You can download more next month.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total daily download size.<br />You can download more tomorrow. A new day starts when the Server time has passed the time 00:00:01.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total weekly download size.<br />You can resume downloading next week.{/en-GB}', 0, '{en-GB}You have your reached the limit for the total monthly download size.<br />You can resume downloading next month.{/en-GB}', 0, '{en-GB}One or more of your selected files exceeds your Download limit for the number of times it may be downloaded.<br />Please note that you can download every file only %s times.{/en-GB}', 60, 0, 0, '{en-GB}You can only upload %s files each day. You have reached the limit for today.{/en-GB}', 0, 0, 0, 0, 0, '{en-GB}Please wait. You can download the file in %s seconds.<br /><br />Please note that you can only download the file immediately when you are a registered member.{/en-GB}', 0, 0, 0, 0, '<div class="jd_user_limits">{msg_title}<ul>  <li>{files_daily_label} {files_daily_value} {remaining_label} {files_daily_rest_value}</li>  <li>{files_weekly_label} {files_weekly_value} {remaining_label} {files_weekly_rest_value}</li>  <li>{files_monthly_label} {files_monthly_value} {remaining_label} {files_monthly_rest_value}</li>   <li>{volume_daily_label} {volume_daily_value} {remaining_label} {volume_daily_rest_value}</li>   <li>{volume_weekly_label} {volume_weekly_value} {remaining_label} {volume_weekly_rest_value}</li>   <li>{volume_monthly_label} {volume_monthly_value} {remaining_label} {volume_monthly_rest_value}</li>    <li>{upload_daily_label} {upload_daily_value} {remaining_label} {upload_daily_rest_value}</li> </ul></div>', 0, 0, 'zip,rar,pdf,txt', 1, 1, 'mp3,mp4', '5120', '', 3, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_aliases`
--

INSERT INTO `i1hzw_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('home', 'view', 'home', 1),
('main-forum', 'catid', '1', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('suggestion-box', 'catid', '3', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_announcement` (
`id` int(3) NOT NULL,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_attachments` (
`id` int(11) NOT NULL,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filename_real` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_categories`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_categories` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT 'default',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `i1hzw_kunena_categories`
--

INSERT INTO `i1hzw_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `iconset`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`) VALUES
(1, 0, 'Main Forum', 'main-forum', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, ''),
(3, 1, 'Suggestion Box', 'suggestion-box', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don''t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 'default', 1, 3, 2, 4, 1464459511, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_configuration`
--

INSERT INTO `i1hzw_kunena_configuration` (`id`, `params`) VALUES
(1, '{"board_title":"COE","email":"","board_offline":"0","offline_message":"<h2>The Forum is currently offline for maintenance.<\\/h2>\\r\\n<div>Check back soon!<\\/div>","enablerss":"1","threads_per_page":"20","messages_per_page":"6","messages_per_page_search":"15","showhistory":"1","historylimit":"6","shownew":"1","disemoticons":"0","template":"blue_eagle","showannouncement":"1","avataroncat":"0","catimagepath":"category_images","showchildcaticon":"1","rtewidth":"450","rteheight":"300","enableforumjump":"1","reportmsg":"1","username":"1","askemail":"0","showemail":"0","showuserstats":"1","showkarma":"1","useredit":"1","useredittime":"0","useredittimegrace":"600","editmarkup":"1","allowsubscriptions":"1","subscriptionschecked":"1","allowfavorites":"1","maxsubject":"50","maxsig":"300","regonly":"0","pubwrite":"0","floodprotection":"0","mailmod":"0","mailadmin":"0","captcha":"0","mailfull":"1","allowavatarupload":"1","allowavatargallery":"1","avatarquality":"75","avatarsize":"2048","imageheight":"800","imagewidth":"800","imagesize":"150","filetypes":"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2","filesize":"120","showranking":"1","rankimages":"1","userlist_rows":"30","userlist_online":"1","userlist_avatar":"1","userlist_posts":"1","userlist_karma":"1","userlist_email":"0","userlist_joindate":"1","userlist_lastvisitdate":"1","userlist_userhits":"1","latestcategory":"","showstats":"0","showwhoisonline":"0","showgenstats":"1","showpopuserstats":"1","popusercount":"5","showpopsubjectstats":"1","popsubjectcount":"5","showspoilertag":"1","showvideotag":"1","showebaytag":"1","trimlongurls":"1","trimlongurlsfront":"40","trimlongurlsback":"20","autoembedyoutube":"1","autoembedebay":"1","ebaylanguagecode":"en-us","sessiontimeout":"1800","highlightcode":"0","rss_type":"topic","rss_timelimit":"month","rss_limit":"100","rss_included_categories":"","rss_excluded_categories":"","rss_specification":"rss2.0","rss_allow_html":"1","rss_author_format":"name","rss_author_in_title":"1","rss_word_count":"0","rss_old_titles":"1","rss_cache":"900","defaultpage":"recent","default_sort":"asc","sef":"1","showimgforguest":"1","showfileforguest":"1","pollnboptions":"4","pollallowvoteone":"1","pollenabled":"1","poppollscount":"5","showpoppollstats":"1","polltimebtvotes":"00:15:00","pollnbvotesbyuser":"100","pollresultsuserslist":"1","maxpersotext":"50","ordering_system":"mesid","post_dateformat":"ago","post_dateformat_hover":"datetime","hide_ip":"1","imagetypes":"jpg,jpeg,gif,png","checkmimetypes":"1","imagemimetypes":"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png","imagequality":"50","thumbheight":"32","thumbwidth":"32","hideuserprofileinfo":"put_empty","boxghostmessage":"0","userdeletetmessage":"0","latestcategory_in":"1","topicicons":"1","debug":"0","catsautosubscribed":0,"showbannedreason":"0","showthankyou":"1","showpopthankyoustats":"1","popthankscount":"5","mod_see_deleted":"0","bbcode_img_secure":"text","listcat_show_moderators":"1","lightbox":"1","show_list_time":"720","show_session_type":"2","show_session_starttime":"1800","userlist_allowed":"0","userlist_count_users":"1","enable_threaded_layouts":"0","category_subscriptions":"post","topic_subscriptions":"every","pubprofile":"1","thankyou_max":"10","email_recipient_count":"0","email_recipient_privacy":"bcc","email_visible_address":"","captcha_post_limit":"0","recaptcha_publickey":"","recaptcha_privatekey":"","recaptcha_theme":"white","keywords":0,"userkeywords":0,"image_upload":"registered","file_upload":"registered","topic_layout":"flat","time_to_create_page":"1","show_imgfiles_manage_profile":"1","hold_newusers_posts":"0","hold_guest_posts":"0","attachment_limit":"8","pickup_category":"0","article_display":"intro","send_emails":"1","stopforumspam_key":"","fallback_english":"1","cache":"1","cache_time":"60","ebay_affiliate_id":"5337089937","iptracking":"1","rss_feedburner_url":"","autolink":"1","access_component":"1","statslink_allowed":"1","superadmin_userlist":"0","legacy_urls":"1","attachment_protection":"0","categoryicons":1,"avatarresizemethod":"1","avatarcrop":"0","user_report":"1","searchtime":"365","teaser":"0","ebay_language":"0","ebay_api_key":"","twitter_consumer_key":"","twitter_consumer_secret":"","allow_change_subject":"1","max_links":"6","plugins":{"plg_system_kunena":{"jcontentevents":"0","jcontentevent_target":"body"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_keywords`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_keywords` (
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_keywords_map`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_messages`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_messages` (
`id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `i1hzw_kunena_messages`
--

INSERT INTO `i1hzw_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(2, 0, 2, 3, 'admin', 879, '', 'Welocome to Cognizant', 1464450695, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(3, 2, 2, 3, 'admin', 879, '', 'Welocome to Cognizant', 1464459384, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(4, 3, 2, 3, 'sonu', 884, '', 'Welocome to Cognizant', 1464459511, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_messages_text`
--

INSERT INTO `i1hzw_kunena_messages_text` (`mesid`, `message`) VALUES
(2, ':)  Welocome to COE Pune'),
(3, 'Can you put more context????'),
(4, 'Can i have admin COntact:) :) :)');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_polls`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_polls` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_polls_options` (
`id` int(11) NOT NULL,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_ranks` (
`rank_id` mediumint(8) unsigned NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `i1hzw_kunena_ranks`
--

INSERT INTO `i1hzw_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'New Member', 0, 0, 'rank1.gif'),
(2, 'Junior Member', 20, 0, 'rank2.gif'),
(3, 'Senior Member', 40, 0, 'rank3.gif'),
(4, 'Premium Member', 80, 0, 'rank4.gif'),
(5, 'Elite Member', 160, 0, 'rank5.gif'),
(6, 'Platinum Member', 320, 0, 'rank6.gif'),
(7, 'Administrator', 0, 1, 'rankadmin.gif'),
(8, 'Moderator', 0, 1, 'rankmod.gif'),
(9, 'Spammer', 0, 1, 'rankspammer.gif'),
(10, 'Banned', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_sessions`
--

INSERT INTO `i1hzw_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(879, 'na', 1464521058, '0', 1464580887),
(884, 'na', 1464462543, '0', 1464552815);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_smileys` (
`id` int(4) NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `i1hzw_kunena_smileys`
--

INSERT INTO `i1hzw_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_thankyou`
--

INSERT INTO `i1hzw_kunena_thankyou` (`postid`, `userid`, `targetuserid`, `time`) VALUES
(3, 884, 879, '2016-05-29 20:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_topics`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_topics` (
`id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `i1hzw_kunena_topics`
--

INSERT INTO `i1hzw_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`) VALUES
(2, 3, 'Welocome to Cognizant', 3, 0, 0, 0, 3, 8, 0, 0, 0, 2, 1464450695, 879, ':)  Welocome to COE Pune', 'admin', 4, 1464459511, 884, 'Can i have admin COntact:) :) :)', 'sonu', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` int(11) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_user_categories`
--

INSERT INTO `i1hzw_kunena_user_categories` (`user_id`, `category_id`, `role`, `allreadtime`, `subscribed`, `params`) VALUES
(879, 0, 0, 1464448970, 0, ''),
(884, 0, 0, 1463239574, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_user_read`
--

INSERT INTO `i1hzw_kunena_user_read` (`user_id`, `topic_id`, `category_id`, `message_id`, `time`) VALUES
(879, 2, 3, 4, 1464469495),
(884, 2, 3, 4, 1464552790);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_user_topics`
--

INSERT INTO `i1hzw_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(879, 2, 3, 2, 3, 1, 0, 1, ''),
(884, 2, 3, 1, 4, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_users`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_text` varchar(255) NOT NULL,
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `canSubscribe` tinyint(1) NOT NULL DEFAULT '-1',
  `userListtime` int(11) DEFAULT '-2',
  `thankyou` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i1hzw_kunena_users`
--

INSERT INTO `i1hzw_kunena_users` (`userid`, `status`, `status_text`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `canSubscribe`, `userListtime`, `thankyou`) VALUES
(879, 2, 'Joomla Expert', '', NULL, 0, NULL, 0, 2, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 1),
(884, 0, '', '', NULL, 0, NULL, 0, 1, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0),
(885, 0, '', '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_users_banned` (
`id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_kunena_version`
--

CREATE TABLE IF NOT EXISTS `i1hzw_kunena_version` (
`id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `i1hzw_kunena_version`
--

INSERT INTO `i1hzw_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '4.0.10', '2016-02-18', '2016-05-26', '', 'Villavicencio', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_languages`
--

CREATE TABLE IF NOT EXISTS `i1hzw_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `i1hzw_languages`
--

INSERT INTO `i1hzw_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_menu`
--

CREATE TABLE IF NOT EXISTS `i1hzw_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=200 ;

--
-- Dumping data for table `i1hzw_menu`
--

INSERT INTO `i1hzw_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 215, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 7, '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 1, '*', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 17, 18, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(108, 'main', 'COM_COMPROFILER', 'com-comprofiler', '', 'com-comprofiler', 'index.php?option=com_comprofiler', 'component', 0, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_comprofiler/images/icon-16-cb.png', 0, '{}', 55, 72, 0, '', 1),
(109, 'main', 'COM_COMPROFILER_CONTROLPANEL', 'com-comprofiler-controlpanel', '', 'com-comprofiler/com-comprofiler-controlpanel', 'index.php?option=com_comprofiler', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:cpanel', 0, '{}', 56, 57, 0, '', 1),
(110, 'main', 'COM_COMPROFILER_SHOWUSERS', 'com-comprofiler-showusers', '', 'com-comprofiler/com-comprofiler-showusers', 'index.php?option=com_comprofiler&task=showusers&view=showusers', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:user', 0, '{}', 58, 59, 0, '', 1),
(111, 'main', 'COM_COMPROFILER_SHOWTAB', 'com-comprofiler-showtab', '', 'com-comprofiler/com-comprofiler-showtab', 'index.php?option=com_comprofiler&task=showTab&view=showTab', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:themes', 0, '{}', 60, 61, 0, '', 1),
(112, 'main', 'COM_COMPROFILER_SHOWFIELD', 'com-comprofiler-showfield', '', 'com-comprofiler/com-comprofiler-showfield', 'index.php?option=com_comprofiler&task=showField&view=showField', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:content', 0, '{}', 62, 63, 0, '', 1),
(113, 'main', 'COM_COMPROFILER_SHOWLISTS', 'com-comprofiler-showlists', '', 'com-comprofiler/com-comprofiler-showlists', 'index.php?option=com_comprofiler&task=showLists&view=showLists', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:search', 0, '{}', 64, 65, 0, '', 1),
(114, 'main', 'COM_COMPROFILER_SHOWPLUGINS', 'com-comprofiler-showplugins', '', 'com-comprofiler/com-comprofiler-showplugins', 'index.php?option=com_comprofiler&task=showPlugins&view=showPlugins', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:plugin', 0, '{}', 66, 67, 0, '', 1),
(115, 'main', 'COM_COMPROFILER_TOOLS', 'com-comprofiler-tools', '', 'com-comprofiler/com-comprofiler-tools', 'index.php?option=com_comprofiler&task=tools&view=tools', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:maintenance', 0, '{}', 68, 69, 0, '', 1),
(116, 'main', 'COM_COMPROFILER_SHOWCONFIG', 'com-comprofiler-showconfig', '', 'com-comprofiler/com-comprofiler-showconfig', 'index.php?option=com_comprofiler&task=showconfig&view=showconfig', 'component', 0, 108, 2, 10002, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 70, 71, 0, '', 1),
(117, 'communitybuilder', 'CB Profile', 'cb-profile', '', 'cb-profile', 'index.php?option=com_comprofiler&view=userprofile', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 238, 239, 0, '*', 0),
(118, 'communitybuilder', 'CB Profile Edit', 'cb-profile-edit', '', 'cb-profile-edit', 'index.php?option=com_comprofiler&view=userdetails', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 236, 237, 0, '*', 0),
(119, 'communitybuilder', 'CB Registration', 'cb-registration', '', 'cb-registration', 'index.php?option=com_comprofiler&view=registers', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 234, 235, 0, '*', 0),
(120, 'communitybuilder', 'CB Login', 'cb-login', '', 'cb-login', 'index.php?option=com_comprofiler&view=login', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 232, 233, 0, '*', 0),
(121, 'communitybuilder', 'CB Logout', 'cb-logout', '', 'cb-logout', 'index.php?option=com_comprofiler&view=logout', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 230, 231, 0, '*', 0),
(122, 'communitybuilder', 'CB Forgot Login', 'cb-forgot-login', '', 'cb-forgot-login', 'index.php?option=com_comprofiler&view=lostpassword', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 228, 229, 0, '*', 0),
(123, 'communitybuilder', 'CB Userlist', 'cb-userlist', '', 'cb-userlist', 'index.php?option=com_comprofiler&view=userslist', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 226, 227, 0, '*', 0),
(124, 'communitybuilder', 'CB Manage Connections', 'cb-manage-connections', '', 'cb-manage-connections', 'index.php?option=com_comprofiler&view=manageconnections', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 224, 225, 0, '*', 0),
(125, 'communitybuilder', 'CB Moderate Bans', 'cb-moderate-bans', '', 'cb-moderate-bans', 'index.php?option=com_comprofiler&view=moderatebans', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 222, 223, 0, '*', 0),
(126, 'communitybuilder', 'CB Moderate Images', 'cb-moderate-images', '', 'cb-moderate-images', 'index.php?option=com_comprofiler&view=moderateimages', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 220, 221, 0, '*', 0),
(127, 'communitybuilder', 'CB Moderate Reports', 'cb-moderate-reports', '', 'cb-moderate-reports', 'index.php?option=com_comprofiler&view=moderatereports', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 218, 219, 0, '*', 0),
(128, 'communitybuilder', 'CB Moderate User Approvals', 'cb-moderate-user-approvals', '', 'cb-moderate-user-approvals', 'index.php?option=com_comprofiler&view=pendingapprovaluser', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 216, 217, 0, '*', 0),
(129, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 0, 1, 1, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '{}', 73, 96, 0, '', 1),
(130, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '{}', 74, 75, 0, '', 1),
(131, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-categories.png', 0, '{}', 76, 77, 0, '', 1),
(132, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-users.png', 0, '{}', 78, 79, 0, '', 1),
(133, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-files.png', 0, '{}', 80, 81, 0, '', 1),
(134, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-smileys.png', 0, '{}', 82, 83, 0, '', 1),
(135, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-ranks.png', 0, '{}', 84, 85, 0, '', 1),
(136, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-templates.png', 0, '{}', 86, 87, 0, '', 1),
(137, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-prune.png', 0, '{}', 88, 89, 0, '', 1),
(138, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-plugins.png', 0, '{}', 90, 91, 0, '', 1),
(139, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-config.png', 0, '{}', 92, 93, 0, '', 1),
(140, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 0, 129, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-trash.png', 0, '{}', 94, 95, 0, '', 1),
(141, 'kunenamenu', 'Forum', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=143', 'component', 1, 1, 1, 10013, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 97, 114, 0, '*', 0),
(142, 'kunenamenu', 'Index', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 98, 99, 0, '*', 0),
(143, 'kunenamenu', 'Recent Topics', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":""}', 100, 101, 0, '*', 0),
(144, 'kunenamenu', 'New Topic', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 102, 103, 0, '*', 0),
(145, 'kunenamenu', 'No Replies', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":""}', 104, 105, 0, '*', 0),
(146, 'kunenamenu', 'My Topics', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"2","topics_categories":"0","topics_time":""}', 106, 107, 0, '*', 0),
(147, 'kunenamenu', 'Profile', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 108, 109, 0, '*', 0),
(148, 'kunenamenu', 'Help', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.","body_format":"bbcode"}', 110, 111, 0, '*', 0),
(149, 'kunenamenu', 'Search', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 141, 2, 10013, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 112, 113, 0, '*', 0),
(150, 'mainmenu', 'Forum', 'kunena-2016-05-26', '', 'kunena-2016-05-26', 'index.php?Itemid=141', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"141","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 115, 116, 0, '*', 0),
(151, 'mainmenu', 'Community Forum', '2016-05-26-02-22-37', '', '2016-05-26-02-22-37', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 879, '2016-05-28 15:05:19', 0, 1, ' ', 7, '{"aliasoptions":"141","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 117, 118, 0, '*', 0),
(152, 'mainmenu', 'COE Community', '2016-05-28-20-27-32', '', '2016-05-28-20-27-32', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"141","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 119, 120, 0, '*', 0),
(153, 'mainmenu', 'Demos', 'demos', '', 'demos', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"128","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 121, 128, 0, '*', 0),
(154, 'mainmenu', 'Finance', 'finance', '', 'demos/finance', '', 'separator', -2, 153, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 122, 125, 0, '*', 0),
(155, 'mainmenu', 'HR', 'hr', '', 'demos/hr', '', 'separator', -2, 153, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 126, 127, 0, '*', 0),
(156, 'mainmenu', 'Qlikview', 'qlikview', '', 'demos/finance/qlikview', 'index.php?option=com_content&view=article&id=1', 'component', -2, 154, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 123, 124, 0, '*', 0),
(157, 'mainmenu', 'COE Demos', 'coe-demos', '', 'coe-demos', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 146, 0, '*', 0),
(158, 'mainmenu', 'Finance', 'finance', '', 'coe-demos/finance', 'index.php?Itemid=', 'alias', 1, 157, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 130, 135, 0, '*', 0),
(159, 'mainmenu', 'Qlikview', 'qlikview', '', 'coe-demos/finance/qlikview', 'index.php?option=com_content&view=article&id=2', 'component', 1, 158, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, '*', 0),
(160, 'mainmenu', 'Qliksense', 'qliksense', '', 'coe-demos/finance/qliksense', 'index.php?Itemid=', 'alias', 1, 158, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 133, 134, 0, '*', 0),
(197, 'mainmenu', 'Probable Questions', 'probable-questions', '', 'artifacts/probable-questions', 'index.php?option=com_content&view=article&id=6', 'component', 1, 176, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 182, 183, 0, '*', 0),
(161, 'mainmenu', 'HR', 'hr', '', 'coe-demos/hr', 'index.php?Itemid=', 'alias', 1, 157, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 136, 145, 0, '*', 0),
(162, 'mainmenu', 'Qlikview', 'qlikview', '', 'coe-demos/hr/qlikview', 'index.php?Itemid=', 'alias', 1, 161, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 137, 138, 0, '*', 0),
(199, 'mainmenu', 'Video Conference', 'video-conference', '', 'artifacts/video-conference', 'index.php?option=com_content&view=article&id=1', 'component', 1, 176, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 186, 187, 0, '*', 0),
(163, 'mainmenu', 'Qliksense', 'qliksense', '', 'coe-demos/hr/qliksense', 'index.php?Itemid=', 'alias', 1, 161, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 139, 140, 0, '*', 0),
(164, 'mainmenu', 'Spotfire', 'spotfire', '', 'coe-demos/hr/spotfire', 'index.php?Itemid=', 'alias', 1, 161, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 141, 142, 0, '*', 0),
(198, 'mainmenu', 'Dashboad Helpdesk', 'dashboad-helpdesk', '', 'artifacts/dashboad-helpdesk', 'index.php?option=com_content&view=article&id=1', 'component', 1, 176, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 184, 185, 0, '*', 0),
(165, 'mainmenu', 'Tableau', 'tableau', '', 'coe-demos/hr/tableau', 'index.php?Itemid=', 'alias', 1, 161, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 143, 144, 0, '*', 0),
(166, 'main', 'COM_JCOMMENTS', 'com-jcomments', '', 'com-jcomments', 'index.php?option=com_jcomments', 'component', 0, 1, 1, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jcomments/assets/images/icon-16-jcomments.png', 0, '{}', 147, 166, 0, '', 1),
(167, 'main', 'COM_JCOMMENTS_COMMENTS', 'com-jcomments-comments', '', 'com-jcomments/com-jcomments-comments', 'index.php?option=com_jcomments&view=comments', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-comments', 0, '{}', 148, 149, 0, '', 1),
(168, 'main', 'COM_JCOMMENTS_SETTINGS', 'com-jcomments-settings', '', 'com-jcomments/com-jcomments-settings', 'index.php?option=com_jcomments&view=settings', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-settings', 0, '{}', 150, 151, 0, '', 1),
(169, 'main', 'COM_JCOMMENTS_SMILIES', 'com-jcomments-smilies', '', 'com-jcomments/com-jcomments-smilies', 'index.php?option=com_jcomments&view=smilies', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-smilies', 0, '{}', 152, 153, 0, '', 1),
(170, 'main', 'COM_JCOMMENTS_SUBSCRIPTIONS', 'com-jcomments-subscriptions', '', 'com-jcomments/com-jcomments-subscriptions', 'index.php?option=com_jcomments&view=subscriptions', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-subscriptions', 0, '{}', 154, 155, 0, '', 1),
(171, 'main', 'COM_JCOMMENTS_CUSTOM_BBCODE', 'com-jcomments-custom-bbcode', '', 'com-jcomments/com-jcomments-custom-bbcode', 'index.php?option=com_jcomments&view=custombbcodes', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-custombbcodes', 0, '{}', 156, 157, 0, '', 1),
(172, 'main', 'COM_JCOMMENTS_BLACKLIST', 'com-jcomments-blacklist', '', 'com-jcomments/com-jcomments-blacklist', 'index.php?option=com_jcomments&view=blacklists', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-blacklist', 0, '{}', 158, 159, 0, '', 1),
(173, 'main', 'COM_JCOMMENTS_MAILQ', 'com-jcomments-mailq', '', 'com-jcomments/com-jcomments-mailq', 'index.php?option=com_jcomments&view=mailq', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-mailq', 0, '{}', 160, 161, 0, '', 1),
(174, 'main', 'COM_JCOMMENTS_IMPORT', 'com-jcomments-import', '', 'com-jcomments/com-jcomments-import', 'index.php?option=com_jcomments&view=import', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-import', 0, '{}', 162, 163, 0, '', 1),
(175, 'main', 'COM_JCOMMENTS_ABOUT', 'com-jcomments-about', '', 'com-jcomments/com-jcomments-about', 'index.php?option=com_jcomments&view=about', 'component', 0, 166, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-about', 0, '{}', 164, 165, 0, '', 1),
(176, 'mainmenu', 'Artifacts', 'artifacts', '', 'artifacts', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 167, 188, 0, '*', 0),
(177, 'main', 'COM_JDOWNLOADS', 'com-jdownloads', '', 'com-jdownloads', 'index.php?option=com_jdownloads', 'component', 0, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_jdownloads.gif', 0, '{}', 189, 212, 0, '', 1),
(178, 'main', 'COM_JDOWNLOADS_CONTROL_PANEL', 'com-jdownloads-control-panel', '', 'com-jdownloads/com-jdownloads-control-panel', 'index.php?option=com_jdownloads', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_jdownloads.gif', 0, '{}', 190, 191, 0, '', 1),
(179, 'main', 'COM_JDOWNLOADS_CATEGORIES', 'com-jdownloads-categories', '', 'com-jdownloads/com-jdownloads-categories', 'index.php?option=com_jdownloads&view=categories', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_categories.gif', 0, '{}', 192, 193, 0, '', 1),
(180, 'main', 'COM_JDOWNLOADS_DOWNLOADS', 'com-jdownloads-downloads', '', 'com-jdownloads/com-jdownloads-downloads', 'index.php?option=com_jdownloads&view=downloads', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_downloads.gif', 0, '{}', 194, 195, 0, '', 1),
(181, 'main', 'COM_JDOWNLOADS_FILES', 'com-jdownloads-files', '', 'com-jdownloads/com-jdownloads-files', 'index.php?option=com_jdownloads&view=files', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_files.gif', 0, '{}', 196, 197, 0, '', 1),
(182, 'main', 'COM_JDOWNLOADS_LICENSES', 'com-jdownloads-licenses', '', 'com-jdownloads/com-jdownloads-licenses', 'index.php?option=com_jdownloads&view=licenses', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_licenses.gif', 0, '{}', 198, 199, 0, '', 1),
(183, 'main', 'COM_JDOWNLOADS_LAYOUTS', 'com-jdownloads-layouts', '', 'com-jdownloads/com-jdownloads-layouts', 'index.php?option=com_jdownloads&view=layouts', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_templates.gif', 0, '{}', 200, 201, 0, '', 1),
(184, 'main', 'COM_JDOWNLOADS_LOGS', 'com-jdownloads-logs', '', 'com-jdownloads/com-jdownloads-logs', 'index.php?option=com_jdownloads&view=logs', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_logs.gif', 0, '{}', 202, 203, 0, '', 1),
(185, 'main', 'COM_JDOWNLOADS_USER_GROUPS', 'com-jdownloads-user-groups', '', 'com-jdownloads/com-jdownloads-user-groups', 'index.php?option=com_jdownloads&view=groups', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_groups.gif', 0, '{}', 204, 205, 0, '', 1),
(186, 'main', 'COM_JDOWNLOADS_CONFIGURATION', 'com-jdownloads-configuration', '', 'com-jdownloads/com-jdownloads-configuration', 'index.php?option=com_jdownloads&view=config', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_config.gif', 0, '{}', 206, 207, 0, '', 1),
(187, 'main', 'COM_JDOWNLOADS_TOOLS', 'com-jdownloads-tools', '', 'com-jdownloads/com-jdownloads-tools', 'index.php?option=com_jdownloads&view=tools', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_tools.gif', 0, '{}', 208, 209, 0, '', 1),
(188, 'main', 'COM_JDOWNLOADS_TERMS_OF_USE', 'com-jdownloads-terms-of-use', '', 'com-jdownloads/com-jdownloads-terms-of-use', 'index.php?option=com_jdownloads&view=info', 'component', 0, 177, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jdownloads/assets/images/m_info.gif', 0, '{}', 210, 211, 0, '', 1),
(189, 'mainmenu', 'Helpdesk', 'helpdesk', '', 'helpdesk', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 213, 214, 0, '*', 0),
(190, 'mainmenu', 'RFP Upload & Dowload', 'rfp-upload-dowload', '', 'artifacts/rfp-upload-dowload', 'index.php?option=com_jdownloads&view=category&catid=2', 'component', 1, 176, 2, 10031, 0, '0000-00-00 00:00:00', 0, 6, ' ', 0, '{"show_description":"1","show_subcat_desc":"1","show_cat_tags":"","show_no_downloads":"","show_date":"0","orderby_pri":"","orderby_sec":"","show_sort_order_bar":"","show_tags":"","show_pagination":"","show_pagination_results":"","display_num":"","show_featured":"show","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 168, 169, 0, '*', 0),
(191, 'mainmenu', 'WhitePapers Upload & Download', 'whitepapers-upload-download', '', 'artifacts/whitepapers-upload-download', 'index.php?Itemid=', 'alias', 1, 176, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"191","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 170, 175, 0, '*', 0),
(192, 'mainmenu', 'Interview Questions', 'interview-questions', '', 'artifacts/interview-questions', 'index.php?Itemid=', 'alias', 1, 176, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1}', 176, 181, 0, '*', 0),
(193, 'mainmenu', 'Qlikview', 'qlikview', '', 'artifacts/interview-questions/qlikview', 'index.php?option=com_content&view=article&id=4', 'component', 1, 192, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(194, 'mainmenu', 'Qliksense', 'qliksense', '', 'artifacts/interview-questions/qliksense', 'index.php?option=com_content&view=article&id=5', 'component', 1, 192, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 179, 180, 0, '*', 0),
(195, 'mainmenu', 'Qlikview', 'qlikview', '', 'artifacts/whitepapers-upload-download/qlikview', 'index.php?option=com_jdownloads&view=category&catid=3', 'component', 1, 191, 3, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_description":"1","show_subcat_desc":"1","show_cat_tags":"","show_no_downloads":"","show_date":"0","orderby_pri":"","orderby_sec":"","show_sort_order_bar":"","show_tags":"","show_pagination":"","show_pagination_results":"","display_num":"","show_featured":"show","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 171, 172, 0, '*', 0),
(196, 'mainmenu', 'Qliksense', 'qliksense', '', 'artifacts/whitepapers-upload-download/qliksense', 'index.php?option=com_jdownloads&view=category&catid=3', 'component', 1, 191, 3, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_description":"1","show_subcat_desc":"1","show_cat_tags":"","show_no_downloads":"","show_date":"0","orderby_pri":"","orderby_sec":"","show_sort_order_bar":"","show_tags":"","show_pagination":"","show_pagination_results":"","display_num":"","show_featured":"show","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 173, 174, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_menu_types`
--

CREATE TABLE IF NOT EXISTS `i1hzw_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `i1hzw_menu_types`
--

INSERT INTO `i1hzw_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 'communitybuilder', 'Community Builder', ''),
(4, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_messages`
--

CREATE TABLE IF NOT EXISTS `i1hzw_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `i1hzw_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_modules`
--

CREATE TABLE IF NOT EXISTS `i1hzw_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=110 ;

--
-- Dumping data for table `i1hzw_modules`
--

INSERT INTO `i1hzw_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 64, 'Login', '', '', 1, 'position-7', 879, '2016-05-30 02:43:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cblogin', 1, 1, '{"show_buttons_icons":"0","https_post":"0","cb_plugins":"1","pretext":"","posttext":"","login":"","name_label":"5","name_length":"14","pass_label":"5","pass_length":"14","key_label":"5","key_length":"14","remember_enabled":"1","show_lostpass":"1","show_newaccount":"1","login_message":"0","logoutpretext":"","logoutposttext":"","logout":"index.php","greeting":"1","show_avatar":"1","text_show_profile":"","icon_show_profile":"0","text_edit_profile":"","icon_edit_profile":"0","show_pms":"0","show_pms_icon":"0","show_connection_notifications":"0","show_connection_notifications_icon":"0","logout_message":"0","layout":"_:bootstrap","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 65, 'Online Users', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_comprofileronline', 1, 1, '{"mode":"1","pretext":"","posttext":"","limit":"30","cb_plugins":"0","custom_field":"username","custom_direction":"ASC","label":"1","separator":",","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 66, 'Approve List', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_comprofilermoderator', 2, 1, '{"pretext":"","posttext":"","show_banned":"1","show_image_approval":"1","show_user_reports":"1","show_uban_requests":"1","show_user_approval":"1","show_pms":"1","show_connections":"1","cb_plugins":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 67, 'CB Admin Dropdown Menu', '', '', 99, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cbadmin', 1, 0, '{"mode":"1","menu_cb":"1","menu_cbsubs":"1","menu_cbgj":"1","menu_plugins":"0","feed_entries":"5","feed_duration":"12","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(98, 68, 'Community Builder News', '', '', 99, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cbadmin', 1, 1, '{"mode":"3","menu_cb":"1","menu_cbsubs":"1","menu_cbgj":"1","menu_plugins":"0","feed_entries":"5","feed_duration":"12","modal_display":"1","modal_width":"800","modal_height":"500","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(99, 69, 'Community Builder Updates', '', '', 99, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cbadmin', 1, 1, '{"mode":"4","menu_cb":"1","menu_cbsubs":"1","menu_cbgj":"1","menu_plugins":"0","feed_entries":"5","feed_duration":"12","modal_display":"1","modal_width":"800","modal_height":"500","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(100, 70, 'CB Admin Version Checker', '', '', 99, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cbadmin', 1, 0, '{"mode":"5","menu_cb":"1","menu_cbsubs":"1","menu_cbgj":"1","menu_plugins":"0","feed_entries":"5","feed_duration":"12","modal_display":"1","modal_width":"800","modal_height":"500","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(102, 76, 'jDownloads Latest', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_latest', 1, 1, '', 0, '*'),
(101, 72, 'ARI Image Slider', '', '', 1, 'position-3', 879, '2016-05-28 18:02:49', '2016-05-28 17:23:35', '0000-00-00 00:00:00', 1, 'mod_ariimageslider', 1, 0, '{"width":"900","height":"300","responsive":"1","theme":"default","path":"images\\/ariimageslider","subdirLevel":"0","subdir":"0","imgNumber":"0","sortBy":"","sortDir":"asc","lightboxEngine":"","lightbox_width":"450","lightbox_height":"300","lightbox_grouping":"1","lightbox_bgColor":"","opt_manualAdvance":"0","fixTransparentBg":"0","opt_disableClick":"0","opt_effect":"random","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"0","opt_randomStart":"0","showNav":"1","opt_controlNav":"1","opt_keyboardNav":"1","opt_pauseOnHover":"1","opt_stopOnEnd":"0","linkTarget":"_self","customLinkTarget":"","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","loadMethod":"ready","moduleclass_sfx":"","customstyle":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 77, 'jDownloads Top', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_top', 1, 1, '', 0, '*'),
(104, 78, 'jDownloads Last Updated', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_last_updated', 1, 1, '', 0, '*'),
(105, 79, 'jDownloads Most Recently Downloaded', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_most_recently_downloaded', 1, 1, '', 0, '*'),
(106, 80, 'jDownloads Stats', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_stats', 1, 1, '', 0, '*'),
(107, 81, 'jDownloads Tree', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_tree', 1, 1, '', 0, '*'),
(108, 82, 'jDownloads Related', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_related', 1, 1, '', 0, '*'),
(109, 83, 'jDownloads Rated', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jdownloads_rated', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_modules_menu`
--

CREATE TABLE IF NOT EXISTS `i1hzw_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_modules_menu`
--

INSERT INTO `i1hzw_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 101);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `i1hzw_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_overrider`
--

CREATE TABLE IF NOT EXISTS `i1hzw_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `i1hzw_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `i1hzw_postinstall_messages`
--

INSERT INTO `i1hzw_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_redirect_links`
--

CREATE TABLE IF NOT EXISTS `i1hzw_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_schemas`
--

CREATE TABLE IF NOT EXISTS `i1hzw_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_schemas`
--

INSERT INTO `i1hzw_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.5.1-2016-03-29'),
(10031, '3.2.44');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_session`
--

CREATE TABLE IF NOT EXISTS `i1hzw_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_session`
--

INSERT INTO `i1hzw_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('e17152h9rn7n5lje37g00l72d0', 0, 1, '1464742592', 'joomla|s:1452:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2NDc0MjMyODtzOjQ6Imxhc3QiO2k6MTQ2NDc0MjMyODtzOjM6Im5vdyI7aToxNDY0NzQyNTkxO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO047czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7TjtzOjE0OiIAKgBfYXV0aExldmVscyI7YTozOntpOjA7aToxO2k6MTtpOjE7aToyO2k6NTt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_tags`
--

CREATE TABLE IF NOT EXISTS `i1hzw_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `i1hzw_tags`
--

INSERT INTO `i1hzw_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 879, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 879, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_template_styles`
--

CREATE TABLE IF NOT EXISTS `i1hzw_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `i1hzw_template_styles`
--

INSERT INTO `i1hzw_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_ucm_base`
--

CREATE TABLE IF NOT EXISTS `i1hzw_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_ucm_base`
--

INSERT INTO `i1hzw_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_ucm_content`
--

CREATE TABLE IF NOT EXISTS `i1hzw_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `i1hzw_ucm_content`
--

INSERT INTO `i1hzw_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the "Template Settings" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the "Site Settings" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="https://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>', 1, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 879, '', '2013-11-16 00:00:00', 0, '0000-00-00 00:00:00', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_ucm_history`
--

CREATE TABLE IF NOT EXISTS `i1hzw_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `i1hzw_ucm_history`
--

INSERT INTO `i1hzw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 879, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 879, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{"id":1,"asset_id":54,"title":"Getting Started","alias":"getting-started","introtext":"<p>It''s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\"Submit Article\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\"Template Settings\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\"Site Settings\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\"Site Administrator\\" link on the \\"User Menu\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\"http:\\/\\/docs.joomla.org\\" target=\\"_blank\\">Joomla! documentation site<\\/a> and on the<a href=\\"http:\\/\\/forum.joomla.org\\" target=\\"_blank\\"> Joomla! forums<\\/a>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"849","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 2, 1, '', '2016-05-29 10:38:24', 879, 2222, '5315c39d8b524f01eca7b60cd308b36c8290fca3', '{"id":2,"asset_id":73,"title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Finance Stock Analysis\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/><\\/a><\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0Finance Stock Analysis<\\/a><\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 10:38:24","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2016-05-29 10:38:27', 879, 2224, '596e40ded5ada48e789e8b2b2f046f48f3a5f16d', '{"id":3,"asset_id":74,"title":"Finance Qlikview","alias":"finance-qlikview-2","introtext":"<p><a title=\\"Finance Stock Analysis\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/><\\/a><\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0Finance Stock Analysis<\\/a><\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:27","created_by":"879","created_by_alias":"","modified":"2016-05-29 10:38:27","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-29 10:38:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 2, 1, '', '2016-05-29 10:57:22', 879, 3814, 'f3238a166b3dfdfc293627487fd25cf5214dce51', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<a title=\\"Procurement\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\"><img src=\\"images\\/slider\\/Nature1.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"119\\" \\/><\\/a><\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/strong><\\/em><em style=\\"font-size: 12.16px; line-height: 15.808px;\\"><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\">Procurement<\\/a><\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 10:57:22","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 10:50:41","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2016-05-29 10:58:58', 879, 3376, 'd0496560c16ee2ac5f3f579596d6dbdd8cd26946', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a title=\\"Procurement\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\"><img src=\\"images\\/slider\\/Nature1.jpg\\" alt=\\"\\" width=\\"247\\" height=\\"119\\" \\/><\\/a><\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/strong><\\/em><em style=\\"font-size: 12.16px; line-height: 15.808px;\\"><strong>\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\">Procurement<\\/a><\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 10:58:58","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 10:57:46","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2016-05-29 11:00:05', 879, 2826, '4fe6dda83fb04e82cc92da380b8c6972cd6c401d', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:00:05","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 10:59:29","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 2, 1, '', '2016-05-29 11:01:02', 879, 2938, 'd920d1688a03313619cc50e00b6c511fb286d909', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:01:02","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:00:39","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 2, 1, '', '2016-05-29 11:02:02', 879, 3009, '49a21af7e5f8c9927252a84e0460e94f44abbf71', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:02:02","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:01:02","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 2, 1, '', '2016-05-29 11:02:31', 879, 2987, '0d85babe28c7b97f85d7b1c9d52c5dfe9cb5f1ae', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:02:31","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:02:02","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 2, 1, '', '2016-05-29 11:04:37', 879, 3154, '3d29c68fb93d0a1f4fd7ed493a898c2f3bf36677', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\"><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/><\\/a>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 \\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:04:37","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:03:00","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 2, 1, '', '2016-05-29 11:08:34', 879, 3157, '37214c38f0f1d359921d4bfd67d910f182dc8642', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\"><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/><\\/a>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:08:34","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:04:37","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 2, 1, '', '2016-05-29 11:17:13', 879, 3422, 'dcd2b721805e23ec77e4adb065092361f6678fee', '{"id":2,"asset_id":"73","title":"Finance Qlikview","alias":"finance-qlikview","introtext":"<p><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\"><img src=\\"images\\/slider\\/Nature.jpg\\" alt=\\"\\" \\/>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/a><a title=\\"Expense Management\\" href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FProcurement.qvw&amp;host=demo11&amp;anonymous=true\\"><img src=\\"images\\/slider\\/Slide1.jpg\\" alt=\\"\\" \\/><\\/a>\\u00a0<\\/p>\\r\\n<p><em><strong>\\u00a0 <a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FFinancial%20Stock%20Analysis.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">\\u00a0 Finance Stock Analysis<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<a href=\\"http:\\/\\/ap-a.demo.qlik.com\\/QvAJAXZfc\\/opendoc.htm?document=qvdocs%2FExpense%20Management.qvw&amp;host=demo11&amp;anonymous=true\\" target=\\"_blank\\">Expense Management<\\/a>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<\\/strong><\\/em><\\/p>\\r\\n<p>\\u00a0{jcomments on} \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 10:38:24","created_by":"879","created_by_alias":"","modified":"2016-05-29 11:17:13","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 11:15:52","publish_up":"2016-05-29 10:38:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 4, 1, '', '2016-05-29 20:01:44', 879, 2237, 'ba6480ff387f647f84d41379ef90d38c2e9d75e0', '{"id":4,"asset_id":90,"title":"Interview Questions","alias":"interview-questions","introtext":"<p>Question 1 : What is BI?<\\/p>\\r\\n<p>Answer 1 : BI stands for Business Inteligence<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">Question 2 : What is Qlikview?<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">Answer 2 :\\u00a0Qlikview provides analytical solution for any type of organization and It works\\u00a0on \\u00a0AQL Technology<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">{jcomments on}<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 20:01:44","created_by":"879","created_by_alias":"","modified":"2016-05-29 20:01:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-29 20:01:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 4, 1, '', '2016-05-29 20:03:39', 879, 2265, 'cdb1dc94b8e53b37d533483107d6d156ee09f773', '{"id":4,"asset_id":"90","title":"Qlikview Interview Questions","alias":"interview-questions","introtext":"<p>Question 1 : What is BI?<\\/p>\\r\\n<p>Answer 1 : BI stands for Business Inteligence<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">Question 2 : What is Qlikview?<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">Answer 2 :\\u00a0Qlikview provides analytical solution for any type of organization and It works\\u00a0on \\u00a0AQL Technology<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/p>\\r\\n<p style=\\"font-size: 12.16px; line-height: 15.808px;\\">{jcomments on}<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 20:01:44","created_by":"879","created_by_alias":"","modified":"2016-05-29 20:03:39","modified_by":"879","checked_out":"879","checked_out_time":"2016-05-29 20:03:18","publish_up":"2016-05-29 20:01:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `i1hzw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(16, 5, 1, '', '2016-05-29 20:05:44', 879, 1840, 'a71d1daaecd7841fddeb99d82d72557e4ab15f72', '{"id":5,"asset_id":91,"title":"Qliksense Interview Questions","alias":"qliksense-interview-questions","introtext":"<p>Que 1 : What is Qliksense?<\\/p>\\r\\n<p>Ans 1: Qliksense is dashboarding tool ment for user.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>{jcomments on}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 20:05:44","created_by":"879","created_by_alias":"","modified":"2016-05-29 20:05:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-29 20:05:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 6, 1, '', '2016-05-29 20:22:27', 879, 1913, 'fc96fae6c7e36a0aaaec71f227fc64992b4273d8', '{"id":6,"asset_id":92,"title":"Questions & Answers","alias":"questions-answers","introtext":"<h1><strong>Questions and Answers\\u00a0<\\/strong><\\/h1>\\r\\n<p><strong>Enter your comments below we will get back to you soon<\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>{jcomments on}<\\/strong><\\/p>\\r\\n<p><strong>\\u00a0<\\/strong><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-29 20:22:27","created_by":"879","created_by_alias":"","modified":"2016-05-29 20:22:27","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-29 20:22:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_update_sites`
--

CREATE TABLE IF NOT EXISTS `i1hzw_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `i1hzw_update_sites`
--

INSERT INTO `i1hzw_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1464741759, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1464741759, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(6, 'Kunena 4.0 Update Site', 'collection', 'http://update.kunena.org/4.0/list.xml', 1, 1464575191, ''),
(5, 'Community Builder Package Update Site', 'collection', 'http://update.joomlapolis.net/versions/pkg-communitybuilder-list.xml', 1, 1464575191, ''),
(7, 'ARI Image Slider Update Site', 'extension', 'http://www.ari-soft.com/updates/ariimageslider/ariimageslider.xml', 1, 1464575191, ''),
(8, 'JComments Update Site', 'extension', 'http://www.joomlatune.ru/updates/jcomments.xml', 1, 1464575191, ''),
(9, 'jDownloads Update Site', 'extension', 'http://www.jdownloads.com/updates/3.2/final/jdownloads-update.xml', 1, 1464575191, '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `i1hzw_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `i1hzw_update_sites_extensions`
--

INSERT INTO `i1hzw_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10007),
(6, 10014),
(7, 10022),
(8, 10023),
(9, 10031);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_updates`
--

CREATE TABLE IF NOT EXISTS `i1hzw_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `i1hzw_updates`
--

INSERT INTO `i1hzw_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 6, 0, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '4.0.10', '', 'http://update.kunena.org/4.0/pkg_kunena_languages.xml', '', ''),
(2, 6, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '3.1.2.1', '', 'http://update.kunena.org/4.0/mod_kunenalatest.xml', '', ''),
(3, 6, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '3.1.2', '', 'http://update.kunena.org/4.0/mod_kunenalogin.xml', '', ''),
(4, 6, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '3.1.2', '', 'http://update.kunena.org/4.0/mod_kunenasearch.xml', '', ''),
(5, 6, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '3.1.2', '', 'http://update.kunena.org/4.0/mod_kunenastats.xml', '', ''),
(6, 6, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '3.1.2', '', 'http://update.kunena.org/4.0/plg_content_kunenadiscuss.xml', '', ''),
(7, 6, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '3.1.2', '', 'http://update.kunena.org/4.0/plg_search_kunena.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_user_keys`
--

CREATE TABLE IF NOT EXISTS `i1hzw_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_user_notes`
--

CREATE TABLE IF NOT EXISTS `i1hzw_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_user_profiles`
--

CREATE TABLE IF NOT EXISTS `i1hzw_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `i1hzw_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_user_usergroup_map`
--

INSERT INTO `i1hzw_user_usergroup_map` (`user_id`, `group_id`) VALUES
(879, 8),
(884, 2),
(885, 2);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_usergroups`
--

CREATE TABLE IF NOT EXISTS `i1hzw_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `i1hzw_usergroups`
--

INSERT INTO `i1hzw_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_users`
--

CREATE TABLE IF NOT EXISTS `i1hzw_users` (
`id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=886 ;

--
-- Dumping data for table `i1hzw_users`
--

INSERT INTO `i1hzw_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(879, 'Priyal Shah', 'admin', 'priyalshah9779@gmail.com', '$2y$10$YXArJjl9NTQ3HYRCjRJ.o.tKZS5YklmjjTzOaHitFvGGhcp0nW62a', 0, 1, '2016-05-25 03:52:11', '2016-05-30 15:47:05', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(884, 'sonu shah', 'sonu', 'nssn6636@gmail.com', '$2y$10$5i0kJA9dqtqEkqMLwhMN.eD4.Z7rp.ZplPLVVnLTfxu7xnXDctzkW', 0, 0, '2016-05-25 19:02:05', '2016-05-29 20:13:58', '', '{"language":"","editor":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(885, 'darshan shah', 'darshan', 'darshanrshah_63@yahoo.com', '$2y$10$A093KzicD0C11eXoSm5jqO1Rxks7pXevFGma1FEmZpN/44Dhve9RW', 0, 0, '2016-05-26 02:30:21', '2016-05-26 02:35:03', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `i1hzw_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `i1hzw_utf8_conversion`
--

INSERT INTO `i1hzw_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `i1hzw_viewlevels`
--

CREATE TABLE IF NOT EXISTS `i1hzw_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `i1hzw_viewlevels`
--

INSERT INTO `i1hzw_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_assets`
--

CREATE TABLE IF NOT EXISTS `o50jk_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `o50jk_assets`
--

INSERT INTO `o50jk_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 101, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 70, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 71, 74, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 75, 76, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 77, 78, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 79, 80, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 81, 82, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 83, 86, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 87, 88, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 72, 73, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 84, 85, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 89, 90, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 91, 92, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 93, 94, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 95, 96, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 97, 98, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 99, 100, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_associations`
--

CREATE TABLE IF NOT EXISTS `o50jk_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_banner_clients`
--

CREATE TABLE IF NOT EXISTS `o50jk_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `o50jk_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_banners`
--

CREATE TABLE IF NOT EXISTS `o50jk_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_categories`
--

CREATE TABLE IF NOT EXISTS `o50jk_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `o50jk_categories`
--

INSERT INTO `o50jk_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_contact_details`
--

CREATE TABLE IF NOT EXISTS `o50jk_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_content`
--

CREATE TABLE IF NOT EXISTS `o50jk_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `o50jk_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_content_rating`
--

CREATE TABLE IF NOT EXISTS `o50jk_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_content_types`
--

CREATE TABLE IF NOT EXISTS `o50jk_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `o50jk_content_types`
--

INSERT INTO `o50jk_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `o50jk_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `o50jk_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_extensions`
--

CREATE TABLE IF NOT EXISTS `o50jk_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=701 ;

--
-- Dumping data for table `o50jk_extensions`
--

INSERT INTO `o50jk_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_filters`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `o50jk_finder_taxonomy`
--

INSERT INTO `o50jk_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_terms`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `o50jk_finder_terms_common`
--

INSERT INTO `o50jk_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_finder_types`
--

CREATE TABLE IF NOT EXISTS `o50jk_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_languages`
--

CREATE TABLE IF NOT EXISTS `o50jk_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `o50jk_languages`
--

INSERT INTO `o50jk_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_menu`
--

CREATE TABLE IF NOT EXISTS `o50jk_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=102 ;

--
-- Dumping data for table `o50jk_menu`
--

INSERT INTO `o50jk_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_menu_types`
--

CREATE TABLE IF NOT EXISTS `o50jk_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `o50jk_menu_types`
--

INSERT INTO `o50jk_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_messages`
--

CREATE TABLE IF NOT EXISTS `o50jk_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `o50jk_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_modules`
--

CREATE TABLE IF NOT EXISTS `o50jk_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=87 ;

--
-- Dumping data for table `o50jk_modules`
--

INSERT INTO `o50jk_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_modules_menu`
--

CREATE TABLE IF NOT EXISTS `o50jk_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `o50jk_modules_menu`
--

INSERT INTO `o50jk_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `o50jk_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_overrider`
--

CREATE TABLE IF NOT EXISTS `o50jk_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `o50jk_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `o50jk_postinstall_messages`
--

INSERT INTO `o50jk_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_redirect_links`
--

CREATE TABLE IF NOT EXISTS `o50jk_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_schemas`
--

CREATE TABLE IF NOT EXISTS `o50jk_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_session`
--

CREATE TABLE IF NOT EXISTS `o50jk_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_tags`
--

CREATE TABLE IF NOT EXISTS `o50jk_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `o50jk_tags`
--

INSERT INTO `o50jk_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_template_styles`
--

CREATE TABLE IF NOT EXISTS `o50jk_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `o50jk_template_styles`
--

INSERT INTO `o50jk_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_ucm_base`
--

CREATE TABLE IF NOT EXISTS `o50jk_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_ucm_content`
--

CREATE TABLE IF NOT EXISTS `o50jk_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_ucm_history`
--

CREATE TABLE IF NOT EXISTS `o50jk_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_update_sites`
--

CREATE TABLE IF NOT EXISTS `o50jk_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `o50jk_update_sites`
--

INSERT INTO `o50jk_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `o50jk_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `o50jk_update_sites_extensions`
--

INSERT INTO `o50jk_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_updates`
--

CREATE TABLE IF NOT EXISTS `o50jk_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `o50jk_usergroups`
--

CREATE TABLE IF NOT EXISTS `o50jk_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_assets`
--

CREATE TABLE IF NOT EXISTS `xzp7u_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `xzp7u_assets`
--

INSERT INTO `xzp7u_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 101, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 70, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 71, 74, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 75, 76, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 77, 78, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 79, 80, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 81, 82, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 83, 86, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 87, 88, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 72, 73, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 84, 85, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 89, 90, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 91, 92, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 93, 94, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 95, 96, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 97, 98, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 99, 100, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_associations`
--

CREATE TABLE IF NOT EXISTS `xzp7u_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_banner_clients`
--

CREATE TABLE IF NOT EXISTS `xzp7u_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `xzp7u_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_banners`
--

CREATE TABLE IF NOT EXISTS `xzp7u_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_categories`
--

CREATE TABLE IF NOT EXISTS `xzp7u_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `xzp7u_categories`
--

INSERT INTO `xzp7u_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_contact_details`
--

CREATE TABLE IF NOT EXISTS `xzp7u_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_content`
--

CREATE TABLE IF NOT EXISTS `xzp7u_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `xzp7u_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_content_rating`
--

CREATE TABLE IF NOT EXISTS `xzp7u_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_content_types`
--

CREATE TABLE IF NOT EXISTS `xzp7u_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `xzp7u_content_types`
--

INSERT INTO `xzp7u_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `xzp7u_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `xzp7u_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_extensions`
--

CREATE TABLE IF NOT EXISTS `xzp7u_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=701 ;

--
-- Dumping data for table `xzp7u_extensions`
--

INSERT INTO `xzp7u_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_filters`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xzp7u_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `xzp7u_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `i1hzw_assets`
--
ALTER TABLE `i1hzw_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `i1hzw_associations`
--
ALTER TABLE `i1hzw_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `i1hzw_banner_clients`
--
ALTER TABLE `i1hzw_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `i1hzw_banner_tracks`
--
ALTER TABLE `i1hzw_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `i1hzw_banners`
--
ALTER TABLE `i1hzw_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_categories`
--
ALTER TABLE `i1hzw_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_comprofiler`
--
ALTER TABLE `i1hzw_comprofiler`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`), ADD KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`), ADD KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`(48)), ADD KEY `lastupdatedate` (`lastupdatedate`);

--
-- Indexes for table `i1hzw_comprofiler_field_values`
--
ALTER TABLE `i1hzw_comprofiler_field_values`
 ADD PRIMARY KEY (`fieldvalueid`), ADD KEY `fieldid_ordering` (`fieldid`,`ordering`), ADD KEY `fieldtitle_id` (`fieldtitle`,`fieldid`), ADD KEY `fieldlabel_id` (`fieldlabel`,`fieldid`);

--
-- Indexes for table `i1hzw_comprofiler_fields`
--
ALTER TABLE `i1hzw_comprofiler_fields`
 ADD PRIMARY KEY (`fieldid`), ADD KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`), ADD KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`), ADD KEY `registration_published_order` (`registration`,`published`,`ordering`);

--
-- Indexes for table `i1hzw_comprofiler_lists`
--
ALTER TABLE `i1hzw_comprofiler_lists`
 ADD PRIMARY KEY (`listid`), ADD KEY `pub_ordering` (`published`,`ordering`), ADD KEY `default_published` (`default`,`published`);

--
-- Indexes for table `i1hzw_comprofiler_members`
--
ALTER TABLE `i1hzw_comprofiler_members`
 ADD PRIMARY KEY (`referenceid`,`memberid`), ADD KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`), ADD KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`), ADD KEY `membrefid` (`memberid`,`referenceid`);

--
-- Indexes for table `i1hzw_comprofiler_plugin`
--
ALTER TABLE `i1hzw_comprofiler_plugin`
 ADD PRIMARY KEY (`id`), ADD KEY `element` (`element`), ADD KEY `folder` (`folder`), ADD KEY `idx_folder` (`published`,`client_id`,`viewaccesslevel`,`folder`), ADD KEY `type_pub_order` (`type`,`published`,`ordering`);

--
-- Indexes for table `i1hzw_comprofiler_plugin_blogs`
--
ALTER TABLE `i1hzw_comprofiler_plugin_blogs`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`), ADD KEY `user` (`user`), ADD KEY `access` (`access`);

--
-- Indexes for table `i1hzw_comprofiler_ratings`
--
ALTER TABLE `i1hzw_comprofiler_ratings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_comprofiler_sessions`
--
ALTER TABLE `i1hzw_comprofiler_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `expiry_time` (`expiry_time`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `i1hzw_comprofiler_tabs`
--
ALTER TABLE `i1hzw_comprofiler_tabs`
 ADD PRIMARY KEY (`tabid`), ADD KEY `pluginclass` (`pluginclass`), ADD KEY `enabled_position_ordering` (`enabled`,`position`,`ordering`), ADD KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`,`ordering`);

--
-- Indexes for table `i1hzw_comprofiler_userreports`
--
ALTER TABLE `i1hzw_comprofiler_userreports`
 ADD PRIMARY KEY (`reportid`), ADD KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`), ADD KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`);

--
-- Indexes for table `i1hzw_comprofiler_views`
--
ALTER TABLE `i1hzw_comprofiler_views`
 ADD PRIMARY KEY (`viewer_id`,`profile_id`,`lastip`), ADD KEY `lastview` (`lastview`), ADD KEY `profile_id_lastview` (`profile_id`,`lastview`,`viewer_id`);

--
-- Indexes for table `i1hzw_contact_details`
--
ALTER TABLE `i1hzw_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `i1hzw_content`
--
ALTER TABLE `i1hzw_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `i1hzw_content_frontpage`
--
ALTER TABLE `i1hzw_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `i1hzw_content_rating`
--
ALTER TABLE `i1hzw_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `i1hzw_content_types`
--
ALTER TABLE `i1hzw_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `i1hzw_contentitem_tag_map`
--
ALTER TABLE `i1hzw_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `i1hzw_extensions`
--
ALTER TABLE `i1hzw_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `i1hzw_finder_filters`
--
ALTER TABLE `i1hzw_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `i1hzw_finder_links`
--
ALTER TABLE `i1hzw_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`(100)), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `i1hzw_finder_links_terms0`
--
ALTER TABLE `i1hzw_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms1`
--
ALTER TABLE `i1hzw_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms2`
--
ALTER TABLE `i1hzw_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms3`
--
ALTER TABLE `i1hzw_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms4`
--
ALTER TABLE `i1hzw_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms5`
--
ALTER TABLE `i1hzw_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms6`
--
ALTER TABLE `i1hzw_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms7`
--
ALTER TABLE `i1hzw_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms8`
--
ALTER TABLE `i1hzw_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_terms9`
--
ALTER TABLE `i1hzw_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termsa`
--
ALTER TABLE `i1hzw_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termsb`
--
ALTER TABLE `i1hzw_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termsc`
--
ALTER TABLE `i1hzw_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termsd`
--
ALTER TABLE `i1hzw_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termse`
--
ALTER TABLE `i1hzw_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_links_termsf`
--
ALTER TABLE `i1hzw_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `i1hzw_finder_taxonomy`
--
ALTER TABLE `i1hzw_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `i1hzw_finder_taxonomy_map`
--
ALTER TABLE `i1hzw_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `i1hzw_finder_terms`
--
ALTER TABLE `i1hzw_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `i1hzw_finder_terms_common`
--
ALTER TABLE `i1hzw_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `i1hzw_finder_tokens`
--
ALTER TABLE `i1hzw_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `i1hzw_finder_tokens_aggregate`
--
ALTER TABLE `i1hzw_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `i1hzw_finder_types`
--
ALTER TABLE `i1hzw_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `i1hzw_jcomments`
--
ALTER TABLE `i1hzw_jcomments`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_userid` (`userid`), ADD KEY `idx_source` (`source`), ADD KEY `idx_email` (`email`), ADD KEY `idx_lang` (`lang`), ADD KEY `idx_subscribe` (`subscribe`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_object` (`object_id`,`object_group`,`published`,`date`), ADD KEY `idx_path` (`path`,`level`), ADD KEY `idx_thread` (`thread_id`);

--
-- Indexes for table `i1hzw_jcomments_blacklist`
--
ALTER TABLE `i1hzw_jcomments_blacklist`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_ip` (`ip`);

--
-- Indexes for table `i1hzw_jcomments_custom_bbcodes`
--
ALTER TABLE `i1hzw_jcomments_custom_bbcodes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_jcomments_mailq`
--
ALTER TABLE `i1hzw_jcomments_mailq`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_priority` (`priority`), ADD KEY `idx_attempts` (`attempts`);

--
-- Indexes for table `i1hzw_jcomments_objects`
--
ALTER TABLE `i1hzw_jcomments_objects`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_object` (`object_id`,`object_group`,`lang`);

--
-- Indexes for table `i1hzw_jcomments_reports`
--
ALTER TABLE `i1hzw_jcomments_reports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_jcomments_settings`
--
ALTER TABLE `i1hzw_jcomments_settings`
 ADD PRIMARY KEY (`component`,`lang`,`name`);

--
-- Indexes for table `i1hzw_jcomments_smilies`
--
ALTER TABLE `i1hzw_jcomments_smilies`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `i1hzw_jcomments_subscriptions`
--
ALTER TABLE `i1hzw_jcomments_subscriptions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_object` (`object_id`,`object_group`), ADD KEY `idx_lang` (`lang`), ADD KEY `idx_source` (`source`), ADD KEY `idx_hash` (`hash`);

--
-- Indexes for table `i1hzw_jcomments_version`
--
ALTER TABLE `i1hzw_jcomments_version`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `i1hzw_jcomments_votes`
--
ALTER TABLE `i1hzw_jcomments_votes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_comment` (`commentid`,`userid`), ADD KEY `idx_user` (`userid`,`date`);

--
-- Indexes for table `i1hzw_jdownloads_categories`
--
ALTER TABLE `i1hzw_jdownloads_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checked_out` (`checked_out`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_jdownloads_config`
--
ALTER TABLE `i1hzw_jdownloads_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_jdownloads_files`
--
ALTER TABLE `i1hzw_jdownloads_files`
 ADD PRIMARY KEY (`file_id`), ADD KEY `idx_cat_id` (`cat_id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_published` (`published`), ADD KEY `idx_checked_out` (`checked_out`), ADD KEY `idx_alias` (`file_alias`), ADD KEY `idx_created_id` (`created_id`), ADD KEY `idx_language` (`language`), ADD KEY `idx_featured` (`featured`);

--
-- Indexes for table `i1hzw_jdownloads_licenses`
--
ALTER TABLE `i1hzw_jdownloads_licenses`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_checked_out` (`checked_out`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_jdownloads_logs`
--
ALTER TABLE `i1hzw_jdownloads_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_type` (`type`), ADD KEY `idx_log_user` (`log_user`);

--
-- Indexes for table `i1hzw_jdownloads_ratings`
--
ALTER TABLE `i1hzw_jdownloads_ratings`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `i1hzw_jdownloads_templates`
--
ALTER TABLE `i1hzw_jdownloads_templates`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_checked_out` (`checked_out`), ADD KEY `idx_template_typ` (`template_typ`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_jdownloads_usergroups_limits`
--
ALTER TABLE `i1hzw_jdownloads_usergroups_limits`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `i1hzw_kunena_aliases`
--
ALTER TABLE `i1hzw_kunena_aliases`
 ADD UNIQUE KEY `alias` (`alias`), ADD KEY `state` (`state`), ADD KEY `item` (`item`), ADD KEY `type` (`type`);

--
-- Indexes for table `i1hzw_kunena_announcement`
--
ALTER TABLE `i1hzw_kunena_announcement`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_kunena_attachments`
--
ALTER TABLE `i1hzw_kunena_attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `mesid` (`mesid`), ADD KEY `userid` (`userid`), ADD KEY `hash` (`hash`), ADD KEY `filename` (`filename`), ADD KEY `filename_real` (`filename_real`);

--
-- Indexes for table `i1hzw_kunena_categories`
--
ALTER TABLE `i1hzw_kunena_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `category_access` (`accesstype`,`access`), ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

--
-- Indexes for table `i1hzw_kunena_configuration`
--
ALTER TABLE `i1hzw_kunena_configuration`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_kunena_keywords`
--
ALTER TABLE `i1hzw_kunena_keywords`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `public_count` (`public_count`), ADD KEY `total_count` (`total_count`);

--
-- Indexes for table `i1hzw_kunena_keywords_map`
--
ALTER TABLE `i1hzw_kunena_keywords_map`
 ADD UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`), ADD KEY `user_id` (`user_id`), ADD KEY `topic_user` (`topic_id`,`user_id`);

--
-- Indexes for table `i1hzw_kunena_messages`
--
ALTER TABLE `i1hzw_kunena_messages`
 ADD PRIMARY KEY (`id`), ADD KEY `thread` (`thread`), ADD KEY `ip` (`ip`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`), ADD KEY `locked` (`locked`), ADD KEY `hold_time` (`hold`,`time`), ADD KEY `parent_hits` (`parent`,`hits`), ADD KEY `catid_parent` (`catid`,`parent`);

--
-- Indexes for table `i1hzw_kunena_messages_text`
--
ALTER TABLE `i1hzw_kunena_messages_text`
 ADD PRIMARY KEY (`mesid`);

--
-- Indexes for table `i1hzw_kunena_polls`
--
ALTER TABLE `i1hzw_kunena_polls`
 ADD PRIMARY KEY (`id`), ADD KEY `threadid` (`threadid`);

--
-- Indexes for table `i1hzw_kunena_polls_options`
--
ALTER TABLE `i1hzw_kunena_polls_options`
 ADD PRIMARY KEY (`id`), ADD KEY `pollid` (`pollid`);

--
-- Indexes for table `i1hzw_kunena_polls_users`
--
ALTER TABLE `i1hzw_kunena_polls_users`
 ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

--
-- Indexes for table `i1hzw_kunena_ranks`
--
ALTER TABLE `i1hzw_kunena_ranks`
 ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `i1hzw_kunena_sessions`
--
ALTER TABLE `i1hzw_kunena_sessions`
 ADD PRIMARY KEY (`userid`), ADD KEY `currvisit` (`currvisit`);

--
-- Indexes for table `i1hzw_kunena_smileys`
--
ALTER TABLE `i1hzw_kunena_smileys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_kunena_thankyou`
--
ALTER TABLE `i1hzw_kunena_thankyou`
 ADD UNIQUE KEY `postid` (`postid`,`userid`), ADD KEY `userid` (`userid`), ADD KEY `targetuserid` (`targetuserid`);

--
-- Indexes for table `i1hzw_kunena_topics`
--
ALTER TABLE `i1hzw_kunena_topics`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`), ADD KEY `locked` (`locked`), ADD KEY `hold` (`hold`), ADD KEY `posts` (`posts`), ADD KEY `hits` (`hits`), ADD KEY `first_post_userid` (`first_post_userid`), ADD KEY `last_post_userid` (`last_post_userid`), ADD KEY `first_post_time` (`first_post_time`), ADD KEY `last_post_time` (`last_post_time`), ADD KEY `last_post_id` (`last_post_id`);

--
-- Indexes for table `i1hzw_kunena_user_categories`
--
ALTER TABLE `i1hzw_kunena_user_categories`
 ADD PRIMARY KEY (`user_id`,`category_id`), ADD KEY `category_subscribed` (`category_id`,`subscribed`), ADD KEY `role` (`role`);

--
-- Indexes for table `i1hzw_kunena_user_read`
--
ALTER TABLE `i1hzw_kunena_user_read`
 ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`), ADD KEY `category_user_id` (`category_id`,`user_id`), ADD KEY `time` (`time`);

--
-- Indexes for table `i1hzw_kunena_user_topics`
--
ALTER TABLE `i1hzw_kunena_user_topics`
 ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`), ADD KEY `topic_id` (`topic_id`), ADD KEY `posts` (`posts`), ADD KEY `owner` (`owner`), ADD KEY `favorite` (`favorite`), ADD KEY `subscribed` (`subscribed`);

--
-- Indexes for table `i1hzw_kunena_users`
--
ALTER TABLE `i1hzw_kunena_users`
 ADD PRIMARY KEY (`userid`), ADD KEY `group_id` (`group_id`), ADD KEY `posts` (`posts`), ADD KEY `uhits` (`uhits`), ADD KEY `banned` (`banned`), ADD KEY `moderator` (`moderator`);

--
-- Indexes for table `i1hzw_kunena_users_banned`
--
ALTER TABLE `i1hzw_kunena_users_banned`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`), ADD KEY `ip` (`ip`), ADD KEY `expiration` (`expiration`), ADD KEY `created_time` (`created_time`);

--
-- Indexes for table `i1hzw_kunena_version`
--
ALTER TABLE `i1hzw_kunena_version`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_languages`
--
ALTER TABLE `i1hzw_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `i1hzw_menu`
--
ALTER TABLE `i1hzw_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_menu_types`
--
ALTER TABLE `i1hzw_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `i1hzw_messages`
--
ALTER TABLE `i1hzw_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `i1hzw_messages_cfg`
--
ALTER TABLE `i1hzw_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `i1hzw_modules`
--
ALTER TABLE `i1hzw_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_modules_menu`
--
ALTER TABLE `i1hzw_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `i1hzw_newsfeeds`
--
ALTER TABLE `i1hzw_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `i1hzw_overrider`
--
ALTER TABLE `i1hzw_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i1hzw_postinstall_messages`
--
ALTER TABLE `i1hzw_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `i1hzw_redirect_links`
--
ALTER TABLE `i1hzw_redirect_links`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_old_url` (`old_url`(100)), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `i1hzw_schemas`
--
ALTER TABLE `i1hzw_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `i1hzw_session`
--
ALTER TABLE `i1hzw_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `i1hzw_tags`
--
ALTER TABLE `i1hzw_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `i1hzw_template_styles`
--
ALTER TABLE `i1hzw_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `i1hzw_ucm_base`
--
ALTER TABLE `i1hzw_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `i1hzw_ucm_content`
--
ALTER TABLE `i1hzw_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`(100)), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`(100)), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`(100)), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `i1hzw_ucm_history`
--
ALTER TABLE `i1hzw_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `i1hzw_update_sites`
--
ALTER TABLE `i1hzw_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `i1hzw_update_sites_extensions`
--
ALTER TABLE `i1hzw_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `i1hzw_updates`
--
ALTER TABLE `i1hzw_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `i1hzw_user_keys`
--
ALTER TABLE `i1hzw_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `i1hzw_user_notes`
--
ALTER TABLE `i1hzw_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `i1hzw_user_profiles`
--
ALTER TABLE `i1hzw_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `i1hzw_user_usergroup_map`
--
ALTER TABLE `i1hzw_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `i1hzw_usergroups`
--
ALTER TABLE `i1hzw_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `i1hzw_users`
--
ALTER TABLE `i1hzw_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`(100)), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `i1hzw_viewlevels`
--
ALTER TABLE `i1hzw_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `o50jk_assets`
--
ALTER TABLE `o50jk_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `o50jk_associations`
--
ALTER TABLE `o50jk_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `o50jk_banner_clients`
--
ALTER TABLE `o50jk_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `o50jk_banner_tracks`
--
ALTER TABLE `o50jk_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `o50jk_banners`
--
ALTER TABLE `o50jk_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `o50jk_categories`
--
ALTER TABLE `o50jk_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `o50jk_contact_details`
--
ALTER TABLE `o50jk_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `o50jk_content`
--
ALTER TABLE `o50jk_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `o50jk_content_frontpage`
--
ALTER TABLE `o50jk_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `o50jk_content_rating`
--
ALTER TABLE `o50jk_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `o50jk_content_types`
--
ALTER TABLE `o50jk_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `o50jk_contentitem_tag_map`
--
ALTER TABLE `o50jk_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `o50jk_extensions`
--
ALTER TABLE `o50jk_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `o50jk_finder_filters`
--
ALTER TABLE `o50jk_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `o50jk_finder_links`
--
ALTER TABLE `o50jk_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`(100)), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `o50jk_finder_links_terms0`
--
ALTER TABLE `o50jk_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms1`
--
ALTER TABLE `o50jk_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms2`
--
ALTER TABLE `o50jk_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms3`
--
ALTER TABLE `o50jk_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms4`
--
ALTER TABLE `o50jk_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms5`
--
ALTER TABLE `o50jk_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms6`
--
ALTER TABLE `o50jk_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms7`
--
ALTER TABLE `o50jk_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms8`
--
ALTER TABLE `o50jk_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_terms9`
--
ALTER TABLE `o50jk_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termsa`
--
ALTER TABLE `o50jk_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termsb`
--
ALTER TABLE `o50jk_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termsc`
--
ALTER TABLE `o50jk_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termsd`
--
ALTER TABLE `o50jk_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termse`
--
ALTER TABLE `o50jk_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_links_termsf`
--
ALTER TABLE `o50jk_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `o50jk_finder_taxonomy`
--
ALTER TABLE `o50jk_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `o50jk_finder_taxonomy_map`
--
ALTER TABLE `o50jk_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `o50jk_finder_terms`
--
ALTER TABLE `o50jk_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `o50jk_finder_terms_common`
--
ALTER TABLE `o50jk_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `o50jk_finder_tokens`
--
ALTER TABLE `o50jk_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `o50jk_finder_tokens_aggregate`
--
ALTER TABLE `o50jk_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `o50jk_finder_types`
--
ALTER TABLE `o50jk_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `o50jk_languages`
--
ALTER TABLE `o50jk_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `o50jk_menu`
--
ALTER TABLE `o50jk_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `o50jk_menu_types`
--
ALTER TABLE `o50jk_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `o50jk_messages`
--
ALTER TABLE `o50jk_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `o50jk_messages_cfg`
--
ALTER TABLE `o50jk_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `o50jk_modules`
--
ALTER TABLE `o50jk_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `o50jk_modules_menu`
--
ALTER TABLE `o50jk_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `o50jk_newsfeeds`
--
ALTER TABLE `o50jk_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `o50jk_overrider`
--
ALTER TABLE `o50jk_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o50jk_postinstall_messages`
--
ALTER TABLE `o50jk_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `o50jk_redirect_links`
--
ALTER TABLE `o50jk_redirect_links`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_old_url` (`old_url`(100)), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `o50jk_schemas`
--
ALTER TABLE `o50jk_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `o50jk_session`
--
ALTER TABLE `o50jk_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `o50jk_tags`
--
ALTER TABLE `o50jk_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `o50jk_template_styles`
--
ALTER TABLE `o50jk_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `o50jk_ucm_base`
--
ALTER TABLE `o50jk_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `o50jk_ucm_content`
--
ALTER TABLE `o50jk_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`(100)), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`(100)), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`(100)), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `o50jk_ucm_history`
--
ALTER TABLE `o50jk_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `o50jk_update_sites`
--
ALTER TABLE `o50jk_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `o50jk_update_sites_extensions`
--
ALTER TABLE `o50jk_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `o50jk_updates`
--
ALTER TABLE `o50jk_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `o50jk_usergroups`
--
ALTER TABLE `o50jk_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `xzp7u_assets`
--
ALTER TABLE `xzp7u_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `xzp7u_associations`
--
ALTER TABLE `xzp7u_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `xzp7u_banner_clients`
--
ALTER TABLE `xzp7u_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `xzp7u_banner_tracks`
--
ALTER TABLE `xzp7u_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `xzp7u_banners`
--
ALTER TABLE `xzp7u_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xzp7u_categories`
--
ALTER TABLE `xzp7u_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xzp7u_contact_details`
--
ALTER TABLE `xzp7u_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `xzp7u_content`
--
ALTER TABLE `xzp7u_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `xzp7u_content_frontpage`
--
ALTER TABLE `xzp7u_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xzp7u_content_rating`
--
ALTER TABLE `xzp7u_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xzp7u_content_types`
--
ALTER TABLE `xzp7u_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `xzp7u_contentitem_tag_map`
--
ALTER TABLE `xzp7u_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `xzp7u_extensions`
--
ALTER TABLE `xzp7u_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `xzp7u_finder_filters`
--
ALTER TABLE `xzp7u_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `xzp7u_finder_links`
--
ALTER TABLE `xzp7u_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`(100)), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `xzp7u_finder_links_terms0`
--
ALTER TABLE `xzp7u_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xzp7u_finder_links_terms1`
--
ALTER TABLE `xzp7u_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xzp7u_finder_links_terms2`
--
ALTER TABLE `xzp7u_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xzp7u_finder_links_terms3`
--
ALTER TABLE `xzp7u_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xzp7u_finder_links_terms4`
--
ALTER TABLE `xzp7u_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xzp7u_finder_links_terms5`
--
ALTER TABLE `xzp7u_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `i1hzw_assets`
--
ALTER TABLE `i1hzw_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `i1hzw_banner_clients`
--
ALTER TABLE `i1hzw_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_banners`
--
ALTER TABLE `i1hzw_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_categories`
--
ALTER TABLE `i1hzw_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_field_values`
--
ALTER TABLE `i1hzw_comprofiler_field_values`
MODIFY `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_fields`
--
ALTER TABLE `i1hzw_comprofiler_fields`
MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_lists`
--
ALTER TABLE `i1hzw_comprofiler_lists`
MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_plugin`
--
ALTER TABLE `i1hzw_comprofiler_plugin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=500;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_plugin_blogs`
--
ALTER TABLE `i1hzw_comprofiler_plugin_blogs`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_ratings`
--
ALTER TABLE `i1hzw_comprofiler_ratings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_tabs`
--
ALTER TABLE `i1hzw_comprofiler_tabs`
MODIFY `tabid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `i1hzw_comprofiler_userreports`
--
ALTER TABLE `i1hzw_comprofiler_userreports`
MODIFY `reportid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `i1hzw_contact_details`
--
ALTER TABLE `i1hzw_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_content`
--
ALTER TABLE `i1hzw_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `i1hzw_content_types`
--
ALTER TABLE `i1hzw_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `i1hzw_extensions`
--
ALTER TABLE `i1hzw_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10045;
--
-- AUTO_INCREMENT for table `i1hzw_finder_filters`
--
ALTER TABLE `i1hzw_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_finder_links`
--
ALTER TABLE `i1hzw_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_finder_taxonomy`
--
ALTER TABLE `i1hzw_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `i1hzw_finder_terms`
--
ALTER TABLE `i1hzw_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_finder_types`
--
ALTER TABLE `i1hzw_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments`
--
ALTER TABLE `i1hzw_jcomments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_blacklist`
--
ALTER TABLE `i1hzw_jcomments_blacklist`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_custom_bbcodes`
--
ALTER TABLE `i1hzw_jcomments_custom_bbcodes`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_mailq`
--
ALTER TABLE `i1hzw_jcomments_mailq`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_objects`
--
ALTER TABLE `i1hzw_jcomments_objects`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_reports`
--
ALTER TABLE `i1hzw_jcomments_reports`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_smilies`
--
ALTER TABLE `i1hzw_jcomments_smilies`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_subscriptions`
--
ALTER TABLE `i1hzw_jcomments_subscriptions`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_jcomments_votes`
--
ALTER TABLE `i1hzw_jcomments_votes`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_categories`
--
ALTER TABLE `i1hzw_jdownloads_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_config`
--
ALTER TABLE `i1hzw_jdownloads_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_files`
--
ALTER TABLE `i1hzw_jdownloads_files`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_licenses`
--
ALTER TABLE `i1hzw_jdownloads_licenses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_logs`
--
ALTER TABLE `i1hzw_jdownloads_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_templates`
--
ALTER TABLE `i1hzw_jdownloads_templates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `i1hzw_jdownloads_usergroups_limits`
--
ALTER TABLE `i1hzw_jdownloads_usergroups_limits`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_announcement`
--
ALTER TABLE `i1hzw_kunena_announcement`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_attachments`
--
ALTER TABLE `i1hzw_kunena_attachments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_categories`
--
ALTER TABLE `i1hzw_kunena_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_keywords`
--
ALTER TABLE `i1hzw_kunena_keywords`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_messages`
--
ALTER TABLE `i1hzw_kunena_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_polls`
--
ALTER TABLE `i1hzw_kunena_polls`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_polls_options`
--
ALTER TABLE `i1hzw_kunena_polls_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_ranks`
--
ALTER TABLE `i1hzw_kunena_ranks`
MODIFY `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_smileys`
--
ALTER TABLE `i1hzw_kunena_smileys`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_topics`
--
ALTER TABLE `i1hzw_kunena_topics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_users_banned`
--
ALTER TABLE `i1hzw_kunena_users_banned`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_kunena_version`
--
ALTER TABLE `i1hzw_kunena_version`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `i1hzw_languages`
--
ALTER TABLE `i1hzw_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `i1hzw_menu`
--
ALTER TABLE `i1hzw_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `i1hzw_menu_types`
--
ALTER TABLE `i1hzw_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `i1hzw_messages`
--
ALTER TABLE `i1hzw_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_modules`
--
ALTER TABLE `i1hzw_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `i1hzw_newsfeeds`
--
ALTER TABLE `i1hzw_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_overrider`
--
ALTER TABLE `i1hzw_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `i1hzw_postinstall_messages`
--
ALTER TABLE `i1hzw_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `i1hzw_redirect_links`
--
ALTER TABLE `i1hzw_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_tags`
--
ALTER TABLE `i1hzw_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `i1hzw_template_styles`
--
ALTER TABLE `i1hzw_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `i1hzw_ucm_content`
--
ALTER TABLE `i1hzw_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `i1hzw_ucm_history`
--
ALTER TABLE `i1hzw_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `i1hzw_update_sites`
--
ALTER TABLE `i1hzw_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `i1hzw_updates`
--
ALTER TABLE `i1hzw_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `i1hzw_user_keys`
--
ALTER TABLE `i1hzw_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_user_notes`
--
ALTER TABLE `i1hzw_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i1hzw_usergroups`
--
ALTER TABLE `i1hzw_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `i1hzw_users`
--
ALTER TABLE `i1hzw_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=886;
--
-- AUTO_INCREMENT for table `i1hzw_viewlevels`
--
ALTER TABLE `i1hzw_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `o50jk_assets`
--
ALTER TABLE `o50jk_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `o50jk_banner_clients`
--
ALTER TABLE `o50jk_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_banners`
--
ALTER TABLE `o50jk_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_categories`
--
ALTER TABLE `o50jk_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `o50jk_contact_details`
--
ALTER TABLE `o50jk_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_content`
--
ALTER TABLE `o50jk_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_content_types`
--
ALTER TABLE `o50jk_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `o50jk_extensions`
--
ALTER TABLE `o50jk_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `o50jk_finder_filters`
--
ALTER TABLE `o50jk_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_finder_links`
--
ALTER TABLE `o50jk_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_finder_taxonomy`
--
ALTER TABLE `o50jk_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `o50jk_finder_terms`
--
ALTER TABLE `o50jk_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_finder_types`
--
ALTER TABLE `o50jk_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_languages`
--
ALTER TABLE `o50jk_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `o50jk_menu`
--
ALTER TABLE `o50jk_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `o50jk_menu_types`
--
ALTER TABLE `o50jk_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `o50jk_messages`
--
ALTER TABLE `o50jk_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_modules`
--
ALTER TABLE `o50jk_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `o50jk_newsfeeds`
--
ALTER TABLE `o50jk_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_overrider`
--
ALTER TABLE `o50jk_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `o50jk_postinstall_messages`
--
ALTER TABLE `o50jk_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `o50jk_redirect_links`
--
ALTER TABLE `o50jk_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_tags`
--
ALTER TABLE `o50jk_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `o50jk_template_styles`
--
ALTER TABLE `o50jk_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `o50jk_ucm_content`
--
ALTER TABLE `o50jk_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_ucm_history`
--
ALTER TABLE `o50jk_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_update_sites`
--
ALTER TABLE `o50jk_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `o50jk_updates`
--
ALTER TABLE `o50jk_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o50jk_usergroups`
--
ALTER TABLE `o50jk_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `xzp7u_assets`
--
ALTER TABLE `xzp7u_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `xzp7u_banner_clients`
--
ALTER TABLE `xzp7u_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xzp7u_banners`
--
ALTER TABLE `xzp7u_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xzp7u_categories`
--
ALTER TABLE `xzp7u_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `xzp7u_contact_details`
--
ALTER TABLE `xzp7u_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xzp7u_content`
--
ALTER TABLE `xzp7u_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xzp7u_content_types`
--
ALTER TABLE `xzp7u_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `xzp7u_extensions`
--
ALTER TABLE `xzp7u_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `xzp7u_finder_filters`
--
ALTER TABLE `xzp7u_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xzp7u_finder_links`
--
ALTER TABLE `xzp7u_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"},{"db":"cdcol","table":"cds"},{"db":"mysql","table":"user"},{"db":"mysql","table":"help_relation"},{"db":"mysql","table":"db"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-05-24 19:04:57', '{"collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
 ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
