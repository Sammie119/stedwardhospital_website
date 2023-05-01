-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2023 at 06:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stedwardhospitalgh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT 0,
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT 0,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int(11) NOT NULL,
  `indexedVolumes` text DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT 0,
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT 0,
  `isCli` tinyint(1) DEFAULT 0,
  `actionRequired` tinyint(1) DEFAULT 0,
  `processIfRootEmpty` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(10, NULL, 3, 1, 'asset6418619bdfc5b2.29089713.jpg', 'image', NULL, 1920, 1080, 115066, NULL, 0, 0, '2023-03-20 13:37:32', '2023-03-20 13:37:32', '2023-03-20 13:37:32'),
(11, NULL, 3, 1, 'asset641861baee1a12.09346352.jpg', 'image', NULL, 1920, 1080, 115066, NULL, 0, 0, '2023-03-20 13:38:03', '2023-03-20 13:38:03', '2023-03-20 13:38:03'),
(27, 2, 4, 1, 'Screenshot-from-2023-03-23-09-47-35.png', 'image', NULL, 128, 161, 32608, NULL, 0, 0, '2023-03-26 19:08:56', '2023-03-26 19:08:56', '2023-03-26 19:08:56'),
(28, 2, 4, 1, 'carousel-1_2023-03-26-191021_hhsq.jpg', 'image', NULL, 1920, 1080, 115066, NULL, 0, 0, '2023-03-26 19:10:22', '2023-03-26 19:10:22', '2023-03-26 19:10:22'),
(29, 2, 4, 1, 'carousel-2_2023-03-26-191023_tijg.jpg', 'image', NULL, 1920, 1080, 64608, NULL, 0, 0, '2023-03-26 19:10:23', '2023-03-26 19:10:23', '2023-03-26 19:10:23'),
(31, 2, 4, 1, 'carousel-1_2023-04-24-023146_syer.jpg', 'image', NULL, 1920, 1080, 115066, NULL, NULL, NULL, '2023-04-24 02:31:46', '2023-04-24 02:31:46', '2023-04-24 02:31:46'),
(32, 2, 4, 1, 'carousel-2_2023-04-24-023147_ofja.jpg', 'image', NULL, 1920, 1080, 64608, NULL, NULL, NULL, '2023-04-24 02:31:47', '2023-04-24 02:31:47', '2023-04-24 02:31:47'),
(407, 2, 4, 1, 'about.jpg', 'image', NULL, 600, 600, 23546, NULL, NULL, NULL, '2023-04-24 06:37:21', '2023-04-24 06:37:21', '2023-04-24 06:37:26'),
(435, 2, 4, 1, 'about_2023-04-24-134713_ugsi.jpg', 'image', NULL, 600, 600, 23551, NULL, NULL, NULL, '2023-04-24 13:47:13', '2023-04-24 13:47:13', '2023-04-24 13:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(7, 1, 'postDate', '2023-03-19 19:29:21', 0, 1),
(7, 1, 'slug', '2023-03-19 19:28:24', 0, 1),
(7, 1, 'title', '2023-04-24 19:02:08', 0, 1),
(7, 1, 'uri', '2023-03-19 19:28:24', 0, 1),
(676, 1, 'postDate', '2023-04-25 03:44:21', 0, 1),
(676, 1, 'slug', '2023-04-25 03:44:09', 0, 1),
(676, 1, 'title', '2023-04-25 03:44:09', 0, 1),
(676, 1, 'uri', '2023-04-25 03:44:09', 0, 1),
(678, 1, 'postDate', '2023-04-25 05:34:28', 0, 1),
(678, 1, 'slug', '2023-04-25 05:33:41', 0, 1),
(678, 1, 'title', '2023-04-25 05:37:53', 0, 1),
(678, 1, 'uri', '2023-04-25 05:33:41', 0, 1),
(680, 1, 'postDate', '2023-04-25 05:35:41', 0, 1),
(680, 1, 'slug', '2023-04-25 05:34:47', 0, 1),
(680, 1, 'title', '2023-04-25 05:37:27', 0, 1),
(680, 1, 'uri', '2023-04-25 05:34:47', 0, 1),
(682, 1, 'postDate', '2023-04-25 05:36:38', 0, 1),
(682, 1, 'slug', '2023-04-25 05:36:05', 0, 1),
(682, 1, 'title', '2023-04-25 05:37:11', 0, 1),
(682, 1, 'uri', '2023-04-25 05:36:05', 0, 1),
(690, 1, 'title', '2023-04-25 10:02:56', 0, 1),
(718, 1, 'postDate', '2023-04-25 17:48:45', 0, 1),
(718, 1, 'slug', '2023-04-25 14:07:17', 0, 1),
(718, 1, 'title', '2023-04-25 14:07:17', 0, 1),
(718, 1, 'uri', '2023-04-25 14:07:17', 0, 1),
(720, 1, 'postDate', '2023-04-25 20:08:50', 0, 1),
(720, 1, 'slug', '2023-04-25 20:07:37', 0, 1),
(720, 1, 'title', '2023-04-25 20:07:37', 0, 1),
(720, 1, 'uri', '2023-04-25 20:07:37', 0, 1),
(722, 1, 'postDate', '2023-04-25 20:10:04', 0, 1),
(722, 1, 'slug', '2023-04-25 20:09:32', 0, 1),
(722, 1, 'title', '2023-04-25 20:09:32', 0, 1),
(722, 1, 'uri', '2023-04-25 20:09:32', 0, 1),
(724, 1, 'title', '2023-04-25 20:54:53', 0, 1),
(733, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(733, 1, 'uri', '2023-04-26 21:09:23', 0, 1),
(734, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(734, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(735, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(735, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(736, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(736, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(737, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(737, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(739, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(739, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(740, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(740, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(741, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(741, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(742, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(742, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(743, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(743, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(744, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(744, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(745, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(745, 1, 'uri', '2023-04-26 21:04:20', 0, 1),
(746, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(747, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(748, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(749, 1, 'authorId', '2023-04-27 04:03:56', 0, 1),
(750, 1, 'authorId', '2023-04-27 04:03:56', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '2023-04-24 02:54:21', 0, 1),
(2, 1, 2, '2023-04-24 02:44:06', 0, 1),
(2, 1, 3, '2023-04-24 02:44:06', 0, 1),
(2, 1, 4, '2023-04-24 02:44:06', 0, 1),
(2, 1, 5, '2023-04-24 02:44:06', 0, 1),
(2, 1, 6, '2023-04-24 02:44:06', 0, 1),
(2, 1, 7, '2023-04-24 05:44:49', 0, 1),
(2, 1, 12, '2023-04-24 06:52:44', 0, 1),
(2, 1, 17, '2023-04-24 16:36:53', 0, 1),
(2, 1, 21, '2023-04-24 16:36:52', 0, 1),
(2, 1, 22, '2023-04-24 17:35:11', 0, 1),
(2, 1, 29, '2023-04-24 17:35:11', 0, 1),
(287, 1, 9, '2023-04-24 05:42:48', 0, 1),
(287, 1, 10, '2023-04-24 05:43:34', 0, 1),
(288, 1, 9, '2023-04-24 05:44:49', 0, 1),
(288, 1, 11, '2023-04-24 05:24:17', 0, 1),
(408, 1, 13, '2023-04-24 06:52:44', 0, 1),
(408, 1, 15, '2023-04-24 06:52:44', 0, 1),
(678, 1, 32, '2023-04-29 19:41:02', 0, 1),
(678, 1, 33, '2023-04-25 05:33:05', 0, 1),
(678, 1, 34, '2023-04-25 05:33:19', 0, 1),
(680, 1, 32, '2023-04-25 05:35:37', 0, 1),
(680, 1, 33, '2023-04-25 05:35:26', 0, 1),
(680, 1, 34, '2023-04-25 05:35:08', 0, 1),
(682, 1, 32, '2023-05-01 03:01:25', 0, 1),
(682, 1, 33, '2023-04-25 05:36:27', 0, 1),
(682, 1, 34, '2023-04-25 05:36:16', 0, 1),
(690, 1, 1, '2023-04-25 10:10:42', 0, 1),
(690, 1, 21, '2023-04-25 10:02:56', 0, 1),
(691, 1, 21, '2023-04-25 10:01:46', 0, 1),
(692, 1, 21, '2023-04-25 10:01:46', 0, 1),
(693, 1, 21, '2023-04-25 10:01:46', 0, 1),
(694, 1, 21, '2023-04-25 10:01:46', 0, 1),
(695, 1, 21, '2023-04-25 10:01:46', 0, 1),
(696, 1, 21, '2023-04-25 10:01:46', 0, 1),
(704, 1, 1, '2023-04-25 13:26:48', 0, 1),
(704, 1, 2, '2023-04-25 13:15:23', 0, 1),
(704, 1, 33, '2023-04-25 13:15:23', 0, 1),
(704, 1, 34, '2023-04-25 13:15:23', 0, 1),
(718, 1, 21, '2023-04-25 17:48:08', 0, 1),
(718, 1, 32, '2023-04-29 19:08:56', 0, 1),
(718, 1, 33, '2023-04-25 17:48:37', 0, 1),
(718, 1, 34, '2023-04-25 17:48:22', 0, 1),
(720, 1, 21, '2023-04-25 20:08:09', 0, 1),
(720, 1, 32, '2023-04-29 19:08:40', 0, 1),
(720, 1, 33, '2023-04-25 20:08:04', 0, 1),
(720, 1, 34, '2023-04-25 20:07:15', 0, 1),
(722, 1, 21, '2023-04-25 20:09:38', 0, 1),
(722, 1, 32, '2023-04-29 19:56:12', 0, 1),
(722, 1, 33, '2023-04-25 20:09:15', 0, 1),
(722, 1, 34, '2023-04-25 20:09:21', 0, 1),
(724, 1, 1, '2023-04-25 20:54:53', 0, 1),
(730, 1, 1, '2023-04-27 04:16:31', 0, 1),
(730, 1, 33, '2023-04-27 04:21:54', 0, 1),
(730, 1, 35, '2023-04-27 04:27:15', 0, 1),
(733, 1, 35, '2023-04-27 04:31:53', 0, 1),
(733, 1, 36, '2023-04-27 04:03:56', 0, 1),
(733, 1, 37, '2023-04-27 04:03:56', 0, 1),
(733, 1, 38, '2023-04-27 04:03:56', 0, 1),
(733, 1, 39, '2023-04-27 04:10:29', 0, 1),
(733, 1, 40, '2023-04-27 04:10:29', 0, 1),
(733, 1, 41, '2023-04-27 04:10:29', 0, 1),
(733, 1, 42, '2023-05-01 03:30:31', 0, 1),
(734, 1, 36, '2023-04-27 04:03:56', 0, 1),
(734, 1, 37, '2023-04-27 04:03:56', 0, 1),
(734, 1, 38, '2023-04-27 04:03:56', 0, 1),
(734, 1, 39, '2023-04-27 04:03:56', 0, 1),
(734, 1, 40, '2023-04-27 04:03:56', 0, 1),
(734, 1, 41, '2023-04-27 04:03:56', 0, 1),
(735, 1, 36, '2023-04-27 04:03:56', 0, 1),
(735, 1, 37, '2023-04-27 04:03:56', 0, 1),
(735, 1, 38, '2023-04-27 04:03:56', 0, 1),
(735, 1, 39, '2023-04-27 04:03:56', 0, 1),
(735, 1, 40, '2023-04-27 04:03:56', 0, 1),
(735, 1, 41, '2023-04-27 04:03:56', 0, 1),
(736, 1, 36, '2023-04-27 04:03:56', 0, 1),
(736, 1, 37, '2023-04-27 04:03:56', 0, 1),
(736, 1, 38, '2023-04-27 04:03:56', 0, 1),
(736, 1, 39, '2023-04-27 04:03:56', 0, 1),
(736, 1, 40, '2023-04-27 04:03:56', 0, 1),
(736, 1, 41, '2023-04-27 04:03:56', 0, 1),
(737, 1, 36, '2023-04-27 04:03:56', 0, 1),
(737, 1, 37, '2023-04-27 04:03:56', 0, 1),
(737, 1, 38, '2023-04-27 04:03:56', 0, 1),
(737, 1, 39, '2023-04-27 04:03:56', 0, 1),
(737, 1, 40, '2023-04-27 04:03:56', 0, 1),
(737, 1, 41, '2023-04-27 04:03:56', 0, 1),
(739, 1, 36, '2023-04-27 04:03:56', 0, 1),
(739, 1, 37, '2023-04-27 04:03:56', 0, 1),
(739, 1, 38, '2023-04-27 04:03:56', 0, 1),
(739, 1, 39, '2023-04-27 04:03:56', 0, 1),
(739, 1, 40, '2023-04-27 04:03:56', 0, 1),
(739, 1, 41, '2023-04-27 04:03:56', 0, 1),
(740, 1, 36, '2023-04-27 04:03:56', 0, 1),
(740, 1, 37, '2023-04-27 04:03:56', 0, 1),
(740, 1, 38, '2023-04-27 04:03:56', 0, 1),
(740, 1, 39, '2023-04-27 04:03:56', 0, 1),
(740, 1, 40, '2023-04-27 04:03:56', 0, 1),
(740, 1, 41, '2023-04-27 04:03:56', 0, 1),
(741, 1, 36, '2023-04-27 04:03:56', 0, 1),
(741, 1, 37, '2023-04-27 04:03:56', 0, 1),
(741, 1, 38, '2023-04-27 04:03:56', 0, 1),
(741, 1, 39, '2023-04-27 04:03:56', 0, 1),
(741, 1, 40, '2023-04-27 04:03:56', 0, 1),
(741, 1, 41, '2023-04-27 04:03:56', 0, 1),
(742, 1, 36, '2023-04-27 04:03:56', 0, 1),
(742, 1, 37, '2023-04-27 04:03:56', 0, 1),
(742, 1, 38, '2023-04-27 04:03:56', 0, 1),
(742, 1, 39, '2023-04-27 04:03:56', 0, 1),
(742, 1, 40, '2023-04-27 04:03:56', 0, 1),
(742, 1, 41, '2023-04-27 04:03:56', 0, 1),
(743, 1, 36, '2023-04-27 04:03:56', 0, 1),
(743, 1, 37, '2023-04-27 04:03:56', 0, 1),
(743, 1, 38, '2023-04-27 04:03:56', 0, 1),
(743, 1, 39, '2023-04-27 04:03:56', 0, 1),
(743, 1, 40, '2023-04-27 04:03:56', 0, 1),
(743, 1, 41, '2023-04-27 04:03:56', 0, 1),
(744, 1, 36, '2023-04-27 04:03:56', 0, 1),
(744, 1, 37, '2023-04-27 04:03:56', 0, 1),
(744, 1, 38, '2023-04-27 04:03:56', 0, 1),
(744, 1, 39, '2023-04-27 04:03:56', 0, 1),
(744, 1, 40, '2023-04-27 04:03:56', 0, 1),
(744, 1, 41, '2023-04-27 04:03:56', 0, 1),
(745, 1, 36, '2023-04-27 04:03:56', 0, 1),
(745, 1, 37, '2023-04-27 04:03:56', 0, 1),
(745, 1, 38, '2023-04-27 04:03:56', 0, 1),
(745, 1, 39, '2023-04-27 04:03:56', 0, 1),
(745, 1, 40, '2023-04-27 04:03:56', 0, 1),
(745, 1, 41, '2023-04-27 04:03:56', 0, 1),
(746, 1, 36, '2023-04-27 04:03:56', 0, 1),
(746, 1, 37, '2023-04-27 04:03:56', 0, 1),
(746, 1, 38, '2023-04-27 04:03:56', 0, 1),
(746, 1, 39, '2023-04-27 04:03:56', 0, 1),
(746, 1, 40, '2023-04-27 04:03:56', 0, 1),
(746, 1, 41, '2023-04-27 04:03:56', 0, 1),
(747, 1, 36, '2023-04-27 04:03:56', 0, 1),
(747, 1, 37, '2023-04-27 04:03:56', 0, 1),
(747, 1, 38, '2023-04-27 04:03:56', 0, 1),
(747, 1, 39, '2023-04-27 04:03:56', 0, 1),
(747, 1, 40, '2023-04-27 04:03:56', 0, 1),
(747, 1, 41, '2023-04-27 04:03:56', 0, 1),
(748, 1, 36, '2023-04-27 04:03:56', 0, 1),
(748, 1, 37, '2023-04-27 04:03:56', 0, 1),
(748, 1, 38, '2023-04-27 04:03:56', 0, 1),
(748, 1, 39, '2023-04-27 04:03:56', 0, 1),
(748, 1, 40, '2023-04-27 04:03:56', 0, 1),
(748, 1, 41, '2023-04-27 04:03:56', 0, 1),
(749, 1, 36, '2023-04-27 04:03:56', 0, 1),
(749, 1, 37, '2023-04-27 04:03:56', 0, 1),
(749, 1, 38, '2023-04-27 04:03:56', 0, 1),
(749, 1, 39, '2023-04-27 04:03:56', 0, 1),
(749, 1, 40, '2023-04-27 04:03:56', 0, 1),
(749, 1, 41, '2023-04-27 04:03:56', 0, 1),
(750, 1, 36, '2023-04-27 04:03:56', 0, 1),
(750, 1, 37, '2023-04-27 04:03:56', 0, 1),
(750, 1, 38, '2023-04-27 04:03:56', 0, 1),
(750, 1, 39, '2023-04-27 04:03:56', 0, 1),
(750, 1, 40, '2023-04-27 04:03:56', 0, 1),
(750, 1, 41, '2023-04-27 04:03:56', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactform_submissions`
--

CREATE TABLE `contactform_submissions` (
  `id` int(11) NOT NULL,
  `form` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `fromEmail` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contactform_submissions`
--

INSERT INTO `contactform_submissions` (`id`, `form`, `subject`, `fromName`, `fromEmail`, `message`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(786, 'contact', 'Test', 'Nana', 'nana@gmail.com', '{\"message\":\"Testing contact form\"}', '2023-05-01 04:00:02', '2023-05-01 04:00:02', 'de011808-2356-4f71-9714-68dbf20575bc');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_carousel_1_Text_rmsxoipx` text DEFAULT NULL,
  `field_carousel_2_Text_pndpqtkn` text DEFAULT NULL,
  `field_carousel_1_Title_dzizeauc` text DEFAULT NULL,
  `field_carousel_2_Title_lusxbtau` text DEFAULT NULL,
  `field_service_title_oeigaqai` text DEFAULT NULL,
  `field_staffSectionTitle_salidnds` text DEFAULT NULL,
  `field_richText_qkolfbfq` text DEFAULT NULL,
  `field_shortDescription_aytyzkuo` text DEFAULT NULL,
  `field_pageTitle_rzxybgmc` varchar(800) DEFAULT NULL,
  `field_location_yisxdfsp` varchar(1020) DEFAULT NULL,
  `field_emailAddress_vnaegkea` varchar(400) DEFAULT NULL,
  `field_telNumber_zioftqcr` varchar(80) DEFAULT NULL,
  `field_facebookAddress_tmwxichd` varchar(400) DEFAULT NULL,
  `field_twitterAddress_aphyyapv` varchar(400) DEFAULT NULL,
  `field_instagramAddress_kmgkoxnb` varchar(400) DEFAULT NULL,
  `field_sendToEmail_bjofpuni` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_carousel_1_Text_rmsxoipx`, `field_carousel_2_Text_pndpqtkn`, `field_carousel_1_Title_dzizeauc`, `field_carousel_2_Title_lusxbtau`, `field_service_title_oeigaqai`, `field_staffSectionTitle_salidnds`, `field_richText_qkolfbfq`, `field_shortDescription_aytyzkuo`, `field_pageTitle_rzxybgmc`, `field_location_yisxdfsp`, `field_emailAddress_vnaegkea`, `field_telNumber_zioftqcr`, `field_facebookAddress_tmwxichd`, `field_twitterAddress_aphyyapv`, `field_instagramAddress_kmgkoxnb`, `field_sendToEmail_bjofpuni`) VALUES
(1, 1, 1, NULL, '2023-03-19 04:02:55', '2023-03-19 04:02:55', 'b1eddb94-6819-4fdb-bf0c-af1a4e1bf2c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home Page', '2023-03-19 19:11:29', '2023-04-24 17:47:04', '5517c57a-b17d-4e04-9c11-e9bd283d04bc', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', 'We Offer The Best Quality Dental Services - SMS', 'We Offer The Best Quality Dental SAMMIE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 'Home Page', '2023-03-19 19:11:29', '2023-03-19 19:11:29', 'b8dc8086-c9a4-41d0-b8a3-44b6e8e4e0a6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'Home Page', '2023-03-19 19:11:29', '2023-03-19 19:11:29', '6b09f178-9c25-4b3c-8923-c5b5275697b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 'Home Page', '2023-03-19 19:13:52', '2023-03-19 19:13:52', '4904418f-96dd-4cbb-a880-6a5b37e0f27e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'Home Page', '2023-03-19 19:13:52', '2023-03-19 19:13:52', '1f55a733-32f4-4b22-be7a-b7ea7d0fddf3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 'Service', '2023-03-19 19:27:48', '2023-04-25 05:28:07', 'bc2e9d70-c269-4ab5-8622-7532bf235fd4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'Serice', '2023-03-19 19:29:21', '2023-04-25 05:28:07', 'bdc10ded-25ce-4f86-a43e-0f5d5b3270d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 'Home Page', '2023-03-20 13:33:00', '2023-03-20 13:33:00', '9cb2cc26-2912-46b8-9b0a-0954b6431fbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'Carousel 1', '2023-03-20 13:37:31', '2023-03-20 13:37:31', 'bb9d84b4-ef76-4b88-81b2-40db8498b2a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 'Carousel 1', '2023-03-20 13:38:03', '2023-03-20 13:38:03', '43cacb3b-c02e-43a6-bb57-4c0c741a9953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 'Screenshot from 2023 03 23 09 47 35', '2023-03-26 19:08:56', '2023-03-26 19:08:56', 'da4ca1ae-c544-452b-88c1-05fbf54ef0a3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 1, 'Carousel 1', '2023-03-26 19:10:22', '2023-03-26 19:10:22', '84a5d832-dbb8-47f0-a6dc-e85bd21417db', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 1, 'Carousel 2', '2023-03-26 19:10:23', '2023-03-26 19:10:23', 'a0376416-9ee7-4230-9db2-66498c9806c3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 'Carousel 1', '2023-04-24 02:31:46', '2023-04-24 02:31:46', '727db61d-755e-490b-9602-14b0ebe72fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, 'Carousel 2', '2023-04-24 02:31:47', '2023-04-24 02:31:47', '1fe7c348-ff6a-4a59-bed9-dfdf2946d312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 'Home Page', '2023-04-24 02:42:37', '2023-04-24 02:42:37', '0471b458-a919-4b33-9a6a-75031c904452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, 1, 'Home Page', '2023-04-24 02:44:07', '2023-04-24 02:44:07', 'c6ef64c1-1524-4f0c-b33f-2fc2a910f780', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 1, 'Home Page', '2023-04-24 02:53:51', '2023-04-24 02:53:51', '23392c93-04d8-4ebc-80fd-6f85aa6d2544', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, 1, 'Home Page', '2023-04-24 02:54:21', '2023-04-24 02:54:21', '590b59e9-6cee-48fa-be46-ea58519289e6', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, 1, 'Home Page', '2023-04-24 04:45:23', '2023-04-24 04:45:23', '5e92671f-14c3-463f-9213-0dfbe9879ceb', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 289, 1, 'Home Page', '2023-04-24 05:07:41', '2023-04-24 05:07:41', '37df712f-e71d-419b-8598-38ca5e4fbba7', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 294, 1, 'Home Page', '2023-04-24 05:10:44', '2023-04-24 05:10:44', 'c9d2b83a-ea4a-4ac6-8c28-418c1326aba1', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 300, 1, 'Home Page', '2023-04-24 05:24:17', '2023-04-24 05:24:17', 'b1f5b62a-95de-4d59-9de4-6897d23ccacc', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 305, 1, 'Home Page', '2023-04-24 05:26:16', '2023-04-24 05:26:16', 'b0dedd34-4503-4750-926e-2447d54a5981', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 310, 1, 'Home Page', '2023-04-24 05:27:53', '2023-04-24 05:27:53', '2a7d80ab-d4e3-4f70-83a4-af9b0f1e7150', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 316, 1, 'Home Page', '2023-04-24 05:29:15', '2023-04-24 05:29:15', '9817dde5-93d2-4a1a-b82c-3b7d041f1f85', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 322, 1, 'Home Page', '2023-04-24 05:30:37', '2023-04-24 05:30:37', '861982c4-67f6-4f3f-a0e7-2fa0886dfde0', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 327, 1, 'Home Page', '2023-04-24 05:30:55', '2023-04-24 05:30:55', '985e36bf-517f-4cc2-8396-f0eca0e219c1', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 332, 1, 'Home Page', '2023-04-24 05:33:45', '2023-04-24 05:33:45', '48aa66d0-5ee6-42a0-b50e-e97582585293', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 337, 1, 'Home Page', '2023-04-24 05:35:04', '2023-04-24 05:35:04', '331c011d-d608-4af4-af2a-f0f5fbee17d6', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 342, 1, 'Home Page', '2023-04-24 05:38:03', '2023-04-24 05:38:03', '042555f4-4d69-400b-85fd-c6f3b059b155', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 347, 1, 'Home Page', '2023-04-24 05:38:35', '2023-04-24 05:38:35', 'cf71c0d5-fbf4-471c-a45f-78b45171fe00', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 352, 1, 'Home Page', '2023-04-24 05:39:28', '2023-04-24 05:39:28', 'b238f6ca-ebd7-4db5-9190-80f5a6bf5562', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 357, 1, 'Home Page', '2023-04-24 05:40:27', '2023-04-24 05:40:27', '4333f287-f654-474c-80ea-3c490e8c1686', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 362, 1, 'Home Page', '2023-04-24 05:41:49', '2023-04-24 05:41:49', 'a32bf4b6-de73-4b89-85d6-b5e971f482ab', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 367, 1, 'Home Page', '2023-04-24 05:42:14', '2023-04-24 05:42:14', '8818ae33-5ac0-4e41-8667-1ae209586b3b', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 372, 1, 'Home Page', '2023-04-24 05:42:48', '2023-04-24 05:42:48', '934713f8-ae6d-458d-b84f-86009aba2cd1', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 377, 1, 'Home Page', '2023-04-24 05:43:34', '2023-04-24 05:43:34', '19482765-7289-4864-a8af-aa67c621d984', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 382, 1, 'Home Page', '2023-04-24 05:44:49', '2023-04-24 05:44:49', '148e66b1-089b-4d0f-8318-67ae173f7829', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 385, 1, 'Home Page', '2023-04-24 06:30:52', '2023-04-24 06:30:52', '58fe9f1f-3b61-4358-8aa8-cb296939f79b', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 388, 1, 'Home Page', '2023-04-24 06:31:54', '2023-04-24 06:31:54', '0a070ef3-ccfe-4679-b972-e3233d85bada', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 391, 1, 'Home Page', '2023-04-24 06:32:25', '2023-04-24 06:32:25', '6674519e-02d9-4f86-a10e-767d152c0384', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 407, 1, 'About', '2023-04-24 06:37:21', '2023-04-24 06:37:26', '6bf9a83d-9a78-4003-919a-1bacde28260f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 409, 1, 'Home Page', '2023-04-24 06:37:35', '2023-04-24 06:37:35', '6a34158e-6326-4bb6-8146-827c1e1a441e', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 415, 1, 'Home Page', '2023-04-24 06:43:02', '2023-04-24 06:43:02', '790a1efa-cb52-4369-ad6d-1f7dbd45823d', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 421, 1, 'Home Page', '2023-04-24 06:46:02', '2023-04-24 06:46:02', '77dfaedd-92b7-498d-b330-638452f459f3', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 427, 1, 'Home Page', '2023-04-24 06:52:44', '2023-04-24 06:52:44', '4a7325bb-f168-401c-b501-7eecfc2730f7', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 431, 1, 'Home Page', '2023-04-24 13:46:43', '2023-04-24 13:46:43', '3ba509f6-de7d-4e56-9171-3037b5377b0f', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 435, 1, 'About', '2023-04-24 13:47:13', '2023-04-24 13:47:13', '26a2e848-1c37-4f0c-83b0-4a90248b4c03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 476, 1, 'Home Page', '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'b75d5ef8-08b8-4294-8f66-100dbdb35c0c', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 483, 1, 'Home Page', '2023-04-24 16:11:56', '2023-04-24 16:11:56', '667d2894-78ec-4018-ab4f-3b82c0d76319', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 557, 1, 'Home Page', '2023-04-24 16:20:20', '2023-04-24 16:20:20', '8a385c48-3b86-4812-99aa-19f8740f4716', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 565, 1, 'Home Page', '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'a98f5df2-a5d3-4290-b1c5-91fe04456b8f', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 575, 1, 'Home Page', '2023-04-24 16:36:53', '2023-04-24 16:36:53', '9dabe19b-5f20-4de7-a6ff-00f81ee7e555', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', 'We Offer The Best Quality Dental Services - SMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 582, 1, 'Home Page', '2023-04-24 17:32:45', '2023-04-24 17:32:45', '65eb614f-8ba7-4062-a69c-d5d09ffe1070', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', 'We Offer The Best Quality Dental Services - SMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 653, 1, 'Home Page', '2023-04-24 17:35:11', '2023-04-24 17:35:11', '74b0573a-d5c4-4a96-8c19-26496f1ed628', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', 'We Offer The Best Quality Dental Services - SMS', 'We Offer The Best Quality Dental SAMMIE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 663, 1, 'Home Page', '2023-04-24 17:47:04', '2023-04-24 17:47:04', '16463126-f101-4ede-8d5a-2415b9fd94d2', 'God is good All the time', 'All things working together for our good', 'Vision Statement', 'Mission Statement', 'We Offer The Best Quality Dental Services - SMS', 'We Offer The Best Quality Dental SAMMIE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 674, 1, 'Service', '2023-04-24 19:02:08', '2023-04-25 05:28:07', '2178979a-4282-4490-bcfa-35a191d76a3a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 675, 1, 'Service', '2023-04-25 03:43:59', '2023-04-25 05:28:07', '31f6ab4b-3113-453c-8149-a3b31e85bf93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 676, 1, 'Service', '2023-04-25 03:44:03', '2023-04-25 05:28:07', '7110ef54-3330-49fe-a563-18434e3673da', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 677, 1, 'Service', '2023-04-25 03:44:21', '2023-04-25 05:28:07', '7e182fae-7d59-4162-a426-e38a51e2b462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 678, 1, 'Antinatal or Postnatal Service', '2023-04-25 05:30:24', '2023-04-29 19:41:02', '5df6e834-9544-402e-b683-86e603912530', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 679, 1, 'Exporing Peru by Motorbike', '2023-04-25 05:34:28', '2023-04-25 05:34:28', 'ad4e8209-d2ff-4042-ab8e-0bd153c6b9ef', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 680, 1, 'Pharmacy Service', '2023-04-25 05:34:35', '2023-04-25 05:37:27', '25834222-c585-4abc-a84c-7f338d386a3b', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 681, 1, 'KTM’s Nile River Rally', '2023-04-25 05:35:41', '2023-04-25 05:35:41', 'ca39ddb4-a576-4922-90d8-ff4e43051b69', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 682, 1, 'Out Pateint Service', '2023-04-25 05:35:48', '2023-05-01 03:01:25', 'bf99df35-29ea-4755-8a4b-79304ce5eb6f', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 683, 1, 'Summer Days in Argentina', '2023-04-25 05:36:38', '2023-04-25 05:36:38', '96842b62-4c34-40fd-8fd2-ca3df20dc0e4', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 685, 1, 'Out Pateint Service', '2023-04-25 05:37:11', '2023-04-25 05:37:11', 'bdae8e4a-b655-4b8a-9e98-909518de5980', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 687, 1, 'Pharmacy Service', '2023-04-25 05:37:27', '2023-04-25 05:37:27', 'c71b44dc-9988-4dab-91e9-20db8b48007e', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 689, 1, 'Antinatal or Postnatal Service', '2023-04-25 05:37:53', '2023-04-25 05:37:53', 'a2d5ea4f-9d23-41e7-87f0-80a23252a8ef', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 690, 1, 'Services', '2023-04-25 09:57:58', '2023-04-25 10:10:42', '3003e471-b008-4f66-a693-999f093b4c05', NULL, NULL, NULL, NULL, 'We Offer The Best Quality Dental Sammie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 691, 1, 'Service Listing', '2023-04-25 09:57:58', '2023-04-25 10:01:46', 'd6814712-289d-4f7a-9f33-076e3f7fbeef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 692, 1, 'Service Listing', '2023-04-25 09:57:58', '2023-04-25 10:01:46', '68489969-c866-471b-a565-d958bb5584a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 693, 1, 'Service Listing', '2023-04-25 10:01:20', '2023-04-25 10:01:46', '645bfee5-da1a-4c01-bbbe-e8dd3c3f55b4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 694, 1, 'Service Listing', '2023-04-25 10:01:45', '2023-04-25 10:01:46', '04fda2d2-5d65-451c-b0aa-a0e0a0ccd630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 695, 1, 'Service Listing', '2023-04-25 10:01:45', '2023-04-25 10:01:46', '3df2aa3b-1142-47aa-a07f-8c141dff4751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 696, 1, 'Service Listing', '2023-04-25 10:01:45', '2023-04-25 10:01:46', '6227c7b5-d175-4d63-8255-21b778919ff0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 698, 1, 'Services', '2023-04-25 10:02:56', '2023-04-25 10:02:56', '2e62745f-3532-46ce-b3c9-b0c41c704332', NULL, NULL, NULL, NULL, 'We Offer The Best Quality Dental Sammie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 699, 1, 'Services', '2023-04-25 10:08:01', '2023-04-25 10:08:01', 'b8bfd427-0fa9-47be-80fd-d66d1a3b1d3c', NULL, NULL, NULL, NULL, 'We Offer The Best Quality Dental Sammie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 701, 1, 'Services', '2023-04-25 10:08:22', '2023-04-25 10:08:22', '0cc483d2-401f-4e32-b831-0553c3845f58', NULL, NULL, NULL, NULL, 'We Offer The Best Quality Dental Sammie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 703, 1, 'Services', '2023-04-25 10:10:42', '2023-04-25 10:10:42', 'de7852dd-8147-4234-877f-925ffb187690', NULL, NULL, NULL, NULL, 'We Offer The Best Quality Dental Sammie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 704, 1, 'About Us', '2023-04-25 11:48:38', '2023-04-25 13:26:48', 'dbfcb363-d92c-4161-9463-20ebfae3c79f', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 705, 1, 'About Us', '2023-04-25 11:48:38', '2023-04-25 11:48:38', 'de0c72c0-7c47-4aa2-bf11-5498640b12f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 706, 1, 'About Us', '2023-04-25 11:48:38', '2023-04-25 11:48:38', 'f01010a7-5c6b-43ee-aece-86b0cda94ca3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 707, 1, 'About Us', '2023-04-25 13:13:49', '2023-04-25 13:13:49', '535c4aa0-06b2-4091-abf9-efac606ca679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 709, 1, 'About Us', '2023-04-25 13:15:23', '2023-04-25 13:15:23', 'e405658f-c6cb-4acf-8e7c-54836c292d7e', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 710, 1, 'About Us', '2023-04-25 13:18:09', '2023-04-25 13:18:09', '0bcecf79-deaf-4c08-8c44-3f97e225baec', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 711, 1, 'About Us', '2023-04-25 13:18:55', '2023-04-25 13:18:55', '2833d982-4931-447b-97e8-8fdfde2f40c4', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 712, 1, 'About Us', '2023-04-25 13:18:56', '2023-04-25 13:18:56', 'fe6d4471-c7e2-426b-b0e4-681ef5cd184e', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 713, 1, 'About Us', '2023-04-25 13:23:18', '2023-04-25 13:23:18', '6e5c72a3-642f-4b1f-98ec-16c66d661731', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 714, 1, 'About Us', '2023-04-25 13:23:18', '2023-04-25 13:23:18', 'cc82588b-ab8e-43c2-bf2e-78e2692bc682', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 715, 1, 'About Us', '2023-04-25 13:26:23', '2023-04-25 13:26:23', '4e709063-68f5-4a0e-b428-53ab457004aa', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 717, 1, 'About Us', '2023-04-25 13:26:48', '2023-04-25 13:26:48', '67fd94a8-2256-445b-989e-bc812fe69a0b', NULL, NULL, NULL, NULL, NULL, NULL, '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'The World\'s Best Dental Clinic That You Can Trust', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 718, 1, 'The World\'s Best Dental Clinic That You Can Trust', '2023-04-25 14:06:39', '2023-04-29 19:08:56', 'cac2b897-1bed-4d46-a1bc-5569d9abf012', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet<br /></p>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 719, 1, 'The World\'s Best Dental Clinic That You Can Trust', '2023-04-25 17:48:45', '2023-04-25 17:48:45', '52600afb-eede-41b6-95c4-1cc1032c381b', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet<br /></p>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 720, 1, 'Good Work', '2023-04-25 20:06:55', '2023-04-29 19:08:39', '3c2c98be-1e34-44f6-8c15-5618def5057f', NULL, NULL, NULL, NULL, 'Joe', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 721, 1, 'Good Work', '2023-04-25 20:08:50', '2023-04-25 20:08:50', 'fd522154-b067-47ea-8306-c58a56cf9822', NULL, NULL, NULL, NULL, 'Joe', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 722, 1, 'Malesuada fames ac turpis egestas', '2023-04-25 20:08:55', '2023-04-29 19:56:12', '96e0a011-0dcf-40c8-9526-7fe2ecc00a86', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Malesuada fames ac turpis egestas integer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 723, 1, 'Malesuada fames ac turpis egestas', '2023-04-25 20:10:04', '2023-04-25 20:10:04', '6f5d2094-6c7d-4371-9603-95c0137b792a', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Malesuada fames ac turpis egestas integer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 724, 1, 'News Blog', '2023-04-25 20:52:21', '2023-04-25 20:54:53', 'df93e41c-66fe-4c42-aceb-382d7feb5c12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 725, 1, 'Blog Listing', '2023-04-25 20:52:21', '2023-04-25 20:52:21', '859c2e5d-ed5a-4edf-a619-2589d1b3c8ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 726, 1, 'Blog Listing', '2023-04-25 20:52:21', '2023-04-25 20:52:21', '7fb69850-f958-48ad-8724-9a43ab67c7b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 727, 1, 'Blog Listing', '2023-04-25 20:54:05', '2023-04-25 20:54:05', 'd839b3ad-aa57-4d9f-accf-0587158040c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 729, 1, 'News Blog', '2023-04-25 20:54:53', '2023-04-25 20:54:53', 'ad22cbdc-280e-4709-b584-a659e0907482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 730, 1, 'Contact Us', '2023-04-26 20:06:39', '2023-04-27 04:27:15', '6fbdcdaa-e93e-4cb9-baa0-fe090e78d979', NULL, NULL, NULL, NULL, NULL, NULL, '<p>&lt;iframe class=\"position-relative rounded w-100 h-100\"<br />        src=\"<a href=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4042494.981665211!2d-4.2894858!3d8.3277204!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdb08f9369644a3%3A0x1763ec8fa5572306!2sSaint%20Edwards%20Clinic!5e0!3m2!1sen!2sgh!4v1682538017962!5m2!1sen!2sgh\">\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"&gt;<br />&lt;/iframe&gt;</a></p>', NULL, 'Feel Free To Contact Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 731, 1, 'Contact Us', '2023-04-26 20:06:39', '2023-04-26 20:06:39', 'c48c9fa6-70b9-4b64-8c1d-4054e73c7f76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 732, 1, 'Contact Us', '2023-04-26 20:06:39', '2023-04-26 20:06:39', 'a0079cd4-d334-4e2b-b4b0-b11a55fb9d4e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 733, 1, 'Layout Listing', '2023-04-26 20:16:54', '2023-05-01 03:30:31', '11b4369a-662b-440b-a6a7-d0272aad9e04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opening Hours: 24 hours a day and 7 days a Week', 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@twitter.com', 'example@instagram.com', 'duah@tacmail.org'),
(165, 734, 1, 'Layout Listing', '2023-04-26 20:16:54', '2023-04-27 04:03:56', '7858bfe2-6492-47af-a980-8e7a40fd3ad9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 735, 1, 'Layout Listing', '2023-04-26 20:16:54', '2023-04-27 04:03:56', '5727e249-e28f-428b-91a6-2da1b693cd70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 736, 1, 'Layout Listing', '2023-04-26 20:45:47', '2023-04-27 04:03:56', '68347d65-5951-4a58-8c7c-69f19ec41546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 737, 1, 'Layout Listing', '2023-04-26 20:49:55', '2023-04-27 04:03:56', '5a8a7f05-bc9e-49a1-9d84-666a1c87e1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 739, 1, 'Layout Listing', '2023-04-26 20:52:47', '2023-04-27 04:03:56', '04d44df4-5f82-410e-8e78-931aefc0c337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(171, 740, 1, 'Layout Listing', '2023-04-26 20:55:12', '2023-04-27 04:03:56', 'cf3216a1-1519-48c5-9682-47fd303c25eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(172, 741, 1, 'Layout Listing', '2023-04-26 20:55:43', '2023-04-27 04:03:56', '19381d90-480e-423a-9388-78d55e131911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(173, 742, 1, 'Layout Listing', '2023-04-26 20:56:11', '2023-04-27 04:03:56', '5eafbf33-5304-4fa8-8e79-5b7315ab831c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(174, 743, 1, 'Layout Listing', '2023-04-26 20:56:42', '2023-04-27 04:03:56', '354daaf0-cc10-4f90-bba8-aef21c8ff444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(175, 744, 1, 'Layout Listing', '2023-04-26 20:58:22', '2023-04-27 04:03:56', '0dcf8cad-90f2-499b-853b-555d6e82461a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(176, 745, 1, 'Layout Listing', '2023-04-26 21:03:16', '2023-04-27 04:03:56', 'f324bdff-96fa-45d5-a750-8e7f5a0a5dde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(177, 746, 1, 'Layout Listing', '2023-04-26 21:04:19', '2023-04-27 04:03:56', 'f96cef57-859b-43c9-9126-d27171361d70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(178, 747, 1, 'Layout Listing', '2023-04-26 21:04:19', '2023-04-27 04:03:56', '490f66e6-e64a-42b0-964e-17603c605d01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(179, 748, 1, 'Layout Listing', '2023-04-26 21:04:33', '2023-04-27 04:03:56', '49e11df9-e041-476f-a1e0-a9bfc46d5f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(180, 749, 1, 'Layout Listing', '2023-04-26 21:09:23', '2023-04-27 04:03:56', 'c525a6b5-3609-478e-bd91-b23a26e47b2b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL),
(181, 750, 1, 'Layout Listing', '2023-04-26 21:09:23', '2023-04-27 04:03:56', '50b05486-2a4e-4ff2-8a73-28674cbc4c46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@facebook.com', 'example@facebook.com', NULL);
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_carousel_1_Text_rmsxoipx`, `field_carousel_2_Text_pndpqtkn`, `field_carousel_1_Title_dzizeauc`, `field_carousel_2_Title_lusxbtau`, `field_service_title_oeigaqai`, `field_staffSectionTitle_salidnds`, `field_richText_qkolfbfq`, `field_shortDescription_aytyzkuo`, `field_pageTitle_rzxybgmc`, `field_location_yisxdfsp`, `field_emailAddress_vnaegkea`, `field_telNumber_zioftqcr`, `field_facebookAddress_tmwxichd`, `field_twitterAddress_aphyyapv`, `field_instagramAddress_kmgkoxnb`, `field_sendToEmail_bjofpuni`) VALUES
(183, 752, 1, 'Layout Listing', '2023-04-27 04:10:29', '2023-04-27 04:10:29', 'fd2354cc-22fc-4fd1-aa0b-538f4ac3f87b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@twitter.com', 'example@instagram.com', NULL),
(184, 753, 1, 'Contact Us', '2023-04-27 04:15:35', '2023-04-27 04:15:35', '49f89978-bbeb-4ef9-978d-933baa5cc8b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 755, 1, 'Contact Us', '2023-04-27 04:16:31', '2023-04-27 04:16:31', 'a60dfc62-10e0-46a2-a1bc-65c443cfbd2a', NULL, NULL, NULL, NULL, NULL, NULL, '<iframe class=\"position-relative rounded w-100 h-100\" width=\"600\" height=\"450\" style=\"border:0;\">\n                    </iframe>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 757, 1, 'Contact Us', '2023-04-27 04:21:54', '2023-04-27 04:21:54', '4a5c887d-08d6-492f-a5e1-b4089a9305ec', NULL, NULL, NULL, NULL, NULL, NULL, '<p>&lt;iframe class=\"position-relative rounded w-100 h-100\"<br />        src=\"<a href=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4042494.981665211!2d-4.2894858!3d8.3277204!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdb08f9369644a3%3A0x1763ec8fa5572306!2sSaint%20Edwards%20Clinic!5e0!3m2!1sen!2sgh!4v1682538017962!5m2!1sen!2sgh\">\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"&gt;<br />&lt;/iframe&gt;</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 758, 1, 'Contact Us', '2023-04-27 04:24:17', '2023-04-27 04:24:17', 'ace9820d-5ac2-4828-9f01-8ea18011ab70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 759, 1, 'Contact Us', '2023-04-27 04:25:22', '2023-04-27 04:25:22', '9ce6f546-82c0-4d1a-94b3-1ce9e01c65e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 761, 1, 'Contact Us', '2023-04-27 04:27:15', '2023-04-27 04:27:15', '1cfd7977-364f-48da-a9a9-2c522c65eaf7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feel Free To Contact Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 763, 1, 'Layout Listing', '2023-04-27 04:31:53', '2023-04-27 04:31:53', 'c74c3d32-6efb-4e8c-8e86-7cacbece7091', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opening Hours: 24 hours a day and 7 days a Week', 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@twitter.com', 'example@instagram.com', NULL),
(196, 765, 1, 'Layout Listing', '2023-04-27 21:13:24', '2023-04-27 21:13:24', '86a650bb-e6bf-4677-b7d2-7a5fb4b45d3f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opening Hours: 24 hours a day and 7 days a Week', 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@twitter.com', 'example@instagram.com', 'sammav2018@gmail.com'),
(198, 767, 1, 'Malesuada fames ac turpis egestas', '2023-04-29 19:08:23', '2023-04-29 19:08:23', '0e717507-b26d-4f54-b162-456e8bcd6d33', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Malesuada fames ac turpis egestas integer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 769, 1, 'Good Work', '2023-04-29 19:08:39', '2023-04-29 19:08:39', 'f108e008-e380-43e6-840f-f18a786a1d9a', NULL, NULL, NULL, NULL, 'Joe', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 771, 1, 'The World\'s Best Dental Clinic That You Can Trust', '2023-04-29 19:08:56', '2023-04-29 19:08:56', '176d6735-87e6-4edd-b1b2-faa28c0af87c', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet<br /></p>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>', 'Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 772, 1, 'Malesuada fames ac turpis egestas', '2023-04-29 19:12:36', '2023-04-29 19:12:36', '03a5e6c6-26f0-4307-acec-f6b7d79f2f87', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Malesuada fames ac turpis egestas integer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 774, 1, 'Antinatal or Postnatal Service', '2023-04-29 19:24:11', '2023-04-29 19:24:11', '96cb41c2-eadb-4402-807a-006cce954f94', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 776, 1, 'Antinatal or Postnatal Service', '2023-04-29 19:26:21', '2023-04-29 19:26:21', 'aa9f96d7-a5a0-4427-9970-e842fc462e68', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 778, 1, 'Antinatal or Postnatal Service', '2023-04-29 19:41:02', '2023-04-29 19:41:02', '94ab41a2-1e9d-4b92-ad65-0dafcf879bde', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 780, 1, 'Malesuada fames ac turpis egestas', '2023-04-29 19:56:12', '2023-04-29 19:56:12', '93697907-d1e8-45ac-a454-74e600819b4b', NULL, NULL, NULL, NULL, 'Sammie', NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Malesuada fames ac turpis egestas integer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 782, 1, 'Out Pateint Service', '2023-05-01 03:01:25', '2023-05-01 03:01:25', '67d91f04-bfba-4ccf-9657-917ae65e9e63', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h2>Grit and gravel make fun travel</h2>\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\n<h3>Arcu cursus vitae congue</h3>\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 784, 1, 'Layout Listing', '2023-05-01 03:30:31', '2023-05-01 03:30:31', '564502e8-f081-411b-ad6f-715128fd31af', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Opening Hours: 24 hours a day and 7 days a Week', 'Opp. Biemso 1 Junction, Adugyama, Ghana', 'example@yahoo.com', '+233 240998890', 'example@facebook.com', 'example@twitter.com', 'example@instagram.com', 'duah@tacmail.org'),
(216, 785, 1, NULL, '2023-05-01 03:31:37', '2023-05-01 03:31:37', 'd719971d-d960-4657-8798-807dcf52e856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 786, 1, NULL, '2023-05-01 04:00:02', '2023-05-01 04:00:02', '0c74f224-1c0f-4eb9-a42f-462c4d5c51be', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `traces` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2023-03-19 04:02:55', '2023-03-19 04:02:55', NULL, NULL, '01c8ddff-237d-43ae-8324-c6eb9b327041'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:11:29', '2023-04-24 17:47:04', NULL, NULL, 'c5f092f5-f48b-461f-a269-7cd029a32fe8'),
(3, 2, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:11:29', '2023-03-19 19:11:29', NULL, NULL, '95fb5c17-8218-496f-bcf3-bc098d5e3576'),
(4, 2, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:11:29', '2023-03-19 19:11:29', NULL, NULL, 'aae3d249-3a21-4cc6-bb04-027a4acf0da0'),
(5, 2, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:13:52', '2023-03-19 19:13:52', NULL, NULL, '579b1675-b657-48be-a166-a6d050e7b714'),
(6, 2, NULL, 4, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:13:52', '2023-03-19 19:13:52', NULL, NULL, '11135596-23d5-4015-bd3c-badd1acb06bc'),
(7, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:27:48', '2023-04-25 03:43:59', NULL, '2023-04-25 05:29:36', 'ac4768ad-3091-4f43-83d9-f31c1ad26929'),
(8, 7, NULL, 5, 2, 'craft\\elements\\Entry', 1, 0, '2023-03-19 19:29:21', '2023-03-19 19:29:21', NULL, '2023-04-25 05:29:36', 'd4d8f5f6-bdf4-44b9-a01a-16d742d35856'),
(9, 2, NULL, 6, 1, 'craft\\elements\\Entry', 1, 0, '2023-03-20 13:33:00', '2023-03-20 13:33:00', NULL, NULL, 'c7297a48-f58f-4b71-8e37-01cfab0386fe'),
(10, NULL, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2023-03-20 13:37:31', '2023-03-20 13:37:31', NULL, '2023-04-24 02:30:12', 'e1d5c115-a49e-453e-9748-7013928e5a0e'),
(11, NULL, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2023-03-20 13:38:02', '2023-03-20 13:38:02', NULL, '2023-04-24 02:30:12', 'e29aa70c-2dbd-4974-bec4-60ef399abc12'),
(27, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-03-26 19:08:56', '2023-03-26 19:08:56', NULL, '2023-03-26 19:09:37', 'b80208f5-4920-462e-8573-2c079fc44d09'),
(28, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-03-26 19:10:22', '2023-03-26 19:10:22', NULL, '2023-04-24 02:30:31', 'c1be4b68-73f7-407d-8fb1-a2bf83c42204'),
(29, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-03-26 19:10:23', '2023-03-26 19:10:23', NULL, '2023-04-24 02:30:31', 'd016cb4b-151a-4ae7-b192-b476f1bb8d59'),
(31, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-04-24 02:31:46', '2023-04-24 02:31:46', NULL, NULL, 'efc4b4fa-3ea5-4154-afab-d51bc61e01a0'),
(32, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-04-24 02:31:47', '2023-04-24 02:31:47', NULL, NULL, '96fe09e9-5d06-4f88-a4c8-98912d1d3914'),
(33, 2, NULL, 7, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 02:42:37', '2023-04-24 02:42:37', NULL, NULL, '7f6f52a8-3f57-4ca9-8f4e-67b2921e2d35'),
(34, 2, NULL, 8, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 02:44:06', '2023-04-24 02:44:06', NULL, NULL, '22f0ce6c-19f9-453b-a67e-9e5af302b3db'),
(36, 2, NULL, 9, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 02:53:51', '2023-04-24 02:53:51', NULL, NULL, 'c3eebf87-e892-4adb-b584-0aebe3f38fae'),
(38, 2, NULL, 10, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 02:54:21', '2023-04-24 02:54:21', NULL, NULL, 'e52c8126-4a0e-4d4c-8f64-eed041e703f3'),
(39, 2, NULL, 11, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 04:45:23', '2023-04-24 04:45:23', NULL, NULL, 'f8a12bf9-a976-4759-a865-c2097caac358'),
(41, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:23', '2023-04-24 04:59:23', NULL, '2023-04-24 04:59:26', '16715eab-d731-43a0-8016-d2bc35b2acf4'),
(42, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:23', '2023-04-24 04:59:23', NULL, '2023-04-24 04:59:26', 'e7c126d3-9b69-407d-a1c1-e5465818f213'),
(43, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:26', '2023-04-24 04:59:26', NULL, '2023-04-24 04:59:29', '19737f19-43b8-46b3-b9a5-af4c3f739f66'),
(44, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:26', '2023-04-24 04:59:26', NULL, '2023-04-24 04:59:29', 'e88cc478-a29b-445b-a0c9-b44a2fca653b'),
(45, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:29', '2023-04-24 04:59:29', NULL, '2023-04-24 04:59:31', '5866b76a-a7a5-42c7-af12-f8babae4efe6'),
(46, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:29', '2023-04-24 04:59:29', NULL, '2023-04-24 04:59:31', '11db38fb-2ebe-4edb-ae2e-4a6e8f1aab3c'),
(47, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:31', '2023-04-24 04:59:31', NULL, '2023-04-24 04:59:51', 'db4faf66-edd2-4cee-8a2a-6032c80edc20'),
(48, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:31', '2023-04-24 04:59:31', NULL, '2023-04-24 04:59:51', 'bbddff45-37e5-47c3-85d3-ad6d154e7d3c'),
(49, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:51', '2023-04-24 04:59:51', NULL, '2023-04-24 04:59:53', '15864390-9d42-454b-b834-624542abfe04'),
(50, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:51', '2023-04-24 04:59:51', NULL, '2023-04-24 04:59:53', '83fa94d9-22f2-4195-af0f-f67b795ed01d'),
(51, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:52', '2023-04-24 04:59:52', NULL, '2023-04-24 04:59:55', '631d0f6c-4eb8-4d53-a68f-c67131a954ff'),
(52, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:53', '2023-04-24 04:59:53', NULL, '2023-04-24 04:59:55', '46baafbf-eef8-48db-8159-264ca4b7f324'),
(53, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:54', '2023-04-24 04:59:54', NULL, '2023-04-24 04:59:56', '38d24701-21b7-480e-b25a-d4aebb0b1dac'),
(54, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:55', '2023-04-24 04:59:55', NULL, '2023-04-24 04:59:56', 'e855a277-75a7-41d7-9a53-357e191b6931'),
(55, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:56', '2023-04-24 04:59:56', NULL, '2023-04-24 05:00:05', 'd545b4ff-8182-479c-b720-1a51cb387d9b'),
(56, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 04:59:56', '2023-04-24 04:59:56', NULL, '2023-04-24 05:00:05', 'a07305e6-6bee-4d59-9e49-924553f2ad95'),
(57, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:05', '2023-04-24 05:00:05', NULL, '2023-04-24 05:00:08', 'd9f8c9f9-077e-4c53-a704-86941b484d3e'),
(58, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:05', '2023-04-24 05:00:05', NULL, '2023-04-24 05:00:08', '85d6c66a-8cf7-40f9-8637-a9bba4104d5f'),
(59, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:08', '2023-04-24 05:00:08', NULL, '2023-04-24 05:00:10', 'bead9a02-bf36-41ec-bd7a-56cb150f81ab'),
(60, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:08', '2023-04-24 05:00:08', NULL, '2023-04-24 05:00:10', '1c1de4c6-c83c-4ffa-8d24-80f6318e4b72'),
(61, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:10', '2023-04-24 05:00:10', NULL, '2023-04-24 05:00:40', '29af62e9-a6d5-45e6-973b-b92ffc1b35c9'),
(62, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:10', '2023-04-24 05:00:10', NULL, '2023-04-24 05:00:40', '45bba72e-d985-4f14-9450-a7d9163b51d9'),
(63, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:40', '2023-04-24 05:00:40', NULL, '2023-04-24 05:00:46', '1d6ce5e7-5752-4b5f-836e-8eeac7849442'),
(64, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:40', '2023-04-24 05:00:40', NULL, '2023-04-24 05:00:46', 'cdd57716-a16a-4cd1-a756-46e56ac0a53d'),
(65, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:46', '2023-04-24 05:00:46', NULL, '2023-04-24 05:00:47', '09de8088-dc8e-485e-9e1b-f26503392c2b'),
(66, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:46', '2023-04-24 05:00:46', NULL, '2023-04-24 05:00:48', 'd51d0d65-0d4a-4835-a22b-9d94ddef65bc'),
(67, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:47', '2023-04-24 05:00:47', NULL, '2023-04-24 05:00:49', '9de0490e-dc01-4303-87ec-092f5ce9623c'),
(68, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:47', '2023-04-24 05:00:47', NULL, '2023-04-24 05:00:49', '12d818ef-67bf-436d-b70f-c8ada6d06ed7'),
(69, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:49', '2023-04-24 05:00:49', NULL, '2023-04-24 05:00:50', '13381cc8-1e63-472d-b634-89999643612f'),
(70, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:49', '2023-04-24 05:00:49', NULL, '2023-04-24 05:00:50', 'bc59fdeb-c329-4a36-9ee5-6f5f41fad1ff'),
(71, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:50', '2023-04-24 05:00:50', NULL, '2023-04-24 05:00:51', '063d0186-b379-4bb2-884d-14ddb70e3aba'),
(72, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:50', '2023-04-24 05:00:50', NULL, '2023-04-24 05:00:51', '0ac81cf7-275c-4937-8554-832ad91479fe'),
(73, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:51', '2023-04-24 05:00:51', NULL, '2023-04-24 05:00:52', '973f40a5-36cc-409f-9a73-e1063da59554'),
(74, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:51', '2023-04-24 05:00:51', NULL, '2023-04-24 05:00:52', '03e7bc6b-6fe7-4aea-8ded-821f244864ef'),
(75, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:52', '2023-04-24 05:00:52', NULL, '2023-04-24 05:00:54', '5def27ba-fb8e-43c2-bd46-9b20b358ca97'),
(76, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:52', '2023-04-24 05:00:52', NULL, '2023-04-24 05:00:54', '6cb2972e-6e3d-40b3-b088-c5950e8883aa'),
(77, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:54', '2023-04-24 05:00:54', NULL, '2023-04-24 05:00:55', 'cd7015a5-a3f8-4de6-b3f1-5ade9f77cfdd'),
(78, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:54', '2023-04-24 05:00:54', NULL, '2023-04-24 05:00:55', '9f26c725-23c9-4636-801e-536cf9b69127'),
(79, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:55', '2023-04-24 05:00:55', NULL, '2023-04-24 05:00:58', '8cd3e312-89bb-4b83-b6ac-43e20b1f2112'),
(80, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:55', '2023-04-24 05:00:55', NULL, '2023-04-24 05:00:58', '5dac2415-2fbe-4f41-9637-4dead102a0f0'),
(81, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:58', '2023-04-24 05:00:58', NULL, '2023-04-24 05:01:00', '02e09c78-62a5-4a09-85a0-b22b2a32eba9'),
(82, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:00:58', '2023-04-24 05:00:58', NULL, '2023-04-24 05:01:00', 'f10699b6-5d87-4c8a-b5d8-44f9d3f45c58'),
(83, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:00', '2023-04-24 05:01:00', NULL, '2023-04-24 05:01:01', 'b2aaa34f-29bc-453e-8580-7d5e5b014200'),
(84, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:00', '2023-04-24 05:01:00', NULL, '2023-04-24 05:01:01', '653e7f7e-c6cb-4e96-a3db-5ed8805a91d2'),
(85, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:01', '2023-04-24 05:01:01', NULL, '2023-04-24 05:01:03', '8b253f11-30a5-4b2e-9349-04dfdf91f927'),
(86, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:01', '2023-04-24 05:01:01', NULL, '2023-04-24 05:01:03', 'baba58e7-8eef-4e8f-af42-ef458e437716'),
(87, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:03', '2023-04-24 05:01:03', NULL, '2023-04-24 05:01:23', 'fe0d0f3e-8d7a-478e-aa74-cf57663cd4d3'),
(88, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:03', '2023-04-24 05:01:03', NULL, '2023-04-24 05:01:23', '533b3ebc-5a75-49af-bbf8-238f37de9f60'),
(89, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:23', '2023-04-24 05:01:23', NULL, '2023-04-24 05:01:25', '441f73c2-5801-454f-b444-0c87dc26fc60'),
(90, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:23', '2023-04-24 05:01:23', NULL, '2023-04-24 05:01:25', '59914d8c-7f25-47ac-8d7e-4ce92f5ca4bf'),
(91, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:25', '2023-04-24 05:01:25', NULL, '2023-04-24 05:01:27', 'a826067e-b6c7-40b6-9c0d-f927ab5ba338'),
(92, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:25', '2023-04-24 05:01:25', NULL, '2023-04-24 05:01:27', 'f60e07e5-a216-44ed-84c0-6d44feee124e'),
(93, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:27', '2023-04-24 05:01:27', NULL, '2023-04-24 05:01:30', '956cd93a-eca1-4976-9ff2-19d84080f9a0'),
(94, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:27', '2023-04-24 05:01:27', NULL, '2023-04-24 05:01:30', 'ce48ee5c-8714-44aa-867e-149c903b2a82'),
(95, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:30', '2023-04-24 05:01:30', NULL, '2023-04-24 05:01:31', '2eae1e31-af93-409b-9f8d-4b6b4a2f68b6'),
(96, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:30', '2023-04-24 05:01:30', NULL, '2023-04-24 05:01:31', '87bc6975-b4a3-4ebc-a544-eec911b14d32'),
(97, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:31', '2023-04-24 05:01:31', NULL, '2023-04-24 05:01:45', 'fdaf223f-0433-4bc7-ae31-1a9e0563f724'),
(98, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:31', '2023-04-24 05:01:31', NULL, '2023-04-24 05:01:45', '6266cdeb-3e21-45be-94b9-d02914ad1fb0'),
(99, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:45', '2023-04-24 05:01:45', NULL, '2023-04-24 05:01:46', '7d47185f-4a81-402d-8e66-9a015aa48efb'),
(100, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:45', '2023-04-24 05:01:45', NULL, '2023-04-24 05:01:46', '5ed02164-a19e-49a5-a838-1eef42233a6f'),
(101, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:46', '2023-04-24 05:01:46', NULL, '2023-04-24 05:01:50', '47087c94-1e40-4204-a504-c07e54d5ffce'),
(102, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:46', '2023-04-24 05:01:46', NULL, '2023-04-24 05:01:50', 'fcbc6f3a-eabd-4f8b-a9bf-e7edefb1c2c5'),
(103, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:50', '2023-04-24 05:01:50', NULL, '2023-04-24 05:02:01', 'af9c00ec-1224-44cf-a00d-a7ff52f1393e'),
(104, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:01:50', '2023-04-24 05:01:50', NULL, '2023-04-24 05:02:01', 'd6ce2c63-1a68-4d76-b73f-b1d8e6a93bcc'),
(105, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:01', '2023-04-24 05:02:01', NULL, '2023-04-24 05:02:02', '5eeea2d5-ac7a-43ba-b15c-cbde66d05df4'),
(106, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:01', '2023-04-24 05:02:01', NULL, '2023-04-24 05:02:02', 'd3f0e19f-0b62-4895-84d9-5f3c45dc3e6c'),
(107, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:02', '2023-04-24 05:02:02', NULL, '2023-04-24 05:02:04', '7b2b586f-32f2-49cc-8ffc-fe628f6901a5'),
(108, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:02', '2023-04-24 05:02:02', NULL, '2023-04-24 05:02:04', '7faeaace-d7b3-4229-a0be-c883de242412'),
(109, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:04', '2023-04-24 05:02:04', NULL, '2023-04-24 05:02:05', '3a97e981-321b-4564-8f1b-4cc752efc9a0'),
(110, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:04', '2023-04-24 05:02:04', NULL, '2023-04-24 05:02:06', '334b3ca8-f447-4f2b-91d4-4705ada3d40d'),
(111, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:05', '2023-04-24 05:02:05', NULL, '2023-04-24 05:02:07', '6ab9bde5-deab-4bcf-87ba-4071fc847939'),
(112, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:05', '2023-04-24 05:02:05', NULL, '2023-04-24 05:02:07', 'a58ee398-817d-4e26-8f29-00655a2b92e0'),
(113, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:07', '2023-04-24 05:02:07', NULL, '2023-04-24 05:02:09', 'f2ed536f-e915-48ed-978e-f41190841618'),
(114, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:07', '2023-04-24 05:02:07', NULL, '2023-04-24 05:02:09', '9415fc45-6ec7-4858-a241-97d7342a771f'),
(115, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:09', '2023-04-24 05:02:09', NULL, '2023-04-24 05:02:10', '81245e4c-d88f-4879-8f16-fc9a7323297d'),
(116, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:09', '2023-04-24 05:02:09', NULL, '2023-04-24 05:02:10', 'ff2827f3-86b0-47c1-ae12-887b74a6fb81'),
(117, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:10', '2023-04-24 05:02:10', NULL, '2023-04-24 05:02:12', '44bb8d2c-d3fb-4697-a059-c7cd0603f43f'),
(118, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:10', '2023-04-24 05:02:10', NULL, '2023-04-24 05:02:12', '7c5afca0-1398-4353-b327-a90c71178e7a'),
(119, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:12', '2023-04-24 05:02:12', NULL, '2023-04-24 05:02:13', '32cc4a9e-efc9-4828-b513-94510bf7f0e3'),
(120, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:12', '2023-04-24 05:02:12', NULL, '2023-04-24 05:02:13', '74cd9d46-425f-4403-9acf-5bc24f968cdc'),
(121, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:13', '2023-04-24 05:02:13', NULL, '2023-04-24 05:02:15', 'cac2546f-5bcb-41e8-bf8f-6170f68064a6'),
(122, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:13', '2023-04-24 05:02:13', NULL, '2023-04-24 05:02:15', '55fae2cc-5a2f-4356-b1ff-c0a2755d5eae'),
(123, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:15', '2023-04-24 05:02:15', NULL, '2023-04-24 05:02:17', '2af09a67-ccf7-44ad-9c69-7dfae6859939'),
(124, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:15', '2023-04-24 05:02:15', NULL, '2023-04-24 05:02:17', '276bbeab-fae8-4363-bf07-ef0cb3ffe603'),
(125, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:17', '2023-04-24 05:02:17', NULL, '2023-04-24 05:02:18', '29500a70-3ed0-4ab7-b952-0275bf4c859c'),
(126, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:17', '2023-04-24 05:02:17', NULL, '2023-04-24 05:02:18', '91170197-d0f9-42de-a552-0d259e428026'),
(127, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:18', '2023-04-24 05:02:18', NULL, '2023-04-24 05:02:20', 'db737502-2d40-431a-97a2-f095b268ac6b'),
(128, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:18', '2023-04-24 05:02:18', NULL, '2023-04-24 05:02:20', '6349b762-56c1-472c-8cf2-610e24ed2d72'),
(129, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:20', '2023-04-24 05:02:20', NULL, '2023-04-24 05:02:21', '8203cb13-9abc-49b5-a6de-df7937710c8b'),
(130, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:20', '2023-04-24 05:02:20', NULL, '2023-04-24 05:02:21', '94e36839-5a0f-4fc5-9e84-21f1c14857cb'),
(131, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:21', '2023-04-24 05:02:21', NULL, '2023-04-24 05:02:22', '011e3d34-8d0b-4619-9d06-dc7f587fff53'),
(132, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:21', '2023-04-24 05:02:21', NULL, '2023-04-24 05:02:22', '57fe3c76-9f20-4bc5-950f-9d3ffc750bed'),
(133, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:22', '2023-04-24 05:02:22', NULL, '2023-04-24 05:02:25', 'ce08e0e6-56fc-4afb-8648-44563c2170ca'),
(134, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:22', '2023-04-24 05:02:22', NULL, '2023-04-24 05:02:25', '30ed144f-f4fd-4db9-9e9e-30c59a494b75'),
(135, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:25', '2023-04-24 05:02:25', NULL, '2023-04-24 05:02:27', '4c172ec4-d4c3-4612-8cfb-266c14418933'),
(136, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:25', '2023-04-24 05:02:25', NULL, '2023-04-24 05:02:27', '243e83b3-7e3a-4fb6-841b-9972139dbd5f'),
(137, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:27', '2023-04-24 05:02:27', NULL, '2023-04-24 05:02:28', 'a8a9bc96-6cfd-4c35-bd80-8d8f53d93d59'),
(138, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:27', '2023-04-24 05:02:27', NULL, '2023-04-24 05:02:28', 'd33a31a2-788c-421d-a606-0e4dceafc865'),
(139, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:28', '2023-04-24 05:02:28', NULL, '2023-04-24 05:02:30', 'c705be08-a69a-4722-8619-35eb74b75e44'),
(140, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:28', '2023-04-24 05:02:28', NULL, '2023-04-24 05:02:30', 'cad7d6a8-0a62-4568-9613-bb385c2c8ec5'),
(141, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:30', '2023-04-24 05:02:30', NULL, '2023-04-24 05:02:31', 'e0c99ac5-89ef-4605-8aee-d6fb701a23e1'),
(142, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:30', '2023-04-24 05:02:30', NULL, '2023-04-24 05:02:31', '2ce46cdb-0129-4cce-846f-9ad9fc1bd15c'),
(143, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:31', '2023-04-24 05:02:31', NULL, '2023-04-24 05:02:39', 'bfcca05a-77b9-4301-b0ed-e560aab8a4dc'),
(144, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:31', '2023-04-24 05:02:31', NULL, '2023-04-24 05:02:39', '91306432-266f-468b-9745-f0ecc0edb492'),
(145, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:39', '2023-04-24 05:02:39', NULL, '2023-04-24 05:02:40', 'a9e05335-6207-4663-b692-d4d65fa9a632'),
(146, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:39', '2023-04-24 05:02:39', NULL, '2023-04-24 05:02:40', 'bdc02ef3-e363-43c4-9c08-a2b2bce5c96c'),
(147, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:40', '2023-04-24 05:02:40', NULL, '2023-04-24 05:02:42', '38bdaca7-4c9c-498f-8395-db34897de75a'),
(148, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:40', '2023-04-24 05:02:40', NULL, '2023-04-24 05:02:42', '385f9853-21fd-487f-ac17-1a7106dc300d'),
(149, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:42', '2023-04-24 05:02:42', NULL, '2023-04-24 05:02:43', '9f2803fc-3661-485c-8c79-554108c32a76'),
(150, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:42', '2023-04-24 05:02:42', NULL, '2023-04-24 05:02:43', 'ee5240f0-fe08-4786-9b4d-928da7945868'),
(151, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:43', '2023-04-24 05:02:43', NULL, '2023-04-24 05:02:45', 'e16931a7-a588-470d-8789-12b808dc82c5'),
(152, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:43', '2023-04-24 05:02:43', NULL, '2023-04-24 05:02:45', 'a05173d9-56a5-4159-bdc4-33b4e98e463c'),
(153, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:44', '2023-04-24 05:02:44', NULL, '2023-04-24 05:02:46', 'affd82df-3f41-4237-b961-0668b986218e'),
(154, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:44', '2023-04-24 05:02:44', NULL, '2023-04-24 05:02:46', '51ed92c5-5b4b-490d-9414-e217f070ad7f'),
(155, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:46', '2023-04-24 05:02:46', NULL, '2023-04-24 05:02:48', 'db79379b-c5f2-4d2a-997c-6f0ef663aaba'),
(156, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:46', '2023-04-24 05:02:46', NULL, '2023-04-24 05:02:48', '3b0e143c-b60c-4575-872a-93fc75933715'),
(157, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:48', '2023-04-24 05:02:48', NULL, '2023-04-24 05:02:50', '7d7e2e0a-0dcc-4342-a957-db790c1f2f69'),
(158, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:48', '2023-04-24 05:02:48', NULL, '2023-04-24 05:02:50', '9c36b024-0b01-4d91-ac63-692eac6b3518'),
(159, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:50', '2023-04-24 05:02:50', NULL, '2023-04-24 05:03:00', 'b1eaffbe-b95b-4d00-828d-5010c2f31aae'),
(160, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:02:50', '2023-04-24 05:02:50', NULL, '2023-04-24 05:03:00', 'c8bbf07d-65d4-4a1f-b897-f1b838567f3b'),
(161, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:00', '2023-04-24 05:03:00', NULL, '2023-04-24 05:03:04', '6c989e2a-d20f-4a5d-9c3b-c828ef80de35'),
(162, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:00', '2023-04-24 05:03:00', NULL, '2023-04-24 05:03:04', '736b573a-7948-40bd-a3f4-cf15ccbad6c5'),
(163, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:04', '2023-04-24 05:03:04', NULL, '2023-04-24 05:03:08', '96f1b028-1fe5-4eb0-a905-d428a598b5e7'),
(164, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:04', '2023-04-24 05:03:04', NULL, '2023-04-24 05:03:08', '5ddbb946-7302-4aeb-80c8-063d2c8ddfe8'),
(165, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:08', '2023-04-24 05:03:08', NULL, '2023-04-24 05:03:10', '974343ca-0826-4be3-93ea-d933ff2f1b85'),
(166, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:08', '2023-04-24 05:03:08', NULL, '2023-04-24 05:03:10', '5615d603-66dc-482b-a184-dcfaf21ed136'),
(167, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:10', '2023-04-24 05:03:10', NULL, '2023-04-24 05:03:11', '979748bf-38a1-4a96-b367-8fc8442d7044'),
(168, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:10', '2023-04-24 05:03:10', NULL, '2023-04-24 05:03:11', '69d26127-3d41-4c31-b3fa-24d600418512'),
(169, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:11', '2023-04-24 05:03:11', NULL, '2023-04-24 05:03:14', 'b7abb508-e1a6-4750-9397-b56edcd58ca9'),
(170, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:11', '2023-04-24 05:03:11', NULL, '2023-04-24 05:03:14', '8985ba8c-3015-418d-960b-30f53b05fb09'),
(171, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:14', '2023-04-24 05:03:14', NULL, '2023-04-24 05:03:16', '20fd65c1-78ea-4e78-99f2-2a5d7219ef8a'),
(172, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:14', '2023-04-24 05:03:14', NULL, '2023-04-24 05:03:16', '5985f1b2-9a2c-4406-ba7b-ac2585078194'),
(173, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:16', '2023-04-24 05:03:16', NULL, '2023-04-24 05:03:22', '4bb4aa45-1a2a-4d9d-8d17-22da89cc8739'),
(174, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:16', '2023-04-24 05:03:16', NULL, '2023-04-24 05:03:22', 'd5297746-0eaa-47bc-9cf3-94e196d956ca'),
(175, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:21', '2023-04-24 05:03:21', NULL, '2023-04-24 05:03:54', '0d9ac74d-1dff-496b-b23a-e8e82ae397e8'),
(176, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:21', '2023-04-24 05:03:21', NULL, '2023-04-24 05:03:54', 'db3b1a9f-3273-4eac-8e26-99b46f6e9f6d'),
(177, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:54', '2023-04-24 05:03:54', NULL, '2023-04-24 05:03:55', '51a38fd6-f3dc-43cd-af44-7589ce3a6d82'),
(178, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:54', '2023-04-24 05:03:54', NULL, '2023-04-24 05:03:55', 'f665c878-8daf-4333-adaf-f337abcf5f22'),
(179, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:55', '2023-04-24 05:03:55', NULL, '2023-04-24 05:03:56', 'a976b9a0-420a-4287-a226-583fc9b8a281'),
(180, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:55', '2023-04-24 05:03:55', NULL, '2023-04-24 05:03:56', '7cb17fa4-f037-4e15-8c21-d360c278acd4'),
(181, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:56', '2023-04-24 05:03:56', NULL, '2023-04-24 05:04:04', '81d66e4a-63ec-4520-b572-e3ce862cee0a'),
(182, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:03:56', '2023-04-24 05:03:56', NULL, '2023-04-24 05:04:04', '23291d66-1554-4ace-abec-4ba3a13d9af7'),
(183, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:04', '2023-04-24 05:04:04', NULL, '2023-04-24 05:04:06', 'd383c742-d88f-42db-9959-d226f1d7c4aa'),
(184, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:04', '2023-04-24 05:04:04', NULL, '2023-04-24 05:04:06', 'ab9410c2-274b-476f-939a-91850527a61f'),
(185, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:06', '2023-04-24 05:04:06', NULL, '2023-04-24 05:04:08', '902b52a7-8461-4489-a9cc-4daaece5d98a'),
(186, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:06', '2023-04-24 05:04:06', NULL, '2023-04-24 05:04:08', '3ca69f12-a077-482f-9c13-9789ad8019d6'),
(187, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:08', '2023-04-24 05:04:08', NULL, '2023-04-24 05:04:10', '59d9529f-edb9-47f7-b791-8bed949d161f'),
(188, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:08', '2023-04-24 05:04:08', NULL, '2023-04-24 05:04:10', '13a1a1c8-da10-4fe6-8022-e690d8219878'),
(189, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:10', '2023-04-24 05:04:10', NULL, '2023-04-24 05:04:16', 'ac6c1f5e-a871-4b10-86e8-49475e593986'),
(190, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:10', '2023-04-24 05:04:10', NULL, '2023-04-24 05:04:16', '3301e64e-b0f2-4dca-94f9-5802015175e5'),
(191, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:16', '2023-04-24 05:04:16', NULL, '2023-04-24 05:04:17', 'c38b6fa3-ff01-425c-87f4-d996b8162239'),
(192, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:16', '2023-04-24 05:04:16', NULL, '2023-04-24 05:04:17', '1732487b-62ee-4282-808f-976bf6fba238'),
(193, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:17', '2023-04-24 05:04:17', NULL, '2023-04-24 05:04:18', '142cac63-8c0e-46d0-84d1-c34d329cec3d'),
(194, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:17', '2023-04-24 05:04:17', NULL, '2023-04-24 05:04:18', 'e1317cd1-24eb-468e-adfa-7dff83e74bd7'),
(195, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:18', '2023-04-24 05:04:18', NULL, '2023-04-24 05:04:19', '11608725-43b6-4f1c-9887-d6aee3122a59'),
(196, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:18', '2023-04-24 05:04:18', NULL, '2023-04-24 05:04:19', 'a8b5e10d-b587-4ec6-ba13-aa58f92207b2'),
(197, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:19', '2023-04-24 05:04:19', NULL, '2023-04-24 05:04:21', '560f05f2-0f70-4fce-9245-1a8a205e741e'),
(198, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:19', '2023-04-24 05:04:19', NULL, '2023-04-24 05:04:21', 'cd4ea8ff-1554-4ba5-96c8-92d51f36d340'),
(199, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:21', '2023-04-24 05:04:21', NULL, '2023-04-24 05:04:22', '2440feff-6715-4d1f-a6b2-e5cbbdf80533'),
(200, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:21', '2023-04-24 05:04:21', NULL, '2023-04-24 05:04:22', 'f1de07e0-bb12-4b1d-87ee-15a804d5cd96'),
(201, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:22', '2023-04-24 05:04:22', NULL, '2023-04-24 05:04:23', '715adee1-1dd7-4d23-9c27-6d728c1970e1'),
(202, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:22', '2023-04-24 05:04:22', NULL, '2023-04-24 05:04:23', '9e8e07b7-2c36-4a8a-b0ea-a36ac2421c75'),
(203, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:23', '2023-04-24 05:04:23', NULL, '2023-04-24 05:04:36', '1d0cc2ff-6201-4cf3-ace2-0ca134596ae7'),
(204, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:23', '2023-04-24 05:04:23', NULL, '2023-04-24 05:04:36', 'd2812b1e-6f41-4e98-8ad5-2a3e673521dd'),
(205, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:36', '2023-04-24 05:04:36', NULL, '2023-04-24 05:04:37', '7f542b06-1919-4c53-bf3b-aff71cb2667b'),
(206, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:36', '2023-04-24 05:04:36', NULL, '2023-04-24 05:04:37', 'bf0aa3bb-a792-443e-a5ad-95660b982caf'),
(207, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:36', '2023-04-24 05:04:36', NULL, '2023-04-24 05:05:21', 'ec633c50-8119-4559-8262-b94b89f75a86'),
(208, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:04:37', '2023-04-24 05:04:37', NULL, '2023-04-24 05:05:21', 'a68f6bab-c80e-41df-a1ea-cb3b13515575'),
(209, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:21', '2023-04-24 05:05:21', NULL, '2023-04-24 05:05:22', '3b5c441b-3c99-439e-941b-2e200242d4f0'),
(210, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:21', '2023-04-24 05:05:21', NULL, '2023-04-24 05:05:22', '073356ee-9aa5-44b8-8f19-59d4a7f66aa9'),
(211, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:22', '2023-04-24 05:05:22', NULL, '2023-04-24 05:05:24', '3e0c5321-543d-4cc7-b1cc-c25c91996613'),
(212, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:22', '2023-04-24 05:05:22', NULL, '2023-04-24 05:05:24', 'e59b4f05-02db-4f0c-b73c-afdedf75bd84'),
(213, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:24', '2023-04-24 05:05:24', NULL, '2023-04-24 05:05:25', '1c1d53ed-be98-4e73-9f87-40228af376dd'),
(214, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:24', '2023-04-24 05:05:24', NULL, '2023-04-24 05:05:25', '6ee6dda0-dad9-497f-aeab-f7ecffacfd49'),
(215, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:25', '2023-04-24 05:05:25', NULL, '2023-04-24 05:05:26', '4a8c524e-ebda-425b-9317-61bda4b5aed5'),
(216, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:25', '2023-04-24 05:05:25', NULL, '2023-04-24 05:05:26', '6b4bb223-9bfd-40d2-a473-ffa9fed24e67'),
(217, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:26', '2023-04-24 05:05:26', NULL, '2023-04-24 05:05:31', 'd83364b2-8089-4409-b9fe-593391a196f2'),
(218, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:26', '2023-04-24 05:05:26', NULL, '2023-04-24 05:05:31', '9569c0ed-527b-43ab-ad6c-4537f67b0c20'),
(219, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:31', '2023-04-24 05:05:31', NULL, '2023-04-24 05:05:33', '74519ed3-b8dc-4b5f-a6e9-2fd148c06760'),
(220, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:31', '2023-04-24 05:05:31', NULL, '2023-04-24 05:05:33', '7bce74f5-c93a-4e2c-8f9f-59db34c02bf1'),
(221, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:32', '2023-04-24 05:05:32', NULL, '2023-04-24 05:05:33', 'c80bc771-89a7-4b98-aa2c-9c980d2e51db'),
(222, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:32', '2023-04-24 05:05:32', NULL, '2023-04-24 05:05:33', '8171cf30-4811-4c64-b0c5-01d241dcd2fd'),
(223, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:33', '2023-04-24 05:05:33', NULL, '2023-04-24 05:05:35', '5a8022ec-8164-422b-be30-5fdcd5153e77'),
(224, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:33', '2023-04-24 05:05:33', NULL, '2023-04-24 05:05:35', '416268e5-ce1e-4e12-9d39-09a114f4adaa'),
(225, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:34', '2023-04-24 05:05:34', NULL, '2023-04-24 05:05:36', '0a6605eb-ee3a-43e2-9c5e-4975aad45105'),
(226, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:34', '2023-04-24 05:05:34', NULL, '2023-04-24 05:05:36', '437cd024-5793-47bf-9e22-ea61ddb393a2'),
(227, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:36', '2023-04-24 05:05:36', NULL, '2023-04-24 05:05:37', 'b2c4edbc-a3ac-434d-a054-6803e8b38f70'),
(228, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:36', '2023-04-24 05:05:36', NULL, '2023-04-24 05:05:37', '4c8fbb86-f43e-44e8-925d-46f3d2dd7d59'),
(229, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:37', '2023-04-24 05:05:37', NULL, '2023-04-24 05:05:43', 'f97488b7-96b4-4a45-b3bd-468eedb6c6a2'),
(230, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:37', '2023-04-24 05:05:37', NULL, '2023-04-24 05:05:43', '102fbf05-d8f9-4099-900e-1cdd34bf7809'),
(231, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:43', '2023-04-24 05:05:43', NULL, '2023-04-24 05:05:45', '9fffccc9-886c-4b9d-b376-ab922e4478f4'),
(232, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:43', '2023-04-24 05:05:43', NULL, '2023-04-24 05:05:45', '66c9e676-bb25-4997-868c-a8a067780a8b'),
(233, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:45', '2023-04-24 05:05:45', NULL, '2023-04-24 05:05:46', 'c237fd82-0f70-4192-b583-e6c234b6fca0'),
(234, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:45', '2023-04-24 05:05:45', NULL, '2023-04-24 05:05:46', 'de786898-bf65-4272-8843-21573e073281'),
(235, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:46', '2023-04-24 05:05:46', NULL, '2023-04-24 05:05:49', 'ecfddb38-4489-4e09-b365-7877df9e99f9'),
(236, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:46', '2023-04-24 05:05:46', NULL, '2023-04-24 05:05:49', '5a8f03f3-a7d9-4035-9d17-1074bbd063f7'),
(237, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:49', '2023-04-24 05:05:49', NULL, '2023-04-24 05:05:55', 'ae3b040f-d778-464c-afc2-66b8249f4fb3'),
(238, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:49', '2023-04-24 05:05:49', NULL, '2023-04-24 05:05:55', 'b116750b-fe68-4626-b814-116c6e6f2e44'),
(239, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:55', '2023-04-24 05:05:55', NULL, '2023-04-24 05:05:56', 'c6a0fa0c-8064-4a18-b746-10042f2cc05d'),
(240, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:55', '2023-04-24 05:05:55', NULL, '2023-04-24 05:05:56', '230bcba1-e553-418c-aa30-6a2689ae456b'),
(241, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:56', '2023-04-24 05:05:56', NULL, '2023-04-24 05:06:04', '48909104-f952-4e26-a7ed-20d5ce443460'),
(242, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:05:56', '2023-04-24 05:05:56', NULL, '2023-04-24 05:06:04', '7afc8940-70ad-4f4c-977e-a2f8ac24f7b3'),
(243, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:04', '2023-04-24 05:06:04', NULL, '2023-04-24 05:06:15', 'bf600a51-b5d7-4aea-a0a7-df8f97bb9ba5'),
(244, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:04', '2023-04-24 05:06:04', NULL, '2023-04-24 05:06:15', 'f5a3a9a7-5245-479d-aaed-03b88277069f'),
(245, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:15', '2023-04-24 05:06:15', NULL, '2023-04-24 05:06:16', 'cb03fa41-54e0-436c-915d-42cd3bc6c823'),
(246, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:15', '2023-04-24 05:06:15', NULL, '2023-04-24 05:06:16', '15fb6d5c-d715-4e31-a73b-0e1089f9cebe'),
(247, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:16', '2023-04-24 05:06:16', NULL, '2023-04-24 05:06:17', '71b8ce28-f252-4c0a-856d-906e424fc42c'),
(248, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:16', '2023-04-24 05:06:16', NULL, '2023-04-24 05:06:17', 'a036561c-a673-4de0-a626-2ce9a4a149d8'),
(249, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:17', '2023-04-24 05:06:17', NULL, '2023-04-24 05:06:19', '4eb0d75f-c777-43c4-9d0a-0cbf457f6992'),
(250, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:17', '2023-04-24 05:06:17', NULL, '2023-04-24 05:06:19', 'dac9bdd6-57dc-4459-8a31-2649074844dd'),
(251, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:19', '2023-04-24 05:06:19', NULL, '2023-04-24 05:06:27', '18d26041-bd7e-460f-87b2-7779f8dc9a9b'),
(252, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:19', '2023-04-24 05:06:19', NULL, '2023-04-24 05:06:27', 'eaf93df8-86cf-46e1-b7dc-784504856150'),
(253, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:27', '2023-04-24 05:06:27', NULL, '2023-04-24 05:06:30', '167e58ac-9db0-4f4a-b234-a2ea6459ef14'),
(254, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:27', '2023-04-24 05:06:27', NULL, '2023-04-24 05:06:30', 'f552119c-5374-4ab0-acbe-067aee97e184'),
(255, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:30', '2023-04-24 05:06:30', NULL, '2023-04-24 05:06:31', '27cd200a-9ff6-41ae-a2ed-c601dc6ae37b'),
(256, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:30', '2023-04-24 05:06:30', NULL, '2023-04-24 05:06:31', '09360cd7-5ff1-491d-9da6-012add9bf46a'),
(257, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:31', '2023-04-24 05:06:31', NULL, '2023-04-24 05:06:32', '69b6f0ef-615e-443c-8660-23d9ae15f651'),
(258, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:31', '2023-04-24 05:06:31', NULL, '2023-04-24 05:06:32', 'c67f1553-5073-4023-9c5a-c99fb37e7757'),
(259, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:32', '2023-04-24 05:06:32', NULL, '2023-04-24 05:06:35', 'f06d3a87-55c1-48b1-b221-7694130a381c'),
(260, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:32', '2023-04-24 05:06:32', NULL, '2023-04-24 05:06:35', 'ef1a4cda-45ee-426d-8d5b-716a93493184'),
(261, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:35', '2023-04-24 05:06:35', NULL, '2023-04-24 05:06:47', '11fa798f-25ac-4735-9bcf-99c21e743272'),
(262, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:35', '2023-04-24 05:06:35', NULL, '2023-04-24 05:06:47', 'a72d6681-4806-4d0c-adf0-a6fe326b858e'),
(263, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:47', '2023-04-24 05:06:47', NULL, '2023-04-24 05:06:49', 'b59bbdd7-ac9b-4737-8b8d-e089be5e334d'),
(264, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:47', '2023-04-24 05:06:47', NULL, '2023-04-24 05:06:49', 'aff0778e-f136-4c44-831e-66820a342a88'),
(265, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:48', '2023-04-24 05:06:48', NULL, '2023-04-24 05:06:53', '500bd148-264b-4780-8075-631632d49cb3'),
(266, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:48', '2023-04-24 05:06:48', NULL, '2023-04-24 05:06:53', '98ffe372-69be-414a-9517-19dfc22a12c3'),
(267, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:53', '2023-04-24 05:06:53', NULL, '2023-04-24 05:07:00', 'acb9ca8c-b1f3-4ee5-98bc-ca45de3cca63'),
(268, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:06:53', '2023-04-24 05:06:53', NULL, '2023-04-24 05:07:00', '11d98976-daa1-4eb1-bf0d-f1af16e49848'),
(269, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:00', '2023-04-24 05:07:00', NULL, '2023-04-24 05:07:01', 'e73a374d-5d88-4f44-ba6b-d360668a4333'),
(270, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:00', '2023-04-24 05:07:00', NULL, '2023-04-24 05:07:01', '15207f3f-b175-4cc0-bc64-1254992fd3ae'),
(271, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:01', '2023-04-24 05:07:01', NULL, '2023-04-24 05:07:02', 'b948542c-bcbd-4eac-81bf-4dc5dc276cf5'),
(272, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:01', '2023-04-24 05:07:01', NULL, '2023-04-24 05:07:02', '8bf88255-fe76-488a-b262-ecb03b4e9038'),
(273, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:02', '2023-04-24 05:07:02', NULL, '2023-04-24 05:07:06', 'ea67c177-7434-4233-af01-ce8843be4b03'),
(274, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:02', '2023-04-24 05:07:02', NULL, '2023-04-24 05:07:06', '05c94db7-ad19-4871-a8ab-7eced9c2fbb7'),
(275, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:06', '2023-04-24 05:07:06', NULL, '2023-04-24 05:07:07', '866a1d0d-72b4-4364-8c52-e701e1c612a3'),
(276, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:06', '2023-04-24 05:07:06', NULL, '2023-04-24 05:07:07', '2d7fecb5-9e15-4eb5-b0bf-b4d3e542e8ee'),
(277, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:07', '2023-04-24 05:07:07', NULL, '2023-04-24 05:07:09', 'b662e923-4cef-45b3-9908-61a25a6538ac'),
(278, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:07', '2023-04-24 05:07:07', NULL, '2023-04-24 05:07:09', 'ce8b6cda-0b58-4be8-bea7-06550439a656'),
(279, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:09', '2023-04-24 05:07:09', NULL, '2023-04-24 05:07:12', 'f54fb8d0-38c4-4247-80fc-94150e30d67f'),
(280, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:09', '2023-04-24 05:07:09', NULL, '2023-04-24 05:07:12', '61bd60a5-c0a8-4dc8-b993-7f70cfa3d3a9'),
(281, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:12', '2023-04-24 05:07:12', NULL, '2023-04-24 05:07:40', '756794a4-feac-4edb-8469-0bf536c47901'),
(282, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:12', '2023-04-24 05:07:12', NULL, '2023-04-24 05:07:40', '09954aa0-66e6-4cda-aded-ebbeef7de779'),
(283, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:40', '2023-04-24 05:07:40', NULL, '2023-04-24 05:07:41', '27dbc40e-012b-418b-96f0-e1ab737c92ac'),
(284, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:40', '2023-04-24 05:07:40', NULL, '2023-04-24 05:07:41', '4e66af4c-a38c-4885-af1d-bf3a4d24f8cb'),
(287, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:43:34', NULL, NULL, 'ae0fba00-f9f4-4e58-bbeb-226044fb6baf'),
(288, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:44:49', NULL, NULL, '42f80346-9563-4767-832d-3763e53a145c'),
(289, 2, NULL, 12, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:07:41', NULL, NULL, '7288a1f5-29a9-4cd2-ba52-0a41d20cb381'),
(290, 287, NULL, 13, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:07:41', NULL, NULL, '86d6dde6-b63b-4de8-9ab7-c324d468eb8e'),
(291, 288, NULL, 14, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:07:41', NULL, NULL, '3398cd7e-3d63-4a73-baa9-1f77da316f4b'),
(294, 2, NULL, 15, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:10:44', '2023-04-24 05:10:44', NULL, NULL, 'be8e5c7a-df42-4d31-af56-7ddae31d2157'),
(295, 287, NULL, 16, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:07:41', '2023-04-24 05:10:44', NULL, NULL, '948a0b2c-5ec4-45db-ac29-4aeeb2146d9c'),
(296, 288, NULL, 17, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:10:44', '2023-04-24 05:10:44', NULL, NULL, 'd97b7b93-700f-48fb-9785-514503105b93'),
(300, 2, NULL, 18, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:24:17', '2023-04-24 05:24:17', NULL, NULL, '673b0fdc-3f3c-4ccc-93de-360b73dfd8e7'),
(301, 287, NULL, 19, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:24:17', '2023-04-24 05:24:17', NULL, NULL, '1d2d9adf-2749-4cce-8c75-069af7e13c8b'),
(302, 288, NULL, 20, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:24:17', '2023-04-24 05:24:17', NULL, NULL, '101a9790-b461-4a9f-b746-fc487679c8cd'),
(305, 2, NULL, 21, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:26:16', '2023-04-24 05:26:16', NULL, NULL, 'ac68e63d-30cd-4bac-ae96-287cdae86f1a'),
(306, 287, NULL, 22, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:26:16', '2023-04-24 05:26:16', NULL, NULL, '4f08599b-f5fb-4115-a0f0-ab5534568f61'),
(307, 288, NULL, 23, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:24:17', '2023-04-24 05:26:16', NULL, NULL, '0f90d8ed-6031-416a-9c10-d9ff43c615cc'),
(310, 2, NULL, 24, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:27:53', '2023-04-24 05:27:53', NULL, NULL, '240b2105-b65a-497d-bf31-b38082730732'),
(311, 287, NULL, 25, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:27:53', '2023-04-24 05:27:53', NULL, NULL, '6a495bf0-81d9-4673-a321-04aae6c0b948'),
(312, 288, NULL, 26, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:24:17', '2023-04-24 05:27:53', NULL, NULL, '4ca6f5b3-7ded-4f46-972d-46b137203362'),
(316, 2, NULL, 27, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:29:15', '2023-04-24 05:29:15', NULL, NULL, '6386c0b9-6a42-4c5b-8b8a-33534ec7ef19');
INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(317, 287, NULL, 28, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:29:15', '2023-04-24 05:29:15', NULL, NULL, '17b0326f-6caf-47f8-881b-0b72d0b2adc7'),
(318, 288, NULL, 29, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:29:15', '2023-04-24 05:29:15', NULL, NULL, '25f10ddf-e849-449f-b3e2-4217e33c391a'),
(322, 2, NULL, 30, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:30:37', NULL, NULL, '064cae4e-79e7-4dd6-bb6b-033ec80fa666'),
(323, 287, NULL, 31, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:30:37', NULL, NULL, 'f15bf144-bdc8-4402-bf9b-237fac2a570f'),
(324, 288, NULL, 32, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:30:37', NULL, NULL, '5492cdf1-eb0e-4074-9b1a-b99ff756668a'),
(327, 2, NULL, 33, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:30:55', '2023-04-24 05:30:55', NULL, NULL, 'beac75fb-e11a-4543-91a4-95acbe09e687'),
(328, 287, NULL, 34, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:55', '2023-04-24 05:30:55', NULL, NULL, 'd53e8eda-16f8-4c29-a5c3-d448d721b7dd'),
(329, 288, NULL, 35, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:30:55', NULL, NULL, '5a6401b8-75c4-4930-a5de-0de269284de4'),
(332, 2, NULL, 36, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:33:45', '2023-04-24 05:33:45', NULL, NULL, 'b4bb43e2-a414-4768-b70a-2c82f62f8b42'),
(333, 287, NULL, 37, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:33:45', '2023-04-24 05:33:45', NULL, NULL, '545d297e-c9c7-423f-ad7e-1e0c682c8a19'),
(334, 288, NULL, 38, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:33:45', NULL, NULL, '66237615-d3f5-4063-9cdd-9589cf5063dc'),
(337, 2, NULL, 39, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:35:04', '2023-04-24 05:35:04', NULL, NULL, '95c9079a-772c-4c27-b71c-fb96be475fef'),
(338, 287, NULL, 40, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:35:04', '2023-04-24 05:35:04', NULL, NULL, '61b862d0-5803-4a6d-82c3-8700a6857339'),
(339, 288, NULL, 41, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:35:04', NULL, NULL, '35f83a07-86be-4b7e-972e-254b5c6e94dc'),
(342, 2, NULL, 42, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:38:03', '2023-04-24 05:38:03', NULL, NULL, 'e83c69c0-65f9-4c24-a4b8-4ca1052982b1'),
(343, 287, NULL, 43, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:38:03', '2023-04-24 05:38:03', NULL, NULL, 'cb70b546-037f-4cbb-ac01-23ffc4ef2a3b'),
(344, 288, NULL, 44, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:38:03', NULL, NULL, '01e02ee1-e7e8-4662-b2e3-97de5504bbbb'),
(347, 2, NULL, 45, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:38:35', '2023-04-24 05:38:35', NULL, NULL, '81bc3666-977e-4679-9f88-46c08b70c226'),
(348, 287, NULL, 46, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:38:35', '2023-04-24 05:38:35', NULL, NULL, '0126b362-2cd5-4b0c-af79-204ad7de8fdf'),
(349, 288, NULL, 47, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:38:35', NULL, NULL, '1bd82918-5d9e-424d-8b86-08800b05269b'),
(352, 2, NULL, 48, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:39:28', '2023-04-24 05:39:28', NULL, NULL, 'f45f13a7-271d-4c4b-88ca-f1bbab214625'),
(353, 287, NULL, 49, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:39:28', '2023-04-24 05:39:28', NULL, NULL, 'c7cd15ab-1748-4d2a-90b8-4969757cc8e0'),
(354, 288, NULL, 50, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:39:28', NULL, NULL, '51d3a586-7e26-4363-9f21-bd0b5dee63bd'),
(357, 2, NULL, 51, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:40:27', '2023-04-24 05:40:27', NULL, NULL, '712ebd5c-a033-4724-b4eb-6ca22c6faca3'),
(358, 287, NULL, 52, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:40:27', '2023-04-24 05:40:27', NULL, NULL, '6acb7a7c-2151-4eab-8e77-226791457312'),
(359, 288, NULL, 53, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:40:27', NULL, NULL, '610bc78c-6940-4b6e-9387-e954e3f0acbc'),
(362, 2, NULL, 54, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:41:49', '2023-04-24 05:41:49', NULL, NULL, '5f6105e3-7467-4c12-b31e-b234248199dc'),
(363, 287, NULL, 55, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:41:49', '2023-04-24 05:41:49', NULL, NULL, '4d2b98ed-32db-4cd7-bc59-e973c3738cab'),
(364, 288, NULL, 56, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:41:49', NULL, NULL, 'fcac7564-4b8a-4339-9c10-8a7d5872b5b7'),
(367, 2, NULL, 57, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:42:14', '2023-04-24 05:42:14', NULL, NULL, '9f1ae2ed-f791-4caa-8b91-8ede6527af45'),
(368, 287, NULL, 58, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:42:14', '2023-04-24 05:42:14', NULL, NULL, '0439d9be-7f11-49a3-a972-f868d893075e'),
(369, 288, NULL, 59, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:42:14', NULL, NULL, '2876f6ba-4446-4771-b3bc-e870a78e8dd0'),
(372, 2, NULL, 60, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:42:48', '2023-04-24 05:42:48', NULL, NULL, '33566bf4-6b7e-4151-ac1f-fca19a09275f'),
(373, 287, NULL, 61, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:42:48', '2023-04-24 05:42:48', NULL, NULL, '348df2b3-d7c1-46a1-ac4c-24388c34530d'),
(374, 288, NULL, 62, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:42:48', NULL, NULL, '6419d2bd-8e98-4a97-8f6b-18cf77a1618c'),
(377, 2, NULL, 63, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:43:34', '2023-04-24 05:43:34', NULL, NULL, 'ba8195f8-0962-4e1e-85ee-ce5f73c8ebc6'),
(378, 287, NULL, 64, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 05:43:34', NULL, NULL, 'd29d4a3b-ec12-4924-9c44-263d21a5f0ac'),
(379, 288, NULL, 65, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:30:37', '2023-04-24 05:43:34', NULL, NULL, '775c214c-4291-4dff-a352-3f881d6ffa2a'),
(382, 2, NULL, 66, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 05:44:49', '2023-04-24 05:44:49', NULL, NULL, '39e680eb-4198-40a9-81a0-4e39f943e8d0'),
(383, 287, NULL, 67, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 05:44:49', NULL, NULL, '81a6b310-4600-49bd-b1df-c7f984e9451c'),
(384, 288, NULL, 68, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 05:44:49', NULL, NULL, '5e1f83a3-59fa-4241-baa2-5c705790da2a'),
(385, 2, NULL, 69, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:30:52', '2023-04-24 06:30:52', NULL, NULL, 'c3e71fab-e168-49b6-ae89-a9b6445e8320'),
(386, 287, NULL, 70, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:30:52', NULL, NULL, 'ff619094-dac6-424a-b645-fc0778fc7ff3'),
(387, 288, NULL, 71, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:30:52', NULL, NULL, 'b2820550-55fb-400b-b744-9398a1bab3fd'),
(388, 2, NULL, 72, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:31:54', '2023-04-24 06:31:54', NULL, NULL, 'bdda106c-9406-44cb-868f-2bf63fcc795d'),
(389, 287, NULL, 73, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:31:54', NULL, NULL, '426d0905-4229-4433-a1b0-5e0454da6bf0'),
(390, 288, NULL, 74, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:31:54', NULL, NULL, '039fbfeb-4213-4bc3-850b-b23dcff09116'),
(391, 2, NULL, 75, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:32:25', '2023-04-24 06:32:25', NULL, NULL, '3fb437f4-471f-4c7b-9325-e4793aa1baee'),
(392, 287, NULL, 76, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:32:25', NULL, NULL, '3bd1d7b5-a625-4df6-b974-b2d8be47babe'),
(393, 288, NULL, 77, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:32:25', NULL, NULL, 'c4c32fc9-fe68-4672-9ff2-2334fb732ff6'),
(395, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:34:02', '2023-04-24 06:34:02', NULL, '2023-04-24 06:34:07', 'ca662c60-7e9a-4eaf-a120-9530a5d64108'),
(396, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:34:07', '2023-04-24 06:34:07', NULL, '2023-04-24 06:34:12', 'e210c24e-5a45-4aef-9071-e7abc72a4c0c'),
(397, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:34:12', '2023-04-24 06:34:12', NULL, '2023-04-24 06:34:17', 'f6d37a22-bbe1-48b4-a20b-6e4fc02b59d5'),
(398, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:34:17', '2023-04-24 06:34:17', NULL, '2023-04-24 06:34:20', '175ab6a2-6eb1-41a2-ade2-1563429273c3'),
(399, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:34:20', '2023-04-24 06:34:20', NULL, '2023-04-24 06:35:25', 'c2581fa6-be60-4326-9b6a-3bb7c7e66329'),
(400, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:35:25', '2023-04-24 06:35:25', NULL, '2023-04-24 06:35:28', '6076d49d-0ea4-4672-b17e-90a880f5f6d9'),
(401, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:35:28', '2023-04-24 06:35:28', NULL, '2023-04-24 06:35:54', 'd41b1298-cf7a-463a-8deb-5d4c86b53ea6'),
(402, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:35:54', '2023-04-24 06:35:54', NULL, '2023-04-24 06:35:55', '3a75bcba-92fd-41ec-88aa-29fce78e1437'),
(403, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:35:55', '2023-04-24 06:35:55', NULL, '2023-04-24 06:35:57', 'c5ef1856-c901-481a-bc71-4002f6856789'),
(404, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:35:57', '2023-04-24 06:35:57', NULL, '2023-04-24 06:36:03', 'fec51308-75e5-4918-988c-25490e71649a'),
(405, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:36:03', '2023-04-24 06:36:03', NULL, '2023-04-24 06:36:08', 'b8dcc771-91b8-483e-855d-6b9fac8c0c60'),
(407, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-04-24 06:37:21', '2023-04-24 06:37:26', NULL, NULL, '71253967-290a-4a96-9baa-4bf7a73d5bee'),
(408, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:37:35', '2023-04-24 06:52:44', NULL, NULL, '779e71a2-bb6b-45ea-8da1-bb98a2fe098f'),
(409, 2, NULL, 78, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:37:35', '2023-04-24 06:37:35', NULL, NULL, '36dbdcc6-9e9c-44f7-9b4c-e95c586da8f9'),
(410, 287, NULL, 79, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:37:35', NULL, NULL, '2a753426-e04f-452e-b5c3-b0797e775c57'),
(411, 288, NULL, 80, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:37:35', NULL, NULL, '8c8c3193-b98c-48c0-9e71-a666b021cf54'),
(412, 408, NULL, 81, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:37:35', '2023-04-24 06:37:35', NULL, NULL, '1425c62f-a99e-4d9a-8e65-82ee0bfea256'),
(415, 2, NULL, 82, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:43:02', '2023-04-24 06:43:02', NULL, NULL, '7960b7e5-2b49-4fe2-a464-0ace81c4b98d'),
(416, 287, NULL, 83, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:43:02', NULL, NULL, 'e4390eb9-ba2a-49fc-9f83-cd6f42b89407'),
(417, 288, NULL, 84, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:43:02', NULL, NULL, 'c4c94ad9-c94e-4c88-927f-c7c867ce4be5'),
(418, 408, NULL, 85, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:43:02', '2023-04-24 06:43:02', NULL, NULL, 'b67034e6-ed29-4d71-8c01-920462130941'),
(421, 2, NULL, 86, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:46:02', '2023-04-24 06:46:02', NULL, NULL, 'c137d1ef-fee5-4569-91bb-60553fc16701'),
(422, 287, NULL, 87, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:46:02', NULL, NULL, '5dd73aaf-f9a7-4bd8-a621-0ff3383e6371'),
(423, 288, NULL, 88, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:46:02', NULL, NULL, 'b9ade89e-c500-4c89-a35c-5144a8dc47e8'),
(424, 408, NULL, 89, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:46:02', '2023-04-24 06:46:02', NULL, NULL, 'd04f7393-3ab4-436b-83b7-6bd9521471a6'),
(427, 2, NULL, 90, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 06:52:44', '2023-04-24 06:52:44', NULL, NULL, '9fbae047-3988-4ca2-880a-eacfef4ab6ab'),
(428, 287, NULL, 91, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 06:52:44', NULL, NULL, '81434a90-9c00-4cc3-b18f-47a8dcab8796'),
(429, 288, NULL, 92, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 06:52:44', NULL, NULL, '26aea1f1-8d43-4b3c-8aa4-fd0274b65529'),
(430, 408, NULL, 93, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 06:52:44', NULL, NULL, '65acdce3-d7a5-4622-bc65-baf1b41d1628'),
(431, 2, NULL, 94, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 13:46:43', '2023-04-24 13:46:43', NULL, NULL, 'a02ace9e-e1b2-4c28-8616-68f14bd931c0'),
(432, 287, NULL, 95, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 13:46:43', NULL, NULL, 'c833f53b-b27b-4543-9931-db5cadbc694e'),
(433, 288, NULL, 96, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 13:46:43', NULL, NULL, 'c4ba6b61-7fb0-4e40-b2de-1a4f575805e2'),
(434, 408, NULL, 97, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 13:46:43', NULL, NULL, 'e047ef91-9699-4313-bf29-36337d28b3b3'),
(435, NULL, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2023-04-24 13:47:13', '2023-04-24 13:47:13', NULL, NULL, '0534893d-fab7-4871-bab0-672e7c53b279'),
(437, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:14', '2023-04-24 13:47:14', NULL, '2023-04-24 13:47:25', 'dd678194-5fc1-4040-8f60-30216203a677'),
(438, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:14', '2023-04-24 13:47:14', NULL, '2023-04-24 13:47:25', '8a29c341-1bbc-4191-bef1-57dd9e6875a0'),
(439, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:14', '2023-04-24 13:47:14', NULL, '2023-04-24 13:47:25', '8ac3836d-84c7-4263-b7e6-77651cb938ef'),
(440, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:25', '2023-04-24 13:47:25', NULL, '2023-04-24 13:47:34', '80636741-f4fa-43a1-b21a-81485fb5e3a2'),
(441, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:25', '2023-04-24 13:47:25', NULL, '2023-04-24 13:47:34', 'dd0485a4-b410-4499-b027-a24027d7b4df'),
(442, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:25', '2023-04-24 13:47:25', NULL, '2023-04-24 13:47:34', '4f93c0d4-d024-4740-86e5-4f6b46a13794'),
(443, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:34', '2023-04-24 13:47:34', NULL, '2023-04-24 13:47:43', '0de60338-7564-41db-9468-234e2f823037'),
(444, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:34', '2023-04-24 13:47:34', NULL, '2023-04-24 13:47:43', '8960598a-251a-440d-bfb5-782216e98e1f'),
(445, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:34', '2023-04-24 13:47:34', NULL, '2023-04-24 13:47:43', '92c4e12e-9f79-4943-827b-8facaa1e6069'),
(446, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:43', '2023-04-24 13:47:43', NULL, '2023-04-24 13:47:45', '438e1f19-8433-4210-b93d-52440c29775a'),
(447, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:43', '2023-04-24 13:47:43', NULL, '2023-04-24 13:47:45', 'af42ece8-a733-41a1-8b54-e99245b14753'),
(448, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:43', '2023-04-24 13:47:43', NULL, '2023-04-24 13:47:45', 'ad5ec6d4-10ce-4dc7-af53-5d4b08918d39'),
(449, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:45', '2023-04-24 13:47:45', NULL, '2023-04-24 13:47:49', '5d26e332-8635-4e79-89f1-3c9cd8fcf30b'),
(450, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:45', '2023-04-24 13:47:45', NULL, '2023-04-24 13:47:49', 'd2c15893-6ae5-4b2e-8270-9e85f7490f63'),
(451, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:45', '2023-04-24 13:47:45', NULL, '2023-04-24 13:47:49', '99b29bfc-6333-47fe-9f9b-8ad052df9500'),
(452, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:49', '2023-04-24 13:47:49', NULL, '2023-04-24 13:47:54', '181c045a-add3-46be-b2c2-0dd00b01da07'),
(453, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:49', '2023-04-24 13:47:49', NULL, '2023-04-24 13:47:54', 'cfe36ab6-b88e-4f4e-b89f-e0105e250dbb'),
(454, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:49', '2023-04-24 13:47:49', NULL, '2023-04-24 13:47:54', '841f5bde-612e-4c08-8513-317643a1a3ea'),
(455, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:54', '2023-04-24 13:47:54', NULL, '2023-04-24 13:47:56', '97186f0f-5e1d-4acc-9fae-4a0d4ece65ad'),
(456, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:54', '2023-04-24 13:47:54', NULL, '2023-04-24 13:47:56', '84285698-8fcd-430d-9f3b-d5a8af4a3510'),
(457, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:54', '2023-04-24 13:47:54', NULL, '2023-04-24 13:47:56', '853d3b14-1c4d-4568-9f40-3d1e125ee898'),
(458, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:56', '2023-04-24 13:47:56', NULL, '2023-04-24 13:48:00', '0fdc8815-7581-424c-9d47-b366a603ab87'),
(459, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:56', '2023-04-24 13:47:56', NULL, '2023-04-24 13:48:00', 'd2e35493-be67-40c4-a108-7cb69204b051'),
(460, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:47:56', '2023-04-24 13:47:56', NULL, '2023-04-24 13:48:00', 'b462cfa3-d4dd-4011-9d49-a8dce2a8d318'),
(461, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:00', '2023-04-24 13:48:00', NULL, '2023-04-24 13:48:03', '9b97dc77-39dc-4aa8-b460-2a1a4db43b80'),
(462, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:00', '2023-04-24 13:48:00', NULL, '2023-04-24 13:48:03', 'bdc419d9-a8e6-43b0-b4e2-9dc36dfdf331'),
(463, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:00', '2023-04-24 13:48:00', NULL, '2023-04-24 13:48:03', 'f76fb766-f9cd-4842-9c47-232caafadc70'),
(464, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:03', '2023-04-24 13:48:03', NULL, '2023-04-24 13:48:04', '730b73e4-9b7c-4606-9a40-64360c1f13cd'),
(465, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:03', '2023-04-24 13:48:03', NULL, '2023-04-24 13:48:04', 'f078ac1b-015e-4402-9986-d91b8ea496f6'),
(466, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:03', '2023-04-24 13:48:03', NULL, '2023-04-24 13:48:04', '0bba841c-a75f-48b8-bef9-39a17fca1a2b'),
(467, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:04', '2023-04-24 13:48:04', NULL, '2023-04-24 13:48:14', 'a7eb9d2a-d0cc-4afd-bcb9-9cbad0677999'),
(468, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:04', '2023-04-24 13:48:04', NULL, '2023-04-24 13:48:14', 'a50ffffb-6755-46ac-ad1e-ba030febd0db'),
(469, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:04', '2023-04-24 13:48:04', NULL, '2023-04-24 13:48:14', '38659647-5d8c-46f4-b39b-7e311ca4d668'),
(473, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', 'd24006b1-6306-4db5-86b1-323be087b730'),
(474, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', 'dc1ac3ee-9a42-4231-accc-ecef235388ba'),
(475, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', 'f550da8f-c0b6-4ec4-9db5-c2e1ca104137'),
(476, 2, NULL, 98, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, NULL, 'cf0ae766-677d-439b-a294-6655eb2af2f9'),
(477, 287, NULL, 99, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 13:48:18', NULL, NULL, 'eb611b7d-1c1b-47d5-bc2c-a1d426ecce6d'),
(478, 288, NULL, 100, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 13:48:18', NULL, NULL, 'a5cdd1cb-b529-467f-bc51-ae3dd26a07be'),
(479, 408, NULL, 101, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 13:48:18', NULL, NULL, 'b3f36dfa-143f-4407-83f8-0b4076bdd0c0'),
(480, 473, NULL, 102, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', 'd910ee62-ec53-4b93-b4dc-35c78d4e2726'),
(481, 474, NULL, 103, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', '9ef0b1c1-5719-4891-9d6d-c975fc6e76e4'),
(482, 475, NULL, 104, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18', NULL, '2023-04-24 16:20:20', 'a3bdfbea-2a7d-420e-ad45-944631f8f1c7'),
(483, 2, NULL, 105, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 16:11:56', '2023-04-24 16:11:56', NULL, NULL, '7d543980-9f0c-4f5e-9cb6-e9640fe92bbe'),
(484, 287, NULL, 106, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 16:11:56', NULL, NULL, '7ca40a04-47f7-42b2-8ace-001987140586'),
(485, 288, NULL, 107, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 16:11:56', NULL, NULL, '215489f5-fe6a-4bbe-b28c-8ca94948f43c'),
(486, 408, NULL, 108, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 16:11:56', NULL, NULL, 'ccd8509d-367b-4960-9413-1a27c422a007'),
(487, 473, NULL, 109, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 16:11:56', NULL, '2023-04-24 16:20:20', '6135c3eb-0da9-4046-9891-9f0081e59714'),
(488, 474, NULL, 110, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 16:11:56', NULL, '2023-04-24 16:20:20', '52a6835a-6249-4364-a656-1cbff9346393'),
(489, 475, NULL, 111, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 13:48:18', '2023-04-24 16:11:56', NULL, '2023-04-24 16:20:20', 'c9b8b66f-e005-400a-89d0-a3757b56fef5'),
(491, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:12', '2023-04-24 16:16:12', NULL, '2023-04-24 16:16:17', '6782490c-2d26-4d35-92bb-33dccb773d8d'),
(492, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:17', '2023-04-24 16:16:17', NULL, '2023-04-24 16:16:28', '884f1266-74ff-4547-944d-ec0f50863dad'),
(493, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:17', '2023-04-24 16:16:17', NULL, '2023-04-24 16:16:28', '66614878-16e4-4a04-9d5a-2c5feaad08cd'),
(494, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:28', '2023-04-24 16:16:28', NULL, '2023-04-24 16:16:41', 'eb5a9935-ad73-4a28-ae22-82d51b0e0f22'),
(495, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:28', '2023-04-24 16:16:28', NULL, '2023-04-24 16:16:41', 'a29c80af-e462-4ca6-8ae4-b0b0df3cdb16'),
(496, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:28', '2023-04-24 16:16:28', NULL, '2023-04-24 16:16:41', '5e08fb07-8da4-4a47-b035-9c2b6d27a4ed'),
(497, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:41', '2023-04-24 16:16:41', NULL, '2023-04-24 16:16:54', '435c7887-91ad-41c8-85fd-319ee81aae21'),
(498, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:41', '2023-04-24 16:16:41', NULL, '2023-04-24 16:16:54', '9dbb711b-523e-41f7-89ab-f3bab0ea83b7'),
(499, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:41', '2023-04-24 16:16:41', NULL, '2023-04-24 16:16:54', '9c0c29e0-7e89-44a4-aecf-63664c866f97'),
(500, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:54', '2023-04-24 16:16:54', NULL, '2023-04-24 16:16:58', 'aad2281b-195d-49b9-8361-3ef0a68c73d1'),
(501, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:54', '2023-04-24 16:16:54', NULL, '2023-04-24 16:16:58', '81fcbe97-16eb-4214-9ca2-8a4538ae1c69'),
(502, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:16:58', '2023-04-24 16:16:58', NULL, '2023-04-24 16:17:02', 'ed5316ad-c684-4c53-9ea4-3b4ee499c3bf'),
(503, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:42', '2023-04-24 16:18:42', NULL, '2023-04-24 16:18:43', '51d0cd6f-37f3-4b57-87ac-7ec6ea778942'),
(504, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:43', '2023-04-24 16:18:43', NULL, '2023-04-24 16:18:45', '9a5fdeaf-49c2-48a0-ba24-8c838d6283c1'),
(505, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:43', '2023-04-24 16:18:43', NULL, '2023-04-24 16:18:45', 'fd419f53-43e1-4a2a-a7d0-971d6950a17c'),
(506, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:45', '2023-04-24 16:18:45', NULL, '2023-04-24 16:18:47', 'd777c344-f6e8-4479-b5d7-f97d1dd193ee'),
(507, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:45', '2023-04-24 16:18:45', NULL, '2023-04-24 16:18:47', 'ee60a302-335b-4795-af22-b64b12588390'),
(508, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:45', '2023-04-24 16:18:45', NULL, '2023-04-24 16:18:47', '8b5893b1-74b8-4f70-9022-0fdaedf166cf'),
(509, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:47', '2023-04-24 16:18:47', NULL, '2023-04-24 16:19:01', 'd20ccd71-e87a-406f-b09e-ee1309122746'),
(510, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:47', '2023-04-24 16:18:47', NULL, '2023-04-24 16:19:01', '2d6d78b3-7074-45a7-8839-670d115e3440'),
(511, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:47', '2023-04-24 16:18:47', NULL, '2023-04-24 16:19:01', '78dc82d3-080c-45d5-a587-21b1cf1478a8'),
(512, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:18:47', '2023-04-24 16:18:47', NULL, '2023-04-24 16:19:01', '213cb7fd-ae3e-4cc2-87e4-339bb954e55a'),
(513, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:01', '2023-04-24 16:19:01', NULL, '2023-04-24 16:19:03', '76034c38-595f-47ae-9228-b6b7ad3281c6'),
(514, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:01', '2023-04-24 16:19:01', NULL, '2023-04-24 16:19:03', '14849722-ea30-4c2a-9abc-a0597625d5b1'),
(515, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:01', '2023-04-24 16:19:01', NULL, '2023-04-24 16:19:03', 'edd80c50-2869-4b93-ac0a-fc0a0219fd14'),
(516, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:01', '2023-04-24 16:19:01', NULL, '2023-04-24 16:19:03', '475c6a44-75e9-47fa-b574-5c7fbde6e441'),
(517, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:03', '2023-04-24 16:19:03', NULL, '2023-04-24 16:19:06', 'e851f71e-a99c-41d5-8c42-8357d721b631'),
(518, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:03', '2023-04-24 16:19:03', NULL, '2023-04-24 16:19:06', '7027a152-03ad-488f-8d49-ae45174812dd'),
(519, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:03', '2023-04-24 16:19:03', NULL, '2023-04-24 16:19:06', '0832611b-1734-43a0-b665-a23a0cb40b57'),
(520, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:03', '2023-04-24 16:19:03', NULL, '2023-04-24 16:19:06', 'eebf7c0a-876c-4dce-82b0-e4e9f11cf431'),
(521, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:05', '2023-04-24 16:19:05', NULL, '2023-04-24 16:19:23', '991de0a1-eafb-49c3-803d-44ac87d906da'),
(522, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:06', '2023-04-24 16:19:06', NULL, '2023-04-24 16:19:23', '6ae10ace-8272-4b7e-9a37-f4aca362a61e'),
(523, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:06', '2023-04-24 16:19:06', NULL, '2023-04-24 16:19:23', '402ed9d4-95bf-47ed-a216-cf107967da63'),
(524, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:06', '2023-04-24 16:19:06', NULL, '2023-04-24 16:19:23', 'aeaa5b5d-6c2c-48a3-bad4-c882a9e4d8d7'),
(525, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:23', '2023-04-24 16:19:23', NULL, '2023-04-24 16:19:30', 'e62f9ff0-e1dc-4de1-a8cb-ca80076a60bd'),
(526, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:23', '2023-04-24 16:19:23', NULL, '2023-04-24 16:19:30', '94a44988-d48c-41e9-a56c-6f6f17f60826'),
(527, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:23', '2023-04-24 16:19:23', NULL, '2023-04-24 16:19:30', '491167b6-e26c-4cbe-97d6-d89bb8946c75'),
(528, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:23', '2023-04-24 16:19:23', NULL, '2023-04-24 16:19:30', '42f6391d-4c3c-46ba-adee-0aab670df699'),
(529, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:30', '2023-04-24 16:19:30', NULL, '2023-04-24 16:19:38', 'f61925dd-e201-457b-808e-83259e06a0d1'),
(530, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:30', '2023-04-24 16:19:30', NULL, '2023-04-24 16:19:38', 'cb67e1d5-2042-4f03-9e22-dccf90b280d7'),
(531, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:30', '2023-04-24 16:19:30', NULL, '2023-04-24 16:19:38', '0dff6caf-d5ce-4413-b59f-157953d3b1cb'),
(532, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:30', '2023-04-24 16:19:30', NULL, '2023-04-24 16:19:38', 'c3ecc1ff-9c8a-45c4-9823-54b91c41a28c'),
(533, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:38', '2023-04-24 16:19:38', NULL, '2023-04-24 16:20:07', '6aeedcf8-f28f-442e-90d7-d409bbfb8a63'),
(534, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:38', '2023-04-24 16:19:38', NULL, '2023-04-24 16:20:07', '0763d0c9-ba09-4947-bd99-e339ab41767e'),
(535, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:38', '2023-04-24 16:19:38', NULL, '2023-04-24 16:20:07', '7e00a324-c44b-40b1-a2b8-bee645e04e16'),
(536, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:19:38', '2023-04-24 16:19:38', NULL, '2023-04-24 16:20:07', 'dbda8457-0f42-4fb3-ae1a-a5106b36363a'),
(537, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:07', '2023-04-24 16:20:07', NULL, '2023-04-24 16:20:10', 'bf438fe5-772b-4083-bae2-b071944b5614'),
(538, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:07', '2023-04-24 16:20:07', NULL, '2023-04-24 16:20:10', '4e68a8bd-22ef-4570-9aae-563a66785445'),
(539, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:07', '2023-04-24 16:20:07', NULL, '2023-04-24 16:20:10', 'c5e6c315-ba70-40e6-9039-3a35ee64ec02'),
(540, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:07', '2023-04-24 16:20:07', NULL, '2023-04-24 16:20:10', '2b3edc06-c613-42ba-9039-c82b8553d68b'),
(541, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:10', '2023-04-24 16:20:10', NULL, '2023-04-24 16:20:13', 'baa8c065-b211-4734-88bb-42434b31061e'),
(542, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:10', '2023-04-24 16:20:10', NULL, '2023-04-24 16:20:13', '97315cc1-529d-410b-8435-b47dcf906db7'),
(543, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:10', '2023-04-24 16:20:10', NULL, '2023-04-24 16:20:13', '3b932e4a-44bc-4c5f-9af7-273153701261'),
(544, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:10', '2023-04-24 16:20:10', NULL, '2023-04-24 16:20:13', '8406992b-2260-49c6-9d0a-61c8aabdbb2b'),
(545, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:13', '2023-04-24 16:20:13', NULL, '2023-04-24 16:20:15', '5b956492-f7e4-438b-b32c-f76385176fd1'),
(546, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:13', '2023-04-24 16:20:13', NULL, '2023-04-24 16:20:15', '636fce39-40a3-44e7-a50d-b766250a3e34'),
(547, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:13', '2023-04-24 16:20:13', NULL, '2023-04-24 16:20:15', '542c9ee4-0dc4-4b34-9f22-f4372dee0d14'),
(548, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:13', '2023-04-24 16:20:13', NULL, '2023-04-24 16:20:15', '752fea02-a5fa-4ed4-890d-b3df7812fb38'),
(553, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, '2023-04-24 16:35:05', 'cb97b02f-48bd-40dc-9ee1-58c670428b18'),
(554, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, 'bd9a104a-54b2-41ae-8bad-7e1b2b8600e8'),
(555, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, '662f89cd-5662-4d9c-ab4f-30fffbc0a99a'),
(556, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, '2ffbde0a-bb73-4af0-8aee-531a243b6312'),
(557, 2, NULL, 112, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, 'fd98f69d-7d73-49bc-a98f-38e2b198140c'),
(558, 287, NULL, 113, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 16:20:20', NULL, NULL, '010ede49-4f11-429f-b7b5-a24a3c0f0e03'),
(559, 288, NULL, 114, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 16:20:20', NULL, NULL, '9b04bbf8-5c0d-4747-bfa2-cca7cd093d1b'),
(560, 408, NULL, 115, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 16:20:20', NULL, NULL, 'e10d56a9-d0c5-42c7-b382-966ecf97c32e'),
(561, 553, NULL, 116, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, '2023-04-24 16:35:05', '72c0cf78-add4-43d2-83f2-adf742583980'),
(562, 554, NULL, 117, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, '768681ea-312e-4d92-86a3-9c59607641ee'),
(563, 555, NULL, 118, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, '34de55dc-fb43-42c7-b71a-6df86d438bd1'),
(564, 556, NULL, 119, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:20:20', NULL, NULL, 'ae053163-c44a-4208-95f4-e7744aa73f1d'),
(565, 2, NULL, 120, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 16:33:46', '2023-04-24 16:33:46', NULL, NULL, 'c8238c10-6da6-4c8a-bab6-b5421d82d50b'),
(566, 287, NULL, 121, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 16:33:46', NULL, NULL, 'a3d77420-0b91-434b-8515-2d7ee2a49669'),
(567, 288, NULL, 122, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 16:33:46', NULL, NULL, '88e486ed-7af9-4d31-be63-71b240eb734b'),
(568, 408, NULL, 123, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 16:33:46', NULL, NULL, 'f9c277e5-4565-48f7-81a5-28e7a18c149d'),
(569, 553, NULL, 124, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:33:46', NULL, '2023-04-24 16:35:05', '69c03858-eb14-4c16-894f-611172bbba08'),
(570, 554, NULL, 125, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:33:46', NULL, NULL, '74cbefa3-6cd9-4a2b-807f-ddabf661e2f7'),
(571, 555, NULL, 126, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:33:46', NULL, NULL, '941914f4-fc4f-4af7-a55c-dc08cc9cbeac'),
(572, 556, NULL, 127, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:33:46', NULL, NULL, '7189c8c1-795f-42df-a219-505ac98cf66b'),
(574, NULL, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:35:56', '2023-04-24 16:35:56', NULL, '2023-04-24 16:36:43', '729a7bea-7739-4465-b1a5-a0631e3d7f01'),
(575, 2, NULL, 128, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 16:36:52', '2023-04-24 16:36:53', NULL, NULL, '5f2ac67a-5df0-4db4-8dab-a6fda15cf792'),
(576, 287, NULL, 129, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 16:36:53', NULL, NULL, 'e30470c9-ac59-4205-8178-2126b6b4877e'),
(577, 288, NULL, 130, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 16:36:53', NULL, NULL, '4bb5c39f-b3bc-4f02-8638-6dffc8c7e787'),
(578, 408, NULL, 131, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 16:36:53', NULL, NULL, 'e372cfc3-5a03-4af7-a44d-d4ffc915df8b'),
(579, 554, NULL, 132, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:36:53', NULL, NULL, '4342b7e3-763e-4e07-b587-904e4b3849b7'),
(580, 555, NULL, 133, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:36:53', NULL, NULL, '99fe9488-2661-43a3-a640-8103b8af312f'),
(581, 556, NULL, 134, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 16:36:53', NULL, NULL, '6cd583bc-a229-4d9e-a412-918c9cabf25d'),
(582, 2, NULL, 135, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 17:32:45', '2023-04-24 17:32:45', NULL, NULL, '74e671ba-b232-4a88-a14b-c39c5056a1cb'),
(583, 287, NULL, 136, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 17:32:45', NULL, NULL, '637b42c9-51c7-4072-906f-519a0a735a9e'),
(584, 288, NULL, 137, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 17:32:45', NULL, NULL, '46f5b11f-a846-4098-9e3c-d69741e7b1a6'),
(585, 408, NULL, 138, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 17:32:45', NULL, NULL, '88dd8fbc-215d-4fec-ad58-fe4e0c4d0dce'),
(586, 554, NULL, 139, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:32:45', NULL, NULL, '58c86559-bc5c-432c-86ab-b80ad5356f3f'),
(587, 555, NULL, 140, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:32:45', NULL, NULL, 'e5651fd6-342d-40e8-ab5e-b5458e17093a'),
(588, 556, NULL, 141, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:32:45', NULL, NULL, 'f13d9b87-c8cd-47fd-b4be-f706754899e0'),
(590, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:24', '2023-04-24 17:33:24', NULL, '2023-04-24 17:33:36', '5431dff9-f19f-4967-b19f-ced3f81cd5fb'),
(591, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:24', '2023-04-24 17:33:24', NULL, '2023-04-24 17:33:36', 'cf8ba152-ac84-4554-9ef1-53d81e1b75ca'),
(592, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:24', '2023-04-24 17:33:24', NULL, '2023-04-24 17:33:36', '069ed3de-f976-44fd-8059-c22e9fea2f3e'),
(593, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:36', '2023-04-24 17:33:36', NULL, '2023-04-24 17:33:40', '1792df06-6f72-44cf-bd12-7b9b9afbebdf'),
(594, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:36', '2023-04-24 17:33:36', NULL, '2023-04-24 17:33:40', '61c76b51-8ac4-4421-a421-d1075e3bd93d'),
(595, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:36', '2023-04-24 17:33:36', NULL, '2023-04-24 17:33:40', '710b8d16-bcae-4f9a-91cf-858b7798df36'),
(596, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:40', '2023-04-24 17:33:40', NULL, '2023-04-24 17:33:41', 'b656237a-49b4-4f4b-8f0b-e949cf93cb95'),
(597, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:40', '2023-04-24 17:33:40', NULL, '2023-04-24 17:33:41', '0d0a562c-d8c1-45c0-a5ca-f62b6e61d03f'),
(598, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:40', '2023-04-24 17:33:40', NULL, '2023-04-24 17:33:41', '71bd2d91-91b5-4536-ad56-8012008e9e71'),
(599, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:41', '2023-04-24 17:33:41', NULL, '2023-04-24 17:33:49', 'f576fdfc-82cf-45ee-b1ab-f35bf47da473'),
(600, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:41', '2023-04-24 17:33:41', NULL, '2023-04-24 17:33:49', '96035f49-3ff1-4376-98e9-7125c384375a'),
(601, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:41', '2023-04-24 17:33:41', NULL, '2023-04-24 17:33:49', '58bc40cf-58d0-490e-8b43-b8792238dd7e'),
(602, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:49', '2023-04-24 17:33:49', NULL, '2023-04-24 17:34:04', '148e222e-b83e-4cbb-b7b4-2feee5a74a79'),
(603, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:49', '2023-04-24 17:33:49', NULL, '2023-04-24 17:34:04', '424f1bc1-56ce-4936-89ed-ad12be5054fe'),
(604, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:33:49', '2023-04-24 17:33:49', NULL, '2023-04-24 17:34:04', '5ba820d1-3d9f-4b2c-af38-f826149f0a2f'),
(605, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:04', '2023-04-24 17:34:04', NULL, '2023-04-24 17:34:06', '4c5a2f9e-7387-4cac-922a-007f9300d06e'),
(606, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:04', '2023-04-24 17:34:04', NULL, '2023-04-24 17:34:06', 'dc204953-0c5d-47f5-a8b3-0e9b3dcdb89b'),
(607, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:04', '2023-04-24 17:34:04', NULL, '2023-04-24 17:34:06', '20ba1fbc-78e0-4516-bc48-81392997960a'),
(608, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:06', '2023-04-24 17:34:06', NULL, '2023-04-24 17:34:11', 'fa5da685-49f3-4f38-9fc0-3b90d5584ccf'),
(609, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:06', '2023-04-24 17:34:06', NULL, '2023-04-24 17:34:11', '484ade40-3bd2-49f8-ada5-003f736984ba'),
(610, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:06', '2023-04-24 17:34:06', NULL, '2023-04-24 17:34:11', 'b27c36df-7b97-4bc3-af9f-5bdfeeec29d4'),
(611, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:11', '2023-04-24 17:34:11', NULL, '2023-04-24 17:34:13', '9954b973-4c48-4716-a367-ce9685fceec1'),
(612, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:11', '2023-04-24 17:34:11', NULL, '2023-04-24 17:34:13', '6e8c9468-d497-45f4-b87a-a3c94424c7f4'),
(613, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:11', '2023-04-24 17:34:11', NULL, '2023-04-24 17:34:13', 'd798b823-5145-469e-8be9-f2b297fddeed'),
(614, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:13', '2023-04-24 17:34:13', NULL, '2023-04-24 17:34:17', '5e24396f-6b8e-4346-9304-1c9e26a3d5fc'),
(615, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:13', '2023-04-24 17:34:13', NULL, '2023-04-24 17:34:17', '98f936ab-5c0e-4937-bb19-31ae05987a33'),
(616, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:13', '2023-04-24 17:34:13', NULL, '2023-04-24 17:34:17', '88dff8b6-67b3-45d5-a84f-cd8cb7f59f86'),
(617, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:17', '2023-04-24 17:34:17', NULL, '2023-04-24 17:34:24', '0a68bd79-ee7f-48ea-95d4-91af97e4de93'),
(618, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:17', '2023-04-24 17:34:17', NULL, '2023-04-24 17:34:24', '2c7f328a-23a7-46f2-954e-574218fc415c'),
(619, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:17', '2023-04-24 17:34:17', NULL, '2023-04-24 17:34:24', 'd1276498-6171-4d75-ae66-6314b55d7a71'),
(620, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:24', '2023-04-24 17:34:24', NULL, '2023-04-24 17:34:29', '668a8d61-fa69-4b3a-b409-862d18a0f2b3'),
(621, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:24', '2023-04-24 17:34:24', NULL, '2023-04-24 17:34:29', '9c8b26b5-c724-4a0c-86d7-078fbd0bd515'),
(622, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:24', '2023-04-24 17:34:24', NULL, '2023-04-24 17:34:29', 'df263f79-0524-4fc7-9808-6f62a49592c1'),
(623, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:29', '2023-04-24 17:34:29', NULL, '2023-04-24 17:34:31', 'c2499b32-549f-4c35-9b5e-4be025ad6230'),
(624, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:29', '2023-04-24 17:34:29', NULL, '2023-04-24 17:34:31', '7654e332-323d-4254-8c43-f9dc12c8838a'),
(625, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:29', '2023-04-24 17:34:29', NULL, '2023-04-24 17:34:31', '260d33ec-6521-422b-961a-2474d968f9f8'),
(626, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:31', '2023-04-24 17:34:31', NULL, '2023-04-24 17:34:33', '02c4b837-dcd1-481b-bc64-3294db8e803b'),
(627, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:31', '2023-04-24 17:34:31', NULL, '2023-04-24 17:34:33', '9bd59209-b225-49e3-bb07-59782f84bcdf'),
(628, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:31', '2023-04-24 17:34:31', NULL, '2023-04-24 17:34:33', '8596f716-d07f-41a0-b1f4-aacfcf3d691a'),
(629, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:33', '2023-04-24 17:34:33', NULL, '2023-04-24 17:34:38', 'b650447c-5048-47c5-9cac-244239bbbb3d'),
(630, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:33', '2023-04-24 17:34:33', NULL, '2023-04-24 17:34:38', 'c140e20d-0f0d-460b-97ec-c16cdc82f055'),
(631, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:33', '2023-04-24 17:34:33', NULL, '2023-04-24 17:34:38', '479864fd-1594-441c-a29b-6ba99029a27e'),
(632, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:38', '2023-04-24 17:34:38', NULL, '2023-04-24 17:34:43', '2785943a-887c-487f-ae75-182648204bc4'),
(633, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:38', '2023-04-24 17:34:38', NULL, '2023-04-24 17:34:43', '133abe35-9314-4e35-8004-4765bcbd8375'),
(634, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:38', '2023-04-24 17:34:38', NULL, '2023-04-24 17:34:43', '62f62d39-2a90-49e6-ad37-6189a9e88e55'),
(635, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:43', '2023-04-24 17:34:43', NULL, '2023-04-24 17:34:58', 'cf7c3787-70b6-42b8-8291-38e34f242016'),
(636, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:43', '2023-04-24 17:34:43', NULL, '2023-04-24 17:34:58', '28c692ac-664f-48ed-98f1-2342e46fdc15'),
(637, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:43', '2023-04-24 17:34:43', NULL, '2023-04-24 17:34:58', '047e2d47-0be6-483c-838d-a1e27a47f208'),
(638, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:58', '2023-04-24 17:34:58', NULL, '2023-04-24 17:35:02', 'ec7b403c-0e8c-45f8-b125-b596fd6f89cc'),
(639, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:58', '2023-04-24 17:34:58', NULL, '2023-04-24 17:35:02', '05eadd3d-e698-4eb5-a561-770b928bb355'),
(640, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:34:58', '2023-04-24 17:34:58', NULL, '2023-04-24 17:35:02', '41697bab-7065-4ec0-93f3-791c96d73cb2'),
(641, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:02', '2023-04-24 17:35:02', NULL, '2023-04-24 17:35:04', 'd0ab337d-7c0d-4d3e-9bf5-b30f28d07df6'),
(642, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:02', '2023-04-24 17:35:02', NULL, '2023-04-24 17:35:04', '775fd942-ddc7-4fb4-8bb3-a461f3062ea6'),
(643, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:02', '2023-04-24 17:35:02', NULL, '2023-04-24 17:35:04', 'f3785bdb-c682-42cc-b238-36b554da956f'),
(644, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:04', '2023-04-24 17:35:04', NULL, '2023-04-24 17:35:06', 'b9b9e605-8aae-4fe8-b90c-dd4ba708a0c4'),
(645, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:04', '2023-04-24 17:35:04', NULL, '2023-04-24 17:35:06', 'f1148cb0-c68e-4d2f-a5bd-7585391c5fdf'),
(646, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:04', '2023-04-24 17:35:04', NULL, '2023-04-24 17:35:06', '9ecd58ac-1bef-4287-9f49-e45f5b617ce9'),
(650, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, 'cb3c0cea-e32f-42dd-812b-0e1883927f26'),
(651, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, 'b1f95d12-fb38-4c09-b990-d9bedf2d474e'),
(652, NULL, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, '359f2fee-20a2-4263-b37a-1a353b95e082'),
(653, 2, NULL, 142, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, 'c5f740da-367a-4529-aabc-7da230d5ff93'),
(654, 287, NULL, 143, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 17:35:11', NULL, NULL, 'ff355912-c3cb-41f3-868e-a53f69068dca'),
(655, 288, NULL, 144, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 17:35:11', NULL, NULL, '8046c673-88d6-4945-a2c2-653979ae07f1'),
(656, 408, NULL, 145, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 17:35:11', NULL, NULL, '52392336-fdee-4f85-803d-86039dc5ecb5'),
(657, 554, NULL, 146, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:35:11', NULL, NULL, 'c905f8db-9964-4538-8607-163b342fadaa');
INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(658, 555, NULL, 147, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:35:11', NULL, NULL, 'b469568b-25f8-477a-b70d-7b19c9c1d6cc'),
(659, 556, NULL, 148, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:35:11', NULL, NULL, '3f80e814-dbe8-4f4d-8342-a909eb5505c3'),
(660, 650, NULL, 149, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, '3c964c1b-d706-4f1c-ade7-96d987dc7b23'),
(661, 651, NULL, 150, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, '9812a77c-2ca2-41ac-a9e6-4be935d4c78f'),
(662, 652, NULL, 151, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:35:11', NULL, NULL, 'def87217-9b78-4247-9f1a-c4a7b006d84f'),
(663, 2, NULL, 152, 1, 'craft\\elements\\Entry', 1, 0, '2023-04-24 17:47:04', '2023-04-24 17:47:04', NULL, NULL, 'b217a64c-9619-4d1c-8794-8fd0f06a274d'),
(664, 287, NULL, 153, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:43:34', '2023-04-24 17:47:04', NULL, NULL, 'f138108e-7e9c-4731-930a-facc5bfb2fd8'),
(665, 288, NULL, 154, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 05:44:49', '2023-04-24 17:47:05', NULL, NULL, 'c55560fc-6f42-41ae-851a-5f9c3c43974a'),
(666, 408, NULL, 155, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 06:52:44', '2023-04-24 17:47:05', NULL, NULL, 'd6e746c9-2468-4189-bf3a-62d240fdbd26'),
(667, 554, NULL, 156, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:47:05', NULL, NULL, 'bc6ecee6-6184-4fd0-b3dd-6081ee2cde61'),
(668, 555, NULL, 157, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:47:05', NULL, NULL, '3beb0c3e-2c8c-4f8c-8867-2697d1baeecd'),
(669, 556, NULL, 158, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 16:20:20', '2023-04-24 17:47:05', NULL, NULL, '482604b6-6576-4dfa-b451-b3abfc4d0f61'),
(670, 650, NULL, 159, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:47:05', NULL, NULL, '69046b28-100f-484a-bf73-05c1a218b6a0'),
(671, 651, NULL, 160, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:47:05', NULL, NULL, '4d92dba9-dbb1-43bf-850d-39d0b09e9383'),
(672, 652, NULL, 161, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2023-04-24 17:35:11', '2023-04-24 17:47:05', NULL, NULL, '463d687c-85db-4a91-a3d3-1725edf561c7'),
(674, 7, NULL, 162, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-24 19:02:08', '2023-04-24 19:02:08', NULL, '2023-04-25 05:29:36', '0abb4c7b-a54c-4396-b325-ee108ad84c09'),
(675, 7, NULL, 163, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 03:43:59', '2023-04-25 03:43:59', NULL, '2023-04-25 05:29:36', 'a5ca0175-856f-46a7-8db6-298ba4084d19'),
(676, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 03:44:03', '2023-04-25 03:44:21', NULL, '2023-04-25 05:29:36', '9cd23b14-2a5e-4a2e-b715-178b797569e4'),
(677, 676, NULL, 164, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 03:44:21', '2023-04-25 03:44:21', NULL, '2023-04-25 05:29:36', '2acd0773-7343-4f13-94e3-658d333eced2'),
(678, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:30:24', '2023-04-29 19:41:02', NULL, NULL, '143bff4e-edd3-41c0-8630-51d4e1207e35'),
(679, 678, NULL, 165, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:34:28', '2023-04-25 05:34:28', NULL, NULL, 'a66230e4-2aaf-4711-83ea-87b67d2e2e85'),
(680, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:34:35', '2023-04-25 05:37:27', NULL, NULL, '96228899-c561-4fcb-ae6a-1dbbb68ba33b'),
(681, 680, NULL, 166, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:35:41', '2023-04-25 05:35:41', NULL, NULL, '078d419a-be79-4c2e-b638-6aa779b17216'),
(682, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:35:48', '2023-05-01 03:01:25', NULL, NULL, '1d251b1e-2050-4c27-943b-ce69b72e8990'),
(683, 682, NULL, 167, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:36:38', '2023-04-25 05:36:38', NULL, NULL, '07d05fc5-38b2-4fd8-b5eb-bf308d546f26'),
(685, 682, NULL, 168, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:37:11', '2023-04-25 05:37:11', NULL, NULL, 'da7816f1-314e-46b3-9074-55f8dbd95bd9'),
(687, 680, NULL, 169, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:37:27', '2023-04-25 05:37:27', NULL, NULL, '1f55734a-f578-46d2-a22e-9b167cccff24'),
(689, 678, NULL, 170, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-25 05:37:53', '2023-04-25 05:37:53', NULL, NULL, '354229a3-4ade-484b-9477-0a77e20ffa9a'),
(690, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 09:57:58', '2023-04-25 10:10:42', NULL, NULL, 'ff8ecd87-5b16-4af2-9e27-1a1a9dbb69cf'),
(691, 690, NULL, 171, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 09:57:58', '2023-04-25 09:57:58', NULL, NULL, '7bc5ad5c-43e2-4713-a77d-2aaaad4149a1'),
(692, 690, NULL, 172, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 09:57:58', '2023-04-25 09:57:58', NULL, NULL, '2e103940-5937-4b0f-8fc6-f1bdade45e81'),
(693, 690, NULL, 173, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:01:20', '2023-04-25 10:01:20', NULL, NULL, '7d707c96-fa60-4d50-8664-0b6e74052ffb'),
(694, 690, NULL, 174, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:01:44', '2023-04-25 10:01:45', NULL, NULL, '51101e0d-3096-41f4-ae93-980032c34761'),
(695, 690, NULL, 175, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:01:45', '2023-04-25 10:01:45', NULL, NULL, '6eacc563-a865-439f-b50e-416a6e36b041'),
(696, 690, NULL, 176, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:01:45', '2023-04-25 10:01:45', NULL, NULL, 'c6f9a9d3-4c39-4984-99ee-80e3b6cac50b'),
(698, 690, NULL, 177, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:02:56', '2023-04-25 10:02:56', NULL, NULL, '7274c11f-1c0c-42dd-8da0-1141342ebf18'),
(699, 690, NULL, 178, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:08:01', '2023-04-25 10:08:01', NULL, NULL, 'af0abf27-a0f2-4760-b199-d0154fd25276'),
(701, 690, NULL, 179, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:08:22', '2023-04-25 10:08:22', NULL, NULL, 'c7be3235-fba8-46ff-834b-710ae7c79962'),
(703, 690, NULL, 180, 10, 'craft\\elements\\Entry', 1, 0, '2023-04-25 10:10:42', '2023-04-25 10:10:42', NULL, NULL, 'db37d953-7eca-4463-bade-845f9d840fe4'),
(704, NULL, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 11:48:38', '2023-04-25 13:26:48', NULL, NULL, '458f45bd-8592-44f5-ad9d-4960a73a8711'),
(705, 704, NULL, 181, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 11:48:38', '2023-04-25 11:48:38', NULL, NULL, 'c72bffee-9000-49fe-9b28-61026c8e9056'),
(706, 704, NULL, 182, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 11:48:38', '2023-04-25 11:48:38', NULL, NULL, 'bd959780-586a-488c-a5dc-b25e0c9dc481'),
(707, 704, NULL, 183, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:13:49', '2023-04-25 13:13:49', NULL, NULL, '9c6fdd11-d020-4ac0-9481-330c277e49be'),
(709, 704, NULL, 184, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:15:23', '2023-04-25 13:15:23', NULL, NULL, '41710944-89e0-4fe4-a875-044135a42040'),
(710, 704, NULL, 185, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:18:09', '2023-04-25 13:18:09', NULL, NULL, 'cb9609e7-c2b0-4cc3-b62b-5d4ba3ddca6c'),
(711, 704, NULL, 186, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:18:55', '2023-04-25 13:18:55', NULL, NULL, '3a64bbb7-525d-4a34-9c27-9c7cacb4703d'),
(712, 704, NULL, 187, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:18:55', '2023-04-25 13:18:56', NULL, NULL, '27892ea1-c5c9-47d7-8e54-8bf9aeb24e46'),
(713, 704, NULL, 188, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:23:18', '2023-04-25 13:23:18', NULL, NULL, 'c84ac011-6d6b-443a-b704-823cc4bfff76'),
(714, 704, NULL, 189, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:23:18', '2023-04-25 13:23:18', NULL, NULL, 'f76d8741-2a59-4180-8fcd-7ce7df0c54d7'),
(715, 704, NULL, 190, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:26:23', '2023-04-25 13:26:23', NULL, NULL, 'edc2fb2f-207e-40df-a4c8-52ad852ea4ca'),
(717, 704, NULL, 191, 11, 'craft\\elements\\Entry', 1, 0, '2023-04-25 13:26:48', '2023-04-25 13:26:48', NULL, NULL, '807b9d73-2a99-4d5a-a12f-1a5cd33417f4'),
(718, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 14:06:39', '2023-04-29 19:08:56', NULL, NULL, '1df036b9-9752-4b44-ac73-74278ebd75fb'),
(719, 718, NULL, 192, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 17:48:45', '2023-04-25 17:48:45', NULL, NULL, '11768e95-82fb-4396-a769-e2abc5931e1d'),
(720, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:06:55', '2023-04-29 19:08:39', NULL, NULL, '127c51d5-008e-40d1-b51f-89771b29f50a'),
(721, 720, NULL, 193, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:08:50', '2023-04-25 20:08:50', NULL, NULL, 'dd0379ba-242e-4e96-9a84-98b662e4b4c1'),
(722, NULL, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:08:55', '2023-04-29 19:56:12', NULL, NULL, '48ec6906-57d4-446f-b991-d5dadbc56ac9'),
(723, 722, NULL, 194, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:10:04', '2023-04-25 20:10:04', NULL, NULL, '3c92549d-03b6-4ceb-82b9-73872eb42a96'),
(724, NULL, NULL, NULL, 13, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:52:21', '2023-04-25 20:54:53', NULL, NULL, '87cb27ff-85cc-478f-9df2-42e538b17e9c'),
(725, 724, NULL, 195, 13, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:52:21', '2023-04-25 20:52:21', NULL, NULL, '9a0039ee-b11a-4253-a1fd-2cfa6e3c1851'),
(726, 724, NULL, 196, 13, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:52:21', '2023-04-25 20:52:21', NULL, NULL, 'c03544ed-1c6d-4973-9cd3-d69ff6d3ac76'),
(727, 724, NULL, 197, 13, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:54:05', '2023-04-25 20:54:05', NULL, NULL, '20d3780d-3cd1-4b37-83b7-bf1846930146'),
(729, 724, NULL, 198, 13, 'craft\\elements\\Entry', 1, 0, '2023-04-25 20:54:53', '2023-04-25 20:54:53', NULL, NULL, '8896d266-e10a-40d8-8a73-d2b7e655ad00'),
(730, NULL, NULL, NULL, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:06:39', '2023-04-27 04:27:15', NULL, NULL, 'bdef9c16-e23a-47ef-ac3c-bde92ec101b1'),
(731, 730, NULL, 199, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:06:39', '2023-04-26 20:06:39', NULL, NULL, '3dccc60d-094a-4360-89b1-d8cea3ee395d'),
(732, 730, NULL, 200, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:06:39', '2023-04-26 20:06:39', NULL, NULL, '4fa6c38e-288d-4fad-a7ad-20c6413a12cf'),
(733, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:16:54', '2023-05-01 03:30:31', NULL, NULL, '553ed43f-b864-47a1-8318-725c54c9d51c'),
(734, 733, NULL, 201, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:16:54', '2023-04-26 20:16:54', NULL, NULL, 'd80fd2c5-7c68-4e8a-a685-ad2a200649cf'),
(735, 733, NULL, 202, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:16:54', '2023-04-26 20:16:54', NULL, NULL, '5935dd48-3d0f-4ce6-8179-6a614d9985f1'),
(736, 733, NULL, 203, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:45:47', '2023-04-26 20:45:47', NULL, NULL, 'd07be9bb-006d-4fb2-bdbc-26ac8191704c'),
(737, 733, NULL, 204, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:49:55', '2023-04-26 20:49:55', NULL, NULL, 'db36084e-bf93-498a-9f9e-30cc482df249'),
(739, 733, NULL, 205, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:52:47', '2023-04-26 20:52:47', NULL, NULL, 'dd143361-2a23-4ba5-be72-ed05c36ef2dc'),
(740, 733, NULL, 206, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:55:12', '2023-04-26 20:55:12', NULL, NULL, 'c2bf91b3-3113-404a-942c-908a9e09f04f'),
(741, 733, NULL, 207, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:55:43', '2023-04-26 20:55:43', NULL, NULL, '60e26c9d-001e-4309-b123-5b10919f1003'),
(742, 733, NULL, 208, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:56:11', '2023-04-26 20:56:11', NULL, NULL, 'aa0b5343-44b8-4000-9f3b-405d744f0eaa'),
(743, 733, NULL, 209, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:56:42', '2023-04-26 20:56:42', NULL, NULL, '8a93f569-ebd0-40e3-ac76-3d1939021bdd'),
(744, 733, NULL, 210, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 20:58:22', '2023-04-26 20:58:22', NULL, NULL, '5800aef5-60e9-4bf5-be16-561b2e5589ab'),
(745, 733, NULL, 211, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:03:16', '2023-04-26 21:03:16', NULL, NULL, 'afa299f9-94e8-47be-99d5-e2d7b967ce9c'),
(746, 733, NULL, 212, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:04:19', '2023-04-26 21:04:19', NULL, NULL, 'b60ded95-a361-4cc6-ad39-f61bbcdd1e4e'),
(747, 733, NULL, 213, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:04:19', '2023-04-26 21:04:19', NULL, NULL, '3a3ebaf3-d3ae-4759-be92-e3645d69c6d5'),
(748, 733, NULL, 214, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:04:33', '2023-04-26 21:04:33', NULL, NULL, 'e4bb073d-aa24-42c3-8524-82b1f88ab272'),
(749, 733, NULL, 215, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:09:23', '2023-04-26 21:09:23', NULL, NULL, '887e8ba7-b047-410f-be7a-fbb00f227b96'),
(750, 733, NULL, 216, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-26 21:09:23', '2023-04-26 21:09:23', NULL, NULL, '84f52f7b-480e-4608-842c-1946d4687b7f'),
(752, 733, NULL, 217, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:10:29', '2023-04-27 04:10:29', NULL, NULL, '3cb93aa3-6b97-48c5-9bdb-ee9914018264'),
(753, 730, NULL, 218, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:15:35', '2023-04-27 04:15:35', NULL, NULL, '84dd83ba-eb4d-4843-a872-2f8e0b8a7a7a'),
(755, 730, NULL, 219, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:16:31', '2023-04-27 04:16:31', NULL, NULL, 'a2f9c59f-62b1-406e-854a-0f094e878bed'),
(757, 730, NULL, 220, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:21:54', '2023-04-27 04:21:54', NULL, NULL, '45a75ef0-da57-4791-9648-f06a72955cd8'),
(758, 730, NULL, 221, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:24:17', '2023-04-27 04:24:17', NULL, NULL, 'e87218d5-8986-4756-aba6-ebf0b8e46ec9'),
(759, 730, NULL, 222, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:25:22', '2023-04-27 04:25:22', NULL, NULL, 'e4dee53d-83ab-4a65-8b80-fbc62fe527b4'),
(761, 730, NULL, 223, 14, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:27:15', '2023-04-27 04:27:15', NULL, NULL, '818871e5-1c3b-4102-bc62-7c6a2080e1f5'),
(763, 733, NULL, 224, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-27 04:31:53', '2023-04-27 04:31:53', NULL, NULL, 'ed96cc1f-5bbc-4cd2-8b81-7b721460b8ee'),
(765, 733, NULL, 225, 15, 'craft\\elements\\Entry', 1, 0, '2023-04-27 21:13:24', '2023-04-27 21:13:24', NULL, NULL, '28941dd9-6bae-4a59-80a3-cf3bb90190cd'),
(767, 722, NULL, 226, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:08:23', '2023-04-29 19:08:23', NULL, NULL, '8548411e-b864-47a1-b010-da08e987fd40'),
(769, 720, NULL, 227, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:08:39', '2023-04-29 19:08:39', NULL, NULL, '309e086e-d930-44ba-aa38-5ef221884eac'),
(771, 718, NULL, 228, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:08:56', '2023-04-29 19:08:56', NULL, NULL, '1fb27027-b823-4050-8949-221850fb9c0d'),
(772, 722, NULL, 229, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:12:36', '2023-04-29 19:12:36', NULL, NULL, '7beae22b-11ab-46d1-98e5-8621574ac2c9'),
(774, 678, NULL, 230, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:24:11', '2023-04-29 19:24:11', NULL, NULL, 'dd78473f-408e-4794-b89d-0a6453e0c2b8'),
(776, 678, NULL, 231, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:26:21', '2023-04-29 19:26:21', NULL, NULL, '4ebe238c-6c90-4223-8a97-670283aa3570'),
(778, 678, NULL, 232, 2, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:41:02', '2023-04-29 19:41:02', NULL, NULL, 'b7d20b6e-9d6d-4801-b0ec-47cbf2fa18e1'),
(780, 722, NULL, 233, 12, 'craft\\elements\\Entry', 1, 0, '2023-04-29 19:56:12', '2023-04-29 19:56:12', NULL, NULL, 'c53b0510-c998-46f9-abca-3550d97f69c7'),
(782, 682, NULL, 234, 2, 'craft\\elements\\Entry', 1, 0, '2023-05-01 03:01:25', '2023-05-01 03:01:25', NULL, NULL, 'f0b031ea-6083-4a4a-94fe-acfc188db31a'),
(784, 733, NULL, 235, 15, 'craft\\elements\\Entry', 1, 0, '2023-05-01 03:30:31', '2023-05-01 03:30:31', NULL, NULL, '24e8482c-a465-453b-b0da-c2cb43d86aea'),
(785, NULL, NULL, NULL, NULL, 'hybridinteractive\\contactformextensions\\elements\\Submission', 1, 0, '2023-05-01 03:31:37', '2023-05-01 03:31:37', NULL, '2023-05-01 04:04:50', '07f4d375-fad4-42ed-b809-8f3c0b46b3dd'),
(786, NULL, NULL, NULL, NULL, 'hybridinteractive\\contactformextensions\\elements\\Submission', 1, 0, '2023-05-01 04:00:02', '2023-05-01 04:00:02', NULL, NULL, '27f5ea73-8433-4226-b8a0-d87fb1d3e12b');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2023-03-19 04:02:55', '2023-03-19 04:02:55', 'f906d313-71f1-4d68-9798-88647a22bed8'),
(2, 2, 1, 'home-page', '__home__', 1, '2023-03-19 19:11:29', '2023-03-19 19:11:29', 'a49f27ac-9fb2-4407-a0bb-0835a9ae1c99'),
(3, 3, 1, 'home-page', '__home__', 1, '2023-03-19 19:11:29', '2023-03-19 19:11:29', 'fd37cc1b-867d-4af7-b36d-cb98e75b387c'),
(4, 4, 1, 'home-page', '__home__', 1, '2023-03-19 19:11:29', '2023-03-19 19:11:29', '7201b384-05c6-4feb-ad45-48674b86e982'),
(5, 5, 1, 'home-page', '__home__', 1, '2023-03-19 19:13:52', '2023-03-19 19:13:52', '60ef0b34-3493-4a58-ada0-e371017b4fe4'),
(6, 6, 1, 'home-page', '__home__', 1, '2023-03-19 19:13:52', '2023-03-19 19:13:52', '9550bca7-f836-409c-a46d-b21006114bce'),
(7, 7, 1, 'serice', 'service/serice', 1, '2023-03-19 19:27:48', '2023-03-19 19:28:24', 'ab8786e7-f555-489b-9024-2d388089b1de'),
(8, 8, 1, 'serice', 'service/serice', 1, '2023-03-19 19:29:21', '2023-03-19 19:29:21', '8e5dbace-650c-452f-86bc-c4099126c967'),
(9, 9, 1, 'home-page', '__home__', 1, '2023-03-20 13:33:00', '2023-03-20 13:33:00', '2175661f-b6bf-4d58-8d24-effe9856cb2a'),
(10, 10, 1, NULL, NULL, 1, '2023-03-20 13:37:31', '2023-03-20 13:37:31', 'b75cab6f-bd27-45a4-ae54-0c3f183bd1fa'),
(11, 11, 1, NULL, NULL, 1, '2023-03-20 13:38:02', '2023-03-20 13:38:02', '0bf05dd1-7915-4a01-97f5-28db502a1fa3'),
(27, 27, 1, NULL, NULL, 1, '2023-03-26 19:08:56', '2023-03-26 19:08:56', '67d8b5ed-7c11-4c1d-b6c7-7c4c9c24eeca'),
(28, 28, 1, NULL, NULL, 1, '2023-03-26 19:10:22', '2023-03-26 19:10:22', 'af8245e5-d997-44a5-bb62-a264a9489391'),
(29, 29, 1, NULL, NULL, 1, '2023-03-26 19:10:23', '2023-03-26 19:10:23', '6db086a5-f1b4-4987-945e-318d8111696c'),
(31, 31, 1, NULL, NULL, 1, '2023-04-24 02:31:46', '2023-04-24 02:31:46', '1c7ff3ff-d9b0-45b3-8b51-b43b5ccc4f22'),
(32, 32, 1, NULL, NULL, 1, '2023-04-24 02:31:47', '2023-04-24 02:31:47', '5356aae7-794e-4e9c-85fe-7ce9fd369cb8'),
(33, 33, 1, 'home-page', '__home__', 1, '2023-04-24 02:42:37', '2023-04-24 02:42:37', '1c0a2aaf-fa48-422d-a4e1-ddfe9c836892'),
(34, 34, 1, 'home-page', '__home__', 1, '2023-04-24 02:44:07', '2023-04-24 02:44:07', '293555ed-cf5d-449d-8995-523c711e2de3'),
(36, 36, 1, 'home-page', '__home__', 1, '2023-04-24 02:53:51', '2023-04-24 02:53:51', '7e96bd9c-ae46-42ec-86a4-82af72fe7e0f'),
(38, 38, 1, 'home-page', '__home__', 1, '2023-04-24 02:54:21', '2023-04-24 02:54:21', '102da86f-8b9a-4bb0-be8e-a89f9c396ae3'),
(39, 39, 1, 'home-page', '__home__', 1, '2023-04-24 04:45:23', '2023-04-24 04:45:23', 'fe0dc72c-a291-46ab-8541-942be004b971'),
(41, 41, 1, NULL, NULL, 1, '2023-04-24 04:59:23', '2023-04-24 04:59:23', '661627a0-755f-4431-b240-e53a162d19e8'),
(42, 42, 1, NULL, NULL, 1, '2023-04-24 04:59:23', '2023-04-24 04:59:23', '591495ab-72b6-4b72-985b-f51b749da68d'),
(43, 43, 1, NULL, NULL, 1, '2023-04-24 04:59:26', '2023-04-24 04:59:26', '28c2a926-594c-41d0-b780-4a5aee50cb08'),
(44, 44, 1, NULL, NULL, 1, '2023-04-24 04:59:26', '2023-04-24 04:59:26', '1f04d8ee-6fdc-4747-8332-dab93ba26b10'),
(45, 45, 1, NULL, NULL, 1, '2023-04-24 04:59:29', '2023-04-24 04:59:29', '5ac8e084-7978-4b9d-b64e-3c3da83e88de'),
(46, 46, 1, NULL, NULL, 1, '2023-04-24 04:59:29', '2023-04-24 04:59:29', '4807ee52-8341-4ff3-838b-397ca23d84ab'),
(47, 47, 1, NULL, NULL, 1, '2023-04-24 04:59:31', '2023-04-24 04:59:31', '1ae7251c-0ca5-46e6-92d2-0d31c46a4d3b'),
(48, 48, 1, NULL, NULL, 1, '2023-04-24 04:59:31', '2023-04-24 04:59:31', '86799cb2-6ffd-481c-b50c-c662f27cb8f0'),
(49, 49, 1, NULL, NULL, 1, '2023-04-24 04:59:51', '2023-04-24 04:59:51', '2abb572f-5643-4354-984a-1093a866f619'),
(50, 50, 1, NULL, NULL, 1, '2023-04-24 04:59:51', '2023-04-24 04:59:51', '1b6a8729-bfde-4aed-82e7-e30660d76b81'),
(51, 51, 1, NULL, NULL, 1, '2023-04-24 04:59:52', '2023-04-24 04:59:52', '6b4b5bf9-467a-4c32-909c-8676f5f0fc27'),
(52, 52, 1, NULL, NULL, 1, '2023-04-24 04:59:53', '2023-04-24 04:59:53', '22a78731-149d-4087-8d2d-b2769c6b0051'),
(53, 53, 1, NULL, NULL, 1, '2023-04-24 04:59:54', '2023-04-24 04:59:54', '13ee0d68-7e73-40f8-87e6-c229c563f8d6'),
(54, 54, 1, NULL, NULL, 1, '2023-04-24 04:59:55', '2023-04-24 04:59:55', 'ea86d09c-3e5b-4729-9316-a1f9e8ae99dc'),
(55, 55, 1, NULL, NULL, 1, '2023-04-24 04:59:56', '2023-04-24 04:59:56', 'ebee9bc4-ebe6-4c0c-b70b-c4113da4ffaf'),
(56, 56, 1, NULL, NULL, 1, '2023-04-24 04:59:56', '2023-04-24 04:59:56', '043ab289-bf8f-4680-8183-8ca23d8ce937'),
(57, 57, 1, NULL, NULL, 1, '2023-04-24 05:00:05', '2023-04-24 05:00:05', '40a72aec-43d7-4339-99af-ca66df43b769'),
(58, 58, 1, NULL, NULL, 1, '2023-04-24 05:00:05', '2023-04-24 05:00:05', '30c51292-5964-42c7-af8c-7101f9f664d3'),
(59, 59, 1, NULL, NULL, 1, '2023-04-24 05:00:08', '2023-04-24 05:00:08', '1b0ca15d-1e5a-4382-b353-1cca024a8948'),
(60, 60, 1, NULL, NULL, 1, '2023-04-24 05:00:08', '2023-04-24 05:00:08', '7f0a62b9-9625-41d9-98f8-7163d00489a2'),
(61, 61, 1, NULL, NULL, 1, '2023-04-24 05:00:10', '2023-04-24 05:00:10', '67c975d6-5eba-4837-83f1-441dfd4ccf6c'),
(62, 62, 1, NULL, NULL, 1, '2023-04-24 05:00:10', '2023-04-24 05:00:10', '39a2c932-9f68-402e-b5fe-dc90de99c407'),
(63, 63, 1, NULL, NULL, 1, '2023-04-24 05:00:40', '2023-04-24 05:00:40', '2e6f1b5e-9ec7-44df-8f08-d2cbcddc6097'),
(64, 64, 1, NULL, NULL, 1, '2023-04-24 05:00:40', '2023-04-24 05:00:40', '7e8234e1-aae8-416c-a47e-2d311d01fa60'),
(65, 65, 1, NULL, NULL, 1, '2023-04-24 05:00:46', '2023-04-24 05:00:46', '7959cec1-ce49-4761-ab33-2dba41025cc4'),
(66, 66, 1, NULL, NULL, 1, '2023-04-24 05:00:46', '2023-04-24 05:00:46', 'f1e129d4-a3bd-44c4-a57f-d57fb4c13fec'),
(67, 67, 1, NULL, NULL, 1, '2023-04-24 05:00:47', '2023-04-24 05:00:47', '7932671e-7e40-41f0-a782-a7520b805a70'),
(68, 68, 1, NULL, NULL, 1, '2023-04-24 05:00:47', '2023-04-24 05:00:47', 'f1a1db1e-d25f-4c20-b772-9429ded74b27'),
(69, 69, 1, NULL, NULL, 1, '2023-04-24 05:00:49', '2023-04-24 05:00:49', 'f5870fba-33d0-4c10-bbe0-de158a5ffe2d'),
(70, 70, 1, NULL, NULL, 1, '2023-04-24 05:00:49', '2023-04-24 05:00:49', 'e2fe84aa-8c01-403c-8bf5-a020bc7ddb65'),
(71, 71, 1, NULL, NULL, 1, '2023-04-24 05:00:50', '2023-04-24 05:00:50', 'f7b44ec6-2465-4b2e-80b5-5714e7ea8dfd'),
(72, 72, 1, NULL, NULL, 1, '2023-04-24 05:00:50', '2023-04-24 05:00:50', 'ac2f9e7c-0c63-4eeb-b2a9-18c34571ba8f'),
(73, 73, 1, NULL, NULL, 1, '2023-04-24 05:00:51', '2023-04-24 05:00:51', 'd1fdd237-2ee1-4f30-b102-f6c391dbaa07'),
(74, 74, 1, NULL, NULL, 1, '2023-04-24 05:00:51', '2023-04-24 05:00:51', '8fcfb792-88e6-447c-9720-6bbf122ea0a3'),
(75, 75, 1, NULL, NULL, 1, '2023-04-24 05:00:52', '2023-04-24 05:00:52', 'e5aa0718-0a1b-47ce-b10e-5ab6398391df'),
(76, 76, 1, NULL, NULL, 1, '2023-04-24 05:00:52', '2023-04-24 05:00:52', '88af0dff-09a1-40be-a2f6-8c998b8e4989'),
(77, 77, 1, NULL, NULL, 1, '2023-04-24 05:00:54', '2023-04-24 05:00:54', 'b2871160-5665-4580-8165-87f8b1f8a3a4'),
(78, 78, 1, NULL, NULL, 1, '2023-04-24 05:00:54', '2023-04-24 05:00:54', '12684899-b968-45bf-a5e4-3ccbbbe1e6d7'),
(79, 79, 1, NULL, NULL, 1, '2023-04-24 05:00:55', '2023-04-24 05:00:55', 'f42e1f19-dc09-458e-9708-f6b31b4a4bb7'),
(80, 80, 1, NULL, NULL, 1, '2023-04-24 05:00:55', '2023-04-24 05:00:55', '6926056c-964f-4647-9a59-e3ac0db78397'),
(81, 81, 1, NULL, NULL, 1, '2023-04-24 05:00:58', '2023-04-24 05:00:58', '71488be0-82e9-4d67-b5a1-1bcb4a070d2d'),
(82, 82, 1, NULL, NULL, 1, '2023-04-24 05:00:58', '2023-04-24 05:00:58', 'f0ebb305-1791-4af1-961e-81c57b584288'),
(83, 83, 1, NULL, NULL, 1, '2023-04-24 05:01:00', '2023-04-24 05:01:00', '32fe2062-8e6f-455c-be48-257830a56803'),
(84, 84, 1, NULL, NULL, 1, '2023-04-24 05:01:00', '2023-04-24 05:01:00', '8b953bea-6ca9-4b4a-ad4a-bc04de24abc4'),
(85, 85, 1, NULL, NULL, 1, '2023-04-24 05:01:01', '2023-04-24 05:01:01', '34842797-9962-4682-8095-1f317d7157bd'),
(86, 86, 1, NULL, NULL, 1, '2023-04-24 05:01:01', '2023-04-24 05:01:01', '03e7110a-c3e0-4ee5-a449-b71613d6aebf'),
(87, 87, 1, NULL, NULL, 1, '2023-04-24 05:01:03', '2023-04-24 05:01:03', '199f11c8-1099-438c-9ab1-f1d9bd5cf696'),
(88, 88, 1, NULL, NULL, 1, '2023-04-24 05:01:03', '2023-04-24 05:01:03', 'ad3c0988-c13e-4716-8455-5dba31a71f92'),
(89, 89, 1, NULL, NULL, 1, '2023-04-24 05:01:23', '2023-04-24 05:01:23', '614702c0-a4e2-4af5-b5f9-0acffdf6632b'),
(90, 90, 1, NULL, NULL, 1, '2023-04-24 05:01:23', '2023-04-24 05:01:23', '377b98e1-bb0e-410f-b214-7b02981871df'),
(91, 91, 1, NULL, NULL, 1, '2023-04-24 05:01:25', '2023-04-24 05:01:25', '92e2c1ce-af28-447b-8c33-ef1bf371b8db'),
(92, 92, 1, NULL, NULL, 1, '2023-04-24 05:01:25', '2023-04-24 05:01:25', '5d56e351-92c8-4e70-a958-d3e4009b3897'),
(93, 93, 1, NULL, NULL, 1, '2023-04-24 05:01:27', '2023-04-24 05:01:27', 'e7c8746b-7627-4db4-82cb-a1ce6222c90c'),
(94, 94, 1, NULL, NULL, 1, '2023-04-24 05:01:27', '2023-04-24 05:01:27', '9699a2fb-23b1-47db-88fc-76786bd080b1'),
(95, 95, 1, NULL, NULL, 1, '2023-04-24 05:01:30', '2023-04-24 05:01:30', '21781a10-d977-4468-b7c0-c2676c199676'),
(96, 96, 1, NULL, NULL, 1, '2023-04-24 05:01:30', '2023-04-24 05:01:30', '9afb5bf0-2853-4cd1-a8de-8aa587f4deff'),
(97, 97, 1, NULL, NULL, 1, '2023-04-24 05:01:31', '2023-04-24 05:01:31', '011f98e5-5053-4f6f-951f-6860dde70e93'),
(98, 98, 1, NULL, NULL, 1, '2023-04-24 05:01:31', '2023-04-24 05:01:31', 'b6da4bac-0ea2-4876-aba8-f3d9730cf57d'),
(99, 99, 1, NULL, NULL, 1, '2023-04-24 05:01:45', '2023-04-24 05:01:45', '3cd54c88-bc1b-4d4e-9010-121be7662e56'),
(100, 100, 1, NULL, NULL, 1, '2023-04-24 05:01:45', '2023-04-24 05:01:45', '12536620-cd10-4323-ae2c-7245ba718b2b'),
(101, 101, 1, NULL, NULL, 1, '2023-04-24 05:01:46', '2023-04-24 05:01:46', '2480373a-ab98-47a1-a6b1-f307525dbed3'),
(102, 102, 1, NULL, NULL, 1, '2023-04-24 05:01:46', '2023-04-24 05:01:46', 'fe23b991-f4be-4cd3-8be7-2016ccd482a1'),
(103, 103, 1, NULL, NULL, 1, '2023-04-24 05:01:50', '2023-04-24 05:01:50', 'e8e1083d-7759-48c3-9a4e-908bc12ccbe5'),
(104, 104, 1, NULL, NULL, 1, '2023-04-24 05:01:50', '2023-04-24 05:01:50', 'd8eb5dff-e5d7-4b17-bc58-42bb3c249f47'),
(105, 105, 1, NULL, NULL, 1, '2023-04-24 05:02:01', '2023-04-24 05:02:01', '1f44443b-20a5-4bff-88fc-fc2f361bfdcd'),
(106, 106, 1, NULL, NULL, 1, '2023-04-24 05:02:01', '2023-04-24 05:02:01', 'ced7169e-d39c-445e-812a-e806b7f35352'),
(107, 107, 1, NULL, NULL, 1, '2023-04-24 05:02:02', '2023-04-24 05:02:02', '3fd2c5f6-20f4-4ccc-bdc2-249f94bca467'),
(108, 108, 1, NULL, NULL, 1, '2023-04-24 05:02:02', '2023-04-24 05:02:02', '7b4ba05c-272e-4b6c-aada-61f288510570'),
(109, 109, 1, NULL, NULL, 1, '2023-04-24 05:02:04', '2023-04-24 05:02:04', '95146dc8-aee2-4e91-9dd0-9f53e7d13f02'),
(110, 110, 1, NULL, NULL, 1, '2023-04-24 05:02:04', '2023-04-24 05:02:04', 'a76a3a9e-8863-4b04-a07d-407a0c1926e8'),
(111, 111, 1, NULL, NULL, 1, '2023-04-24 05:02:05', '2023-04-24 05:02:05', '2200714d-908c-4c0f-a1a8-9ec6b380162f'),
(112, 112, 1, NULL, NULL, 1, '2023-04-24 05:02:05', '2023-04-24 05:02:05', 'a053dca5-2f52-481d-973f-df63bb700538'),
(113, 113, 1, NULL, NULL, 1, '2023-04-24 05:02:07', '2023-04-24 05:02:07', '3163f74f-c1b3-4321-9a26-f02f0aebda67'),
(114, 114, 1, NULL, NULL, 1, '2023-04-24 05:02:07', '2023-04-24 05:02:07', 'e1a9a960-cafd-46bd-9512-97d7ceb2ff2a'),
(115, 115, 1, NULL, NULL, 1, '2023-04-24 05:02:09', '2023-04-24 05:02:09', 'bcc90b03-c2c7-4efe-8af1-7e71b45853d7'),
(116, 116, 1, NULL, NULL, 1, '2023-04-24 05:02:09', '2023-04-24 05:02:09', '3dea822c-d331-42c5-8de6-bc68482e484f'),
(117, 117, 1, NULL, NULL, 1, '2023-04-24 05:02:10', '2023-04-24 05:02:10', '04d52054-0b6e-4d01-bec9-29ce073c5bf5'),
(118, 118, 1, NULL, NULL, 1, '2023-04-24 05:02:10', '2023-04-24 05:02:10', 'c5fac345-2896-4163-b0ba-c183b952b617'),
(119, 119, 1, NULL, NULL, 1, '2023-04-24 05:02:12', '2023-04-24 05:02:12', '6f8c41e5-9917-4c61-bee4-e2bebe1912b6'),
(120, 120, 1, NULL, NULL, 1, '2023-04-24 05:02:12', '2023-04-24 05:02:12', '0712c3ab-cdeb-4f0c-b210-08c664df0d45'),
(121, 121, 1, NULL, NULL, 1, '2023-04-24 05:02:13', '2023-04-24 05:02:13', '088ad633-9d6e-4d48-8476-0671dbdfe288'),
(122, 122, 1, NULL, NULL, 1, '2023-04-24 05:02:13', '2023-04-24 05:02:13', '34c5ac66-f470-4bba-9472-2c87772b3181'),
(123, 123, 1, NULL, NULL, 1, '2023-04-24 05:02:15', '2023-04-24 05:02:15', '43dfd5fe-b0cf-4cf4-a5c6-5bd145d1673c'),
(124, 124, 1, NULL, NULL, 1, '2023-04-24 05:02:15', '2023-04-24 05:02:15', '27534716-59a2-4fe4-9741-b6c89449ce55'),
(125, 125, 1, NULL, NULL, 1, '2023-04-24 05:02:17', '2023-04-24 05:02:17', 'd41267d2-c4a0-427b-a65b-76582b986d64'),
(126, 126, 1, NULL, NULL, 1, '2023-04-24 05:02:17', '2023-04-24 05:02:17', '5f2fa0d7-d965-4995-9b7b-c4c6061db3e7'),
(127, 127, 1, NULL, NULL, 1, '2023-04-24 05:02:18', '2023-04-24 05:02:18', 'a70b39d5-f609-4ff7-924b-652d346f19e2'),
(128, 128, 1, NULL, NULL, 1, '2023-04-24 05:02:18', '2023-04-24 05:02:18', '079e18d6-7988-49a0-ad98-550b8e06d8b8'),
(129, 129, 1, NULL, NULL, 1, '2023-04-24 05:02:20', '2023-04-24 05:02:20', 'f63718ba-90a4-4f4b-b980-e4cd40d0b01c'),
(130, 130, 1, NULL, NULL, 1, '2023-04-24 05:02:20', '2023-04-24 05:02:20', 'f01280f2-b3c4-4304-bf04-01ecf54748f8'),
(131, 131, 1, NULL, NULL, 1, '2023-04-24 05:02:21', '2023-04-24 05:02:21', 'e2769bd2-5d58-4061-be41-dbe3dd1b8e6f'),
(132, 132, 1, NULL, NULL, 1, '2023-04-24 05:02:21', '2023-04-24 05:02:21', '90842610-c11f-4a46-b138-1314fbb2a2ff'),
(133, 133, 1, NULL, NULL, 1, '2023-04-24 05:02:22', '2023-04-24 05:02:22', '7703d0f8-e5fa-4f61-9b26-8290bb63808c'),
(134, 134, 1, NULL, NULL, 1, '2023-04-24 05:02:22', '2023-04-24 05:02:22', '58a5838f-51a4-487e-8c04-354a6b3b06e3'),
(135, 135, 1, NULL, NULL, 1, '2023-04-24 05:02:25', '2023-04-24 05:02:25', 'a90d6aa8-2c5b-40f1-8c21-17076ba7e115'),
(136, 136, 1, NULL, NULL, 1, '2023-04-24 05:02:25', '2023-04-24 05:02:25', 'dc7389d9-d7d8-4cd3-9a96-1e186e19dc5c'),
(137, 137, 1, NULL, NULL, 1, '2023-04-24 05:02:27', '2023-04-24 05:02:27', '0cd774d4-69c1-45aa-a32a-5dab7e6de8c1'),
(138, 138, 1, NULL, NULL, 1, '2023-04-24 05:02:27', '2023-04-24 05:02:27', '74e0bc7e-66de-449a-8d6a-95090408382f'),
(139, 139, 1, NULL, NULL, 1, '2023-04-24 05:02:28', '2023-04-24 05:02:28', '0118e655-7996-4fb1-a077-82a9f77e68c6'),
(140, 140, 1, NULL, NULL, 1, '2023-04-24 05:02:28', '2023-04-24 05:02:28', '67fa3344-a15f-4788-ad8d-e77b34c2db82'),
(141, 141, 1, NULL, NULL, 1, '2023-04-24 05:02:30', '2023-04-24 05:02:30', 'da2711fd-ffb9-4feb-a622-4dd22e89f520'),
(142, 142, 1, NULL, NULL, 1, '2023-04-24 05:02:30', '2023-04-24 05:02:30', '2bb7277b-6fe0-4a1e-97a4-aceb07c3adc8'),
(143, 143, 1, NULL, NULL, 1, '2023-04-24 05:02:31', '2023-04-24 05:02:31', 'b2100df5-e079-4500-8064-d45ef34986dc'),
(144, 144, 1, NULL, NULL, 1, '2023-04-24 05:02:31', '2023-04-24 05:02:31', 'cc5599aa-b029-4fb5-9fd5-9bcf2a620934'),
(145, 145, 1, NULL, NULL, 1, '2023-04-24 05:02:39', '2023-04-24 05:02:39', 'c4e5bea8-173a-479c-a4be-c60f79254541'),
(146, 146, 1, NULL, NULL, 1, '2023-04-24 05:02:39', '2023-04-24 05:02:39', '44dd858b-3f61-49cf-8919-f9a5abf98a9a'),
(147, 147, 1, NULL, NULL, 1, '2023-04-24 05:02:40', '2023-04-24 05:02:40', '5747ead9-4303-4ff0-9c75-687968eaef81'),
(148, 148, 1, NULL, NULL, 1, '2023-04-24 05:02:40', '2023-04-24 05:02:40', 'a537d766-bff4-4138-853b-dd4291a5c703'),
(149, 149, 1, NULL, NULL, 1, '2023-04-24 05:02:42', '2023-04-24 05:02:42', '9d60b91b-24cd-4cf4-879e-a1c89503f940'),
(150, 150, 1, NULL, NULL, 1, '2023-04-24 05:02:42', '2023-04-24 05:02:42', '545e8bfc-2904-4899-b003-18067db40bb9'),
(151, 151, 1, NULL, NULL, 1, '2023-04-24 05:02:43', '2023-04-24 05:02:43', '73673b8d-a970-49c9-9fec-3a0f9b3acec9'),
(152, 152, 1, NULL, NULL, 1, '2023-04-24 05:02:43', '2023-04-24 05:02:43', '543f1da9-afc3-4c32-b2cb-1ca141e1c3e6'),
(153, 153, 1, NULL, NULL, 1, '2023-04-24 05:02:44', '2023-04-24 05:02:44', '8f8b69ae-5a1c-4490-a9a7-d44c46e4ad6a'),
(154, 154, 1, NULL, NULL, 1, '2023-04-24 05:02:44', '2023-04-24 05:02:44', '260861df-c91b-4f5d-a8d8-9d522d6e2785'),
(155, 155, 1, NULL, NULL, 1, '2023-04-24 05:02:46', '2023-04-24 05:02:46', '3dd1ac38-59dd-4ba7-9811-93e9ef7b3577'),
(156, 156, 1, NULL, NULL, 1, '2023-04-24 05:02:46', '2023-04-24 05:02:46', '0fe0f220-8afa-4730-865d-81fdfa2025c5'),
(157, 157, 1, NULL, NULL, 1, '2023-04-24 05:02:48', '2023-04-24 05:02:48', 'b8e07b1f-29d5-4b0f-843d-884de764f35c'),
(158, 158, 1, NULL, NULL, 1, '2023-04-24 05:02:48', '2023-04-24 05:02:48', 'f5779c60-9e15-4c23-adc9-649608012384'),
(159, 159, 1, NULL, NULL, 1, '2023-04-24 05:02:50', '2023-04-24 05:02:50', 'eee2f33e-c90a-41db-8c94-058773800c72'),
(160, 160, 1, NULL, NULL, 1, '2023-04-24 05:02:50', '2023-04-24 05:02:50', '2a2708c0-5f99-4509-be73-01f4218ad369'),
(161, 161, 1, NULL, NULL, 1, '2023-04-24 05:03:00', '2023-04-24 05:03:00', '75cf1b1b-203b-4218-ad28-407a2f657ad1'),
(162, 162, 1, NULL, NULL, 1, '2023-04-24 05:03:00', '2023-04-24 05:03:00', '8b3ca81c-3b6b-4a8e-bc05-5de61ff6b79b'),
(163, 163, 1, NULL, NULL, 1, '2023-04-24 05:03:04', '2023-04-24 05:03:04', '6a95594e-32aa-4e9b-a6bf-c603dd81d889'),
(164, 164, 1, NULL, NULL, 1, '2023-04-24 05:03:04', '2023-04-24 05:03:04', 'c447ba63-ac3f-445c-8dc0-10cd2e036928'),
(165, 165, 1, NULL, NULL, 1, '2023-04-24 05:03:08', '2023-04-24 05:03:08', '0759a881-b688-41c2-b107-01166da1a1ee'),
(166, 166, 1, NULL, NULL, 1, '2023-04-24 05:03:08', '2023-04-24 05:03:08', 'c5b7d7b6-1780-4352-b4a0-c7ba174833ed'),
(167, 167, 1, NULL, NULL, 1, '2023-04-24 05:03:10', '2023-04-24 05:03:10', 'bd6e7bd2-2590-42cb-b9bd-475abdbd5f63'),
(168, 168, 1, NULL, NULL, 1, '2023-04-24 05:03:10', '2023-04-24 05:03:10', 'a21680b6-b711-457a-85ae-57d83c2b005c'),
(169, 169, 1, NULL, NULL, 1, '2023-04-24 05:03:11', '2023-04-24 05:03:11', 'dc534189-1ae6-4e86-9443-3be0375001ec'),
(170, 170, 1, NULL, NULL, 1, '2023-04-24 05:03:11', '2023-04-24 05:03:11', '376988b7-5047-4935-b3eb-1d82d2ff08a9'),
(171, 171, 1, NULL, NULL, 1, '2023-04-24 05:03:14', '2023-04-24 05:03:14', '13ad572a-c69d-4d8a-9fa6-8ce30146a3ba'),
(172, 172, 1, NULL, NULL, 1, '2023-04-24 05:03:14', '2023-04-24 05:03:14', '4e781d27-8be3-498d-a41a-26350a187ee2'),
(173, 173, 1, NULL, NULL, 1, '2023-04-24 05:03:16', '2023-04-24 05:03:16', 'ae773da4-04f6-4eab-bb68-f4b05d9560eb'),
(174, 174, 1, NULL, NULL, 1, '2023-04-24 05:03:16', '2023-04-24 05:03:16', '5014b32b-7667-4cf1-95ed-8b58d45d7fa0'),
(175, 175, 1, NULL, NULL, 1, '2023-04-24 05:03:21', '2023-04-24 05:03:21', 'd7587c12-40e3-47db-8ded-d7cd9d4a3958'),
(176, 176, 1, NULL, NULL, 1, '2023-04-24 05:03:21', '2023-04-24 05:03:21', '5e7f92a8-f7a3-4d39-aabe-a81b23266609'),
(177, 177, 1, NULL, NULL, 1, '2023-04-24 05:03:54', '2023-04-24 05:03:54', '86e9d9c0-70a7-498b-bdf0-edb17426f037'),
(178, 178, 1, NULL, NULL, 1, '2023-04-24 05:03:54', '2023-04-24 05:03:54', '91647ca5-dd45-40f9-9c1c-1439191cac31'),
(179, 179, 1, NULL, NULL, 1, '2023-04-24 05:03:55', '2023-04-24 05:03:55', '74dcb53a-77a7-4737-ad81-a8fa93633023'),
(180, 180, 1, NULL, NULL, 1, '2023-04-24 05:03:55', '2023-04-24 05:03:55', '3a378009-b6c9-4e8d-bed9-3ff546f9ed1f'),
(181, 181, 1, NULL, NULL, 1, '2023-04-24 05:03:56', '2023-04-24 05:03:56', 'c70a52f9-9cc5-4685-ae4d-6fdcafe44bf6'),
(182, 182, 1, NULL, NULL, 1, '2023-04-24 05:03:56', '2023-04-24 05:03:56', '383d8359-0999-4bd9-9d18-4e875afe0622'),
(183, 183, 1, NULL, NULL, 1, '2023-04-24 05:04:04', '2023-04-24 05:04:04', 'ebe08baa-cd60-48f0-a976-da2cfd873d83'),
(184, 184, 1, NULL, NULL, 1, '2023-04-24 05:04:04', '2023-04-24 05:04:04', '8a6443f8-44f0-471f-a380-01946f048114'),
(185, 185, 1, NULL, NULL, 1, '2023-04-24 05:04:06', '2023-04-24 05:04:06', 'bf491b92-5021-475c-a8ac-20d4583398eb'),
(186, 186, 1, NULL, NULL, 1, '2023-04-24 05:04:06', '2023-04-24 05:04:06', '22facf88-a735-4760-896a-ac782af56124'),
(187, 187, 1, NULL, NULL, 1, '2023-04-24 05:04:08', '2023-04-24 05:04:08', '053e8b86-c44c-41ac-9370-db2463da6750'),
(188, 188, 1, NULL, NULL, 1, '2023-04-24 05:04:08', '2023-04-24 05:04:08', 'd9cee6d8-9b4c-42d7-b27c-481fc6eaf255'),
(189, 189, 1, NULL, NULL, 1, '2023-04-24 05:04:10', '2023-04-24 05:04:10', 'dd25fd50-9f7f-47eb-80da-a327be553369'),
(190, 190, 1, NULL, NULL, 1, '2023-04-24 05:04:10', '2023-04-24 05:04:10', '381ca78a-c9f7-42d8-abc8-ee99c4ca7cc5'),
(191, 191, 1, NULL, NULL, 1, '2023-04-24 05:04:16', '2023-04-24 05:04:16', 'fa23512f-b1b2-48ad-8666-637aed299a89'),
(192, 192, 1, NULL, NULL, 1, '2023-04-24 05:04:16', '2023-04-24 05:04:16', '54b14d9d-27c7-4124-a71d-66d507b154f7'),
(193, 193, 1, NULL, NULL, 1, '2023-04-24 05:04:17', '2023-04-24 05:04:17', 'b0a1a00c-5242-42be-ba06-b62b8a969961'),
(194, 194, 1, NULL, NULL, 1, '2023-04-24 05:04:17', '2023-04-24 05:04:17', '6ea27327-40c4-4c48-82a1-b7fdfee5343c'),
(195, 195, 1, NULL, NULL, 1, '2023-04-24 05:04:18', '2023-04-24 05:04:18', 'b46438b8-8b2d-47e8-87c4-e24d708ae2a8'),
(196, 196, 1, NULL, NULL, 1, '2023-04-24 05:04:18', '2023-04-24 05:04:18', 'dbaa2916-0493-460a-8225-6a81ed365946'),
(197, 197, 1, NULL, NULL, 1, '2023-04-24 05:04:19', '2023-04-24 05:04:19', '2a4de46a-334a-4c19-bd57-562ba5862775'),
(198, 198, 1, NULL, NULL, 1, '2023-04-24 05:04:19', '2023-04-24 05:04:19', '20bd4682-ae43-4a67-b6a4-fb672c96a436'),
(199, 199, 1, NULL, NULL, 1, '2023-04-24 05:04:21', '2023-04-24 05:04:21', 'cec79aa2-9452-45d8-a76c-67fbc89aa5c8'),
(200, 200, 1, NULL, NULL, 1, '2023-04-24 05:04:21', '2023-04-24 05:04:21', '26325142-4dcd-44fa-8af4-0fcdcd124821'),
(201, 201, 1, NULL, NULL, 1, '2023-04-24 05:04:22', '2023-04-24 05:04:22', '11026b49-3cd9-4def-8b0f-a7d9aba2d7c8'),
(202, 202, 1, NULL, NULL, 1, '2023-04-24 05:04:22', '2023-04-24 05:04:22', 'dc87c5c2-cff6-459d-93f6-aa0975c5572a'),
(203, 203, 1, NULL, NULL, 1, '2023-04-24 05:04:23', '2023-04-24 05:04:23', 'bc5bd84f-acf5-46bd-ae47-3ae041ecdd02'),
(204, 204, 1, NULL, NULL, 1, '2023-04-24 05:04:23', '2023-04-24 05:04:23', '67da837d-f8cf-48a7-967a-42160009f830'),
(205, 205, 1, NULL, NULL, 1, '2023-04-24 05:04:36', '2023-04-24 05:04:36', 'd26a7a2b-876e-48a4-ba89-31aa31695d31'),
(206, 206, 1, NULL, NULL, 1, '2023-04-24 05:04:36', '2023-04-24 05:04:36', 'fc2459df-5116-4c59-87b5-bad086a1c0e7'),
(207, 207, 1, NULL, NULL, 1, '2023-04-24 05:04:36', '2023-04-24 05:04:36', '7e519d20-1e11-4a19-8e2d-b555fa84903a'),
(208, 208, 1, NULL, NULL, 1, '2023-04-24 05:04:37', '2023-04-24 05:04:37', '663b21aa-5fd5-40d2-9841-e4c72eee5510'),
(209, 209, 1, NULL, NULL, 1, '2023-04-24 05:05:21', '2023-04-24 05:05:21', '3ff9963b-c670-4e76-8b61-dc66a537284f'),
(210, 210, 1, NULL, NULL, 1, '2023-04-24 05:05:21', '2023-04-24 05:05:21', '933d5c4e-0018-4712-9b23-62310b284a00'),
(211, 211, 1, NULL, NULL, 1, '2023-04-24 05:05:22', '2023-04-24 05:05:22', 'f0756073-60c3-4ec8-8b75-7488e978205e'),
(212, 212, 1, NULL, NULL, 1, '2023-04-24 05:05:22', '2023-04-24 05:05:22', 'a29a9ec0-73fe-42c7-9f9a-9823520bfb59'),
(213, 213, 1, NULL, NULL, 1, '2023-04-24 05:05:24', '2023-04-24 05:05:24', '221d49bd-d3d8-4230-844c-e409e68a347b'),
(214, 214, 1, NULL, NULL, 1, '2023-04-24 05:05:24', '2023-04-24 05:05:24', '9bd1c96b-9650-44da-b351-b3516bdb1f97'),
(215, 215, 1, NULL, NULL, 1, '2023-04-24 05:05:25', '2023-04-24 05:05:25', 'a5b25af9-46c7-4915-90b7-463d1d7d5f41'),
(216, 216, 1, NULL, NULL, 1, '2023-04-24 05:05:25', '2023-04-24 05:05:25', '9bebc565-ad31-4b13-871a-87950191e800'),
(217, 217, 1, NULL, NULL, 1, '2023-04-24 05:05:26', '2023-04-24 05:05:26', '34e493d4-b11e-43f2-a1f5-67544a67e853'),
(218, 218, 1, NULL, NULL, 1, '2023-04-24 05:05:26', '2023-04-24 05:05:26', 'e1dd7e2b-61ea-4852-9c58-f2f4bb310b52'),
(219, 219, 1, NULL, NULL, 1, '2023-04-24 05:05:31', '2023-04-24 05:05:31', 'e231a7d3-67e0-47ae-86f0-ad87b9dbfd57'),
(220, 220, 1, NULL, NULL, 1, '2023-04-24 05:05:31', '2023-04-24 05:05:31', 'beb90955-918d-49d8-889b-7f12ba2ee9ee'),
(221, 221, 1, NULL, NULL, 1, '2023-04-24 05:05:32', '2023-04-24 05:05:32', '460cf00d-718e-4045-934e-dd98d07c0f74'),
(222, 222, 1, NULL, NULL, 1, '2023-04-24 05:05:32', '2023-04-24 05:05:32', '51191ee4-6c27-4945-8675-192ce0e6c370'),
(223, 223, 1, NULL, NULL, 1, '2023-04-24 05:05:33', '2023-04-24 05:05:33', 'd0c5cf40-378c-43cf-bdaa-b601e7ba9bcb'),
(224, 224, 1, NULL, NULL, 1, '2023-04-24 05:05:33', '2023-04-24 05:05:33', '4b17b784-96fd-411c-b7ec-e5e4e2bfd2de'),
(225, 225, 1, NULL, NULL, 1, '2023-04-24 05:05:34', '2023-04-24 05:05:34', 'b5019b9f-ba51-4ffb-9baf-e99b12f9bc0a'),
(226, 226, 1, NULL, NULL, 1, '2023-04-24 05:05:34', '2023-04-24 05:05:34', '06eeb71d-3039-4e1b-9fe6-d10271e6cc47'),
(227, 227, 1, NULL, NULL, 1, '2023-04-24 05:05:36', '2023-04-24 05:05:36', 'e41f39dd-29ec-4590-aab0-8293170e8876'),
(228, 228, 1, NULL, NULL, 1, '2023-04-24 05:05:36', '2023-04-24 05:05:36', '6c1d2b60-2e6b-4a94-8ffa-637280156f24'),
(229, 229, 1, NULL, NULL, 1, '2023-04-24 05:05:37', '2023-04-24 05:05:37', 'bb78ea0b-127e-4cab-89ee-02c044ea58ad'),
(230, 230, 1, NULL, NULL, 1, '2023-04-24 05:05:37', '2023-04-24 05:05:37', 'aaab9f73-69f5-460b-85d6-374718185752'),
(231, 231, 1, NULL, NULL, 1, '2023-04-24 05:05:43', '2023-04-24 05:05:43', 'dae1bc5c-5190-4e83-af34-4c78b31fdb7a'),
(232, 232, 1, NULL, NULL, 1, '2023-04-24 05:05:43', '2023-04-24 05:05:43', '45d0db44-892b-4430-897b-041f7061e53c'),
(233, 233, 1, NULL, NULL, 1, '2023-04-24 05:05:45', '2023-04-24 05:05:45', 'ef03ebca-23b2-4b3a-b4bb-7654dc779128'),
(234, 234, 1, NULL, NULL, 1, '2023-04-24 05:05:45', '2023-04-24 05:05:45', '65b70c4f-c960-4d8d-8413-62de11c7640a'),
(235, 235, 1, NULL, NULL, 1, '2023-04-24 05:05:46', '2023-04-24 05:05:46', '1ac64e89-4a81-4c9f-a2db-6d1ae6362dd9'),
(236, 236, 1, NULL, NULL, 1, '2023-04-24 05:05:46', '2023-04-24 05:05:46', 'a9500b8c-715c-458e-9293-5ed641327ba4'),
(237, 237, 1, NULL, NULL, 1, '2023-04-24 05:05:49', '2023-04-24 05:05:49', '586f72ed-da7e-4970-a7f1-baf02f334db7'),
(238, 238, 1, NULL, NULL, 1, '2023-04-24 05:05:49', '2023-04-24 05:05:49', '9d2fbb79-e625-4c35-9adb-27f0496db21c'),
(239, 239, 1, NULL, NULL, 1, '2023-04-24 05:05:55', '2023-04-24 05:05:55', 'd75fee68-2c9d-4ada-8a6c-0130c60bd2ba'),
(240, 240, 1, NULL, NULL, 1, '2023-04-24 05:05:55', '2023-04-24 05:05:55', 'c6bb45e7-7910-42bb-b615-82a429e990fd'),
(241, 241, 1, NULL, NULL, 1, '2023-04-24 05:05:56', '2023-04-24 05:05:56', 'c9335575-ae8c-4198-a080-93e1fd407e6c'),
(242, 242, 1, NULL, NULL, 1, '2023-04-24 05:05:56', '2023-04-24 05:05:56', '868c7863-c068-452b-be1c-94324626ce40'),
(243, 243, 1, NULL, NULL, 1, '2023-04-24 05:06:04', '2023-04-24 05:06:04', '8bfe808a-8a01-426c-8dc3-9974235039f5'),
(244, 244, 1, NULL, NULL, 1, '2023-04-24 05:06:04', '2023-04-24 05:06:04', 'e18af9f0-3913-4bde-9b4f-d614fa74e0f8'),
(245, 245, 1, NULL, NULL, 1, '2023-04-24 05:06:15', '2023-04-24 05:06:15', 'ffd3df96-7b1b-4ecb-8639-ba1ca52b4119'),
(246, 246, 1, NULL, NULL, 1, '2023-04-24 05:06:15', '2023-04-24 05:06:15', 'a2c7c3bc-2288-4244-a3d4-d7a743577612'),
(247, 247, 1, NULL, NULL, 1, '2023-04-24 05:06:16', '2023-04-24 05:06:16', 'e5c7de1c-c322-4987-a804-8711dc619d49'),
(248, 248, 1, NULL, NULL, 1, '2023-04-24 05:06:16', '2023-04-24 05:06:16', '71d6deb3-806b-4216-afd9-2619b21941a8'),
(249, 249, 1, NULL, NULL, 1, '2023-04-24 05:06:17', '2023-04-24 05:06:17', '3e997b0a-638c-450c-a7bc-dbb8e9c5e465'),
(250, 250, 1, NULL, NULL, 1, '2023-04-24 05:06:17', '2023-04-24 05:06:17', 'f4485fff-8b63-4795-8337-0f31f94be01d'),
(251, 251, 1, NULL, NULL, 1, '2023-04-24 05:06:19', '2023-04-24 05:06:19', 'ba581e77-5b6e-47cf-9a17-000f54b30c2c'),
(252, 252, 1, NULL, NULL, 1, '2023-04-24 05:06:19', '2023-04-24 05:06:19', '9680e7ad-c9f9-456f-90c4-a517b1a3d9ab'),
(253, 253, 1, NULL, NULL, 1, '2023-04-24 05:06:27', '2023-04-24 05:06:27', '1aae3c59-e70a-4739-a9a4-523f5c245d34'),
(254, 254, 1, NULL, NULL, 1, '2023-04-24 05:06:27', '2023-04-24 05:06:27', 'ddbeec10-137c-4240-8d22-caf7e87577b0'),
(255, 255, 1, NULL, NULL, 1, '2023-04-24 05:06:30', '2023-04-24 05:06:30', 'a1071c0b-f426-4647-b00e-db3dc2152dea'),
(256, 256, 1, NULL, NULL, 1, '2023-04-24 05:06:30', '2023-04-24 05:06:30', '4cc39d0a-7fbb-4c02-84df-4df942d84cdc'),
(257, 257, 1, NULL, NULL, 1, '2023-04-24 05:06:31', '2023-04-24 05:06:31', '0451e404-e74d-4d02-b791-37067dd3fb80'),
(258, 258, 1, NULL, NULL, 1, '2023-04-24 05:06:31', '2023-04-24 05:06:31', '27d8edba-19b6-4127-8759-3439dc1605de'),
(259, 259, 1, NULL, NULL, 1, '2023-04-24 05:06:32', '2023-04-24 05:06:32', '6ca38e7b-f0da-43c7-bfe2-a4ee1f360c63'),
(260, 260, 1, NULL, NULL, 1, '2023-04-24 05:06:32', '2023-04-24 05:06:32', '51f19612-4765-48da-b4b2-c7f2be5e37d7'),
(261, 261, 1, NULL, NULL, 1, '2023-04-24 05:06:35', '2023-04-24 05:06:35', '984ff6d0-f597-4937-9906-31ac8456ddbc'),
(262, 262, 1, NULL, NULL, 1, '2023-04-24 05:06:35', '2023-04-24 05:06:35', 'c352f909-5c04-4443-93e0-d2acf0a9d365'),
(263, 263, 1, NULL, NULL, 1, '2023-04-24 05:06:47', '2023-04-24 05:06:47', '8491d815-9de1-4d27-b974-46395f8739b3'),
(264, 264, 1, NULL, NULL, 1, '2023-04-24 05:06:47', '2023-04-24 05:06:47', '5b3e0952-699a-48f0-bdf9-40bd7a7b449e'),
(265, 265, 1, NULL, NULL, 1, '2023-04-24 05:06:48', '2023-04-24 05:06:48', 'dfdc98b3-5b37-490d-99f7-0072d81a9985'),
(266, 266, 1, NULL, NULL, 1, '2023-04-24 05:06:48', '2023-04-24 05:06:48', '46b5b185-ec33-471c-9eea-e8e8bad2dcf4'),
(267, 267, 1, NULL, NULL, 1, '2023-04-24 05:06:53', '2023-04-24 05:06:53', '71c79a47-8c51-430a-b41a-da936fde6c4a'),
(268, 268, 1, NULL, NULL, 1, '2023-04-24 05:06:53', '2023-04-24 05:06:53', '1f2d04b4-c11d-4991-bcca-3676d525ba88'),
(269, 269, 1, NULL, NULL, 1, '2023-04-24 05:07:00', '2023-04-24 05:07:00', '010a0211-0af8-4117-8888-0d9a9b65192a'),
(270, 270, 1, NULL, NULL, 1, '2023-04-24 05:07:00', '2023-04-24 05:07:00', 'ebcb127d-c98d-42fe-ac12-01e8c5fcc269'),
(271, 271, 1, NULL, NULL, 1, '2023-04-24 05:07:01', '2023-04-24 05:07:01', '2b1510e5-3a3d-4255-bf94-38c5013fd0e5'),
(272, 272, 1, NULL, NULL, 1, '2023-04-24 05:07:01', '2023-04-24 05:07:01', 'd5353e31-7422-4d50-a6a6-5bd8731c8683'),
(273, 273, 1, NULL, NULL, 1, '2023-04-24 05:07:02', '2023-04-24 05:07:02', '59c6368b-36f2-4238-bfdb-939785103626'),
(274, 274, 1, NULL, NULL, 1, '2023-04-24 05:07:02', '2023-04-24 05:07:02', '06560224-b498-40c0-81b7-0d87a9b56f2a'),
(275, 275, 1, NULL, NULL, 1, '2023-04-24 05:07:06', '2023-04-24 05:07:06', '232de7a3-fb96-4418-8573-5c6cdf695f77'),
(276, 276, 1, NULL, NULL, 1, '2023-04-24 05:07:06', '2023-04-24 05:07:06', '1249d1af-fc1e-4403-bfc3-81ffef4712d6'),
(277, 277, 1, NULL, NULL, 1, '2023-04-24 05:07:07', '2023-04-24 05:07:07', 'a24bac18-1bb1-40d6-ba54-fc46fa2226c7'),
(278, 278, 1, NULL, NULL, 1, '2023-04-24 05:07:07', '2023-04-24 05:07:07', '0851e1a2-2af0-485a-9725-76f1fe7873e0'),
(279, 279, 1, NULL, NULL, 1, '2023-04-24 05:07:09', '2023-04-24 05:07:09', '7611fbb8-d4f8-4f6e-a921-bdb359baea70'),
(280, 280, 1, NULL, NULL, 1, '2023-04-24 05:07:09', '2023-04-24 05:07:09', '90fd87d8-1b2a-4524-9e58-be09570e848f'),
(281, 281, 1, NULL, NULL, 1, '2023-04-24 05:07:12', '2023-04-24 05:07:12', '44e609b3-a8c5-4ce1-a4bd-3fa3d091e0f7'),
(282, 282, 1, NULL, NULL, 1, '2023-04-24 05:07:12', '2023-04-24 05:07:12', '0d008e6f-1637-4281-be7d-e9993e7990ab'),
(283, 283, 1, NULL, NULL, 1, '2023-04-24 05:07:40', '2023-04-24 05:07:40', 'bea004e3-b93a-4133-aea2-56174d52fc32'),
(284, 284, 1, NULL, NULL, 1, '2023-04-24 05:07:40', '2023-04-24 05:07:40', 'e0121c57-d17a-4888-8305-885fa604f8be'),
(287, 287, 1, NULL, NULL, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', 'f47efd70-1a6e-423b-96fb-8ff1f8eb8e20'),
(288, 288, 1, NULL, NULL, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', 'b85a3fda-28aa-4936-b905-97e786f85298'),
(289, 289, 1, 'home-page', '__home__', 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', '1634cb66-44e6-4545-bdfb-59d80218ebca'),
(290, 290, 1, NULL, NULL, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', '08721c76-2c3a-418b-84ce-28f932172f5a'),
(291, 291, 1, NULL, NULL, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', '77daab4e-4e8f-4152-b0c4-92e9abfe72a2'),
(294, 294, 1, 'home-page', '__home__', 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', '02b393b6-460b-456d-b734-a3f7d0b54ed5'),
(295, 295, 1, NULL, NULL, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', 'ca2a2021-9bb7-4c7e-9a5f-c0ec2e8ef16d'),
(296, 296, 1, NULL, NULL, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', '2943195e-bee5-4bb0-b8fc-044bc7cb50c5'),
(300, 300, 1, 'home-page', '__home__', 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', 'b5983ab9-292b-4987-b173-246aafb989f9'),
(301, 301, 1, NULL, NULL, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', 'fc7891bc-3061-4d1b-bc88-13862ee7c83f'),
(302, 302, 1, NULL, NULL, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', '25e2a149-106b-447e-868b-e8c109737a0f'),
(305, 305, 1, 'home-page', '__home__', 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', '27ceca62-913d-4b9c-a2e4-c821ab5b92a4'),
(306, 306, 1, NULL, NULL, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', 'e24e295c-98ad-4f6a-9b8a-669ffe0b6970'),
(307, 307, 1, NULL, NULL, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', 'ae678ea5-f3e7-4cc6-a9e0-907bc5347f8a'),
(310, 310, 1, 'home-page', '__home__', 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '72586740-0b79-4fda-a85b-692e5aadf3c2'),
(311, 311, 1, NULL, NULL, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '9624f244-1cda-42bc-aa10-db7897d45f9c'),
(312, 312, 1, NULL, NULL, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '12890e5f-f9b9-49f0-a39a-573591f765d0'),
(316, 316, 1, 'home-page', '__home__', 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', 'be5435f1-53ef-443c-b6d1-59c6a177115d'),
(317, 317, 1, NULL, NULL, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', '75fcf285-81fd-4f72-8431-b45155b9fefa'),
(318, 318, 1, NULL, NULL, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', 'e7981ec0-550f-48ea-b752-5b0ee53c8778'),
(322, 322, 1, 'home-page', '__home__', 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', '5517c536-cd91-4154-a013-6c894ef9e8be'),
(323, 323, 1, NULL, NULL, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', 'aec679b9-5267-4a34-ba06-2805cadaee20'),
(324, 324, 1, NULL, NULL, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', 'fd79699d-1100-49eb-84a4-7a7043ff5d04'),
(327, 327, 1, 'home-page', '__home__', 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '32dca851-67a3-45d5-b101-8fa6ebee454b'),
(328, 328, 1, NULL, NULL, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', 'a22de090-912e-44a0-acb1-a7824dbe3763'),
(329, 329, 1, NULL, NULL, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '2e954084-1736-49a0-b90b-d580d3b6c6f8'),
(332, 332, 1, 'home-page', '__home__', 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', 'aa41d8b3-c0a6-4f81-82bc-a1153e8ed4fe'),
(333, 333, 1, NULL, NULL, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', 'dd6471f4-437f-41b4-8354-0f6db7755b80'),
(334, 334, 1, NULL, NULL, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', '1b687393-8434-4def-8152-768c92de4441'),
(337, 337, 1, 'home-page', '__home__', 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', 'da4ad7c9-e26e-48d8-88f0-8dbf6e2109f3'),
(338, 338, 1, NULL, NULL, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', '3dd5f5a5-2367-4fff-a910-4605889858c2'),
(339, 339, 1, NULL, NULL, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', '990638b2-7d91-4430-ba15-7506c7ce9bca'),
(342, 342, 1, 'home-page', '__home__', 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', 'c1b2749e-eb93-46f6-b14e-dd7c70d8a178'),
(343, 343, 1, NULL, NULL, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', '4cb23f15-6252-43b6-8ec8-19f37ba9299b'),
(344, 344, 1, NULL, NULL, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', 'a90fcbbc-a3e6-45d6-b070-bb3af8b38365'),
(347, 347, 1, 'home-page', '__home__', 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '76aa26b6-4c5a-4a65-96fc-1960b5703f74'),
(348, 348, 1, NULL, NULL, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', 'ba8c47ff-8594-4f2b-94f9-b5e5c9aa44df'),
(349, 349, 1, NULL, NULL, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '2f199030-104e-4eb3-a99f-49eecca14d7f'),
(352, 352, 1, 'home-page', '__home__', 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', 'b45c6570-e974-4a21-a2a0-3dea3bf0b476'),
(353, 353, 1, NULL, NULL, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', '207e803a-55be-4224-9778-85e8da8b00f8'),
(354, 354, 1, NULL, NULL, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', '6ce1140d-26d0-4999-a7d3-641fa580fd7a'),
(357, 357, 1, 'home-page', '__home__', 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '5d8d0675-f1e2-45a6-ab35-899733273c63'),
(358, 358, 1, NULL, NULL, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', 'ed62d4fd-0d43-4f02-acc0-8e6dc5d3a7af'),
(359, 359, 1, NULL, NULL, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '02cf49de-104d-42f6-859e-5e6474075d35'),
(362, 362, 1, 'home-page', '__home__', 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', 'f0038e80-d03d-495c-a934-918397f98301'),
(363, 363, 1, NULL, NULL, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', 'f0b5adb8-2c74-4f51-97a9-2937a9c403e4'),
(364, 364, 1, NULL, NULL, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', 'a4d2c2f3-2163-436e-9a59-711e6d503db6'),
(367, 367, 1, 'home-page', '__home__', 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '38f45a07-c39d-49b3-b7cb-7390bd284c35'),
(368, 368, 1, NULL, NULL, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '619345ad-a332-4b89-a90b-8cd575079996'),
(369, 369, 1, NULL, NULL, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '3bc78e85-1198-435d-a047-ba02c013547e'),
(372, 372, 1, 'home-page', '__home__', 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', 'fef7909d-c607-4fbc-8a6c-ab751fcf879c'),
(373, 373, 1, NULL, NULL, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', '0b334549-9562-426b-a818-f808c8e83872'),
(374, 374, 1, NULL, NULL, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', '73d558cc-9d6e-48eb-b9b5-1dfa7b05afe6'),
(377, 377, 1, 'home-page', '__home__', 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', '5a14788a-6b23-4208-916c-d8a1cd226443'),
(378, 378, 1, NULL, NULL, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', '5a18c527-be7a-45f0-bfc3-75953040f6b8'),
(379, 379, 1, NULL, NULL, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', 'a361d3dc-0a51-4493-8185-bdeeb4db9497'),
(382, 382, 1, 'home-page', '__home__', 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', '0e21c648-c61b-4bf3-b20f-14b1295bbd4b'),
(383, 383, 1, NULL, NULL, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', 'fe0fe691-2fa1-4635-a6e4-ee36a47bd165'),
(384, 384, 1, NULL, NULL, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', '20979478-76e9-47b4-a18b-c368c942b85e'),
(385, 385, 1, 'home-page', '__home__', 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', 'c05229e8-0f9a-44c3-ad75-7ff2242287c5'),
(386, 386, 1, NULL, NULL, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', '7d9aa201-c482-4593-99c1-b9bd978a1107'),
(387, 387, 1, NULL, NULL, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', '22980d5b-3f27-4521-a59f-6810f3822644'),
(388, 388, 1, 'home-page', '__home__', 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', '89021d08-5854-4182-a999-1096a88f093a'),
(389, 389, 1, NULL, NULL, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', 'be8b5a2a-c8e1-4849-bff8-3d1441d0348f'),
(390, 390, 1, NULL, NULL, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', 'fa2857c7-b84a-4a51-a71f-711fe8be0b41'),
(391, 391, 1, 'home-page', '__home__', 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', '20a51aa4-72c8-426f-bcb9-0e4206d6613a'),
(392, 392, 1, NULL, NULL, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', 'dd36c69b-f8f9-4079-9fac-7ed6df14aafd'),
(393, 393, 1, NULL, NULL, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', '10ca8827-0f45-4986-8689-f2bc770164ce'),
(395, 395, 1, NULL, NULL, 1, '2023-04-24 06:34:02', '2023-04-24 06:34:02', 'fb63ced4-5d2f-4f20-992e-1d67ba4f20fd'),
(396, 396, 1, NULL, NULL, 1, '2023-04-24 06:34:07', '2023-04-24 06:34:07', 'a030fa12-0f81-41a0-a82a-66e51ea92272'),
(397, 397, 1, NULL, NULL, 1, '2023-04-24 06:34:12', '2023-04-24 06:34:12', '03c998a0-be62-44e4-87d4-bd3d5bb25c89'),
(398, 398, 1, NULL, NULL, 1, '2023-04-24 06:34:17', '2023-04-24 06:34:17', 'e8773cd0-dde3-4896-8fea-2364f5b3f933'),
(399, 399, 1, NULL, NULL, 1, '2023-04-24 06:34:20', '2023-04-24 06:34:20', '9afb5886-c10e-441b-9f51-6959f4057f6c'),
(400, 400, 1, NULL, NULL, 1, '2023-04-24 06:35:25', '2023-04-24 06:35:25', 'f5789701-aa85-4ad0-9bd2-fa9203d296bb'),
(401, 401, 1, NULL, NULL, 1, '2023-04-24 06:35:28', '2023-04-24 06:35:28', '3e24eca4-5fac-4c3b-bfdd-4d56d964cde5'),
(402, 402, 1, NULL, NULL, 1, '2023-04-24 06:35:54', '2023-04-24 06:35:54', 'b5b707f8-7027-421a-9ddb-2e0973d62854'),
(403, 403, 1, NULL, NULL, 1, '2023-04-24 06:35:55', '2023-04-24 06:35:55', '75854940-1b8c-474a-a7b4-146c7af92441'),
(404, 404, 1, NULL, NULL, 1, '2023-04-24 06:35:57', '2023-04-24 06:35:57', 'e15b9e32-9ee9-4fba-bffa-ed3f57de06ba'),
(405, 405, 1, NULL, NULL, 1, '2023-04-24 06:36:03', '2023-04-24 06:36:03', '66236433-0a9b-4430-ab53-2dc8926ba744'),
(407, 407, 1, NULL, NULL, 1, '2023-04-24 06:37:21', '2023-04-24 06:37:21', '225f67cc-c870-4f02-bb4c-63701ae6ca80'),
(408, 408, 1, NULL, NULL, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '5ebec0d4-70c7-4e83-8e06-1c62d6172aa1'),
(409, 409, 1, 'home-page', '__home__', 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', 'b42e553c-5440-4eed-8aef-93c94e9b0662'),
(410, 410, 1, NULL, NULL, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '82fa84a9-0d8b-4474-a6b9-6c3a887be3a7'),
(411, 411, 1, NULL, NULL, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '0effc0f2-0f13-4ebe-9db4-8fcd01104bf6'),
(412, 412, 1, NULL, NULL, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '7841d53f-9870-473a-8349-ad8d655b9745'),
(415, 415, 1, 'home-page', '__home__', 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '28607cdf-e07a-45c5-bc42-531ed462ecc2'),
(416, 416, 1, NULL, NULL, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '97c4b4ca-d2b6-4054-a409-cdb549c6d5f6'),
(417, 417, 1, NULL, NULL, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '446d21ec-bef7-4e80-b3f6-b9bf4c9e048b'),
(418, 418, 1, NULL, NULL, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '299b6f66-72d9-43f1-85d2-5577f3813573'),
(421, 421, 1, 'home-page', '__home__', 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', '4f40094b-f26d-4e85-bd47-11580a9e9e90'),
(422, 422, 1, NULL, NULL, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', '6b2f5a17-86a3-4b6a-872e-cf54e4c052cd'),
(423, 423, 1, NULL, NULL, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'cfa9f439-18bf-497c-acad-325881d514fa'),
(424, 424, 1, NULL, NULL, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'c28e3b70-47ae-4312-8fd9-c7644530a484'),
(427, 427, 1, 'home-page', '__home__', 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '2783c090-0f5e-4ef8-b408-fcd1ac3d2a88'),
(428, 428, 1, NULL, NULL, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '164dd06f-42da-45a7-a59e-1ea17b7c7419'),
(429, 429, 1, NULL, NULL, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '117796f4-4c66-4780-860b-4f89f2fdfd39'),
(430, 430, 1, NULL, NULL, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '66dabf21-3634-4a04-a6c6-48f197b9a0eb'),
(431, 431, 1, 'home-page', '__home__', 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '5284d7d8-7e24-4bda-88ce-86ac587d48c5'),
(432, 432, 1, NULL, NULL, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', 'c9646e90-40a8-4db8-976b-9682407ca600'),
(433, 433, 1, NULL, NULL, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', 'b8933159-3804-4cc4-8db4-d088785a6467'),
(434, 434, 1, NULL, NULL, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '871dafb4-516f-4b5f-b3fd-4a4891530aa3'),
(435, 435, 1, NULL, NULL, 1, '2023-04-24 13:47:13', '2023-04-24 13:47:13', '85ebbda0-16b3-4252-9286-9c462debdb10'),
(437, 437, 1, NULL, NULL, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', '07df5386-4a92-4594-ad00-bc3fd45256d5'),
(438, 438, 1, NULL, NULL, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', '65e684b4-9c20-461f-a848-30f4f2df31ad'),
(439, 439, 1, NULL, NULL, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', 'efd26ad9-eb38-48d1-a065-59ca7b9ce1f2'),
(440, 440, 1, NULL, NULL, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', 'daa92052-c9bd-4102-a4c8-c18c8c8b7820'),
(441, 441, 1, NULL, NULL, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', '1f0c208e-781c-4197-8687-2cf95908b307'),
(442, 442, 1, NULL, NULL, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', '9920a425-755d-4dd8-b0fd-c17557fc2569'),
(443, 443, 1, NULL, NULL, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '891d5eae-3b46-4b7f-9a02-9c3d81d46176'),
(444, 444, 1, NULL, NULL, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '25e95892-54c0-4fac-bca5-de4207e604e4'),
(445, 445, 1, NULL, NULL, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '2ed5035e-2f2f-4271-b5f7-6843720f3bd0'),
(446, 446, 1, NULL, NULL, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', '6229775c-3dd1-47f9-be80-cfed37ce5137'),
(447, 447, 1, NULL, NULL, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', '6aafe0b0-f1ac-400c-9eab-30f9f2372e0f'),
(448, 448, 1, NULL, NULL, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', 'e3d6d1ec-2c94-4a7f-abae-f9d54a4bd71b'),
(449, 449, 1, NULL, NULL, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', 'eaab28cc-92b0-4372-9983-4d1cb7f6da14'),
(450, 450, 1, NULL, NULL, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', 'df2bf2da-cd49-4869-8667-30a771918a7f'),
(451, 451, 1, NULL, NULL, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', 'ee7a2085-4ac5-4028-860d-3f4d56c5ddc1'),
(452, 452, 1, NULL, NULL, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', '5e8d9066-88c2-4bc7-836f-dda88490759b'),
(453, 453, 1, NULL, NULL, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', 'cf00ffa3-0704-4e3e-879d-6316a1cab11a'),
(454, 454, 1, NULL, NULL, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', '5020fe2f-8988-4585-92a8-b6714861fa34'),
(455, 455, 1, NULL, NULL, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '7eed1d6f-eebc-42be-9dbd-cfcc2e255f0e'),
(456, 456, 1, NULL, NULL, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '5f924cdb-efff-4c17-abfc-08b3f3824021'),
(457, 457, 1, NULL, NULL, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '583100e0-6092-4ac3-9a89-a23d21720bb2'),
(458, 458, 1, NULL, NULL, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', 'd1e4164f-ec06-41e7-b822-148cb8ffcb27'),
(459, 459, 1, NULL, NULL, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', '168e9cf5-3848-4bb0-b506-9690e64ab69a'),
(460, 460, 1, NULL, NULL, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', 'e401f62c-5ed6-4b91-aac5-c0cb1e47545b'),
(461, 461, 1, NULL, NULL, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', 'afafbd49-f6b9-4178-98cd-398489d8ca97'),
(462, 462, 1, NULL, NULL, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '8f7590ad-2b6c-44e4-a53f-f6c547c53fff'),
(463, 463, 1, NULL, NULL, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '075b6851-a503-40e6-a00d-5bbb3e5f05a0'),
(464, 464, 1, NULL, NULL, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', 'a69a12cd-7a58-4c1f-99e9-99e55841231b'),
(465, 465, 1, NULL, NULL, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '71583433-1978-462c-b521-d94d491c329d'),
(466, 466, 1, NULL, NULL, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '31176282-da98-48a6-9885-20b534f69f73'),
(467, 467, 1, NULL, NULL, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '6e689733-233f-4a49-954f-5e1f4f535472'),
(468, 468, 1, NULL, NULL, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', 'def1eec6-bf05-48f7-b32b-3245f8b37d6a'),
(469, 469, 1, NULL, NULL, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '697e724c-ae77-4cea-a62a-7bd4dbda9e78'),
(473, 473, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '8244dc67-63ca-4c0a-a5e9-c0fe01900f92'),
(474, 474, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '52312a74-3dc6-4861-ac40-e9a800bfa953'),
(475, 475, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'd11c907b-76ef-44d2-8c85-cb9764b153de'),
(476, 476, 1, 'home-page', '__home__', 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '2b79c36a-40ac-457d-948b-bd111b5db614'),
(477, 477, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'e13f6362-8c70-49b4-a7e6-350bbc325c51'),
(478, 478, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '3f0cfa76-a0c3-4b50-9144-c1051c1a566c'),
(479, 479, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'a2e0c0e4-8105-47ed-8b20-f2975ef34c3d'),
(480, 480, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'c7130885-3d9c-4d0d-b90d-8e91ef859a09'),
(481, 481, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '51dfefa8-93a9-4f54-892e-179f61bdbb3b'),
(482, 482, 1, NULL, NULL, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'e5fda947-ba7e-4d07-ab0a-d6e804d6dea6'),
(483, 483, 1, 'home-page', '__home__', 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '598f6d7f-cdf2-4a90-bec2-380f84e365b8'),
(484, 484, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '936022f4-9b25-48e2-a700-9f587b4f333e'),
(485, 485, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', 'a9e34bb4-3394-4e2c-a010-8017bac624d8'),
(486, 486, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '81ac5beb-1f45-4676-8ee8-24f447baef93'),
(487, 487, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '7f995d75-c4ae-4987-a337-4c563e9f3c29'),
(488, 488, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '2e212b22-8604-4a2c-881d-2e9c433ac9bf'),
(489, 489, 1, NULL, NULL, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '9288d017-03ba-4cab-8257-c184b11a7247'),
(491, 491, 1, NULL, NULL, 1, '2023-04-24 16:16:12', '2023-04-24 16:16:12', '448771eb-2c9a-4f5a-9a74-a3fc65eba056'),
(492, 492, 1, NULL, NULL, 1, '2023-04-24 16:16:17', '2023-04-24 16:16:17', '56a49e99-c426-487a-84e5-83a7af85fc20'),
(493, 493, 1, NULL, NULL, 1, '2023-04-24 16:16:17', '2023-04-24 16:16:17', 'aab2d246-7380-423a-b6be-edb373b180e0'),
(494, 494, 1, NULL, NULL, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', '0d9fea26-ccec-474f-ba53-06c43e05170b'),
(495, 495, 1, NULL, NULL, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', 'ad2fa9ee-fae3-4725-9594-8d8c5dcc91c7'),
(496, 496, 1, NULL, NULL, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', 'e14f5679-ea02-4ae5-9963-df02e9611278'),
(497, 497, 1, NULL, NULL, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', '0bd2303a-d7b3-4375-992b-c75a6cad719b'),
(498, 498, 1, NULL, NULL, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', '4f4dd6e5-0dcd-49dd-8afb-4bc574f986da'),
(499, 499, 1, NULL, NULL, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', 'f6873011-b1d0-4369-b54d-4f53f7c8af87'),
(500, 500, 1, NULL, NULL, 1, '2023-04-24 16:16:54', '2023-04-24 16:16:54', '925b2402-fe64-4139-95f3-f05f7c8a2ae4'),
(501, 501, 1, NULL, NULL, 1, '2023-04-24 16:16:54', '2023-04-24 16:16:54', 'f2557224-e157-4793-aae6-e10d28097908'),
(502, 502, 1, NULL, NULL, 1, '2023-04-24 16:16:58', '2023-04-24 16:16:58', '999b59c8-873b-425c-a34f-ce5efd06b3e7'),
(503, 503, 1, NULL, NULL, 1, '2023-04-24 16:18:42', '2023-04-24 16:18:42', '170acc35-ac5f-4c56-a615-e9bd432035c2'),
(504, 504, 1, NULL, NULL, 1, '2023-04-24 16:18:43', '2023-04-24 16:18:43', 'd674b952-54f1-427f-84bc-29717d24c5d2'),
(505, 505, 1, NULL, NULL, 1, '2023-04-24 16:18:43', '2023-04-24 16:18:43', '06e4b7a5-e640-4a20-9998-9e7418d790db'),
(506, 506, 1, NULL, NULL, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', '5836ead9-4472-4e7b-8077-2b8f86abdc1d'),
(507, 507, 1, NULL, NULL, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', '6a4da532-f3b6-4550-ade7-36c5e1fef176');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(508, 508, 1, NULL, NULL, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', '7f7aee98-d99f-4e2b-bc70-5ad97e9ccf6c'),
(509, 509, 1, NULL, NULL, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', 'c4b9134e-f8c7-4bb6-85df-9b1c05061ac6'),
(510, 510, 1, NULL, NULL, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', '8860a1c8-088b-429c-8a53-6ba99a40376b'),
(511, 511, 1, NULL, NULL, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', '1c24b4a3-084b-47c7-883d-5f05342f5aa8'),
(512, 512, 1, NULL, NULL, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', 'da09c5f4-782c-41f8-9d8c-a685f50eb2ed'),
(513, 513, 1, NULL, NULL, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', 'e7fc53de-00b0-44dc-be37-d45f8f9a8ae9'),
(514, 514, 1, NULL, NULL, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', '92d40f75-9881-48f0-b4ae-c1ae1ba59c63'),
(515, 515, 1, NULL, NULL, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', 'ff878fa9-3d4c-42da-adad-5290908c6fe8'),
(516, 516, 1, NULL, NULL, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', '9fdafd21-e53b-4677-bb4d-f79d2fa108c2'),
(517, 517, 1, NULL, NULL, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', 'c637f75d-c354-4ece-8547-38452d172711'),
(518, 518, 1, NULL, NULL, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', '4d6bb5d1-bfd4-4fef-88be-bc74ea15495a'),
(519, 519, 1, NULL, NULL, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', 'c8cdf547-0575-473f-a45d-10272ebc4097'),
(520, 520, 1, NULL, NULL, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', 'd912d1a9-5a90-4f57-bd31-396f5e01d887'),
(521, 521, 1, NULL, NULL, 1, '2023-04-24 16:19:05', '2023-04-24 16:19:05', '903a5fd9-5077-4cae-b691-f4a82e0e5461'),
(522, 522, 1, NULL, NULL, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', '3bd87e02-a138-43f8-a6d8-e338e91ce0d9'),
(523, 523, 1, NULL, NULL, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', '903ebc93-3f96-4c6f-a1b1-941c6ead53f4'),
(524, 524, 1, NULL, NULL, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', 'c06e21e9-5426-4a7f-aaed-bb56c90a32f5'),
(525, 525, 1, NULL, NULL, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', '75c251cd-6102-443c-87b9-e214faae3e65'),
(526, 526, 1, NULL, NULL, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', '09275da9-379a-467f-8574-c9ad9f296637'),
(527, 527, 1, NULL, NULL, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', 'ca2fc94c-f3a6-4b1a-9f6e-083f2a773872'),
(528, 528, 1, NULL, NULL, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', '53a3d972-4d32-4f0f-9634-1b0ce20573e1'),
(529, 529, 1, NULL, NULL, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', 'bca5399f-6dbd-43bc-8d03-d5198b0b32ff'),
(530, 530, 1, NULL, NULL, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '1ca7e953-bf00-4cbc-a301-e589f3e6ec0e'),
(531, 531, 1, NULL, NULL, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '8e9e5f4d-10bb-42df-85dd-ec4373f5d644'),
(532, 532, 1, NULL, NULL, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '2086bb4a-7eab-4d8c-acb2-a3f5ea5514e4'),
(533, 533, 1, NULL, NULL, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '0b842db9-1b44-4c89-8861-ed2c506bdcc2'),
(534, 534, 1, NULL, NULL, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', 'abcd8a14-56a0-4490-a890-638744c6a307'),
(535, 535, 1, NULL, NULL, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '7cab4408-8500-4c98-8fbf-d2d38ebe49c9'),
(536, 536, 1, NULL, NULL, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '8a198343-4e91-49b7-85ed-1b04eb76e46c'),
(537, 537, 1, NULL, NULL, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '18d08708-2977-4950-b8a7-494f29160c30'),
(538, 538, 1, NULL, NULL, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '048ca55c-dead-4a72-a467-ed707c3c3c02'),
(539, 539, 1, NULL, NULL, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '8d7074b2-33b0-4209-8984-a0b90201036f'),
(540, 540, 1, NULL, NULL, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', 'f0914184-e08c-4826-ba5a-ff56d9288fe9'),
(541, 541, 1, NULL, NULL, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'b1011be7-aaf8-4648-aa66-9f371d71f67b'),
(542, 542, 1, NULL, NULL, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'a130663e-73ab-43b7-92ea-3141ddcd610c'),
(543, 543, 1, NULL, NULL, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'a5418dfb-bf99-4da5-a474-99b7ad1ebbc0'),
(544, 544, 1, NULL, NULL, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', '52c897c2-bbe5-4eb9-a68d-309d0d8ce28a'),
(545, 545, 1, NULL, NULL, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '7b1f3013-51e6-4504-8f01-41fe698cff43'),
(546, 546, 1, NULL, NULL, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', 'ad1af8e3-7030-4261-bad7-f4650734b49e'),
(547, 547, 1, NULL, NULL, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '8ab5ef07-5ff1-4ddf-b830-1fbc7213c3e8'),
(548, 548, 1, NULL, NULL, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '14b257ee-649c-4fc1-a503-e00ef4943237'),
(553, 553, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'f0d70f36-9052-4a0d-a12a-fb954c587c6d'),
(554, 554, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'a3f17ff4-cb7f-4c3f-955d-a25a73c87c85'),
(555, 555, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'a6e57744-4bc7-40d1-8d2a-0aaae8434dec'),
(556, 556, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'ba2847ec-b113-4da1-9d46-40d1af79bbf4'),
(557, 557, 1, 'home-page', '__home__', 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '1ff52bc0-c405-435b-9916-b4a588b3fb10'),
(558, 558, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'df332679-5046-408c-807d-0177041729aa'),
(559, 559, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'a80d124b-ed8e-4b0c-a166-a5f1cbd38d3f'),
(560, 560, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'f00e2d2a-d4ed-4303-9d11-ec55eb7d87cd'),
(561, 561, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '2e08c00d-6792-4710-abc8-0679c8da6409'),
(562, 562, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '5f4da931-41b0-46e9-b0b0-88e9f35144ba'),
(563, 563, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '38dfe477-7694-4e8a-80e2-19fcbb396ef9'),
(564, 564, 1, NULL, NULL, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '1165c97b-e15b-4cbe-b77d-3673c12d6021'),
(565, 565, 1, 'home-page', '__home__', 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'dd1e55a1-c6ad-4c22-86d3-a4dca58aec7c'),
(566, 566, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'd2abb706-e6f1-4e5b-823e-166270783bef'),
(567, 567, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'd3370875-c150-4e7f-a62b-46b9f40e719d'),
(568, 568, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '5982a9c3-7a36-4820-8349-f32b43947e98'),
(569, 569, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'd5ee74e8-9d80-462f-86dd-79d65d3bb300'),
(570, 570, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '0bc131b1-7188-4299-a2be-0cfe585c7268'),
(571, 571, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '30069850-bada-45c0-8015-5a38e3737d16'),
(572, 572, 1, NULL, NULL, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '04d237ba-915e-48f8-a330-cfcea1c62699'),
(574, 574, 1, NULL, NULL, 1, '2023-04-24 16:35:56', '2023-04-24 16:35:56', 'e4e36dee-63b3-493f-8658-5f1f5bb905a9'),
(575, 575, 1, 'home-page', '__home__', 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '955eaac1-8ba3-4bdf-aa71-29f4ba772436'),
(576, 576, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '564fcfb2-6e3d-4ed4-896f-182514d85749'),
(577, 577, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', 'f56cc43d-ffa9-43fa-8428-29196b05a4bc'),
(578, 578, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '11b4f0fd-b2a5-4738-add4-4cb6d784c0a3'),
(579, 579, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '5155818a-b3ea-4a25-bdbe-2d9984b45fa0'),
(580, 580, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '2b8c39cb-ce5c-49a9-a30d-c8146693f4f1'),
(581, 581, 1, NULL, NULL, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', 'ca54e1d0-86b2-4d91-a38c-e182e00f6a50'),
(582, 582, 1, 'home-page', '__home__', 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '686023e9-3466-4ae8-b569-85f205bb7dca'),
(583, 583, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'ec4365c7-22b5-4a74-9558-79f9671dad93'),
(584, 584, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'dedd4fc5-7ab6-4aae-bd03-db9d9564ce86'),
(585, 585, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '8c77b036-cf4c-4997-871c-6a00e81654fc'),
(586, 586, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '8f5cded0-8659-48c9-a03f-b040573c1ec0'),
(587, 587, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '29fe87f9-b6ae-407c-b83a-0191a8b2db6e'),
(588, 588, 1, NULL, NULL, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '02b216e9-5c7b-40be-a539-0fd42007a70c'),
(590, 590, 1, NULL, NULL, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', '6d739b7c-fd3f-4397-bda1-884e39c76e36'),
(591, 591, 1, NULL, NULL, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', 'c3b64190-f0a7-40cb-96d4-9b9b7ecd6199'),
(592, 592, 1, NULL, NULL, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', 'b7c7a013-8946-42e7-a2f1-095b889225cc'),
(593, 593, 1, NULL, NULL, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', 'cdb76d35-8001-4cbf-9097-da5caa151c5c'),
(594, 594, 1, NULL, NULL, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', '23a81f53-7aa5-49ee-94b2-7b7f9e0cba0d'),
(595, 595, 1, NULL, NULL, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', 'ddb7d7d0-64e1-4120-91e1-6a34b039a22f'),
(596, 596, 1, NULL, NULL, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', '35600b3d-cca2-41cd-8d23-1f2b88e926bc'),
(597, 597, 1, NULL, NULL, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', 'ee6d01c5-9544-463e-a317-17829d8acc56'),
(598, 598, 1, NULL, NULL, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', '8820c0f1-bc43-47c0-aa87-6b06662d4ee2'),
(599, 599, 1, NULL, NULL, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', 'c2606f95-82d6-4b45-8761-aa0a14cd9ede'),
(600, 600, 1, NULL, NULL, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', '4141ef42-c3a0-41f6-af32-a143d1359c45'),
(601, 601, 1, NULL, NULL, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', 'ef00a147-de4e-499d-9871-c0cdf7c1bc95'),
(602, 602, 1, NULL, NULL, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', '347e3ccd-8498-40ba-abd1-5527f66a7958'),
(603, 603, 1, NULL, NULL, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', 'fb72617f-5097-4f05-98cf-248fc8518a21'),
(604, 604, 1, NULL, NULL, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', '969cc705-b790-49c0-aa7a-a74e5b838ff3'),
(605, 605, 1, NULL, NULL, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', '6a14984e-e77b-4adb-bbf8-34311eb4d2a7'),
(606, 606, 1, NULL, NULL, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', '7134d9a2-301b-4050-9c7f-c7d428219afe'),
(607, 607, 1, NULL, NULL, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', 'cbbe595e-ceb4-4995-8f48-df135fa5c43a'),
(608, 608, 1, NULL, NULL, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '503eab99-e180-4245-aa6f-c2783b06c659'),
(609, 609, 1, NULL, NULL, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '965aee53-7030-4568-8a97-75fb48a66239'),
(610, 610, 1, NULL, NULL, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '2afc8d1e-03d9-445d-a807-a01cf3c63586'),
(611, 611, 1, NULL, NULL, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', 'f4199375-1f82-4fdc-8062-3b7b31670cb4'),
(612, 612, 1, NULL, NULL, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', '648fc095-9d8f-4681-abfe-9b88563c1660'),
(613, 613, 1, NULL, NULL, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', 'fb3d6648-0618-4f4c-93b6-375ea46120ae'),
(614, 614, 1, NULL, NULL, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', '02adcf33-de87-44d5-8040-527538fb5fe0'),
(615, 615, 1, NULL, NULL, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', '205b283c-219f-48b3-a1b6-5a666ed14c1b'),
(616, 616, 1, NULL, NULL, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', 'b4ac0485-23d9-4e2c-aef8-ed16387d3914'),
(617, 617, 1, NULL, NULL, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', '7644a8d6-0f71-4e03-8dbf-17cb84808768'),
(618, 618, 1, NULL, NULL, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', '1213d1ad-9e03-4b04-a422-efbe6db39f1b'),
(619, 619, 1, NULL, NULL, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', '141d8025-d08b-4490-b86b-8fc03e8f95b8'),
(620, 620, 1, NULL, NULL, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', 'bdcea219-3190-4694-b531-52f2e702a57d'),
(621, 621, 1, NULL, NULL, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', 'bd404fa0-beeb-49b4-9486-35a93b55bcfe'),
(622, 622, 1, NULL, NULL, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', '64cd2de8-4473-435a-8d1c-0653cf15eccf'),
(623, 623, 1, NULL, NULL, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '36e00cb9-6446-4a2a-9cea-abfd5efcb561'),
(624, 624, 1, NULL, NULL, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', 'ac0ab954-e7ae-4478-b7e9-01d7565eaca8'),
(625, 625, 1, NULL, NULL, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '392121c6-4b11-40dc-8056-affa3d816691'),
(626, 626, 1, NULL, NULL, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', 'ac190c40-e9b8-45f8-82cd-ffc58b67a512'),
(627, 627, 1, NULL, NULL, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', '440d3f03-2f7a-49f3-884a-3c61a8dadb88'),
(628, 628, 1, NULL, NULL, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', 'f773fc7e-4cd8-48e0-9ae3-ce6f7880ea72'),
(629, 629, 1, NULL, NULL, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', 'd2bd5b59-dad5-44af-bbeb-52eb95c7a1f8'),
(630, 630, 1, NULL, NULL, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', 'db84c553-2ccd-4951-bd86-db56ce6dad17'),
(631, 631, 1, NULL, NULL, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', '45f18a15-e1ca-4c2c-9c07-ebce582f0138'),
(632, 632, 1, NULL, NULL, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', 'ebc55db5-e01d-4f8b-a749-3e06e045d038'),
(633, 633, 1, NULL, NULL, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '20452401-c7d8-4c36-9e3e-0c1b8b69af87'),
(634, 634, 1, NULL, NULL, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '70c3d3c8-c398-45c6-a020-c3b2075035a1'),
(635, 635, 1, NULL, NULL, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', '46e281b0-627c-4b4c-a1af-e05c1116b502'),
(636, 636, 1, NULL, NULL, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', '0bca5631-f14f-4c98-825e-e9ee51f024a0'),
(637, 637, 1, NULL, NULL, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', 'c144c71e-c1de-4dac-a997-8af1c05f88b3'),
(638, 638, 1, NULL, NULL, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', 'd314ec7c-71ec-4bfc-893f-a5d8defae8ae'),
(639, 639, 1, NULL, NULL, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', 'cc9595cb-358a-4f73-b8a8-2a02bfe3b5cb'),
(640, 640, 1, NULL, NULL, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '97960a53-337e-46aa-b8aa-4431c100207c'),
(641, 641, 1, NULL, NULL, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', '6eb92967-3570-4340-ac52-5fefbff558c6'),
(642, 642, 1, NULL, NULL, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', 'f534ebf4-20b5-4b4d-8768-29c2200fa724'),
(643, 643, 1, NULL, NULL, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', 'a1444ab7-c726-4552-8d1f-93c2d54a0933'),
(644, 644, 1, NULL, NULL, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', '7a1f6b1e-5e10-425c-a792-776a66dfd53b'),
(645, 645, 1, NULL, NULL, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', 'ff6e6325-b363-4869-a9d1-fad8710c0774'),
(646, 646, 1, NULL, NULL, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', 'd8fe7680-396f-4cf7-a4f7-74fe1c1ef16a'),
(650, 650, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '26c5917c-db3d-4a8b-82f5-e066c0e34ad7'),
(651, 651, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '589a4428-0409-4471-ac9b-ce4659db865e'),
(652, 652, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '5b92114f-ea28-4ff7-a13d-c6e906958b93'),
(653, 653, 1, 'home-page', '__home__', 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'be27e8a1-52fc-4392-8e82-0ecd19fa079a'),
(654, 654, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '1dd7be21-60e8-40d3-a324-a1214bf8a2c9'),
(655, 655, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'd6a95167-4181-4bbb-a398-9e3302240f32'),
(656, 656, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'b78b7650-0eca-4ed2-acf7-d03d899dcd3f'),
(657, 657, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'a25d4b38-b3f8-461c-85ed-d1cf8cb9eee8'),
(658, 658, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'cf4e286c-d4c3-4633-aecc-839defb2be87'),
(659, 659, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'd6c5a2e5-0a3c-48f0-bf88-fb00775ee6e0'),
(660, 660, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '946ca823-8c29-4936-8d64-a2161077a120'),
(661, 661, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'f2f72cec-b1b5-4715-9abb-252a2f3898fb'),
(662, 662, 1, NULL, NULL, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '0196c538-d2ef-496d-8f25-9907a12a5111'),
(663, 663, 1, 'home-page', '__home__', 1, '2023-04-24 17:47:04', '2023-04-24 17:47:04', 'cd83f682-54b6-416d-bf7d-67e752e6a6ea'),
(664, 664, 1, NULL, NULL, 1, '2023-04-24 17:47:04', '2023-04-24 17:47:04', 'c4f1385d-114e-4490-8ef5-855fc23eb7d6'),
(665, 665, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '837c5bed-9da4-4715-94ed-65a26fc6f076'),
(666, 666, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '843fcff6-d235-4d78-b402-a05bd9e38202'),
(667, 667, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '634d66ce-3ef2-48e4-81e4-4741866c191c'),
(668, 668, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '262d7847-5bd9-455e-88cf-e42dbef19972'),
(669, 669, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '309114ab-0439-4008-bf24-1b429891110a'),
(670, 670, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '95606531-0257-4ac8-971f-4270d2f11465'),
(671, 671, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '41e462b1-50a5-4432-b0d3-dbd80231d9e0'),
(672, 672, 1, NULL, NULL, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'fa186e0b-98b1-4af5-b276-35615e224d4e'),
(674, 674, 1, 'serice', 'service/serice', 1, '2023-04-24 19:02:08', '2023-04-24 19:02:08', 'a8d95c86-a47e-4f0e-b496-c5dde3495cb0'),
(675, 675, 1, 'serice', 'service/serice', 1, '2023-04-25 03:43:59', '2023-04-25 03:43:59', '719fe274-acc6-4d86-ad73-f1952b5b33b9'),
(676, 676, 1, 'service', 'service/service', 1, '2023-04-25 03:44:03', '2023-04-25 03:44:09', '22d5575c-c4e3-41c0-a1c7-54a56be9bffe'),
(677, 677, 1, 'service', 'service/service', 1, '2023-04-25 03:44:21', '2023-04-25 03:44:21', '0d21b39f-34f4-40b6-9308-a93339f037fa'),
(678, 678, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-25 05:30:24', '2023-04-25 05:33:41', '754d9438-16c8-4f9b-ab8e-3657d63fde37'),
(679, 679, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-25 05:34:28', '2023-04-25 05:34:28', '963181ac-5a0e-4c1b-85d0-ea8d14150065'),
(680, 680, 1, 'ktms-nile-river-rally', 'service/ktms-nile-river-rally', 1, '2023-04-25 05:34:35', '2023-04-25 05:34:47', '4ca5044e-43c2-49bb-b709-46426dc4e994'),
(681, 681, 1, 'ktms-nile-river-rally', 'service/ktms-nile-river-rally', 1, '2023-04-25 05:35:41', '2023-04-25 05:35:41', '1adf2f31-71b1-4f21-808b-087d827e48f3'),
(682, 682, 1, 'summer-days-in-argentina', 'service/summer-days-in-argentina', 1, '2023-04-25 05:35:48', '2023-04-25 05:36:05', '59d921b3-206e-402c-af24-2bc661041aa8'),
(683, 683, 1, 'summer-days-in-argentina', 'service/summer-days-in-argentina', 1, '2023-04-25 05:36:38', '2023-04-25 05:36:38', '4fa2fd39-bf45-4b5f-a96c-93c24abe7048'),
(685, 685, 1, 'summer-days-in-argentina', 'service/summer-days-in-argentina', 1, '2023-04-25 05:37:11', '2023-04-25 05:37:11', 'eddfaca6-e019-4f3f-a365-627fbf37faec'),
(687, 687, 1, 'ktms-nile-river-rally', 'service/ktms-nile-river-rally', 1, '2023-04-25 05:37:27', '2023-04-25 05:37:27', 'ce8dd2ac-cd3f-4818-8b51-60bcd80c8bc9'),
(689, 689, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-25 05:37:53', '2023-04-25 05:37:53', '7572605d-735c-441d-a80e-95aa38825583'),
(690, 690, 1, 'service-listing', 'service', 1, '2023-04-25 09:57:58', '2023-04-25 09:57:58', 'a49c85bc-8469-4152-8247-bbeb0c8d88d5'),
(691, 691, 1, 'service-listing', 'service', 1, '2023-04-25 09:57:58', '2023-04-25 09:57:58', '3f59d24a-747d-407f-9813-8611192ac64c'),
(692, 692, 1, 'service-listing', 'service', 1, '2023-04-25 09:57:58', '2023-04-25 09:57:58', '03bc4ec4-2a50-4900-9ef8-fecd29f7329a'),
(693, 693, 1, 'service-listing', 'service', 1, '2023-04-25 10:01:20', '2023-04-25 10:01:20', '54076ec1-ad4b-436f-8d10-3e7cab443af7'),
(694, 694, 1, 'service-listing', 'service', 1, '2023-04-25 10:01:45', '2023-04-25 10:01:45', 'ea49715f-a42d-488b-b2fe-b99a46f20866'),
(695, 695, 1, 'service-listing', 'service', 1, '2023-04-25 10:01:45', '2023-04-25 10:01:45', 'f50f6799-b090-435b-b561-6185b1fd591b'),
(696, 696, 1, 'service-listing', 'service', 1, '2023-04-25 10:01:45', '2023-04-25 10:01:45', 'aeaf0ed7-1798-4aec-a135-349a5704b51f'),
(698, 698, 1, 'service-listing', 'service', 1, '2023-04-25 10:02:56', '2023-04-25 10:02:56', '2b791354-3352-40d2-954c-1d3b6a10ad80'),
(699, 699, 1, 'service-listing', 'service', 1, '2023-04-25 10:08:01', '2023-04-25 10:08:01', 'd013af42-74d3-4c83-acb8-217dd5b6d04d'),
(701, 701, 1, 'service-listing', 'service', 1, '2023-04-25 10:08:22', '2023-04-25 10:08:22', '40b0863b-f817-4335-beeb-43ef28095d4a'),
(703, 703, 1, 'service-listing', 'service', 1, '2023-04-25 10:10:42', '2023-04-25 10:10:42', 'b67bb007-a6b0-4643-be69-026e3f148741'),
(704, 704, 1, 'about-us', 'about', 1, '2023-04-25 11:48:38', '2023-04-25 11:48:38', '453088e1-b508-4dbf-aed5-74b183f5d807'),
(705, 705, 1, 'about-us', 'about', 1, '2023-04-25 11:48:38', '2023-04-25 11:48:38', '2452352d-e432-4ef5-87aa-11d46420edaf'),
(706, 706, 1, 'about-us', 'about', 1, '2023-04-25 11:48:38', '2023-04-25 11:48:38', 'ba4d548c-a19e-4302-b4a2-7aac33a183d5'),
(707, 707, 1, 'about-us', 'about', 1, '2023-04-25 13:13:49', '2023-04-25 13:13:49', '81ee6b94-edba-4237-bd2d-852657ebb09e'),
(709, 709, 1, 'about-us', 'about', 1, '2023-04-25 13:15:23', '2023-04-25 13:15:23', '192ea572-98f1-4396-b7f3-40263a85a2cf'),
(710, 710, 1, 'about-us', 'about', 1, '2023-04-25 13:18:09', '2023-04-25 13:18:09', 'd5c1468e-613f-4085-bc27-7ff864143ae9'),
(711, 711, 1, 'about-us', 'about', 1, '2023-04-25 13:18:55', '2023-04-25 13:18:55', '6e7413ad-9379-4387-b997-af69b74a96a6'),
(712, 712, 1, 'about-us', 'about', 1, '2023-04-25 13:18:56', '2023-04-25 13:18:56', 'dfd825b3-66fb-46a6-9523-7fcc5decd79d'),
(713, 713, 1, 'about-us', 'about', 1, '2023-04-25 13:23:18', '2023-04-25 13:23:18', '5b66c407-c68f-436f-86dc-12509de3730a'),
(714, 714, 1, 'about-us', 'about', 1, '2023-04-25 13:23:18', '2023-04-25 13:23:18', '2e366dec-392f-45f8-b5cf-819d6f38a459'),
(715, 715, 1, 'about-us', 'about', 1, '2023-04-25 13:26:23', '2023-04-25 13:26:23', '14dba493-f74d-486e-ae36-da206facfece'),
(717, 717, 1, 'about-us', 'about', 1, '2023-04-25 13:26:48', '2023-04-25 13:26:48', '192e041f-2415-4e37-87a5-7e41e6cc1c05'),
(718, 718, 1, 'the-worlds-best-dental-clinic-that-you-can-trust', 'blog/the-worlds-best-dental-clinic-that-you-can-trust', 1, '2023-04-25 14:06:39', '2023-04-25 14:07:17', '30eedac3-d553-422c-8ec0-990208e3e6b8'),
(719, 719, 1, 'the-worlds-best-dental-clinic-that-you-can-trust', 'blog/the-worlds-best-dental-clinic-that-you-can-trust', 1, '2023-04-25 17:48:45', '2023-04-25 17:48:45', 'fe31f247-70f5-4528-a9f8-483f1255cc2a'),
(720, 720, 1, 'good-work', 'blog/good-work', 1, '2023-04-25 20:06:55', '2023-04-25 20:07:36', '211df105-02e7-411d-9ede-40ba50c3aa9b'),
(721, 721, 1, 'good-work', 'blog/good-work', 1, '2023-04-25 20:08:50', '2023-04-25 20:08:50', '37b1e4a3-c17d-4ce2-aa56-60a1877d5fbd'),
(722, 722, 1, 'malesuada-fames-ac-turpis-egestas', 'blog/malesuada-fames-ac-turpis-egestas', 1, '2023-04-25 20:08:55', '2023-04-25 20:09:32', 'bda2bb19-6e2a-4b0b-b5e0-1041c3af6219'),
(723, 723, 1, 'malesuada-fames-ac-turpis-egestas', 'blog/malesuada-fames-ac-turpis-egestas', 1, '2023-04-25 20:10:04', '2023-04-25 20:10:04', 'd56ac85e-5e85-4958-802a-4dfc51bf8ddd'),
(724, 724, 1, 'blog-listing', 'blog', 1, '2023-04-25 20:52:21', '2023-04-25 20:52:21', '35e0845d-ea27-4a61-9dd0-504e770ea88a'),
(725, 725, 1, 'blog-listing', 'blog', 1, '2023-04-25 20:52:21', '2023-04-25 20:52:21', '26b1f1e3-1408-4829-9805-2a6032d926cf'),
(726, 726, 1, 'blog-listing', 'blog', 1, '2023-04-25 20:52:21', '2023-04-25 20:52:21', '83d342a1-1c67-4a15-aeae-3eb9be40a266'),
(727, 727, 1, 'blog-listing', 'blog', 1, '2023-04-25 20:54:05', '2023-04-25 20:54:05', '720fff85-3837-4d1e-b811-6ee4b0c2c1a0'),
(729, 729, 1, 'blog-listing', 'blog', 1, '2023-04-25 20:54:53', '2023-04-25 20:54:53', '509ee8dd-8b22-483e-ace0-4922451bdca4'),
(730, 730, 1, 'contact-us', 'contact', 1, '2023-04-26 20:06:39', '2023-04-26 20:06:39', '2a63b5a6-e9bb-4acc-b97b-440be5ea89e9'),
(731, 731, 1, 'contact-us', 'contact', 1, '2023-04-26 20:06:39', '2023-04-26 20:06:39', '6169dbfd-bc9e-4071-b34d-632c51976309'),
(732, 732, 1, 'contact-us', 'contact', 1, '2023-04-26 20:06:39', '2023-04-26 20:06:39', '7395bf0b-6056-4726-87e8-52bbb8ccfcf6'),
(733, 733, 1, 'layout-listing', '_layout', 1, '2023-04-26 20:16:54', '2023-04-26 21:09:23', '81f0630a-54df-4210-8080-feace259ab4b'),
(734, 734, 1, 'layout-listing', '@web', 1, '2023-04-26 20:16:54', '2023-04-26 21:04:20', '01983a04-a79b-4a6d-98df-ff98d307aaf2'),
(735, 735, 1, 'layout-listing', '@web', 1, '2023-04-26 20:16:54', '2023-04-26 21:04:20', '467fb60d-2e80-4079-a15c-bdda48589504'),
(736, 736, 1, 'layout-listing', '@web', 1, '2023-04-26 20:45:47', '2023-04-26 21:04:20', 'ebc7310c-b5a8-43ac-b94a-11a6de43f60f'),
(737, 737, 1, 'layout-listing', '@web', 1, '2023-04-26 20:49:55', '2023-04-26 21:04:20', 'b0dd8585-7e26-4d67-b2b6-0f969e3cad1b'),
(739, 739, 1, 'layout-listing', '@web', 1, '2023-04-26 20:52:47', '2023-04-26 21:04:20', 'e62f28c1-f7e5-43cb-9181-6780339adb1d'),
(740, 740, 1, 'layout-listing', '@web', 1, '2023-04-26 20:55:12', '2023-04-26 21:04:20', '4137139e-81d2-44cd-a152-01af9696d3ec'),
(741, 741, 1, 'layout-listing', '@web', 1, '2023-04-26 20:55:43', '2023-04-26 21:04:20', '336db3c2-868c-40ed-ab01-c984d950234b'),
(742, 742, 1, 'layout-listing', '@web', 1, '2023-04-26 20:56:11', '2023-04-26 21:04:20', 'b5231be8-630c-4427-8841-36ba003d4868'),
(743, 743, 1, 'layout-listing', '@web', 1, '2023-04-26 20:56:42', '2023-04-26 21:04:20', '4d197e7b-402f-4256-88ef-a6a7fa8ff8b2'),
(744, 744, 1, 'layout-listing', '@web', 1, '2023-04-26 20:58:22', '2023-04-26 21:04:20', '14894c84-4912-4969-bfbe-62a178d29063'),
(745, 745, 1, 'layout-listing', '@web', 1, '2023-04-26 21:03:16', '2023-04-26 21:04:20', '171cc406-0b2e-4fa9-8f52-6a98b682927a'),
(746, 746, 1, 'layout-listing', '@web', 1, '2023-04-26 21:04:19', '2023-04-26 21:04:19', '12ddbb6e-b515-423e-9610-61ff52f92727'),
(747, 747, 1, 'layout-listing', '@web', 1, '2023-04-26 21:04:19', '2023-04-26 21:04:19', 'fe0c28eb-bac1-47e3-8874-d2be12f1368e'),
(748, 748, 1, 'layout-listing', '@web', 1, '2023-04-26 21:04:33', '2023-04-26 21:04:33', 'dfea385e-05c0-49a7-ad1d-56856a7ecccd'),
(749, 749, 1, 'layout-listing', '_layout', 1, '2023-04-26 21:09:23', '2023-04-26 21:09:23', 'f01b4088-de5c-4df0-a891-a3f2827c07b2'),
(750, 750, 1, 'layout-listing', '_layout', 1, '2023-04-26 21:09:23', '2023-04-26 21:09:23', 'ac570d74-3c4b-4c30-b17b-b761e2b2e73c'),
(752, 752, 1, 'layout-listing', '_layout', 1, '2023-04-27 04:10:29', '2023-04-27 04:10:29', '84f8ab9a-da0c-4567-b4fa-b1d7429e4679'),
(753, 753, 1, 'contact-us', 'contact', 1, '2023-04-27 04:15:35', '2023-04-27 04:15:35', '4e26a74e-4fea-47bd-8d7b-623f72bd240e'),
(755, 755, 1, 'contact-us', 'contact', 1, '2023-04-27 04:16:31', '2023-04-27 04:16:31', 'afbf4c28-b6fa-4515-9fbb-c0434cf41655'),
(757, 757, 1, 'contact-us', 'contact', 1, '2023-04-27 04:21:54', '2023-04-27 04:21:54', '0349af6e-d44c-4e00-8d8c-02446bed7d91'),
(758, 758, 1, 'contact-us', 'contact', 1, '2023-04-27 04:24:17', '2023-04-27 04:24:17', '7b596d9b-593b-4f0c-9f77-8360acde9505'),
(759, 759, 1, 'contact-us', 'contact', 1, '2023-04-27 04:25:22', '2023-04-27 04:25:22', 'c0a17af9-5e21-47b6-a615-e4f1f3e5c2c1'),
(761, 761, 1, 'contact-us', 'contact', 1, '2023-04-27 04:27:15', '2023-04-27 04:27:15', 'b2d43b9f-7f35-4574-817e-16b0b2445632'),
(763, 763, 1, 'layout-listing', '_layout', 1, '2023-04-27 04:31:53', '2023-04-27 04:31:53', '8fc712d7-7c27-49a5-926b-4cb435e013f0'),
(765, 765, 1, 'layout-listing', '_layout', 1, '2023-04-27 21:13:24', '2023-04-27 21:13:24', 'eec1b51a-5ec2-490d-9332-124188b8114e'),
(767, 767, 1, 'malesuada-fames-ac-turpis-egestas', 'blog/malesuada-fames-ac-turpis-egestas', 1, '2023-04-29 19:08:23', '2023-04-29 19:08:23', 'd26e2a05-8c97-4f01-ac7d-b30ca777ab55'),
(769, 769, 1, 'good-work', 'blog/good-work', 1, '2023-04-29 19:08:39', '2023-04-29 19:08:39', 'ad01cea6-0527-47de-b1d1-90aa29d0c916'),
(771, 771, 1, 'the-worlds-best-dental-clinic-that-you-can-trust', 'blog/the-worlds-best-dental-clinic-that-you-can-trust', 1, '2023-04-29 19:08:56', '2023-04-29 19:08:56', '5b20bea3-90b7-4a03-9cf2-d657e380a5f6'),
(772, 772, 1, 'malesuada-fames-ac-turpis-egestas', 'blog/malesuada-fames-ac-turpis-egestas', 1, '2023-04-29 19:12:36', '2023-04-29 19:12:36', '04d44eca-3430-4157-b897-48d876559f93'),
(774, 774, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-29 19:24:11', '2023-04-29 19:24:11', 'e966b633-2df4-4a7f-8ed2-1f4a87ce997c'),
(776, 776, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-29 19:26:21', '2023-04-29 19:26:21', '495e6321-b697-476b-8e7e-6741992d1335'),
(778, 778, 1, 'exporing-peru-by-motorbike', 'service/exporing-peru-by-motorbike', 1, '2023-04-29 19:41:02', '2023-04-29 19:41:02', 'd88c4cd3-47e5-4dc1-8e29-e16293711b1a'),
(780, 780, 1, 'malesuada-fames-ac-turpis-egestas', 'blog/malesuada-fames-ac-turpis-egestas', 1, '2023-04-29 19:56:12', '2023-04-29 19:56:12', 'cb8b4d52-efe4-431c-87ce-cbb32dae336f'),
(782, 782, 1, 'summer-days-in-argentina', 'service/summer-days-in-argentina', 1, '2023-05-01 03:01:25', '2023-05-01 03:01:25', 'e1264176-1444-44ec-8ba0-f0682b0b808f'),
(784, 784, 1, 'layout-listing', '_layout', 1, '2023-05-01 03:30:31', '2023-05-01 03:30:31', '84e926f0-2cec-4a3d-ba02-6c29f868f21c'),
(785, 785, 1, NULL, NULL, 1, '2023-05-01 03:31:37', '2023-05-01 03:31:37', '8b7dcbe6-702c-43b5-acc8-a2acc11a7bbb'),
(786, 786, 1, NULL, NULL, 1, '2023-05-01 04:00:02', '2023-05-01 04:00:02', 'd7813b01-8952-4399-b5e6-264604f70576');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-19 19:11:29', '2023-03-19 19:11:29'),
(3, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-19 19:11:29', '2023-03-19 19:11:29'),
(4, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-19 19:11:29', '2023-03-19 19:11:29'),
(5, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-19 19:13:52', '2023-03-19 19:13:52'),
(6, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-19 19:13:52', '2023-03-19 19:13:52'),
(7, 2, NULL, 2, 1, '2023-03-19 19:29:00', NULL, 0, '2023-03-19 19:27:48', '2023-03-19 19:29:21'),
(8, 2, NULL, 2, 1, '2023-03-19 19:29:00', NULL, NULL, '2023-03-19 19:29:21', '2023-03-19 19:29:21'),
(9, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-03-20 13:33:00', '2023-03-20 13:33:00'),
(33, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 02:42:37', '2023-04-24 02:42:37'),
(34, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 02:44:07', '2023-04-24 02:44:07'),
(36, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 02:53:51', '2023-04-24 02:53:51'),
(38, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 02:54:21', '2023-04-24 02:54:21'),
(39, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 04:45:23', '2023-04-24 04:45:23'),
(289, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:07:41', '2023-04-24 05:07:41'),
(294, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:10:44', '2023-04-24 05:10:44'),
(300, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:24:17', '2023-04-24 05:24:17'),
(305, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:26:16', '2023-04-24 05:26:16'),
(310, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:27:53', '2023-04-24 05:27:53'),
(316, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:29:15', '2023-04-24 05:29:15'),
(322, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:30:37', '2023-04-24 05:30:37'),
(327, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:30:55', '2023-04-24 05:30:55'),
(332, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:33:45', '2023-04-24 05:33:45'),
(337, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:35:04', '2023-04-24 05:35:04'),
(342, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:38:03', '2023-04-24 05:38:03'),
(347, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:38:35', '2023-04-24 05:38:35'),
(352, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:39:28', '2023-04-24 05:39:28'),
(357, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:40:27', '2023-04-24 05:40:27'),
(362, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:41:49', '2023-04-24 05:41:49'),
(367, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:42:14', '2023-04-24 05:42:14'),
(372, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:42:48', '2023-04-24 05:42:48'),
(377, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:43:34', '2023-04-24 05:43:34'),
(382, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 05:44:49', '2023-04-24 05:44:49'),
(385, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:30:52', '2023-04-24 06:30:52'),
(388, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:31:54', '2023-04-24 06:31:54'),
(391, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:32:25', '2023-04-24 06:32:25'),
(409, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:37:35', '2023-04-24 06:37:35'),
(415, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:43:02', '2023-04-24 06:43:02'),
(421, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:46:02', '2023-04-24 06:46:02'),
(427, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 06:52:44', '2023-04-24 06:52:44'),
(431, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 13:46:43', '2023-04-24 13:46:43'),
(476, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(483, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(557, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(565, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(575, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(582, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(653, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(663, 1, NULL, 1, NULL, '2023-03-19 19:11:00', NULL, NULL, '2023-04-24 17:47:04', '2023-04-24 17:47:04'),
(674, 2, NULL, 2, 1, '2023-03-19 19:29:00', NULL, NULL, '2023-04-24 19:02:08', '2023-04-24 19:02:08'),
(675, 2, NULL, 2, 1, '2023-03-19 19:29:00', NULL, NULL, '2023-04-25 03:43:59', '2023-04-25 03:43:59'),
(676, 2, NULL, 2, 1, '2023-04-25 03:44:00', NULL, 0, '2023-04-25 03:44:03', '2023-04-25 03:44:21'),
(677, 2, NULL, 2, 1, '2023-04-25 03:44:00', NULL, NULL, '2023-04-25 03:44:21', '2023-04-25 03:44:21'),
(678, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-25 05:30:24', '2023-04-25 05:34:28'),
(679, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-25 05:34:28', '2023-04-25 05:34:28'),
(680, 2, NULL, 2, 1, '2023-04-25 05:35:00', NULL, NULL, '2023-04-25 05:34:35', '2023-04-25 05:35:41'),
(681, 2, NULL, 2, 1, '2023-04-25 05:35:00', NULL, NULL, '2023-04-25 05:35:41', '2023-04-25 05:35:41'),
(682, 2, NULL, 2, 1, '2023-04-25 05:36:00', NULL, NULL, '2023-04-25 05:35:48', '2023-04-25 05:36:38'),
(683, 2, NULL, 2, 1, '2023-04-25 05:36:00', NULL, NULL, '2023-04-25 05:36:38', '2023-04-25 05:36:38'),
(685, 2, NULL, 2, 1, '2023-04-25 05:36:00', NULL, NULL, '2023-04-25 05:37:11', '2023-04-25 05:37:11'),
(687, 2, NULL, 2, 1, '2023-04-25 05:35:00', NULL, NULL, '2023-04-25 05:37:27', '2023-04-25 05:37:27'),
(689, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-25 05:37:53', '2023-04-25 05:37:53'),
(690, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 09:57:58', '2023-04-25 09:57:58'),
(691, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 09:57:58', '2023-04-25 09:57:58'),
(692, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 09:57:58', '2023-04-25 09:57:58'),
(693, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:01:20', '2023-04-25 10:01:20'),
(694, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:01:45', '2023-04-25 10:01:45'),
(695, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:01:45', '2023-04-25 10:01:45'),
(696, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:01:45', '2023-04-25 10:01:45'),
(698, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:02:56', '2023-04-25 10:02:56'),
(699, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:08:01', '2023-04-25 10:08:01'),
(701, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:08:22', '2023-04-25 10:08:22'),
(703, 3, NULL, 3, NULL, '2023-04-25 09:57:00', NULL, NULL, '2023-04-25 10:10:42', '2023-04-25 10:10:42'),
(704, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 11:48:38', '2023-04-25 11:48:38'),
(705, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 11:48:38', '2023-04-25 11:48:38'),
(706, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 11:48:38', '2023-04-25 11:48:38'),
(707, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:13:49', '2023-04-25 13:13:49'),
(709, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:15:23', '2023-04-25 13:15:23'),
(710, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:18:09', '2023-04-25 13:18:09'),
(711, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:18:55', '2023-04-25 13:18:55'),
(712, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:18:56', '2023-04-25 13:18:56'),
(713, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:23:18', '2023-04-25 13:23:18'),
(714, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:23:18', '2023-04-25 13:23:18'),
(715, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:26:23', '2023-04-25 13:26:23'),
(717, 4, NULL, 4, NULL, '2023-04-25 11:48:00', NULL, NULL, '2023-04-25 13:26:48', '2023-04-25 13:26:48'),
(718, 5, NULL, 5, 1, '2023-04-25 17:48:00', NULL, NULL, '2023-04-25 14:06:39', '2023-04-25 17:48:45'),
(719, 5, NULL, 5, 1, '2023-04-25 17:48:00', NULL, NULL, '2023-04-25 17:48:45', '2023-04-25 17:48:45'),
(720, 5, NULL, 5, 1, '2023-04-25 20:08:00', NULL, NULL, '2023-04-25 20:06:55', '2023-04-25 20:08:50'),
(721, 5, NULL, 5, 1, '2023-04-25 20:08:00', NULL, NULL, '2023-04-25 20:08:50', '2023-04-25 20:08:50'),
(722, 5, NULL, 5, 1, '2023-04-25 20:10:00', NULL, NULL, '2023-04-25 20:08:55', '2023-04-25 20:10:04'),
(723, 5, NULL, 5, 1, '2023-04-25 20:10:00', NULL, NULL, '2023-04-25 20:10:04', '2023-04-25 20:10:04'),
(724, 6, NULL, 6, NULL, '2023-04-25 20:52:00', NULL, NULL, '2023-04-25 20:52:21', '2023-04-25 20:52:21'),
(725, 6, NULL, 6, NULL, '2023-04-25 20:52:00', NULL, NULL, '2023-04-25 20:52:21', '2023-04-25 20:52:21'),
(726, 6, NULL, 6, NULL, '2023-04-25 20:52:00', NULL, NULL, '2023-04-25 20:52:21', '2023-04-25 20:52:21'),
(727, 6, NULL, 6, NULL, '2023-04-25 20:52:00', NULL, NULL, '2023-04-25 20:54:05', '2023-04-25 20:54:05'),
(729, 6, NULL, 6, NULL, '2023-04-25 20:52:00', NULL, NULL, '2023-04-25 20:54:53', '2023-04-25 20:54:53'),
(730, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-26 20:06:39', '2023-04-26 20:06:39'),
(731, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-26 20:06:39', '2023-04-26 20:06:39'),
(732, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-26 20:06:39', '2023-04-26 20:06:39'),
(733, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:16:54', '2023-04-27 04:03:56'),
(734, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:16:54', '2023-04-27 04:03:56'),
(735, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:16:54', '2023-04-27 04:03:56'),
(736, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:45:47', '2023-04-27 04:03:56'),
(737, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:49:55', '2023-04-27 04:03:56'),
(739, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:52:47', '2023-04-27 04:03:56'),
(740, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:55:12', '2023-04-27 04:03:56'),
(741, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:55:43', '2023-04-27 04:03:56'),
(742, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:56:11', '2023-04-27 04:03:56'),
(743, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:56:42', '2023-04-27 04:03:56'),
(744, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 20:58:22', '2023-04-27 04:03:56'),
(745, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:03:16', '2023-04-27 04:03:56'),
(746, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:04:19', '2023-04-27 04:03:56'),
(747, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:04:19', '2023-04-27 04:03:56'),
(748, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:04:33', '2023-04-27 04:03:56'),
(749, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:09:23', '2023-04-27 04:03:56'),
(750, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-26 21:09:23', '2023-04-27 04:03:56'),
(752, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-27 04:10:29', '2023-04-27 04:10:29'),
(753, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:15:35', '2023-04-27 04:15:35'),
(755, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:16:31', '2023-04-27 04:16:31'),
(757, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:21:54', '2023-04-27 04:21:54'),
(758, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:24:17', '2023-04-27 04:24:17'),
(759, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:25:22', '2023-04-27 04:25:22'),
(761, 7, NULL, 7, NULL, '2023-04-26 20:06:00', NULL, NULL, '2023-04-27 04:27:15', '2023-04-27 04:27:15'),
(763, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-27 04:31:53', '2023-04-27 04:31:53'),
(765, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-04-27 21:13:24', '2023-04-27 21:13:24'),
(767, 5, NULL, 5, 1, '2023-04-25 20:10:00', NULL, NULL, '2023-04-29 19:08:23', '2023-04-29 19:08:23'),
(769, 5, NULL, 5, 1, '2023-04-25 20:08:00', NULL, NULL, '2023-04-29 19:08:39', '2023-04-29 19:08:39'),
(771, 5, NULL, 5, 1, '2023-04-25 17:48:00', NULL, NULL, '2023-04-29 19:08:56', '2023-04-29 19:08:56'),
(772, 5, NULL, 5, 1, '2023-04-25 20:10:00', NULL, NULL, '2023-04-29 19:12:36', '2023-04-29 19:12:36'),
(774, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-29 19:24:11', '2023-04-29 19:24:11'),
(776, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-29 19:26:21', '2023-04-29 19:26:21'),
(778, 2, NULL, 2, 1, '2023-04-25 05:34:00', NULL, NULL, '2023-04-29 19:41:02', '2023-04-29 19:41:02'),
(780, 5, NULL, 5, 1, '2023-04-25 20:10:00', NULL, NULL, '2023-04-29 19:56:12', '2023-04-29 19:56:12'),
(782, 2, NULL, 2, 1, '2023-04-25 05:36:00', NULL, NULL, '2023-05-01 03:01:25', '2023-05-01 03:01:25'),
(784, 8, NULL, 8, 1, '2023-04-26 20:16:00', NULL, NULL, '2023-05-01 03:30:31', '2023-05-01 03:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home Page', 'homePage', 0, 'site', NULL, '{section.name|raw}', 1, '2023-03-19 19:11:29', '2023-03-19 19:11:29', NULL, 'cc64c678-8b40-4d3d-bd8e-e0749b55bfbe'),
(2, 2, 2, 'Service', 'service', 1, 'site', NULL, NULL, 1, '2023-03-19 19:15:01', '2023-03-19 19:15:22', NULL, '1e701080-19f6-4740-9cc9-6f033dda07e6'),
(3, 3, 10, 'Services Listing', 'servicesListing', 1, 'site', NULL, '{section.name|raw}', 1, '2023-04-25 09:57:58', '2023-04-25 10:01:45', NULL, 'b7628694-d6a0-4594-8d8b-a870b4af88ef'),
(4, 4, 11, 'About Us', 'aboutUs', 1, 'site', NULL, '{section.name|raw}', 1, '2023-04-25 11:48:37', '2023-04-25 13:13:49', NULL, 'e3931efc-d1d3-40b4-9c6a-8cc044579edc'),
(5, 5, 12, 'News Blog', 'newsBlog', 1, 'site', NULL, NULL, 1, '2023-04-25 14:02:35', '2023-04-25 14:05:07', NULL, '803d2c3d-46be-49be-a690-2e4c161b1be6'),
(6, 6, 13, 'Blog Listing', 'blogListing', 1, 'site', NULL, '{section.name|raw}', 1, '2023-04-25 20:52:21', '2023-04-25 20:54:05', NULL, 'ed16eca0-b883-4ac5-9366-1e11c0b78107'),
(7, 7, 14, 'Contact Us', 'contactUs', 1, 'site', NULL, '{section.name|raw}', 1, '2023-04-26 20:06:38', '2023-04-27 04:15:35', NULL, '9d1cfb5c-1bd4-4177-974b-d5eba29fb777'),
(8, 8, 15, 'Layout Listing', 'layoutListing', 0, 'site', NULL, '{section.name|raw}', 1, '2023-04-26 20:16:54', '2023-04-26 20:16:54', NULL, 'a44b777a-c330-46d3-bfd9-90b27a4ff78c');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2023-03-19 04:02:55', '2023-03-19 04:02:55', NULL, '98732b45-a75a-4682-b38f-68211a86d58e'),
(2, 'Home Page', '2023-03-20 13:21:14', '2023-03-20 13:21:14', NULL, '369ee378-e78c-45b5-96d7-2810c20427ef'),
(3, 'Services', '2023-04-24 18:53:52', '2023-04-24 18:53:52', NULL, '108a81f0-21fa-4699-9dd2-28a15fb8583b');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 3, 8, 1, 1, 1, '2023-03-20 14:25:41', '2023-03-20 14:25:41', '27ad1938-2a0c-490b-a63a-57eab920d348'),
(22, 5, 17, 10, 1, 0, '2023-04-24 04:59:08', '2023-04-24 04:59:08', '4d09017c-3874-4045-afaf-b4fc6eb50113'),
(23, 5, 17, 9, 1, 1, '2023-04-24 04:59:08', '2023-04-24 04:59:08', 'bf8fd8d6-3284-49d4-8565-cfc82e8c3db2'),
(24, 5, 17, 11, 1, 2, '2023-04-24 04:59:08', '2023-04-24 04:59:08', '85dd8236-8857-4b31-9629-2382add18378'),
(59, 6, 31, 13, 1, 0, '2023-04-24 06:45:33', '2023-04-24 06:45:33', 'f8d071e7-c561-4dc5-b647-f16f30434a28'),
(60, 6, 31, 15, 1, 1, '2023-04-24 06:45:33', '2023-04-24 06:45:33', '23e02ad2-0f6b-43d1-a1a6-5cc778fa2d72'),
(61, 6, 31, 14, 1, 2, '2023-04-24 06:45:33', '2023-04-24 06:45:33', '34d182d3-3515-4d3b-8ea9-4ce88b32e4d6'),
(95, 7, 47, 18, 1, 0, '2023-04-24 16:35:06', '2023-04-24 16:35:06', '9e71f52d-4374-4b50-8b7d-6a67456d0cbe'),
(96, 7, 47, 19, 1, 1, '2023-04-24 16:35:06', '2023-04-24 16:35:06', '034c506d-2759-4dc0-a8f7-d2996cd644ad'),
(103, 1, 49, 5, 0, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'adda5fb4-af72-47af-9d54-0ecf04c75149'),
(104, 1, 49, 3, 0, 2, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'ddc78ad4-c9ce-46ff-b203-9d94685dcae1'),
(105, 1, 49, 1, 0, 3, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '2aa8c149-9307-4a80-a5a3-e4319ed21459'),
(106, 1, 49, 6, 0, 4, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '055c31b8-c589-4ccc-8e98-a80e1333ad64'),
(107, 1, 49, 4, 0, 5, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '602c8f9c-c555-409c-a5db-a01c1c5d86a1'),
(108, 1, 49, 2, 0, 6, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'd282af4b-efcd-4c2e-a338-53b3912c188b'),
(109, 1, 50, 7, 0, 0, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'bb131b76-8015-451e-b80a-347834d6d3fe'),
(110, 1, 51, 12, 0, 0, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '8b5341a2-b60b-4ae6-85f9-765823cf62ef'),
(111, 1, 52, 21, 0, 0, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '2b71d9e5-2193-4a41-a809-d3aaaabedab1'),
(112, 1, 52, 17, 0, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '9d58c893-da05-40e9-92b1-2c1524afc4cd'),
(113, 1, 53, 29, 0, 0, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '4ba4ef3b-b440-42d9-821e-2b12b08c2e2d'),
(114, 1, 53, 22, 0, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'bf51e526-cd90-4ace-80d5-caecb4b7f792'),
(115, 9, 54, 25, 1, 0, '2023-04-24 17:42:05', '2023-04-24 17:42:05', 'bcdd2fda-cd91-49cb-9d6d-b844026e61eb'),
(116, 9, 54, 24, 1, 1, '2023-04-24 17:42:05', '2023-04-24 17:42:05', 'ac6d4c5b-db77-4c4d-9478-8ed49a9724e9'),
(117, 9, 54, 26, 1, 2, '2023-04-24 17:42:05', '2023-04-24 17:42:05', 'ecc90698-37eb-49cd-b4bf-4bd7b4bc15e6'),
(118, 9, 54, 27, 0, 3, '2023-04-24 17:42:05', '2023-04-24 17:42:05', 'f8d9fa0e-c5c4-4eba-8c46-4429385fca54'),
(119, 9, 54, 28, 0, 4, '2023-04-24 17:42:05', '2023-04-24 17:42:05', 'df1b0c3f-e5c8-44a1-a2af-113d2790cc6b'),
(120, 9, 54, 23, 0, 5, '2023-04-24 17:42:05', '2023-04-24 17:42:05', '99570e2c-ac60-4bf8-b34f-a7fa2972c641'),
(126, 2, 57, 32, 1, 1, '2023-04-25 08:51:41', '2023-04-25 08:51:41', '9e872103-bb7b-4870-b25d-ed596e5a5313'),
(127, 2, 57, 33, 1, 2, '2023-04-25 08:51:41', '2023-04-25 08:51:41', 'd34f7bec-9281-4573-b953-59a16f81236f'),
(128, 2, 57, 34, 1, 3, '2023-04-25 08:51:41', '2023-04-25 08:51:41', 'e8298f54-dc06-46bd-a8eb-57a036b2a151'),
(131, 10, 61, 21, 0, 1, '2023-04-25 10:08:01', '2023-04-25 10:08:01', '1f7643e7-753a-46e9-95f8-c7d77cfbbd18'),
(132, 10, 61, 1, 0, 2, '2023-04-25 10:08:01', '2023-04-25 10:08:01', 'eea94bca-8367-47ac-b0ff-1b43a68645fe'),
(136, 11, 64, 34, 1, 1, '2023-04-25 13:26:23', '2023-04-25 13:26:23', '675117d8-1bf9-42ad-b3fc-ffabc9a08771'),
(137, 11, 64, 2, 1, 2, '2023-04-25 13:26:23', '2023-04-25 13:26:23', 'c71575ad-8640-4159-9fca-0aa909be06c2'),
(138, 11, 64, 33, 1, 3, '2023-04-25 13:26:23', '2023-04-25 13:26:23', '9457a3dd-95ac-4f38-aa46-0ea51c6a8baa'),
(139, 11, 64, 1, 1, 4, '2023-04-25 13:26:23', '2023-04-25 13:26:23', 'baa50fe4-8be5-45a1-a522-0911817eb196'),
(140, 12, 66, 32, 0, 1, '2023-04-25 14:05:07', '2023-04-25 14:05:07', '5886af30-a9e7-46d0-99d6-9dab4371549f'),
(141, 12, 66, 34, 1, 2, '2023-04-25 14:05:07', '2023-04-25 14:05:07', '48929030-a47a-4bb5-9dba-6376a5413189'),
(142, 12, 66, 33, 1, 3, '2023-04-25 14:05:07', '2023-04-25 14:05:07', '24b5e563-bb76-4e28-ae38-2cd40be5ba0e'),
(143, 12, 66, 21, 1, 4, '2023-04-25 14:05:07', '2023-04-25 14:05:07', 'c144773f-0cdb-4052-b7f4-2480430ef76b'),
(144, 13, 68, 1, 1, 1, '2023-04-25 20:54:05', '2023-04-25 20:54:05', '51b0a585-9411-41a1-bde0-93ff0a6422fb'),
(157, 14, 75, 35, 1, 1, '2023-04-27 04:25:22', '2023-04-27 04:25:22', '80980192-08d3-491b-8441-1c8c915226cb'),
(158, 14, 75, 1, 1, 2, '2023-04-27 04:25:22', '2023-04-27 04:25:22', '35ce67cf-2207-4e3c-a5d7-9dbc0989536a'),
(172, 15, 78, 35, 0, 1, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '96226b8c-c3bd-4158-a73e-c5bb20a1edcf'),
(173, 15, 78, 36, 1, 2, '2023-04-27 21:12:44', '2023-04-27 21:12:44', 'c92a1e66-f5f5-4e44-bfe5-2b6983ae9c7f'),
(174, 15, 78, 37, 1, 3, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '2910bbc1-acf1-4bda-9deb-d807ae788af4'),
(175, 15, 78, 38, 1, 4, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '1a8d5282-e84b-4877-ba83-4a4c149b27b5'),
(176, 15, 78, 40, 1, 5, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '031ba8f0-fc72-4498-b5cc-d71325bdd9e8'),
(177, 15, 78, 39, 1, 6, '2023-04-27 21:12:44', '2023-04-27 21:12:44', 'afdf05d9-f127-4c50-be78-6d015e37bb2a'),
(178, 15, 78, 41, 1, 7, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '0b1c23b8-9e88-4b3e-be87-004ea2995f4f'),
(179, 15, 78, 42, 1, 8, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '4cee1419-a136-4b68-93f8-2c26223b9cb1');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2023-03-19 19:11:29', '2023-03-19 19:11:29', NULL, '6326bac3-17af-42b0-baa6-ccef29f34674'),
(2, 'craft\\elements\\Entry', '2023-03-19 19:15:01', '2023-03-19 19:15:01', NULL, 'dccd3251-5f65-46fa-96e5-1ae5aec75686'),
(3, 'craft\\elements\\Asset', '2023-03-20 13:35:58', '2023-03-20 13:35:58', '2023-03-26 16:45:28', 'c79e8161-f1ac-4438-88ef-99fce9323de2'),
(4, 'craft\\elements\\Asset', '2023-03-26 16:48:56', '2023-03-26 16:48:56', NULL, 'fdb0e942-3e45-40be-995d-61e1e4209085'),
(5, 'craft\\elements\\MatrixBlock', '2023-04-24 04:57:57', '2023-04-24 04:57:57', NULL, 'd35cb240-0478-4d04-b71b-989335ed897e'),
(6, 'craft\\elements\\MatrixBlock', '2023-04-24 06:30:08', '2023-04-24 06:30:08', NULL, 'e1d748b8-8b18-4611-9305-91ea530e2926'),
(7, 'craft\\elements\\MatrixBlock', '2023-04-24 13:46:03', '2023-04-24 13:46:03', NULL, 'e0a75f0f-fc92-47ad-bef5-b5be69498a5f'),
(8, 'craft\\elements\\MatrixBlock', '2023-04-24 16:10:01', '2023-04-24 16:10:01', '2023-04-24 16:35:05', 'e5d1976a-9550-48d3-a6c0-bfa99425c36a'),
(9, 'craft\\elements\\MatrixBlock', '2023-04-24 17:28:21', '2023-04-24 17:28:21', NULL, '5e687059-7d40-44b3-825a-80c9baa42eba'),
(10, 'craft\\elements\\Entry', '2023-04-25 09:57:58', '2023-04-25 09:57:58', NULL, '56b7508d-0edc-4d0f-b9fb-fd481fb050b2'),
(11, 'craft\\elements\\Entry', '2023-04-25 11:48:37', '2023-04-25 11:48:37', NULL, '915128da-9087-4f70-a939-30a7b4a6a216'),
(12, 'craft\\elements\\Entry', '2023-04-25 14:02:34', '2023-04-25 14:02:34', NULL, '076b1ba8-5c2d-45ef-9314-ff9038590342'),
(13, 'craft\\elements\\Entry', '2023-04-25 20:52:21', '2023-04-25 20:52:21', NULL, '75d527a1-9645-42a4-903a-71bc425ace0a'),
(14, 'craft\\elements\\Entry', '2023-04-26 20:06:38', '2023-04-26 20:06:38', NULL, 'e77d80eb-c51d-49ca-9e4d-995d3bbd0bca'),
(15, 'craft\\elements\\Entry', '2023-04-26 20:16:54', '2023-04-26 20:16:54', NULL, 'ed49c44b-adef-423d-9c95-b136e9cdb6af');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `elements` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `settings`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 3, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"dd7f8d47-7114-427c-a48e-e36d65315417\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"f3a16887-923d-4def-84b7-233918a73037\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"}]', 1, '2023-03-20 14:25:41', '2023-03-20 14:25:41', '0e959471-5964-4fd3-86d3-b39371908274'),
(10, 4, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"f09ac0ba-06d2-4117-b3f2-02553e3deb45\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-03-26 18:58:12', '2023-03-26 18:58:12', 'a357f0b5-5200-40b5-989e-6e256387b820'),
(17, 5, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"450a8481-55ce-4c5b-a0ae-d0b4e6738cb4\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"66539576-e552-409c-8b6a-e9f92817cb98\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"ed2851ed-31de-4e72-967d-2d35bc39eb8b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2e187a4a-55e8-4f94-b493-c2830ee0b14e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"68e6c507-29e5-4a6c-b3e6-6d23acd2ddf7\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a\"}]', 1, '2023-04-24 04:59:08', '2023-04-24 04:59:08', 'ad42ced0-9f0c-4a65-b6c4-813b39f56f79'),
(31, 6, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"4d8dd151-9da3-4d44-93d7-dab8570a0422\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"021041f6-e5cf-4bc4-913b-2361b4f1070a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"d10aab37-047a-48ae-b5cf-62f8a54a3bba\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"9fa8944f-c20d-449c-9f99-9a2625f17e67\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"5a27dd7d-1c21-4e2d-83b9-6346af5c17d3\"}]', 1, '2023-04-24 06:45:33', '2023-04-24 06:45:33', 'cc9cd356-bf16-40d0-90fe-fb7a64e3d507'),
(37, 8, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"f1add075-3557-499e-b5bc-848a4e52efe1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3bf5fb1c-11a4-4cc0-8e39-d83d64106c5c\"}]', 1, '2023-04-24 16:10:01', '2023-04-24 16:10:01', 'a8ea5ff6-3ed3-443c-b8d2-d487c4606eb7'),
(47, 7, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"443d02e2-3d1d-4cd5-9e0e-cc157cecd6b7\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3ad5adb6-33a5-4983-87b3-91220d55b703\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"42acaf6b-add6-4620-9c06-713d324c89af\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"8321b2a1-5cff-4d36-bf91-d69cb49850a0\"}]', 1, '2023-04-24 16:35:06', '2023-04-24 16:35:06', '27f67c06-fa01-4b85-8e85-a8522d59273b'),
(49, 1, 'Carousel', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"19a97b52-98c5-4866-bedf-11355d0dee67\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"6c297ed7-5f15-4209-bc86-ebd977d64bca\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"ac3e7ae0-cb45-48a2-967f-8d317da0f8b2\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"9347583b-e405-4118-b947-06493f79d38d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"ddd11158-2278-4790-bae2-f87722617ca1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"52e7b37b-3670-4988-b403-7952d894dcd7\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"e9c0dd2b-cda4-4670-88f6-9ccaf1b2932d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9d380263-c39c-4837-bef8-c82ef75900a9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"2ff9b6cd-2738-4b3f-b15b-f9e68273d86c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9eba2519-9c26-4850-8f34-be9d93777485\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a70f9515-a182-455a-b10e-91452f7006cb\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"891e2c26-4c9b-4a7e-8cf9-a7e3419f7432\"}]', 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'bc37c55a-e6ae-4ff4-83c7-b38bab18b341'),
(50, 1, 'Banners', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"fc6834fa-82a3-4bc9-937a-c22a70bf5544\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"ad7d9367-8f02-4bc5-a8fb-ddd20066226a\"}]', 2, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'eb97f41f-de8b-4e5a-9a56-603045ec2dca'),
(51, 1, 'About Us', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"291c0daf-fd41-4935-bdaf-bfcf82421e65\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"5f7cf67e-fa17-4496-94d5-80d60467006d\"}]', 3, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'eb6374ab-faa8-44a5-bb4c-7d4778223002'),
(52, 1, 'Home Service', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"bf12a7fe-edbc-4672-8f61-422032c01e37\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a57d9cbe-418d-4a1e-8709-d37521167606\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"98449dda-5b8d-410b-9c1e-a83db9f480e6\"}]', 4, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '921b090d-4790-496f-a5b0-a229ffa6fd9e'),
(53, 1, 'Staff', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"494f3a82-359e-4ff8-ac18-a96e72bfd508\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"68a60340-5be7-4344-b9e5-4b01ed954450\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"3332912f-e356-4797-86cd-4acd6d6968f3\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e93f436f-5fde-4b1c-a66e-8e159040866e\"}]', 5, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '0792b198-fcd5-4063-9906-f15fb78bd203'),
(54, 9, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"7fc9d5aa-5a71-4543-ba51-e7d835bc51d4\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7a06bfa0-f8c7-44da-8c07-5b71df73f553\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"f21d8d9b-1d14-4597-9d8d-fef90ea3d434\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"4a8ca9ec-9c74-4e4e-a483-33270f00c5d7\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"a89fe45e-f136-4b9e-b35d-2e21b794a79b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"46716d8d-3949-49bf-91f2-9143de750edf\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"658486ea-9ec6-4709-bdfa-c4d699f8a5f4\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bcb8126a-4fd3-4529-8fd1-70c05b6dee98\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c9b63ba3-e09c-4880-98a4-4d545387291b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"fad83b92-0189-4ac0-a504-b5d4abbb8aa0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"af6ee1a2-68b2-4eee-8325-bddb3de03215\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2f7a25ba-dc03-429d-856d-e509e40f8701\"}]', 1, '2023-04-24 17:42:05', '2023-04-24 17:42:05', '9e5e4363-7eba-41c3-9fe3-00bb84e0a0f2'),
(57, 2, 'Hero', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"cba609a6-de7c-4770-91fe-a9e700d3083c\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"a4f3fe41-f128-49c0-86ef-5ffaabe6a00c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"1035e9ec-c409-454a-9414-e50a9bab5e9d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"00e98be6-d6c2-4380-b05b-039bce85509a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"c7810442-6833-4de5-99fc-1eee12ab1cde\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"8fa694dd-0bb4-40b6-9ed9-71bee9e2cf19\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"6580fc11-bcf4-4080-a97b-01c688d7012f\"}]', 1, '2023-04-25 08:51:41', '2023-04-25 08:51:41', '2ee747d9-c93a-4a3c-9227-276a52eae474'),
(61, 10, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"946d66c0-a22b-40c3-be75-03c316db357b\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"baeb667f-c887-4196-9a55-3354c13b991d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"924f8d29-7bdc-4635-8697-0f922fbaf071\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"}]', 1, '2023-04-25 10:08:01', '2023-04-25 10:08:01', '3b5836e9-bef3-465e-9606-52a35a37c97b'),
(64, 11, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"c3994483-62e8-4edb-b9e7-128bbe9bd012\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"48d94cf1-810f-44db-b8c5-644cf688b8c9\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"6580fc11-bcf4-4080-a97b-01c688d7012f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Banner\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"779afe7f-0883-478d-ad86-b73b2b6c1d61\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"891e2c26-4c9b-4a7e-8cf9-a7e3419f7432\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"9fcaae10-4eb7-44ff-b86a-51e95f9c9c71\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"c7810442-6833-4de5-99fc-1eee12ab1cde\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"About Image\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"8d0f75fb-70dd-4957-9782-c2de34a173b8\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"}]', 1, '2023-04-25 13:26:23', '2023-04-25 13:26:23', '16fe91d6-b746-4a33-b27a-89a884e88d2c'),
(66, 12, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"e42bd976-b06b-4c84-a4f8-f378e1ffcbfc\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"855ad487-4061-4032-bab0-4c4ac69676ef\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"1035e9ec-c409-454a-9414-e50a9bab5e9d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"51a79624-d494-474a-894e-0828584ba5af\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"6580fc11-bcf4-4080-a97b-01c688d7012f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"bd7567e7-ec2a-4a79-8319-b87bff9ff538\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"c7810442-6833-4de5-99fc-1eee12ab1cde\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Author\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"b4d6d8d6-d1ea-4ae9-9c76-822c55471eb4\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"}]', 1, '2023-04-25 14:05:07', '2023-04-25 14:05:07', '68de4abc-c63d-480b-a6f9-b92f5b455968'),
(68, 13, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"b1d8615a-db91-4db7-a639-587ec2fe9f4d\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"37d832f3-005f-4790-a3b0-1c06d2f0d10a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"}]', 1, '2023-04-25 20:54:05', '2023-04-25 20:54:05', '499c1101-2c0d-423e-842f-7c8b789ff2b9'),
(75, 14, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"32f31894-7a31-4305-929d-60197abcf8ec\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"853d514d-331b-4309-9a87-93668de92ae6\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"aa8454cc-0332-4ebe-9603-d4a3484708a0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"920bf442-7c17-4d41-97e6-53bb5631f1e1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"}]', 1, '2023-04-27 04:25:22', '2023-04-27 04:25:22', '93be5095-ea1f-4a41-a4ea-97892f0436ce'),
(78, 15, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"b753c1a2-f295-48f6-849d-590d334f18cb\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a0399dc0-070e-4a8e-9d19-c70795bff7cb\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"aa8454cc-0332-4ebe-9603-d4a3484708a0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"162d3792-edba-48f0-be3f-81034a0edcff\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"093b96ce-f018-4a98-99c3-d6f8f1344404\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"2bdd1760-f542-41ac-b7af-149c7cf8d960\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9ee8328f-52de-43e8-adfe-d898c5b75943\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"21c914da-7fbe-4c4e-aac7-4f188e762dd2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"6d9f4e85-c20c-4bb7-a4ac-1291b563907b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"83482683-7c5d-4c44-9f57-b33852f349b2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"a25691bc-ec38-4d26-ac90-424df0a3f414\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"1fa2e0c9-dbd7-47ee-bd11-2dea16aa405f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e1a794e8-76c2-40f8-9d0b-93588cac6e3f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"6d1f2235-8a59-43f8-80ee-b6179a65cadc\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"cb979a56-f588-4638-a2d8-33a4cd74d81f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"aaefc5c8-1641-4385-8d74-e014a2a5ae48\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b65062c5-bc23-44c5-8088-439939e7dd6e\"}]', 1, '2023-04-27 21:12:44', '2023-04-27 21:12:44', '1bb7b2a0-63fb-4e47-b42f-4a06d26f05ed');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Carousel 1', 'carousel_1', 'global', NULL, 'Carousel One', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add the first Carousel\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-03-20 13:24:20', '2023-04-24 02:36:00', '07cebb10-7e91-4d66-a6fc-94edbba90f29'),
(2, 2, 'Carousel 2', 'carousel_2', 'global', NULL, 'Carousel 2', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"restrictLocation\":true,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"allowSubfolders\":false,\"restrictedDefaultUploadSubpath\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"allowUploads\":true,\"restrictFiles\":false,\"allowedKinds\":null,\"showUnpermittedVolumes\":false,\"showUnpermittedFiles\":false,\"previewMode\":\"full\",\"allowSelfRelations\":false,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":1,\"selectionLabel\":null,\"showSiteMenu\":true,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\",\"maintainHierarchy\":false,\"branchLimit\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\",\"conditionRules\":[]}}', '2023-04-24 02:35:13', '2023-04-24 02:36:13', '891e2c26-4c9b-4a7e-8cf9-a7e3419f7432'),
(3, 2, 'Carousel 1 Text', 'carousel_1_Text', 'global', 'rmsxoipx', 'Carousel 1 Text', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":3,\"multiline\":true,\"placeholder\":\"Carousel 1 Text\",\"uiMode\":\"normal\"}', '2023-04-24 02:38:40', '2023-04-24 02:38:40', 'ddd11158-2278-4790-bae2-f87722617ca1'),
(4, 2, 'Carousel 2 Text', 'carousel_2_Text', 'global', 'pndpqtkn', 'Carousel 1 Text', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":3,\"multiline\":true,\"placeholder\":\"Carousel 2 Text\",\"uiMode\":\"normal\"}', '2023-04-24 02:39:23', '2023-04-24 02:39:23', '9eba2519-9c26-4850-8f34-be9d93777485'),
(5, 2, 'Carousel 1 Title', 'carousel_1_Title', 'global', 'dzizeauc', 'Carousel 1 Title', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":1,\"multiline\":true,\"placeholder\":\"Carousel 1 Title\",\"uiMode\":\"normal\"}', '2023-04-24 02:40:23', '2023-04-24 02:40:23', 'ac3e7ae0-cb45-48a2-967f-8d317da0f8b2'),
(6, 2, 'Carousel 2 Title', 'carousel_2_Title', 'global', 'lusxbtau', 'Carousel 2 Title', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":1,\"multiline\":true,\"placeholder\":\"Carousel 2 Title\",\"uiMode\":\"normal\"}', '2023-04-24 02:40:54', '2023-04-24 02:40:54', '9d380263-c39c-4837-bef8-c82ef75900a9'),
(7, 2, 'Banners', 'banners', 'global', 'klksgmmf', 'Banner', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":2,\"maxBlocks\":2,\"contentTable\":\"{{%matrixcontent_banners}}\",\"propagationMethod\":\"all\",\"propagationKeyFormat\":null}', '2023-04-24 04:44:13', '2023-04-24 05:20:28', 'ad7d9367-8f02-4bc5-a8fb-ddd20066226a'),
(9, NULL, 'bannerText', 'bannertext', 'matrixBlockType:37953704-984c-4070-a32f-563a57cec8c8', 'bxmahqpt', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2023-04-24 04:57:57', '2023-04-24 04:57:57', '2e187a4a-55e8-4f94-b493-c2830ee0b14e'),
(10, NULL, 'bannerTitle', 'bannertitle', 'matrixBlockType:37953704-984c-4070-a32f-563a57cec8c8', 'tbkuklnl', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 04:57:57', '2023-04-24 04:57:57', '66539576-e552-409c-8b6a-e9f92817cb98'),
(11, NULL, 'bg-color', 'bgColor', 'matrixBlockType:37953704-984c-4070-a32f-563a57cec8c8', 'huwuepoe', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 04:59:08', '2023-04-24 04:59:08', 'c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a'),
(12, 2, 'Home About Us', 'homeAboutUs', 'global', NULL, 'About Us at the home page', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":1,\"maxBlocks\":1,\"contentTable\":\"{{%matrixcontent_homeaboutus}}\",\"propagationMethod\":\"all\",\"propagationKeyFormat\":null}', '2023-04-24 06:30:07', '2023-04-24 06:38:45', '5f7cf67e-fa17-4496-94d5-80d60467006d'),
(13, NULL, 'Home About Title', 'homeAboutTitle', 'matrixBlockType:48fecc30-c01c-4e11-a3a1-444810d1a852', 'koeaunqb', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 06:30:07', '2023-04-24 06:30:07', '2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50'),
(14, NULL, 'Home About Image', 'homeAboutImage', 'matrixBlockType:48fecc30-c01c-4e11-a3a1-444810d1a852', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-04-24 06:30:07', '2023-04-24 06:33:32', '5a27dd7d-1c21-4e2d-83b9-6346af5c17d3'),
(15, NULL, 'Home About Description', 'homeAboutDescription', 'matrixBlockType:48fecc30-c01c-4e11-a3a1-444810d1a852', 'qnmfexqe', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2023-04-24 06:30:08', '2023-04-24 06:30:08', 'd10aab37-047a-48ae-b5cf-62f8a54a3bba'),
(17, 2, 'Home Services', 'homeServices', 'global', NULL, 'Home Services', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":3,\"maxBlocks\":3,\"contentTable\":\"{{%matrixcontent_homeservices}}\",\"propagationMethod\":\"all\",\"propagationKeyFormat\":null}', '2023-04-24 13:46:03', '2023-04-24 16:39:15', '98449dda-5b8d-410b-9c1e-a83db9f480e6'),
(18, NULL, 'Service Image', 'serviceImage', 'matrixBlockType:d28be02d-887e-4b26-b1cd-b7285dfa262b', NULL, 'Home Service Image', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-04-24 13:46:03', '2023-04-24 16:10:01', '3ad5adb6-33a5-4983-87b3-91220d55b703'),
(19, NULL, 'Service Image Descrition', 'serviceImageDescrition', 'matrixBlockType:d28be02d-887e-4b26-b1cd-b7285dfa262b', 'rmasbsiy', 'Service Image Descrition', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 13:46:03', '2023-04-24 13:46:03', '8321b2a1-5cff-4d36-bf91-d69cb49850a0'),
(21, 2, 'Service Title', 'service_title', 'global', 'oeigaqai', 'Title for All', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Title\",\"uiMode\":\"normal\"}', '2023-04-24 16:32:27', '2023-04-24 16:34:42', '01d82159-59cd-461e-aad5-c00aa78b6a3d'),
(22, 2, 'Staff Image', 'staffImage', 'global', NULL, 'Staff Image', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":3,\"maxBlocks\":6,\"contentTable\":\"{{%matrixcontent_staffimage}}\",\"propagationMethod\":\"all\",\"propagationKeyFormat\":null}', '2023-04-24 17:28:20', '2023-04-24 17:42:05', 'e93f436f-5fde-4b1c-a66e-8e159040866e'),
(23, NULL, 'Staff Instagram Handle', 'staffInstagramHandle', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', 'lfpjgwet', 'Staff Instagram Handle', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Staff Instagram Handle\",\"uiMode\":\"normal\"}', '2023-04-24 17:28:20', '2023-04-24 17:42:05', '2f7a25ba-dc03-429d-856d-e509e40f8701'),
(24, NULL, 'Staff Position', 'staffPosition', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', 'adtcvgkd', 'Staff Position', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 17:28:20', '2023-04-24 17:28:20', '4a8ca9ec-9c74-4e4e-a483-33270f00c5d7'),
(25, NULL, 'Staff Name', 'staffName', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', 'feuwtuom', 'Staff Name', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Staff Name\",\"uiMode\":\"normal\"}', '2023-04-24 17:28:20', '2023-04-24 17:28:20', '7a06bfa0-f8c7-44da-8c07-5b71df73f553'),
(26, NULL, 'Staff Image', 'staff_image', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', NULL, 'Staff Image', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-04-24 17:28:20', '2023-04-24 17:42:05', '46716d8d-3949-49bf-91f2-9143de750edf'),
(27, NULL, 'Staff Facebook Handle', 'staffFacebookHandle', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', 'zzphjans', 'Staff Facebook Handle', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Staff Facebook Handle\",\"uiMode\":\"normal\"}', '2023-04-24 17:28:21', '2023-04-24 17:28:21', 'bcb8126a-4fd3-4529-8fd1-70c05b6dee98'),
(28, NULL, 'Staff Twitter Handle', 'staffTwitterHandle', 'matrixBlockType:ce5aed38-d46c-42b2-bc7f-b9a7aa949009', 'oyfyrwiz', 'Staff Twitter Handle', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Staff Twitter Handle\",\"uiMode\":\"normal\"}', '2023-04-24 17:28:21', '2023-04-24 17:42:05', 'fad83b92-0189-4ac0-a504-b5d4abbb8aa0'),
(29, 2, 'Staff Section Title', 'staffSectionTitle', 'global', 'salidnds', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-24 17:31:29', '2023-04-24 17:31:29', '68a60340-5be7-4344-b9e5-4b01ed954450'),
(32, 1, 'Photos', 'photos', 'global', NULL, 'Photos', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-04-25 05:19:51', '2023-04-25 05:19:51', '1035e9ec-c409-454a-9414-e50a9bab5e9d'),
(33, 1, 'Rich Text', 'richText', 'global', 'qkolfbfq', 'Rich Text', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2023-04-25 05:20:57', '2023-04-25 05:20:57', 'c7810442-6833-4de5-99fc-1eee12ab1cde'),
(34, 1, 'Short Description', 'shortDescription', 'global', 'aytyzkuo', 'Short Description', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":3,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-25 05:24:47', '2023-04-25 05:24:47', '6580fc11-bcf4-4080-a97b-01c688d7012f'),
(35, 1, 'Page Title', 'pageTitle', 'global', 'rzxybgmc', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":200,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Page title\",\"uiMode\":\"normal\"}', '2023-04-26 20:34:46', '2023-04-26 20:34:46', 'aa8454cc-0332-4ebe-9603-d4a3484708a0'),
(36, 1, 'Location', 'location', 'global', 'yisxdfsp', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":255,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Location\",\"uiMode\":\"normal\"}', '2023-04-26 20:35:37', '2023-04-26 20:44:39', '093b96ce-f018-4a98-99c3-d6f8f1344404'),
(37, 1, 'Email Address', 'emailAddress', 'global', 'vnaegkea', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":100,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Email Address\",\"uiMode\":\"normal\"}', '2023-04-26 20:36:18', '2023-04-26 20:36:18', '9ee8328f-52de-43e8-adfe-d898c5b75943'),
(38, 1, 'Tel Number', 'telNumber', 'global', 'zioftqcr', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":20,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Tel Number\",\"uiMode\":\"normal\"}', '2023-04-26 20:37:09', '2023-04-26 20:37:09', '6d9f4e85-c20c-4bb7-a4ac-1291b563907b'),
(39, 1, 'Facebook Address', 'facebookAddress', 'global', 'tmwxichd', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":100,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Facebook Address\",\"uiMode\":\"normal\"}', '2023-04-26 20:47:50', '2023-04-26 20:47:50', 'e1a794e8-76c2-40f8-9d0b-93588cac6e3f'),
(40, 1, 'Twitter Address', 'twitterAddress', 'global', 'aphyyapv', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":100,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Twitter Address\",\"uiMode\":\"normal\"}', '2023-04-26 20:48:36', '2023-04-26 20:48:36', 'a25691bc-ec38-4d26-ac90-424df0a3f414'),
(41, 1, 'Instagram Address', 'instagramAddress', 'global', 'kmgkoxnb', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":100,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":\"Instagram Address\",\"uiMode\":\"normal\"}', '2023-04-26 20:49:15', '2023-04-26 20:49:15', 'cb979a56-f588-4638-a2d8-33a4cd74d81f'),
(42, 1, 'Send to Email', 'sendToEmail', 'global', 'bjofpuni', 'Receive Email through this email', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":100,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-04-27 21:12:09', '2023-04-27 21:12:09', 'b65062c5-bc23-44c5-8088-439939e7dd6e');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(11, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_34x19_crop_center-center_none', 1, 0, 0, '2023-04-24 02:32:01', '2023-04-24 02:32:01', '2023-04-24 02:32:02', 'a597b868-8dff-4363-b674-c686b2e02d3c'),
(12, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_68x38_crop_center-center_none', 1, 0, 0, '2023-04-24 02:32:01', '2023-04-24 02:32:01', '2023-04-24 02:32:07', 'af17a4b5-8ab9-4a03-92bc-6948ca72c1de'),
(13, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_34x19_crop_center-center_none', 1, 0, 0, '2023-04-24 02:32:01', '2023-04-24 02:32:01', '2023-04-24 02:32:02', 'f4ba1d7b-aa0e-43e7-8ea2-9e48efaede0e'),
(14, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_68x38_crop_center-center_none', 1, 0, 0, '2023-04-24 02:32:01', '2023-04-24 02:32:01', '2023-04-24 02:32:07', '77146dc7-b7a9-4657-a6a0-1f80ced29aeb'),
(15, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_120x67_crop_center-center_none', 1, 0, 0, '2023-04-24 02:53:35', '2023-04-24 02:53:35', '2023-04-24 02:53:36', '79613fb1-0983-4403-a6ff-4210e505a1d9'),
(16, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_240x135_crop_center-center_none', 1, 0, 0, '2023-04-24 02:53:35', '2023-04-24 02:53:35', '2023-04-24 02:53:36', '7ce072c3-7923-41e4-95f7-a1bf8cb7b9c4'),
(17, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_120x67_crop_center-center_none', 1, 0, 0, '2023-04-24 02:53:36', '2023-04-24 02:53:36', '2023-04-24 02:53:36', '5776d19d-5ae3-4fdc-b1f7-ef3b90cf40b8'),
(18, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_240x135_crop_center-center_none', 1, 0, 0, '2023-04-24 02:53:36', '2023-04-24 02:53:36', '2023-04-24 02:53:37', '386d02a2-7ae2-48be-afc4-9c0061a1ea27'),
(19, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-04-24 06:37:26', '2023-04-24 06:37:26', '2023-04-24 06:37:27', 'bc7d4649-6594-4b9c-8581-9c0d65739ce0'),
(20, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-04-24 06:37:26', '2023-04-24 06:37:26', '2023-04-24 06:37:31', '3494c6a2-b742-4bae-bedb-03519338b6ba'),
(21, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_120x120_crop_center-center_none', 1, 0, 0, '2023-04-24 06:38:52', '2023-04-24 06:38:52', '2023-04-24 06:38:52', '4938315a-76cf-4a8d-9a98-bc49ae94781c'),
(22, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_240x240_crop_center-center_none', 1, 0, 0, '2023-04-24 06:38:52', '2023-04-24 06:38:52', '2023-04-24 06:38:52', '1e2b3220-e7ba-4d06-82be-b705486243d3'),
(23, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_120x120_crop_center-center_none', 1, 0, 0, '2023-04-24 13:47:13', '2023-04-24 13:47:13', '2023-04-24 13:47:14', '4b26adb6-2ea4-43e6-9c57-e6171e0aeb1c'),
(24, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_240x240_crop_center-center_none', 1, 0, 0, '2023-04-24 13:47:13', '2023-04-24 13:47:13', '2023-04-24 13:47:14', '83318da7-fe39-4473-98c0-a3f17d3b7847'),
(25, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-04-24 13:47:18', '2023-04-24 13:47:18', '2023-04-24 13:47:18', '9a551ca9-5e9a-4f75-8ef6-af5b4888a21f'),
(26, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-04-24 13:47:18', '2023-04-24 13:47:18', '2023-04-24 13:47:25', '70e8c77c-f2d5-443a-b6f8-9e3b246848fc'),
(27, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_transformationForHomeServiceImage', 1, 0, 0, '2023-04-24 17:10:57', '2023-04-24 17:10:57', '2023-04-24 17:10:58', '30066ccb-f290-4ca7-8f2a-d72ca7a6df56'),
(28, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_transformationForHomeServiceImage', 1, 0, 0, '2023-04-24 17:10:57', '2023-04-24 17:10:57', '2023-04-24 17:10:57', '4428399a-47b5-421f-8758-2e1a90f10d37'),
(29, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_transformationForHomeServiceImage', 1, 0, 0, '2023-04-24 17:10:57', '2023-04-24 17:10:57', '2023-04-24 17:10:58', 'af07c9f2-7820-41b6-b400-3445309cb56e'),
(30, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_homeCarousel', 1, 0, 0, '2023-04-24 17:15:35', '2023-04-24 17:15:35', '2023-04-24 17:15:36', 'e903c98f-7523-4625-8908-c16e71c291c9'),
(31, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_homeCarousel', 1, 0, 0, '2023-04-24 17:16:07', '2023-04-24 17:16:07', '2023-04-24 17:16:08', '5dc3230a-cf93-4ea8-bce5-d8318565331f'),
(32, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_transformationForHomeAboutImage', 1, 0, 0, '2023-04-24 17:16:07', '2023-04-24 17:16:07', '2023-04-24 17:16:07', '18a5e55e-d4dc-40e7-8866-6df3820f3e81'),
(33, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_staffImage', 1, 0, 0, '2023-04-24 17:40:13', '2023-04-24 17:40:13', '2023-04-24 17:40:14', 'd23b6b85-c20e-446a-a756-141815f78913'),
(34, 32, 'craft\\imagetransforms\\ImageTransformer', 'carousel-2_2023-04-24-023147_ofja.jpg', NULL, '_staffImage', 1, 0, 0, '2023-04-24 17:40:13', '2023-04-24 17:40:13', '2023-04-24 17:40:14', 'f6266977-4c60-49fa-9cc0-7d35ce426c02'),
(35, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_staffImage', 1, 0, 0, '2023-04-24 17:40:13', '2023-04-24 17:40:13', '2023-04-24 17:40:14', 'd540f680-0c5d-4cb8-8ca1-1191c6b9b2f3'),
(36, 407, 'craft\\imagetransforms\\ImageTransformer', 'about.jpg', NULL, '_homeCarousel', 1, 0, 0, '2023-04-25 06:53:10', '2023-04-25 06:53:10', '2023-04-25 06:53:11', 'db518e4c-ea32-40b2-a4cd-a4cb312cf7ec'),
(37, 435, 'craft\\imagetransforms\\ImageTransformer', 'about_2023-04-24-134713_ugsi.jpg', NULL, '_homeCarousel', 1, 0, 0, '2023-04-25 06:57:10', '2023-04-25 06:57:10', '2023-04-25 06:57:10', '8247e57c-a612-4509-8c64-f41edfb1d7a9'),
(38, 31, 'craft\\imagetransforms\\ImageTransformer', 'carousel-1_2023-04-24-023146_syer.jpg', NULL, '_transformationForHomeAboutImage', 1, 0, 0, '2023-04-25 13:31:21', '2023-04-25 13:31:21', '2023-04-25 13:31:22', '274861ff-26f3-4a94-8e19-476eef8560f1');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT 1,
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `imagetransforms`
--

INSERT INTO `imagetransforms` (`id`, `name`, `handle`, `mode`, `position`, `width`, `height`, `format`, `quality`, `interlace`, `fill`, `upscale`, `parameterChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'transformation for home service image', 'transformationForHomeServiceImage', 'crop', 'center-center', 500, 300, NULL, NULL, 'none', NULL, 1, '2023-04-24 17:02:10', '2023-04-24 16:47:07', '2023-04-24 17:02:10', '31f0372e-1bf6-4316-8cdf-26169b6ce79f'),
(2, 'transformation for home about image', 'transformationForHomeAboutImage', 'crop', 'center-center', 600, 600, NULL, NULL, 'none', NULL, 1, '2023-04-24 17:12:50', '2023-04-24 17:12:50', '2023-04-24 17:12:50', '4bd41aa9-ea55-4791-9022-11112dc4e7e6'),
(3, 'Home Carousel', 'homeCarousel', 'fit', 'center-center', 1920, 1080, NULL, NULL, 'none', NULL, 1, '2023-04-24 17:15:07', '2023-04-24 17:15:07', '2023-04-24 17:15:07', 'aa6970d9-9575-48e3-8ee8-1275d7d6d56d'),
(4, 'Staff Image', 'staffImage', 'crop', 'center-center', 500, 450, NULL, NULL, 'none', NULL, 1, '2023-04-24 17:17:37', '2023-04-24 17:17:37', '2023-04-24 17:17:37', '6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '4.4.8', '4.4.0.4', 0, 'ltssjblreifq', '3@rmgxajflcw', '2023-03-19 04:02:55', '2023-05-01 03:59:24', 'a6cef40c-0e64-4d70-92a9-0eb253157530');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `primaryOwnerId`, `fieldId`, `typeId`, `deletedWithOwner`, `dateCreated`, `dateUpdated`) VALUES
(287, 2, 7, 1, NULL, '2023-04-24 05:07:41', '2023-04-24 05:07:41'),
(288, 2, 7, 1, NULL, '2023-04-24 05:07:41', '2023-04-24 05:07:41'),
(290, 289, 7, 1, NULL, '2023-04-24 05:07:41', '2023-04-24 05:07:41'),
(291, 289, 7, 1, NULL, '2023-04-24 05:07:41', '2023-04-24 05:07:41'),
(295, 294, 7, 1, NULL, '2023-04-24 05:10:44', '2023-04-24 05:10:44'),
(296, 294, 7, 1, NULL, '2023-04-24 05:10:44', '2023-04-24 05:10:44'),
(301, 300, 7, 1, NULL, '2023-04-24 05:24:17', '2023-04-24 05:24:17'),
(302, 300, 7, 1, NULL, '2023-04-24 05:24:17', '2023-04-24 05:24:17'),
(306, 305, 7, 1, NULL, '2023-04-24 05:26:16', '2023-04-24 05:26:16'),
(307, 305, 7, 1, NULL, '2023-04-24 05:26:16', '2023-04-24 05:26:16'),
(311, 310, 7, 1, NULL, '2023-04-24 05:27:53', '2023-04-24 05:27:53'),
(312, 310, 7, 1, NULL, '2023-04-24 05:27:53', '2023-04-24 05:27:53'),
(317, 316, 7, 1, NULL, '2023-04-24 05:29:15', '2023-04-24 05:29:15'),
(318, 316, 7, 1, NULL, '2023-04-24 05:29:15', '2023-04-24 05:29:15'),
(323, 322, 7, 1, NULL, '2023-04-24 05:30:37', '2023-04-24 05:30:37'),
(324, 322, 7, 1, NULL, '2023-04-24 05:30:37', '2023-04-24 05:30:37'),
(328, 327, 7, 1, NULL, '2023-04-24 05:30:55', '2023-04-24 05:30:55'),
(329, 327, 7, 1, NULL, '2023-04-24 05:30:55', '2023-04-24 05:30:55'),
(333, 332, 7, 1, NULL, '2023-04-24 05:33:45', '2023-04-24 05:33:45'),
(334, 332, 7, 1, NULL, '2023-04-24 05:33:45', '2023-04-24 05:33:45'),
(338, 337, 7, 1, NULL, '2023-04-24 05:35:04', '2023-04-24 05:35:04'),
(339, 337, 7, 1, NULL, '2023-04-24 05:35:04', '2023-04-24 05:35:04'),
(343, 342, 7, 1, NULL, '2023-04-24 05:38:03', '2023-04-24 05:38:03'),
(344, 342, 7, 1, NULL, '2023-04-24 05:38:03', '2023-04-24 05:38:03'),
(348, 347, 7, 1, NULL, '2023-04-24 05:38:35', '2023-04-24 05:38:35'),
(349, 347, 7, 1, NULL, '2023-04-24 05:38:35', '2023-04-24 05:38:35'),
(353, 352, 7, 1, NULL, '2023-04-24 05:39:28', '2023-04-24 05:39:28'),
(354, 352, 7, 1, NULL, '2023-04-24 05:39:28', '2023-04-24 05:39:28'),
(358, 357, 7, 1, NULL, '2023-04-24 05:40:27', '2023-04-24 05:40:27'),
(359, 357, 7, 1, NULL, '2023-04-24 05:40:27', '2023-04-24 05:40:27'),
(363, 362, 7, 1, NULL, '2023-04-24 05:41:49', '2023-04-24 05:41:49'),
(364, 362, 7, 1, NULL, '2023-04-24 05:41:49', '2023-04-24 05:41:49'),
(368, 367, 7, 1, NULL, '2023-04-24 05:42:14', '2023-04-24 05:42:14'),
(369, 367, 7, 1, NULL, '2023-04-24 05:42:14', '2023-04-24 05:42:14'),
(373, 372, 7, 1, NULL, '2023-04-24 05:42:48', '2023-04-24 05:42:48'),
(374, 372, 7, 1, NULL, '2023-04-24 05:42:48', '2023-04-24 05:42:48'),
(378, 377, 7, 1, NULL, '2023-04-24 05:43:34', '2023-04-24 05:43:34'),
(379, 377, 7, 1, NULL, '2023-04-24 05:43:34', '2023-04-24 05:43:34'),
(383, 382, 7, 1, NULL, '2023-04-24 05:44:49', '2023-04-24 05:44:49'),
(384, 382, 7, 1, NULL, '2023-04-24 05:44:49', '2023-04-24 05:44:49'),
(386, 385, 7, 1, NULL, '2023-04-24 06:30:52', '2023-04-24 06:30:52'),
(387, 385, 7, 1, NULL, '2023-04-24 06:30:52', '2023-04-24 06:30:52'),
(389, 388, 7, 1, NULL, '2023-04-24 06:31:54', '2023-04-24 06:31:54'),
(390, 388, 7, 1, NULL, '2023-04-24 06:31:54', '2023-04-24 06:31:54'),
(392, 391, 7, 1, NULL, '2023-04-24 06:32:25', '2023-04-24 06:32:25'),
(393, 391, 7, 1, NULL, '2023-04-24 06:32:25', '2023-04-24 06:32:25'),
(408, 2, 12, 2, NULL, '2023-04-24 06:37:35', '2023-04-24 06:37:35'),
(410, 409, 7, 1, NULL, '2023-04-24 06:37:35', '2023-04-24 06:37:35'),
(411, 409, 7, 1, NULL, '2023-04-24 06:37:35', '2023-04-24 06:37:35'),
(412, 409, 12, 2, NULL, '2023-04-24 06:37:35', '2023-04-24 06:37:35'),
(416, 415, 7, 1, NULL, '2023-04-24 06:43:02', '2023-04-24 06:43:02'),
(417, 415, 7, 1, NULL, '2023-04-24 06:43:02', '2023-04-24 06:43:02'),
(418, 415, 12, 2, NULL, '2023-04-24 06:43:02', '2023-04-24 06:43:02'),
(422, 421, 7, 1, NULL, '2023-04-24 06:46:02', '2023-04-24 06:46:02'),
(423, 421, 7, 1, NULL, '2023-04-24 06:46:02', '2023-04-24 06:46:02'),
(424, 421, 12, 2, NULL, '2023-04-24 06:46:02', '2023-04-24 06:46:02'),
(428, 427, 7, 1, NULL, '2023-04-24 06:52:44', '2023-04-24 06:52:44'),
(429, 427, 7, 1, NULL, '2023-04-24 06:52:44', '2023-04-24 06:52:44'),
(430, 427, 12, 2, NULL, '2023-04-24 06:52:44', '2023-04-24 06:52:44'),
(432, 431, 7, 1, NULL, '2023-04-24 13:46:43', '2023-04-24 13:46:43'),
(433, 431, 7, 1, NULL, '2023-04-24 13:46:43', '2023-04-24 13:46:43'),
(434, 431, 12, 2, NULL, '2023-04-24 13:46:43', '2023-04-24 13:46:43'),
(473, 2, 17, 3, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(474, 2, 17, 3, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(475, 2, 17, 3, 0, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(477, 476, 7, 1, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(478, 476, 7, 1, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(479, 476, 12, 2, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(480, 476, 17, 3, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(481, 476, 17, 3, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(482, 476, 17, 3, NULL, '2023-04-24 13:48:18', '2023-04-24 13:48:18'),
(484, 483, 7, 1, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(485, 483, 7, 1, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(486, 483, 12, 2, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(487, 483, 17, 3, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(488, 483, 17, 3, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(489, 483, 17, 3, NULL, '2023-04-24 16:11:56', '2023-04-24 16:11:56'),
(554, 2, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(555, 2, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(556, 2, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(558, 557, 7, 1, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(559, 557, 7, 1, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(560, 557, 12, 2, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(562, 557, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(563, 557, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(564, 557, 17, 3, NULL, '2023-04-24 16:20:20', '2023-04-24 16:20:20'),
(566, 565, 7, 1, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(567, 565, 7, 1, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(568, 565, 12, 2, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(570, 565, 17, 3, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(571, 565, 17, 3, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(572, 565, 17, 3, NULL, '2023-04-24 16:33:46', '2023-04-24 16:33:46'),
(576, 575, 7, 1, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(577, 575, 7, 1, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(578, 575, 12, 2, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(579, 575, 17, 3, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(580, 575, 17, 3, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(581, 575, 17, 3, NULL, '2023-04-24 16:36:53', '2023-04-24 16:36:53'),
(583, 582, 7, 1, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(584, 582, 7, 1, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(585, 582, 12, 2, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(586, 582, 17, 3, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(587, 582, 17, 3, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(588, 582, 17, 3, NULL, '2023-04-24 17:32:45', '2023-04-24 17:32:45'),
(650, 2, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(651, 2, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(652, 2, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(654, 653, 7, 1, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(655, 653, 7, 1, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(656, 653, 12, 2, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(657, 653, 17, 3, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(658, 653, 17, 3, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(659, 653, 17, 3, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(660, 653, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(661, 653, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(662, 653, 22, 5, NULL, '2023-04-24 17:35:11', '2023-04-24 17:35:11'),
(664, 663, 7, 1, NULL, '2023-04-24 17:47:04', '2023-04-24 17:47:04'),
(665, 663, 7, 1, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(666, 663, 12, 2, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(667, 663, 17, 3, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(668, 663, 17, 3, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(669, 663, 17, 3, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(670, 663, 22, 5, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(671, 663, 22, 5, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05'),
(672, 663, 22, 5, NULL, '2023-04-24 17:47:05', '2023-04-24 17:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks_owners`
--

CREATE TABLE `matrixblocks_owners` (
  `blockId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixblocks_owners`
--

INSERT INTO `matrixblocks_owners` (`blockId`, `ownerId`, `sortOrder`) VALUES
(287, 2, 1),
(288, 2, 2),
(290, 289, 1),
(291, 289, 2),
(295, 294, 1),
(296, 294, 2),
(301, 300, 1),
(302, 300, 2),
(306, 305, 1),
(307, 305, 2),
(311, 310, 1),
(312, 310, 2),
(317, 316, 1),
(318, 316, 2),
(323, 322, 1),
(324, 322, 2),
(328, 327, 1),
(329, 327, 2),
(333, 332, 1),
(334, 332, 2),
(338, 337, 1),
(339, 337, 2),
(343, 342, 1),
(344, 342, 2),
(348, 347, 1),
(349, 347, 2),
(353, 352, 1),
(354, 352, 2),
(358, 357, 1),
(359, 357, 2),
(363, 362, 1),
(364, 362, 2),
(368, 367, 1),
(369, 367, 2),
(373, 372, 1),
(374, 372, 2),
(378, 377, 1),
(379, 377, 2),
(383, 382, 1),
(384, 382, 2),
(386, 385, 1),
(387, 385, 2),
(389, 388, 1),
(390, 388, 2),
(392, 391, 1),
(393, 391, 2),
(408, 2, 1),
(410, 409, 1),
(411, 409, 2),
(412, 409, 1),
(416, 415, 1),
(417, 415, 2),
(418, 415, 1),
(422, 421, 1),
(423, 421, 2),
(424, 421, 1),
(428, 427, 1),
(429, 427, 2),
(430, 427, 1),
(432, 431, 1),
(433, 431, 2),
(434, 431, 1),
(473, 2, 1),
(474, 2, 2),
(475, 2, 3),
(477, 476, 1),
(478, 476, 2),
(479, 476, 1),
(480, 476, 1),
(481, 476, 2),
(482, 476, 3),
(484, 483, 1),
(485, 483, 2),
(486, 483, 1),
(487, 483, 1),
(488, 483, 2),
(489, 483, 3),
(554, 2, 1),
(555, 2, 2),
(556, 2, 3),
(558, 557, 1),
(559, 557, 2),
(560, 557, 1),
(562, 557, 2),
(563, 557, 3),
(564, 557, 4),
(566, 565, 1),
(567, 565, 2),
(568, 565, 1),
(570, 565, 2),
(571, 565, 3),
(572, 565, 4),
(576, 575, 1),
(577, 575, 2),
(578, 575, 1),
(579, 575, 1),
(580, 575, 2),
(581, 575, 3),
(583, 582, 1),
(584, 582, 2),
(585, 582, 1),
(586, 582, 1),
(587, 582, 2),
(588, 582, 3),
(650, 2, 1),
(651, 2, 2),
(652, 2, 3),
(654, 653, 1),
(655, 653, 2),
(656, 653, 1),
(657, 653, 1),
(658, 653, 2),
(659, 653, 3),
(660, 653, 1),
(661, 653, 2),
(662, 653, 3),
(664, 663, 1),
(665, 663, 2),
(666, 663, 1),
(667, 663, 1),
(668, 663, 2),
(669, 663, 3),
(670, 663, 1),
(671, 663, 2),
(672, 663, 3);

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 5, 'Banner', 'banner', 1, '2023-04-24 04:57:57', '2023-04-24 04:57:57', '37953704-984c-4070-a32f-563a57cec8c8'),
(2, 12, 6, 'Home About', 'homeAbout', 1, '2023-04-24 06:30:08', '2023-04-24 06:30:08', '48fecc30-c01c-4e11-a3a1-444810d1a852'),
(3, 17, 7, 'Home Service', 'homeService', 1, '2023-04-24 13:46:03', '2023-04-24 16:35:06', 'd28be02d-887e-4b26-b1cd-b7285dfa262b'),
(5, 22, 9, 'Staff', 'staff', 1, '2023-04-24 17:28:21', '2023-04-24 17:28:21', 'ce5aed38-d46c-42b2-bc7f-b9a7aa949009');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_banners`
--

CREATE TABLE `matrixcontent_banners` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_banner_bannertext_bxmahqpt` text DEFAULT NULL,
  `field_banner_bannertitle_tbkuklnl` text DEFAULT NULL,
  `field_banner_bgColor_huwuepoe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixcontent_banners`
--

INSERT INTO `matrixcontent_banners` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_banner_bannertext_bxmahqpt`, `field_banner_bannertitle_tbkuklnl`, `field_banner_bgColor_huwuepoe`) VALUES
(1, 41, 1, '2023-04-24 04:59:23', '2023-04-24 04:59:23', '60c3c275-7fa0-4b85-8215-b9791d8d5e22', NULL, 'Op', NULL),
(2, 42, 1, '2023-04-24 04:59:23', '2023-04-24 04:59:23', '01fcad04-bfdd-452d-ba08-b1e213d653d0', NULL, NULL, NULL),
(3, 43, 1, '2023-04-24 04:59:26', '2023-04-24 04:59:26', 'eb1a4d69-9542-4f54-ba16-3f5d4abb6194', NULL, 'Opening', NULL),
(4, 44, 1, '2023-04-24 04:59:26', '2023-04-24 04:59:26', '9bc8262f-e724-4357-9e34-6379cec93ce1', NULL, NULL, NULL),
(5, 45, 1, '2023-04-24 04:59:29', '2023-04-24 04:59:29', 'f79a164f-ad61-4c63-820a-1fbbee9a1c57', NULL, 'Opening Time', NULL),
(6, 46, 1, '2023-04-24 04:59:29', '2023-04-24 04:59:29', '45e04390-6322-4ede-9a66-dc86f4c6f3bf', NULL, NULL, NULL),
(7, 47, 1, '2023-04-24 04:59:31', '2023-04-24 04:59:31', 'e03c49e2-77cb-48cc-b3b9-9593d2bfa949', NULL, 'Opening', NULL),
(8, 48, 1, '2023-04-24 04:59:31', '2023-04-24 04:59:31', '59cfd49c-16e8-4bb2-928c-a04107e9d0da', NULL, NULL, NULL),
(9, 49, 1, '2023-04-24 04:59:51', '2023-04-24 04:59:51', 'c3f69fa1-6ce5-4c3f-a2bc-e90de26d5ba2', '<ul><li>M</li></ul>', 'Opening', NULL),
(10, 50, 1, '2023-04-24 04:59:51', '2023-04-24 04:59:51', 'd1697ffd-ef07-43d9-b0c1-fe0652fcea66', NULL, NULL, NULL),
(11, 51, 1, '2023-04-24 04:59:52', '2023-04-24 04:59:52', 'e2b520f3-668c-4e07-82df-5d8a97f08eb1', '<ul><li>Mo</li></ul>', 'Opening', NULL),
(12, 52, 1, '2023-04-24 04:59:53', '2023-04-24 04:59:53', '4d9f98d1-3b8a-4671-81a9-3a5b6d799b98', NULL, NULL, NULL),
(13, 53, 1, '2023-04-24 04:59:54', '2023-04-24 04:59:54', '414ef6f7-4b8f-4a4c-a89d-9fead7b56567', '<ul><li>Mon</li></ul>', 'Opening', NULL),
(14, 54, 1, '2023-04-24 04:59:55', '2023-04-24 04:59:55', '03096079-3f8b-4d77-b57f-fca1e7c43780', NULL, NULL, NULL),
(15, 55, 1, '2023-04-24 04:59:56', '2023-04-24 04:59:56', '80f3c7c0-e0cf-456c-9467-13ec0a52d31b', '<ul><li>Mon - </li></ul>', 'Opening', NULL),
(16, 56, 1, '2023-04-24 04:59:56', '2023-04-24 04:59:56', 'a2b7d0a1-9f11-49ae-b8c2-9eed31c3e5d9', NULL, NULL, NULL),
(17, 57, 1, '2023-04-24 05:00:05', '2023-04-24 05:00:05', '2299f1b9-4bf2-47c2-b56d-07fe714c8a62', '<ul><li>Mon - Fri</li></ul>', 'Opening', NULL),
(18, 58, 1, '2023-04-24 05:00:05', '2023-04-24 05:00:05', '61ecb9df-889a-42cb-bf7d-c4522718bc29', NULL, NULL, NULL),
(19, 59, 1, '2023-04-24 05:00:08', '2023-04-24 05:00:08', '4932d0c0-dcb2-4d76-a29c-1c509439b6e5', '<ul><li>Mon - Fri </li></ul>', 'Opening', NULL),
(20, 60, 1, '2023-04-24 05:00:08', '2023-04-24 05:00:08', '59ce27ce-afe5-4752-b880-de85f5bcbd63', NULL, NULL, NULL),
(21, 61, 1, '2023-04-24 05:00:10', '2023-04-24 05:00:10', '268013ec-baf3-4ef9-961f-13d1d439ee27', '<ul><li>Mon - Fri</li></ul>', 'Opening', NULL),
(22, 62, 1, '2023-04-24 05:00:10', '2023-04-24 05:00:10', '3243eb1d-0d38-45d7-94ae-15357e0367a2', NULL, NULL, NULL),
(23, 63, 1, '2023-04-24 05:00:40', '2023-04-24 05:00:40', '118074fe-dca7-4ada-9af5-61ea93ab77a8', NULL, 'Opening', NULL),
(24, 64, 1, '2023-04-24 05:00:40', '2023-04-24 05:00:40', 'b792dbdd-93f4-40fe-96b8-410eeb5dfd01', NULL, NULL, NULL),
(25, 65, 1, '2023-04-24 05:00:46', '2023-04-24 05:00:46', 'f30a0f36-957b-4601-a6c5-cb7bbdef9ce3', '', 'Opening', NULL),
(26, 66, 1, '2023-04-24 05:00:46', '2023-04-24 05:00:46', '1d89ab4d-03c9-4c4a-834c-aedb8b2993da', NULL, NULL, NULL),
(27, 67, 1, '2023-04-24 05:00:47', '2023-04-24 05:00:47', '4dc94dd7-1c3c-46f0-8a8b-2ab35c3f4138', '', 'Opening', NULL),
(28, 68, 1, '2023-04-24 05:00:47', '2023-04-24 05:00:47', 'b29c7424-47ca-4a75-ac11-173768f7db87', NULL, NULL, NULL),
(29, 69, 1, '2023-04-24 05:00:49', '2023-04-24 05:00:49', '84d6b927-8126-4e1f-860b-6fe7118774c5', '', 'Opening', NULL),
(30, 70, 1, '2023-04-24 05:00:49', '2023-04-24 05:00:49', '8b77f38e-8057-430a-9512-900203635f01', NULL, NULL, NULL),
(31, 71, 1, '2023-04-24 05:00:50', '2023-04-24 05:00:50', 'fc5e4567-bb49-40a6-9cf1-6215ee06bad8', '', 'Opening', NULL),
(32, 72, 1, '2023-04-24 05:00:50', '2023-04-24 05:00:50', '21550e96-9add-4af0-a705-dcab35221f33', NULL, NULL, NULL),
(33, 73, 1, '2023-04-24 05:00:51', '2023-04-24 05:00:51', '52ba52e3-2338-446d-a45b-04277e36a27f', '', 'Opening', NULL),
(34, 74, 1, '2023-04-24 05:00:51', '2023-04-24 05:00:51', 'dae1522e-404a-4922-8a34-0fa1fc22ed1f', NULL, NULL, NULL),
(35, 75, 1, '2023-04-24 05:00:52', '2023-04-24 05:00:52', '2d93b4c6-39fa-4da5-96ab-b81eabe4bb0f', '', 'Opening', NULL),
(36, 76, 1, '2023-04-24 05:00:52', '2023-04-24 05:00:52', '1543e635-52d9-41c7-835e-c2914ecae615', NULL, NULL, NULL),
(37, 77, 1, '2023-04-24 05:00:54', '2023-04-24 05:00:54', 'be838784-736c-4961-847e-8435f1373396', '', 'Opening', NULL),
(38, 78, 1, '2023-04-24 05:00:54', '2023-04-24 05:00:54', '2c3494ed-22f3-40ff-977e-5988b0281121', NULL, NULL, NULL),
(39, 79, 1, '2023-04-24 05:00:55', '2023-04-24 05:00:55', '23fb60de-a436-472c-ba50-db357ef575cc', '', 'Opening', NULL),
(40, 80, 1, '2023-04-24 05:00:55', '2023-04-24 05:00:55', '040b1cf3-7a06-4583-afb1-0d63246237b0', NULL, NULL, NULL),
(41, 81, 1, '2023-04-24 05:00:58', '2023-04-24 05:00:58', 'bcf7e69f-0cd8-42e7-9ef0-17350464d12a', '', 'Opening', NULL),
(42, 82, 1, '2023-04-24 05:00:58', '2023-04-24 05:00:58', '5d8b647f-6a9e-4d21-92e7-f28b9c1ce83a', NULL, NULL, NULL),
(43, 83, 1, '2023-04-24 05:01:00', '2023-04-24 05:01:00', '9cbf7414-71ca-4d9b-8307-b676b7671336', '', 'Opening', NULL),
(44, 84, 1, '2023-04-24 05:01:00', '2023-04-24 05:01:00', '4f23db54-7c40-42a8-9bb1-937f38cd1043', NULL, NULL, NULL),
(45, 85, 1, '2023-04-24 05:01:01', '2023-04-24 05:01:01', '7f02cc92-42cd-45cd-b2fe-c25d47c08292', '', 'Opening', NULL),
(46, 86, 1, '2023-04-24 05:01:01', '2023-04-24 05:01:01', '4d02b239-c655-448d-815d-2b2446bba939', NULL, NULL, NULL),
(47, 87, 1, '2023-04-24 05:01:03', '2023-04-24 05:01:03', '2cbbcb08-1c57-45e1-a3b8-49da95fab5df', '', 'Opening', NULL),
(48, 88, 1, '2023-04-24 05:01:03', '2023-04-24 05:01:03', 'e81e0652-a14c-46fb-8e6c-c5e73940d465', NULL, NULL, NULL),
(49, 89, 1, '2023-04-24 05:01:23', '2023-04-24 05:01:23', 'bc0533c0-cd80-4f95-a195-407c407fa731', '', 'Opening', NULL),
(50, 90, 1, '2023-04-24 05:01:23', '2023-04-24 05:01:23', '07c582d5-ba9f-4c94-8776-b4a5cf313d19', NULL, NULL, NULL),
(51, 91, 1, '2023-04-24 05:01:25', '2023-04-24 05:01:25', '772cfa5c-212f-4b75-83ee-2d091a244d14', '', 'Opening', NULL),
(52, 92, 1, '2023-04-24 05:01:25', '2023-04-24 05:01:25', 'bfa8e280-fdc5-4978-8285-a5083728e686', NULL, NULL, NULL),
(53, 93, 1, '2023-04-24 05:01:27', '2023-04-24 05:01:27', '2373e86d-c72a-441e-bb33-d6f7f18cdafa', '', 'Opening', NULL),
(54, 94, 1, '2023-04-24 05:01:27', '2023-04-24 05:01:27', '93659510-8fdc-444d-8d2a-73edfedeba34', NULL, NULL, NULL),
(55, 95, 1, '2023-04-24 05:01:30', '2023-04-24 05:01:30', 'f92179bd-b07f-4224-a0a3-34ef0b9ab996', '', 'Opening', NULL),
(56, 96, 1, '2023-04-24 05:01:30', '2023-04-24 05:01:30', '9f0f3b10-d915-48c1-84e3-8697566a5ff2', NULL, NULL, NULL),
(57, 97, 1, '2023-04-24 05:01:31', '2023-04-24 05:01:31', 'af98f431-4dbf-49c8-ab2e-9fde75ab8554', '', 'Opening', NULL),
(58, 98, 1, '2023-04-24 05:01:31', '2023-04-24 05:01:31', '3387347f-bc32-4f54-8e0d-d262b5912bb9', NULL, NULL, NULL),
(59, 99, 1, '2023-04-24 05:01:45', '2023-04-24 05:01:45', '66240665-afd8-422b-94bf-47a9676211ed', '', 'Opening', NULL),
(60, 100, 1, '2023-04-24 05:01:45', '2023-04-24 05:01:45', 'e662d2c1-54a2-4432-95fd-021615e8069a', NULL, NULL, NULL),
(61, 101, 1, '2023-04-24 05:01:46', '2023-04-24 05:01:46', '00135449-e727-47e7-8f7d-69219c43ac5d', '', 'Opening', NULL),
(62, 102, 1, '2023-04-24 05:01:46', '2023-04-24 05:01:46', '7e8e1bbb-5258-4a5a-bc9d-ac13db31a0d9', NULL, NULL, NULL),
(63, 103, 1, '2023-04-24 05:01:50', '2023-04-24 05:01:50', 'ce0b9791-f98e-4b06-a892-001ef609c0f1', '', 'Opening', NULL),
(64, 104, 1, '2023-04-24 05:01:50', '2023-04-24 05:01:50', '8c23ba48-ae87-46fd-8241-62552041da9e', NULL, NULL, NULL),
(65, 105, 1, '2023-04-24 05:02:01', '2023-04-24 05:02:01', '0ec55f63-de2b-45c4-8239-6c85b45ceaa3', '', 'Opening', NULL),
(66, 106, 1, '2023-04-24 05:02:01', '2023-04-24 05:02:01', 'ceb12c70-bed8-44b5-876c-8b6104947009', NULL, NULL, NULL),
(67, 107, 1, '2023-04-24 05:02:02', '2023-04-24 05:02:02', 'dbba8b02-ad85-45fa-8503-0919084a079e', '', 'Opening', NULL),
(68, 108, 1, '2023-04-24 05:02:02', '2023-04-24 05:02:02', 'f0cd8882-a709-43c1-922e-864d498b6709', NULL, NULL, NULL),
(69, 109, 1, '2023-04-24 05:02:04', '2023-04-24 05:02:04', '6a5c6e08-0293-4fdf-b6d9-9991949f3989', '<table><tr><th>\n</th></tr></table>', 'Opening', NULL),
(70, 110, 1, '2023-04-24 05:02:04', '2023-04-24 05:02:04', '6988ba0e-bff2-43a7-95a9-02bdf82251e1', NULL, NULL, NULL),
(71, 111, 1, '2023-04-24 05:02:05', '2023-04-24 05:02:05', '98839a3b-1a6a-4a2d-ad43-778c043bdedf', '<table><tr><th>\n    </th></tr></table>', 'Opening', NULL),
(72, 112, 1, '2023-04-24 05:02:05', '2023-04-24 05:02:05', 'b238843e-aee8-4636-97ec-7399ad21c96f', NULL, NULL, NULL),
(73, 113, 1, '2023-04-24 05:02:07', '2023-04-24 05:02:07', 'abcf02a4-3653-492d-abac-d8e7593d504a', '<table><tr><th>&lt;&gt;\n    </th></tr></table>', 'Opening', NULL),
(74, 114, 1, '2023-04-24 05:02:07', '2023-04-24 05:02:07', '02ed1c60-d7a1-4695-b35d-3c32301de4f7', NULL, NULL, NULL),
(75, 115, 1, '2023-04-24 05:02:09', '2023-04-24 05:02:09', 'acbbab1a-281e-4df3-863a-6c11a604468c', '<table><tr><th>&gt;\n    </th></tr></table>', 'Opening', NULL),
(76, 116, 1, '2023-04-24 05:02:09', '2023-04-24 05:02:09', '8fe7f295-31c8-4b3d-b516-714fadec21a9', NULL, NULL, NULL),
(77, 117, 1, '2023-04-24 05:02:10', '2023-04-24 05:02:10', 'fbe40cc4-d65e-4cac-a363-0e3ea6918c0d', '<table><tr><th></th>\n    </tr></table>', 'Opening', NULL),
(78, 118, 1, '2023-04-24 05:02:10', '2023-04-24 05:02:10', '4bcd2f48-b499-42fd-b3a3-ad7e02b81efc', NULL, NULL, NULL),
(79, 119, 1, '2023-04-24 05:02:12', '2023-04-24 05:02:12', '139d85de-a48b-4d01-8825-864e259b04c7', '<table><tr><th></th>\n\n    </tr></table>', 'Opening', NULL),
(80, 120, 1, '2023-04-24 05:02:12', '2023-04-24 05:02:12', 'fc6aa531-961b-4a83-b55e-e6d00acc02e8', NULL, NULL, NULL),
(81, 121, 1, '2023-04-24 05:02:13', '2023-04-24 05:02:13', 'bbec407a-eb7e-442a-ba0d-3920637d3790', '<table><tr><th></th>\n        \n    </tr></table>', 'Opening', NULL),
(82, 122, 1, '2023-04-24 05:02:13', '2023-04-24 05:02:13', '1fed217c-e8e9-46b2-b806-766e37095cb5', NULL, NULL, NULL),
(83, 123, 1, '2023-04-24 05:02:15', '2023-04-24 05:02:15', '0000379c-157e-4d4f-9a0d-1a77e697fc71', '<table><tr><th></th></tr></table>', 'Opening', NULL),
(84, 124, 1, '2023-04-24 05:02:15', '2023-04-24 05:02:15', '999e9b3e-82a2-4d02-9a4d-b1563af026e2', NULL, NULL, NULL),
(85, 125, 1, '2023-04-24 05:02:17', '2023-04-24 05:02:17', '2d2e74c7-a0a2-4d01-ba74-8b24e57eab04', '<table><tr><th></th>\n        <td>\n</td></tr></table>', 'Opening', NULL),
(86, 126, 1, '2023-04-24 05:02:17', '2023-04-24 05:02:17', 'a26dd16e-4407-4ff1-88f7-f804b2bb55f4', NULL, NULL, NULL),
(87, 127, 1, '2023-04-24 05:02:18', '2023-04-24 05:02:18', '39e04b05-6ec4-4b5e-8675-bc549889d590', '<table><tr><th></th>\n        <td>\n    </td></tr></table>', 'Opening', NULL),
(88, 128, 1, '2023-04-24 05:02:18', '2023-04-24 05:02:18', '5675ae1b-3720-425c-bae0-00fcd56524ae', NULL, NULL, NULL),
(89, 129, 1, '2023-04-24 05:02:20', '2023-04-24 05:02:20', '3fbf52da-2f20-491f-be1c-814d0caf8104', '<table><tr><th></th>\n        <td>\n    </td></tr></table>', 'Opening', NULL),
(90, 130, 1, '2023-04-24 05:02:20', '2023-04-24 05:02:20', '98e553fa-1e8e-40ae-9b83-677f21ec5696', NULL, NULL, NULL),
(91, 131, 1, '2023-04-24 05:02:21', '2023-04-24 05:02:21', '59c868b7-ef7d-416f-9752-21656f1ded39', '<table><tr><th></th>\n        <td></td></tr></table>', 'Opening', NULL),
(92, 132, 1, '2023-04-24 05:02:21', '2023-04-24 05:02:21', '551d9aa7-bf85-4d26-b3f2-2dc4f02d48c1', NULL, NULL, NULL),
(93, 133, 1, '2023-04-24 05:02:22', '2023-04-24 05:02:22', 'd5be0021-a0d3-4e69-8213-57f05fa6748b', '<table><tr><th></th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(94, 134, 1, '2023-04-24 05:02:22', '2023-04-24 05:02:22', '6ce6d111-28e7-4efe-a87e-2fa16eb6fe20', NULL, NULL, NULL),
(95, 135, 1, '2023-04-24 05:02:25', '2023-04-24 05:02:25', '827a9c43-84b7-4d04-9bf1-5e23d82fc158', '<table><tr><th>Mpo</th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(96, 136, 1, '2023-04-24 05:02:25', '2023-04-24 05:02:25', '85b2a956-5020-41b2-8313-626a6acad535', NULL, NULL, NULL),
(97, 137, 1, '2023-04-24 05:02:27', '2023-04-24 05:02:27', '4c06feee-e748-460b-bed6-02250242a559', '<table><tr><th>M</th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(98, 138, 1, '2023-04-24 05:02:27', '2023-04-24 05:02:27', 'b665da2e-7d46-46c5-8ed8-07d40944f503', NULL, NULL, NULL),
(99, 139, 1, '2023-04-24 05:02:28', '2023-04-24 05:02:28', '2af4bc23-4490-4c07-ac81-7edee3d3847e', '<table><tr><th>Mon</th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(100, 140, 1, '2023-04-24 05:02:28', '2023-04-24 05:02:28', '81e06b3a-008d-486d-9e0a-e01ee08b5e39', NULL, NULL, NULL),
(101, 141, 1, '2023-04-24 05:02:30', '2023-04-24 05:02:30', 'd4a08a7a-987c-4c7a-bf50-2d52c06322fa', '<table><tr><th>Mon - </th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(102, 142, 1, '2023-04-24 05:02:30', '2023-04-24 05:02:30', '83bd9787-b413-426a-a927-961d8d3b5783', NULL, NULL, NULL),
(103, 143, 1, '2023-04-24 05:02:31', '2023-04-24 05:02:31', '05e7d135-d21b-4350-bdc6-7893be4b462d', '<table><tr><th>Mon - Fri</th>\n        <td></td>\n    </tr></table>', 'Opening', NULL),
(104, 144, 1, '2023-04-24 05:02:31', '2023-04-24 05:02:31', '824f3a48-f86b-41dd-a99a-003213243591', NULL, NULL, NULL),
(105, 145, 1, '2023-04-24 05:02:39', '2023-04-24 05:02:39', '396f17b7-fc36-44a5-94f2-d51102864627', '<table><tr><th>Mon - Fri</th>\n        <td>8</td>\n    </tr></table>', 'Opening', NULL),
(106, 146, 1, '2023-04-24 05:02:39', '2023-04-24 05:02:39', 'fb08a827-c435-4c4b-95dc-793212c5e91c', NULL, NULL, NULL),
(107, 147, 1, '2023-04-24 05:02:40', '2023-04-24 05:02:40', '56501631-555e-4028-9114-8fe5f1881584', '<table><tr><th>Mon - Fri</th>\n        <td>8:00</td>\n    </tr></table>', 'Opening', NULL),
(108, 148, 1, '2023-04-24 05:02:40', '2023-04-24 05:02:40', '7d1cf380-99d1-4bc4-9ec2-a8b9be61b2b2', NULL, NULL, NULL),
(109, 149, 1, '2023-04-24 05:02:42', '2023-04-24 05:02:42', '81f99f3c-7366-491c-92f9-e88830020a1f', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am </td>\n    </tr></table>', 'Opening', NULL),
(110, 150, 1, '2023-04-24 05:02:42', '2023-04-24 05:02:42', '7f8b66c0-03ad-42f5-a0d8-52d09e092a96', NULL, NULL, NULL),
(111, 151, 1, '2023-04-24 05:02:43', '2023-04-24 05:02:43', '9257a8e8-96e8-4f99-881c-806b199727f4', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am -</td>\n    </tr></table>', 'Opening', NULL),
(112, 152, 1, '2023-04-24 05:02:43', '2023-04-24 05:02:43', '065c0724-2cab-4c2b-86fe-27a46c40047a', NULL, NULL, NULL),
(113, 153, 1, '2023-04-24 05:02:44', '2023-04-24 05:02:44', 'ffd68648-d8cc-4d79-a80e-98f73ac75c6c', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am - </td>\n    </tr></table>', 'Opening', NULL),
(114, 154, 1, '2023-04-24 05:02:44', '2023-04-24 05:02:44', '821b58bc-67d2-4c87-bf46-948bbb69db1a', NULL, NULL, NULL),
(115, 155, 1, '2023-04-24 05:02:46', '2023-04-24 05:02:46', '53f1fbad-b837-4152-9de4-69597c8d7807', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am - 5</td>\n    </tr></table>', 'Opening', NULL),
(116, 156, 1, '2023-04-24 05:02:46', '2023-04-24 05:02:46', 'ec6e389e-9f28-485f-967f-24b310f2a5bf', NULL, NULL, NULL),
(117, 157, 1, '2023-04-24 05:02:48', '2023-04-24 05:02:48', 'b122c976-d3ff-4816-9279-2838a0b4869c', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00</td>\n    </tr></table>', 'Opening', NULL),
(118, 158, 1, '2023-04-24 05:02:48', '2023-04-24 05:02:48', '6e22a83d-e2eb-4ccd-b371-160c72763e9b', NULL, NULL, NULL),
(119, 159, 1, '2023-04-24 05:02:50', '2023-04-24 05:02:50', '815bce1e-989a-4179-8dc3-487ca1ccc3f1', '<table><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></table>', 'Opening', NULL),
(120, 160, 1, '2023-04-24 05:02:50', '2023-04-24 05:02:50', '77486835-1569-459d-8a4b-ad10fe043910', NULL, NULL, NULL),
(121, 161, 1, '2023-04-24 05:03:00', '2023-04-24 05:03:00', '0350c6a7-8e39-4fb4-842f-2c2f7b633595', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(122, 162, 1, '2023-04-24 05:03:00', '2023-04-24 05:03:00', 'd3c8dc29-eb94-401d-a440-70d3ae00d61c', NULL, NULL, NULL),
(123, 163, 1, '2023-04-24 05:03:04', '2023-04-24 05:03:04', '5e593e03-cdd8-43cd-9c91-195ae9d50bdd', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(124, 164, 1, '2023-04-24 05:03:04', '2023-04-24 05:03:04', '7071430e-d5f5-435a-bb3f-b67ce6a912a5', NULL, NULL, NULL),
(125, 165, 1, '2023-04-24 05:03:08', '2023-04-24 05:03:08', 'f3789755-2b0b-4a6c-8647-90f85b5b56c3', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(126, 166, 1, '2023-04-24 05:03:08', '2023-04-24 05:03:08', '8e8babb3-2fd3-4e10-8412-3d983dbad00f', NULL, NULL, NULL),
(127, 167, 1, '2023-04-24 05:03:10', '2023-04-24 05:03:10', 'a9865c62-b99c-4449-8627-a6658938fc53', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(128, 168, 1, '2023-04-24 05:03:10', '2023-04-24 05:03:10', '3585138e-ba27-4aa2-bcd9-9fc71343f1a7', NULL, NULL, NULL),
(129, 169, 1, '2023-04-24 05:03:11', '2023-04-24 05:03:11', 'bbb59754-f150-4555-a0aa-15436f967289', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(130, 170, 1, '2023-04-24 05:03:11', '2023-04-24 05:03:11', '9d2caccd-bcbd-4d7d-a191-0898c4783683', NULL, NULL, NULL),
(131, 171, 1, '2023-04-24 05:03:14', '2023-04-24 05:03:14', '364f30f0-53b4-4825-b552-524d58918e7e', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(132, 172, 1, '2023-04-24 05:03:14', '2023-04-24 05:03:14', '69549203-db03-4a2d-a086-ca2208d3f4c7', NULL, NULL, NULL),
(133, 173, 1, '2023-04-24 05:03:16', '2023-04-24 05:03:16', 'a6ba7750-26c1-4a23-bba4-2e6cecc87c60', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(134, 174, 1, '2023-04-24 05:03:16', '2023-04-24 05:03:16', '90540f22-576d-4ab5-842e-47da41f7013f', NULL, NULL, NULL),
(135, 175, 1, '2023-04-24 05:03:21', '2023-04-24 05:03:21', '5f399ee3-d881-43e9-a478-dad75326bb13', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(136, 176, 1, '2023-04-24 05:03:21', '2023-04-24 05:03:21', 'e89ac01b-740b-4530-a365-cc6710de5202', NULL, NULL, NULL),
(137, 177, 1, '2023-04-24 05:03:54', '2023-04-24 05:03:54', 'b83b9b18-1dd4-4c7f-8822-3be35fa16029', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(138, 178, 1, '2023-04-24 05:03:54', '2023-04-24 05:03:54', 'ab59470f-7d28-4e30-aef4-d8d447ff7b47', NULL, NULL, NULL),
(139, 179, 1, '2023-04-24 05:03:55', '2023-04-24 05:03:55', 'e2d98673-69cb-431c-812a-7a0fd7e3b965', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(140, 180, 1, '2023-04-24 05:03:55', '2023-04-24 05:03:55', '7e7da39c-0a25-4f43-a862-bbd1ee0f6df0', NULL, NULL, NULL),
(141, 181, 1, '2023-04-24 05:03:56', '2023-04-24 05:03:56', '313e61d0-0f7d-4eb2-b396-8f2ef1b840e5', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(142, 182, 1, '2023-04-24 05:03:56', '2023-04-24 05:03:56', 'fade8a3c-054b-4bf5-b24d-983e472b39b9', NULL, NULL, NULL),
(143, 183, 1, '2023-04-24 05:04:04', '2023-04-24 05:04:04', '26f765ec-6b56-4888-8fb7-22042eb73b7d', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(144, 184, 1, '2023-04-24 05:04:04', '2023-04-24 05:04:04', '48e34611-bb7f-4c20-8ecf-c2ef38880e4b', NULL, NULL, NULL),
(145, 185, 1, '2023-04-24 05:04:06', '2023-04-24 05:04:06', '5e06b424-ed8d-4ffd-8f82-c0390044eb3d', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n    </tr></tbody></table>', 'Opening', NULL),
(146, 186, 1, '2023-04-24 05:04:06', '2023-04-24 05:04:06', 'd5a78a3e-e042-4be9-98e3-1ca9a4cff886', NULL, NULL, NULL),
(147, 187, 1, '2023-04-24 05:04:08', '2023-04-24 05:04:08', '45987484-900d-43ef-a0fc-7bcf95ed79d3', '<table><tbody><tr><th>Mon - Fri</th>\n        <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(148, 188, 1, '2023-04-24 05:04:08', '2023-04-24 05:04:08', 'e812667d-c2f7-4de5-98d1-7b9598e55dca', NULL, NULL, NULL),
(149, 189, 1, '2023-04-24 05:04:10', '2023-04-24 05:04:10', 'a80453c4-372f-4de8-a6e7-84656a3c18b7', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(150, 190, 1, '2023-04-24 05:04:10', '2023-04-24 05:04:10', '81ffc2f2-dc3e-498b-aa9c-eeb101f709c0', NULL, NULL, NULL),
(151, 191, 1, '2023-04-24 05:04:16', '2023-04-24 05:04:16', '6b60d382-8afd-4fd8-b2b9-23d6511c6a51', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(152, 192, 1, '2023-04-24 05:04:16', '2023-04-24 05:04:16', 'b46066bf-f3ce-450c-a533-81ec36960172', NULL, NULL, NULL),
(153, 193, 1, '2023-04-24 05:04:17', '2023-04-24 05:04:17', 'bd0d741c-8f8c-4a69-a6ce-584bec7946d7', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(154, 194, 1, '2023-04-24 05:04:17', '2023-04-24 05:04:17', 'e5783761-2fd6-4275-a571-ce3f95f266d2', NULL, NULL, NULL),
(155, 195, 1, '2023-04-24 05:04:18', '2023-04-24 05:04:18', 'cbc4faec-bed2-4a7f-8776-165647a79377', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(156, 196, 1, '2023-04-24 05:04:18', '2023-04-24 05:04:18', 'd0a27604-dc41-48c0-bb0c-44e74dec427b', NULL, NULL, NULL),
(157, 197, 1, '2023-04-24 05:04:19', '2023-04-24 05:04:19', 'e49d5e13-8383-4b85-9970-1091c7b03412', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(158, 198, 1, '2023-04-24 05:04:19', '2023-04-24 05:04:19', '7a58d959-c4f9-47a0-87db-c5cd60ad0e2c', NULL, NULL, NULL),
(159, 199, 1, '2023-04-24 05:04:21', '2023-04-24 05:04:21', '57bb8068-6d1a-4ec1-9a12-7fa52c18ae6a', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(160, 200, 1, '2023-04-24 05:04:21', '2023-04-24 05:04:21', '76efbd23-359f-4328-9ae8-2cbac0472cd0', NULL, NULL, NULL),
(161, 201, 1, '2023-04-24 05:04:22', '2023-04-24 05:04:22', '95e0ceb9-4d1b-4465-8cec-ebd8f33f41e6', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(162, 202, 1, '2023-04-24 05:04:22', '2023-04-24 05:04:22', '501624e6-2efc-4cab-a117-ed49dfacfa4f', NULL, NULL, NULL),
(163, 203, 1, '2023-04-24 05:04:23', '2023-04-24 05:04:23', '2d5efdc8-1f20-4d68-aeb7-44567fe1726a', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(164, 204, 1, '2023-04-24 05:04:23', '2023-04-24 05:04:23', '4680234b-e5d4-4355-9c93-699095999bcc', NULL, NULL, NULL),
(165, 205, 1, '2023-04-24 05:04:36', '2023-04-24 05:04:36', '229a973e-4964-4d89-8c96-e36a5530f9b2', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fr</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(166, 206, 1, '2023-04-24 05:04:36', '2023-04-24 05:04:36', 'e5dcfd29-f777-40b6-9470-01d8965ca33d', NULL, NULL, NULL),
(167, 207, 1, '2023-04-24 05:04:37', '2023-04-24 05:04:37', '909cadbb-9376-46a3-9cb0-ba2a51166519', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(168, 208, 1, '2023-04-24 05:04:37', '2023-04-24 05:04:37', '88ea011d-f909-4570-808f-f7941d3de114', NULL, NULL, NULL),
(169, 209, 1, '2023-04-24 05:05:21', '2023-04-24 05:05:21', 'dd189db9-1cdc-449b-9002-0fd253cce12e', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(170, 210, 1, '2023-04-24 05:05:21', '2023-04-24 05:05:21', 'e1139a70-4d48-4993-9521-cb8fc6093702', NULL, NULL, NULL),
(171, 211, 1, '2023-04-24 05:05:22', '2023-04-24 05:05:22', '0a636f6f-4858-4434-8f53-67ee9aeb6285', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(172, 212, 1, '2023-04-24 05:05:22', '2023-04-24 05:05:22', '124c0e3f-d2dd-43d5-a0bd-66cf4dc3ae4e', NULL, NULL, NULL),
(173, 213, 1, '2023-04-24 05:05:24', '2023-04-24 05:05:24', '6b951d0a-e892-49c6-8e07-a75b0a0384d0', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>\n\nh', 'Opening', NULL),
(174, 214, 1, '2023-04-24 05:05:24', '2023-04-24 05:05:24', '61e7a51d-5760-44db-943e-474c8c8dca7f', NULL, NULL, NULL),
(175, 215, 1, '2023-04-24 05:05:25', '2023-04-24 05:05:25', '1cc09cd6-1b36-4e0d-afc2-5d9851e185b1', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(176, 216, 1, '2023-04-24 05:05:25', '2023-04-24 05:05:25', '293f78fa-7645-4100-bf88-b1769e9b259b', NULL, NULL, NULL),
(177, 217, 1, '2023-04-24 05:05:26', '2023-04-24 05:05:26', '089d7f9b-f748-4ed6-9ea6-3bd855889eca', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table>', 'Opening', NULL),
(178, 218, 1, '2023-04-24 05:05:26', '2023-04-24 05:05:26', '338b2e6d-8251-4796-abd4-f62e6b3838a7', NULL, NULL, NULL),
(179, 219, 1, '2023-04-24 05:05:31', '2023-04-24 05:05:31', 'bf1085cf-a9eb-4837-8de4-4b98f7a03776', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(180, 220, 1, '2023-04-24 05:05:31', '2023-04-24 05:05:31', 'a1efa18b-9ec4-405f-97b0-7732beff52aa', NULL, NULL, NULL),
(181, 221, 1, '2023-04-24 05:05:32', '2023-04-24 05:05:32', '7670f7ac-ea7e-47c1-9db5-97ea20184604', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(182, 222, 1, '2023-04-24 05:05:32', '2023-04-24 05:05:32', 'acfed3fa-f830-4d80-bd6d-d54f2f7ab1bd', NULL, NULL, NULL),
(183, 223, 1, '2023-04-24 05:05:33', '2023-04-24 05:05:33', 'baf26c54-56d3-4cf4-ad0e-577516991fe0', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(184, 224, 1, '2023-04-24 05:05:33', '2023-04-24 05:05:33', '91ffdad1-b6ca-4a19-bf62-eff22fb91a9c', NULL, NULL, NULL),
(185, 225, 1, '2023-04-24 05:05:34', '2023-04-24 05:05:34', '55c20988-b201-4bd6-ac89-8055e2368388', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(186, 226, 1, '2023-04-24 05:05:34', '2023-04-24 05:05:34', 'f752904f-077e-4f50-aef2-86db1d9ca4ac', NULL, NULL, NULL),
(187, 227, 1, '2023-04-24 05:05:36', '2023-04-24 05:05:36', '5ac16d3b-68b3-48f4-aa72-d2edfff9f271', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(188, 228, 1, '2023-04-24 05:05:36', '2023-04-24 05:05:36', '1842192b-61db-4ee4-a941-03437456d91f', NULL, NULL, NULL),
(189, 229, 1, '2023-04-24 05:05:37', '2023-04-24 05:05:37', 'ca3e02a0-fd07-409a-9b4e-05b2b9886d7b', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3></h3>', 'Opening', NULL),
(190, 230, 1, '2023-04-24 05:05:37', '2023-04-24 05:05:37', '13ca9563-1f7f-4a8b-8431-4f85e38bdcc4', NULL, NULL, NULL),
(191, 231, 1, '2023-04-24 05:05:43', '2023-04-24 05:05:43', 'abe1169c-d7c5-47e2-b146-b6d2b9065b4a', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24</h3>', 'Opening', NULL),
(192, 232, 1, '2023-04-24 05:05:43', '2023-04-24 05:05:43', '5d3f390a-61e7-4082-b63c-21a60029e8a8', NULL, NULL, NULL),
(193, 233, 1, '2023-04-24 05:05:45', '2023-04-24 05:05:45', 'dbfddec0-4a85-4b6a-947f-35265474f955', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs</h3>', 'Opening', NULL),
(194, 234, 1, '2023-04-24 05:05:45', '2023-04-24 05:05:45', '0d834beb-8163-4991-a1c7-9e915b23af68', NULL, NULL, NULL),
(195, 235, 1, '2023-04-24 05:05:46', '2023-04-24 05:05:46', 'cb936329-7202-45e4-bfc1-18717ad2bb11', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs </h3>', 'Opening', NULL),
(196, 236, 1, '2023-04-24 05:05:46', '2023-04-24 05:05:46', '7162080e-f9dc-4237-b538-d48f07a835f1', NULL, NULL, NULL),
(197, 237, 1, '2023-04-24 05:05:49', '2023-04-24 05:05:49', '959c8289-41d5-44db-ba0a-604465d8006d', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs E</h3>', 'Opening', NULL),
(198, 238, 1, '2023-04-24 05:05:49', '2023-04-24 05:05:49', 'f42cc130-93b2-437f-a175-2044b7e1f981', NULL, NULL, NULL),
(199, 239, 1, '2023-04-24 05:05:55', '2023-04-24 05:05:55', '1ffd293f-683c-4593-b2f8-6727421c640e', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emerge</h3>', 'Opening', NULL),
(200, 240, 1, '2023-04-24 05:05:55', '2023-04-24 05:05:55', 'bd7e57c1-8a0a-4825-896d-6c39215e211a', NULL, NULL, NULL),
(201, 241, 1, '2023-04-24 05:05:56', '2023-04-24 05:05:56', '260a9e4d-575e-4093-a95f-b6ff3dd6b285', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', NULL),
(202, 242, 1, '2023-04-24 05:05:56', '2023-04-24 05:05:56', '35b98d7e-897e-4ddb-823b-d67ec0f7dced', NULL, NULL, NULL),
(203, 243, 1, '2023-04-24 05:06:04', '2023-04-24 05:06:04', '52a0fce6-6a13-42de-953c-85c6bc833012', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', NULL),
(204, 244, 1, '2023-04-24 05:06:04', '2023-04-24 05:06:04', '425ea756-e629-4758-98cb-0fe37076dca0', NULL, NULL, NULL),
(205, 245, 1, '2023-04-24 05:06:15', '2023-04-24 05:06:15', '0f0d7789-618e-40fb-87a9-0c95324a804e', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg'),
(206, 246, 1, '2023-04-24 05:06:15', '2023-04-24 05:06:15', '9f9ab32b-89fc-4843-813b-a8394823e00d', NULL, NULL, NULL),
(207, 247, 1, '2023-04-24 05:06:16', '2023-04-24 05:06:16', '2de76091-1514-49a4-987d-de68da96595b', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-'),
(208, 248, 1, '2023-04-24 05:06:16', '2023-04-24 05:06:16', '03b97bb1-c7a9-4ee3-b8d6-2659e15b35a9', NULL, NULL, NULL),
(209, 249, 1, '2023-04-24 05:06:17', '2023-04-24 05:06:17', '2433bce8-ba1b-4308-947b-72e24ae239e6', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-pri'),
(210, 250, 1, '2023-04-24 05:06:17', '2023-04-24 05:06:17', '26a7aa69-949a-4108-8fd0-46edbb6f8dfd', NULL, NULL, NULL),
(211, 251, 1, '2023-04-24 05:06:19', '2023-04-24 05:06:19', '87572b07-a9fc-46ce-96f0-177cda7ce156', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(212, 252, 1, '2023-04-24 05:06:19', '2023-04-24 05:06:19', 'd44642ee-0566-445a-9c56-291a2b8eee82', NULL, NULL, NULL),
(213, 253, 1, '2023-04-24 05:06:27', '2023-04-24 05:06:27', 'cf9ff970-7c3d-4456-aa73-63e4c8c9d5f3', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(214, 254, 1, '2023-04-24 05:06:27', '2023-04-24 05:06:27', '23320e53-f514-4dc8-ad1c-02e20163fd68', NULL, NULL, 'bg-primary'),
(215, 255, 1, '2023-04-24 05:06:30', '2023-04-24 05:06:30', '9a7d8228-149d-41db-8cda-b2758513fd62', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(216, 256, 1, '2023-04-24 05:06:30', '2023-04-24 05:06:30', '15f8d57e-2313-4dd4-98ee-1b2d30e1656e', NULL, NULL, 'bg-se'),
(217, 257, 1, '2023-04-24 05:06:31', '2023-04-24 05:06:31', '7d6b61f7-735c-45d6-8245-15594d8757c3', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(218, 258, 1, '2023-04-24 05:06:31', '2023-04-24 05:06:31', 'd390ec1b-311c-41f8-b802-3170d0d948b6', NULL, NULL, 'bg-second'),
(219, 259, 1, '2023-04-24 05:06:32', '2023-04-24 05:06:32', 'a603befc-c4a3-41e3-9d77-3e7b5e7454ff', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(220, 260, 1, '2023-04-24 05:06:32', '2023-04-24 05:06:32', '0a1abf66-bfb9-4cde-b717-d79af827fcd2', NULL, NULL, 'bg-seconday'),
(221, 261, 1, '2023-04-24 05:06:35', '2023-04-24 05:06:35', '3df8226e-4907-46d3-abe5-65ce6e552a9f', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(222, 262, 1, '2023-04-24 05:06:35', '2023-04-24 05:06:35', '87072759-7c70-423b-bd6f-7ed0b8f5cc2e', NULL, NULL, 'bg-secondry'),
(223, 263, 1, '2023-04-24 05:06:47', '2023-04-24 05:06:47', '60cfe5c9-dafd-448f-bea6-89e705520928', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(224, 264, 1, '2023-04-24 05:06:47', '2023-04-24 05:06:47', '7941e908-1f43-48e3-97f5-6fd5ae555334', NULL, 'Ma', 'bg-secondry'),
(225, 265, 1, '2023-04-24 05:06:48', '2023-04-24 05:06:48', '6fb9297e-aef4-4ec9-be11-548c4492b4ca', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(226, 266, 1, '2023-04-24 05:06:48', '2023-04-24 05:06:48', '6544a88b-52e9-455a-927b-0da31cb8492b', NULL, 'Make an', 'bg-secondry'),
(227, 267, 1, '2023-04-24 05:06:53', '2023-04-24 05:06:53', 'bf9cff79-d978-4c83-a494-5410ac70ec3c', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(228, 268, 1, '2023-04-24 05:06:53', '2023-04-24 05:06:53', '552807b8-4b11-482a-beb2-6e2122c17a24', NULL, 'Make an Appointment', 'bg-secondry'),
(229, 269, 1, '2023-04-24 05:07:00', '2023-04-24 05:07:00', 'e433ecbe-7ff7-4196-9f84-492f245a60d3', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(230, 270, 1, '2023-04-24 05:07:00', '2023-04-24 05:07:00', 'b1aac97f-782a-4762-ac39-8ebea55dfd91', '<p>Come </p>', 'Make an Appointment', 'bg-secondry'),
(231, 271, 1, '2023-04-24 05:07:01', '2023-04-24 05:07:01', '08b59999-be8b-4b2c-b133-e6cda15df4ee', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(232, 272, 1, '2023-04-24 05:07:01', '2023-04-24 05:07:01', '26fe3cd9-f7c5-4b14-bb95-caac153a7bb3', '<p>Come to </p>', 'Make an Appointment', 'bg-secondry'),
(233, 273, 1, '2023-04-24 05:07:02', '2023-04-24 05:07:02', 'd45d12a4-7b10-445c-a090-5e535555eae9', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(234, 274, 1, '2023-04-24 05:07:02', '2023-04-24 05:07:02', '7586ea7c-473e-4fe2-93f7-0581bc868f5d', '<p>Come to us</p>', 'Make an Appointment', 'bg-secondry'),
(235, 275, 1, '2023-04-24 05:07:06', '2023-04-24 05:07:06', 'febc0919-9847-4c73-8677-cbcd055e3207', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(236, 276, 1, '2023-04-24 05:07:06', '2023-04-24 05:07:06', '8889a627-8ed7-4d52-ba79-29e97a3a5045', '<p>Come to us an </p>', 'Make an Appointment', 'bg-secondry'),
(237, 277, 1, '2023-04-24 05:07:07', '2023-04-24 05:07:07', 'c74367c1-6a07-429d-b852-bacc1d89a97b', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(238, 278, 1, '2023-04-24 05:07:07', '2023-04-24 05:07:07', '296e4e72-6e39-40ca-bd20-14c0dc7b6311', '<p>Come to us an</p>', 'Make an Appointment', 'bg-secondry'),
(239, 279, 1, '2023-04-24 05:07:09', '2023-04-24 05:07:09', '1b2e3a3e-024f-4b73-9780-35d63805ea22', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(240, 280, 1, '2023-04-24 05:07:09', '2023-04-24 05:07:09', '7ec8a510-b9e4-436a-9779-74713118f72e', '<p>Come to us and have a </p>', 'Make an Appointment', 'bg-secondry'),
(241, 281, 1, '2023-04-24 05:07:12', '2023-04-24 05:07:12', '5a9cf0c5-e4c6-42bb-8642-40cbb1918ea6', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00am - 5:00pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(242, 282, 1, '2023-04-24 05:07:12', '2023-04-24 05:07:12', '3fe4615a-2426-412a-b83b-8cb370bd5d27', '<p>Come to us and have a good time</p>', 'Make an Appointment', 'bg-secondry'),
(243, 283, 1, '2023-04-24 05:07:40', '2023-04-24 05:07:40', '4665788c-a30d-42a8-b087-1c3036e712d1', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(244, 284, 1, '2023-04-24 05:07:40', '2023-04-24 05:07:40', 'c62453ed-a363-4f72-a0f9-5dc5b515211b', '<p>Come to us and have a good time</p>', 'Make an Appointment', 'bg-secondry'),
(247, 287, 1, '2023-04-24 05:07:41', '2023-04-24 05:43:34', '0bda7164-524b-4681-aebf-88de9fe56eb9', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(248, 288, 1, '2023-04-24 05:07:41', '2023-04-24 05:44:49', 'dd5f155e-d607-4ae1-a0ec-004a71ec5388', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(249, 290, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', 'c54ca781-fb7b-4a57-b2ac-ae1151445b97', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(250, 291, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', 'eec6af69-cf64-4d5b-8773-f93c182dbde6', '<p>Come to us and have a good time</p>', 'Make an Appointment', 'bg-secondry'),
(252, 295, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', 'a024241a-36c8-44ac-af38-cf618305fa20', '<table><tbody><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(253, 296, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', '246c9adb-7191-4031-88dd-945fa27eba84', '<p>Come to us and have a good time</p>\n<h2>+012 345 6789</h2>', 'Make an Appointment', 'bg-secondry'),
(256, 301, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', '8d972b69-1880-40db-8665-1fd36f66c9d6', '<table><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td>8:00 am - 5:00 pm</td>\n        </tr><tr><td></td></tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(257, 302, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', '07b4fcb7-c3cd-40a1-837f-ca7f701a1df9', '<p>Come to us and have a good time</p>\n<h2>+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(259, 306, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', 'c0be04fd-093e-48a4-8c0d-8d5081ebbe76', '<table><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><td></td></tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(260, 307, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', '692aa216-0097-45e4-99df-de28693400db', '<p>Come to us and have a good time</p>\n<h2>+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(262, 311, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', 'fe66f482-40ab-49ef-844a-1af044d97725', '<table class=\"text-white\"><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><td></td></tr></tbody></table><h3>24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(263, 312, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '5406f725-7a37-412b-b619-fb8d7d20eac5', '<p>Come to us and have a good time</p>\n<h2>+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(266, 317, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', 'a1a97690-dd6c-45cc-a841-178045c07d5b', '<table class=\"text-white\"><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><td></td></tr></tbody></table><h3 class=\"text-white mb-0\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(267, 318, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', '04e61e35-b56c-4c2e-bd51-dccbd6bddd67', '<p class=\"text-white\">Come to us and have a good time</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary');
INSERT INTO `matrixcontent_banners` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_banner_bannertext_bxmahqpt`, `field_banner_bannertitle_tbkuklnl`, `field_banner_bgColor_huwuepoe`) VALUES
(270, 323, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', 'ee902e68-b543-4b25-bf34-231ca7330c12', '<table class=\"text-white\"><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-1\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(271, 324, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', 'e0d489e2-4f55-48f3-8c62-84d0f8b4852b', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(273, 328, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '03cb42d4-ad07-4648-b0a2-55d2f80e9cf7', '<table class=\"text-white\"><tbody><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(274, 329, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '60aa89e8-9cdb-486a-a9c0-b813fd8559a4', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(276, 333, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', '77b7251a-4df9-4c56-9123-873d6589909d', '<table class=\"text-white\"><tbody><tr class=\"p-2\"><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(277, 334, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', '0cf05a9e-5f7f-48cd-a81e-aecf7c90ca39', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(279, 338, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', '60aed377-5e28-4d29-b1f7-c7df559f433a', '<table class=\"text-white\"><tbody><tr style=\"padding:10px;\"><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(280, 339, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', 'fd455fb5-6e7d-41d2-b66a-d85fe411356b', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(282, 343, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', '459069c2-5c14-4ae0-928b-e75133cd6164', '<table class=\"text-white\"><tbody><tr class=\"p-3\"><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(283, 344, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', '6b14b1b9-ef6c-46eb-9432-3108c5873e3f', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(285, 348, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '59545d76-4026-4d56-a545-36cff65c53ab', '<table class=\"text-white\"><tbody><tr><th class=\"p-3\">Mon - Fri</th>\n            <td class=\"p-3\" align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(286, 349, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '03d83fa4-f368-4b6a-8939-5322408fa0c5', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(288, 353, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', '48b190d7-afc7-4a3c-a48c-f27e2a2a59c6', '<table class=\"text-white\"><tbody><tr><th class=\"pt-3 pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th>Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(289, 354, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', 'ba03fbc6-b6d2-4720-a45f-d4b4c8d544b6', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(291, 358, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '3929dbc5-0eac-46ee-a6a0-38d9b1da77f4', '<table class=\"text-white\"><tbody><tr><th class=\"pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-3 pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(292, 359, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '29f5d432-74ad-47b5-8067-babf231f6407', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(294, 363, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', '0ae4c99b-d7e9-42cf-8d32-dc3499644760', '<table class=\"text-white\"><tbody><tr><th class=\"pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-3 pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-3 pb-3\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(295, 364, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', '2d81af29-3368-4d21-aefd-bf8ec9d49d39', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(297, 368, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '47132674-27b7-4d49-997f-8ceb71fbc637', '<table class=\"text-white\"><tbody><tr><th class=\"pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-3 pb-3\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-3\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(298, 369, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '5d5662e0-668c-40a8-af14-fd360e2864c2', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(300, 373, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', '6fc76a30-3e00-41f5-809e-9aebb2ed9a75', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening', 'bg-primary'),
(301, 374, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', '475221a0-1017-4646-acf3-8f92f9186599', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(303, 378, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', '80f8d727-8f16-4cd7-bec9-900db983e4cb', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(304, 379, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', '449ad7da-fc52-40cb-940a-71dfbf26503f', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+012 345 6789</h2>', 'Make an Appointment', 'bg-secondary'),
(306, 383, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', 'f69caf74-296f-429f-a14e-4f47b75d3f22', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(307, 384, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', '500b20a1-8b53-4e8f-a11e-75e54ff220f6', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(308, 386, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', '55033e97-386b-4c09-acbe-e0a19f3fed5e', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(309, 387, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', '0426bdf9-c15c-4447-9951-95373c4bd22f', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(310, 389, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', '32746aac-9fe6-422d-8c64-39d7152c6285', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(311, 390, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', 'bd0275b0-b3ae-493f-a807-460b205a521b', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(312, 392, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', 'f8f6e2ba-5703-425a-8478-f7a5a72f85e4', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(313, 393, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', '2c6276fa-b575-4f26-8656-fb4525e3adf9', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(314, 410, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', 'a057f639-9658-4160-a917-1255883daef7', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(315, 411, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '51f91ed2-05bb-4a64-8537-d930deff3266', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(316, 416, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '1115d7bc-cead-47c1-9b01-0e3d0197bc84', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(317, 417, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', 'af105c74-b9bc-4d3c-982a-b503991b4901', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(318, 422, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'd6a164d5-f8f4-4520-b935-6f863a2eae1c', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(319, 423, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'ee17625a-4502-4ef1-8a32-df0a4da33fbc', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(320, 428, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '7203be4c-f42a-4d92-b1d3-894769a90c4a', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(321, 429, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', 'a1d36f6d-2412-4df4-bee7-6796e2b628be', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(322, 432, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '0b08ae15-0058-4d02-b40a-b7fe7278f22b', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(323, 433, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '265f850a-68b0-4da7-86d7-7fae0ebfbc51', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(324, 477, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '15ebc537-c36f-4a0e-b5cc-aa6044ac521e', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(325, 478, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'e9f761d6-9d46-4d60-b6f1-8e1a22be5edf', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(326, 484, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '49b731a0-cf33-4cb1-9f51-23b27b465cc6', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(327, 485, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '5bf087f2-ff69-4c19-8b52-199a09c29aaf', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(328, 558, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '3bfc7cbc-0dd9-4d37-b418-e1ae7fc4303f', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(329, 559, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '8bd54636-3b43-467b-a9ba-45c6383b0e5a', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(330, 566, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '937f68a6-9b95-4851-9ac2-1ba47a820eb4', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(331, 567, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '8f7763a0-8518-47c4-b6b4-3c332e22ac8c', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(332, 576, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '03a68ff8-d063-44a6-adb8-c2538ac96df3', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(333, 577, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '96d06489-8b1b-49bc-a384-e487e69e381b', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(334, 583, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '66e456a0-857e-4999-802d-d0b08d67164c', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(335, 584, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'ef56ffcc-dc79-4673-bc98-d9974f683e38', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(336, 654, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'eb476e9c-6819-4f59-8b4d-fb55eee2c939', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(337, 655, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '4e160755-3d94-4798-bd3d-fd9142e5a8dd', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary'),
(338, 664, 1, '2023-04-24 17:47:04', '2023-04-24 17:47:04', '33769661-b932-4aeb-9a5b-48953ffd3132', '<table class=\"text-white\"><tbody><tr><th class=\"pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2 pb-2\">Mon - Fri</th>\n            <td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr><tr><th class=\"pt-2\">Mon - Fri</th>\n<td align=\"right\">8:00 am - 5:00 pm</td>\n        </tr></tbody></table><h3 class=\"text-white mb-0 mt-3\">24hrs Emergency</h3>', 'Opening Time', 'bg-primary'),
(339, 665, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'f7ccece9-47ed-4edb-a342-53b7ca01e370', '<p class=\"text-white\">Ipsum erat ipsum dolor clita rebum no rebum dolores labore, ipsum magna at eos et eos amet.</p>\n<h2 class=\"text-white mb-0\">+233 248376160</h2>', 'Make an Appointment', 'bg-secondary');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_homeaboutus`
--

CREATE TABLE `matrixcontent_homeaboutus` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_homeAbout_homeAboutTitle_koeaunqb` text DEFAULT NULL,
  `field_homeAbout_homeAboutDescription_qnmfexqe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixcontent_homeaboutus`
--

INSERT INTO `matrixcontent_homeaboutus` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_homeAbout_homeAboutTitle_koeaunqb`, `field_homeAbout_homeAboutDescription_qnmfexqe`) VALUES
(1, 395, 1, '2023-04-24 06:34:02', '2023-04-24 06:34:02', '104bc386-ff00-45e7-8e02-c315b890a299', 'The World\'s Best Dental Clinic That You Can Trust', NULL),
(2, 396, 1, '2023-04-24 06:34:07', '2023-04-24 06:34:07', '408514a7-fc63-4a2a-973a-4436625e112d', 'The World\'s Best Dental Clinic That You Can', NULL),
(3, 397, 1, '2023-04-24 06:34:12', '2023-04-24 06:34:12', 'e37f75bd-be33-433a-a758-bf7edf8f67c4', 'The World\'s Best Dental Clinic That You Can Trust', NULL),
(4, 398, 1, '2023-04-24 06:34:17', '2023-04-24 06:34:17', 'e0cacc59-39bb-48f6-af38-75e355f4046f', 'The World\'s Best  That You Can Trust', NULL),
(5, 399, 1, '2023-04-24 06:34:20', '2023-04-24 06:34:20', 'f3d4a0a4-a36e-4a9f-9d1e-7b67ebb0a4a2', 'The World\'s Best Hospital That You Can Trust', NULL),
(6, 400, 1, '2023-04-24 06:35:25', '2023-04-24 06:35:25', '2c9f7128-c4d1-4a0b-a0dd-94586a497877', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>'),
(7, 401, 1, '2023-04-24 06:35:28', '2023-04-24 06:35:28', '8a91a377-b651-44d1-92c8-b1e2a70989fe', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(8, 402, 1, '2023-04-24 06:35:54', '2023-04-24 06:35:54', 'ef0610d3-1de1-4d88-9b39-594d7790ff82', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>'),
(9, 403, 1, '2023-04-24 06:35:55', '2023-04-24 06:35:55', 'd41c24ee-1900-497e-afbe-e481ea64a1e6', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(10, 404, 1, '2023-04-24 06:35:57', '2023-04-24 06:35:57', 'e1242f7c-ff12-40e7-8644-d93157df3379', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(11, 405, 1, '2023-04-24 06:36:03', '2023-04-24 06:36:03', '62e7f8df-2581-47ab-a0f4-c5dfb6759cc8', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>'),
(13, 408, 1, '2023-04-24 06:37:35', '2023-04-24 06:52:44', 'e3b4e233-8d6d-469e-af8b-d02af176a967', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(14, 412, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '8d0fd11f-8991-4c08-94f5-b39a8f5beb2e', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(16, 418, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', 'f36f62cc-c5cc-438d-b43e-7f46dcfc6c7b', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(18, 424, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', '62cf1eb4-66ce-4dd6-9e65-157978d9b975', 'The World\'s Best Hospital That You Can Trust', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet</p>\n<p></p>'),
(20, 430, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '17c9ebc5-f302-4d92-9ffb-226b6c4a19f9', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(21, 434, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '8d272916-7fcc-41c1-b39b-72a3274fc21c', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(22, 479, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '7bcea572-67a2-470a-9b6b-dc05077a6bf7', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(23, 486, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '1f9d71b4-c238-43c2-8466-e123fbc18cd1', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(24, 560, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '587e6648-f0ad-446a-abdf-714b14d9a014', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(25, 568, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '81e9bf88-455c-4119-a7da-e2b63f048a44', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(26, 578, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '3bca8432-dd92-4a82-ac1c-9c5dc28f96e0', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(27, 585, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '81e57dad-8662-43b7-96c6-5dbd4215ffac', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(28, 656, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'dffc8a3b-0bc7-4b4b-a58f-d2ad096dca1e', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>'),
(29, 666, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '00885bd1-fc6e-4314-b97f-42466623fa93', 'The World\'s Best Hospital That You Can Trust - Yes', '<h4>Diam dolor diam ipsum sit. Clita erat ipsum et lorem stet no lorem sit clita duo justo magna dolore - Sammie</h4>\n<p>Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet - Mimi</p>\n<p></p>');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_homeservices`
--

CREATE TABLE `matrixcontent_homeservices` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_homeService_serviceImageDescrition_rmasbsiy` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixcontent_homeservices`
--

INSERT INTO `matrixcontent_homeservices` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_homeService_serviceImageDescrition_rmasbsiy`) VALUES
(1, 437, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', '813da49a-1c41-43eb-9c83-25bdddcaa044', NULL),
(2, 438, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', 'c4566e54-0373-49f4-8c6b-d3c5207fce99', NULL),
(3, 439, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', '8c450baa-fdf8-4bb6-bd2d-23d476e50bc4', NULL),
(4, 440, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', '79c739da-5f2e-49eb-b011-dec3911c5ca3', NULL),
(5, 441, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', 'e9a7addc-a514-4fa4-8292-21badfb001bf', NULL),
(6, 442, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', '54e14aba-843d-4571-8f45-4f56759947d1', NULL),
(7, 443, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '593ab29a-8384-4c97-ad22-9cf2e2c94bde', NULL),
(8, 444, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '8d5acec2-dee8-4daf-9fb7-bba86d45092f', NULL),
(9, 445, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', 'f32aea9b-0920-49b8-a291-db2ed01942b6', NULL),
(10, 446, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', '737168fa-a1b6-4c10-ba3c-7a6ddcecf0cc', 'Sammie Sa'),
(11, 447, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', '6440a45b-df30-4ae3-9fff-d4e386fa0831', NULL),
(12, 448, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', 'a4b1c97c-de1e-4255-8277-cbd1dc3302c9', NULL),
(13, 449, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', '85f3e76a-fb49-4ef5-93cf-f534b27132d1', 'Sammie Sapong'),
(14, 450, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', '5048c755-7f13-45fd-9e09-b456861f5aad', NULL),
(15, 451, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', '2e3e9114-3f13-469c-b92b-6a77ae4fed2c', NULL),
(16, 452, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', '57a67f1b-0435-4133-9ac5-dd05732d13d2', 'Sammie Sarpong'),
(17, 453, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', '64ca3025-be09-4239-8d08-90a9011411dc', NULL),
(18, 454, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', 'd9e77479-a360-436e-a6dd-aa8d6620db92', NULL),
(19, 455, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', 'e6455d53-b63f-4e98-bbea-6823ebad3157', 'Sammie Sarpong'),
(20, 456, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '65179301-298a-4fbb-93a2-55e05fe911c1', 'Mini'),
(21, 457, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '6d48add9-5d28-4961-acf5-e10412d2b214', NULL),
(22, 458, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', 'c2921d3b-903e-438f-9c17-28238ffd6874', 'Sammie Sarpong'),
(23, 459, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', '69405216-d6c0-4c15-81af-e251d72f0d38', 'Mini Mi'),
(24, 460, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', '6692f434-863e-47de-9ea1-3bf3cb9e1356', NULL),
(25, 461, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '57981ec5-38e5-40bb-a62b-64e43e92206f', 'Sammie Sarpong'),
(26, 462, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', 'de0102bd-a8d6-482a-af0e-68cf3503417b', 'Mini Mani'),
(27, 463, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '567dd90f-c462-4989-953c-a90e437f713f', NULL),
(28, 464, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '2de16fe2-22c6-4af9-9487-ed624a87085e', 'Sammie Sarpong'),
(29, 465, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', 'ec917b1e-22f2-476c-b551-8b9955e3115c', 'Mini Manimuonya'),
(30, 466, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '724c4464-337d-42c2-991a-400c7404e814', NULL),
(31, 467, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '752e041c-a7a6-4129-90ae-e0a8053969ff', 'Sammie Sarpong'),
(32, 468, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '6318de27-6176-4199-8dc2-4680e0f84d9b', 'Mini Manimuonyam'),
(33, 469, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '7006f168-e6a3-4236-b57f-146212a5300e', NULL),
(37, 473, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '330e2c45-d4f8-4ec7-b986-1f6516b39f44', 'Sammie Sarpong'),
(38, 474, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '32bd1545-13dc-4a5e-a1ae-d6e79ff4ca9b', 'Mini Manimuonyam'),
(39, 475, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '552b7024-4e83-4bd4-a9fc-62e858180933', 'Mensima'),
(40, 480, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '8c6a1903-4fdd-47a3-888e-b14cc4417c8a', 'Sammie Sarpong'),
(41, 481, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'e294a584-bec6-459c-a2b1-b32e238f9e91', 'Mini Manimuonyam'),
(42, 482, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'dd95b9b3-cd01-428b-abca-d6923a8ce51a', 'Mensima'),
(43, 487, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '981be582-dda1-40da-870f-1c33952a2b77', 'Sammie Sarpong'),
(44, 488, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '9ea25f5c-320d-4e8a-9820-70658da93602', 'Mini Manimuonyam'),
(45, 489, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '108375c3-a9b7-4d21-a85e-a540943f3a2a', 'Mensima'),
(46, 491, 1, '2023-04-24 16:16:12', '2023-04-24 16:16:12', 'db16025e-8730-4e55-b5b3-8633d29dc2e2', NULL),
(47, 492, 1, '2023-04-24 16:16:17', '2023-04-24 16:16:17', 'bb94cafb-d2d2-4c31-856f-40a1911a4b1c', NULL),
(48, 493, 1, '2023-04-24 16:16:17', '2023-04-24 16:16:17', '7c487cce-3554-4307-83f1-3ee692c49258', NULL),
(49, 494, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', 'f66aabff-d75b-4c89-bc1a-73110349ac68', NULL),
(50, 495, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', 'eaabaa31-059d-4024-9d8b-746d3eb93535', NULL),
(51, 496, 1, '2023-04-24 16:16:28', '2023-04-24 16:16:28', '930d396e-8196-40c5-aaf1-f1164fea2a68', NULL),
(52, 497, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', '13c5c7a4-02e4-43fc-9905-9c0df392cf96', NULL),
(53, 498, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', '9aa9b2b2-33d8-47ca-9cf9-da22b9593b68', NULL),
(54, 499, 1, '2023-04-24 16:16:41', '2023-04-24 16:16:41', 'f614d16b-062b-4ac5-940e-74677c7534a8', NULL),
(55, 500, 1, '2023-04-24 16:16:54', '2023-04-24 16:16:54', 'e964f98f-8fd0-4f8d-afd9-77abf32a67a7', NULL),
(56, 501, 1, '2023-04-24 16:16:54', '2023-04-24 16:16:54', '40d6d324-1bc9-4a84-b4d8-6dfa0fb988c3', NULL),
(57, 502, 1, '2023-04-24 16:16:58', '2023-04-24 16:16:58', '7d77cb24-26cc-452b-a4ba-e9ba8dcb57ac', NULL),
(58, 503, 1, '2023-04-24 16:18:42', '2023-04-24 16:18:42', 'd6e31ebb-1b86-4c68-8d98-651637596480', NULL),
(59, 504, 1, '2023-04-24 16:18:43', '2023-04-24 16:18:43', '7d8ec547-a1ac-4e90-a0ac-b821c8c58745', NULL),
(60, 505, 1, '2023-04-24 16:18:43', '2023-04-24 16:18:43', 'e4ee9555-8059-483a-ba9e-a3c592511710', NULL),
(61, 506, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', '4ca08620-3881-4d05-a1c6-ab3100106582', NULL),
(62, 507, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', 'f7fdf2c9-22bf-4757-9837-3ed82214a681', NULL),
(63, 508, 1, '2023-04-24 16:18:45', '2023-04-24 16:18:45', '36b18651-a33e-4de6-b17b-ec57d1d9940c', NULL),
(64, 509, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', '34126045-4661-4a9d-bbe9-7e5bc57fbb99', NULL),
(65, 510, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', 'a1c77e41-1841-4247-bd4e-e9fee6ef5a47', NULL),
(66, 511, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', '0eb13a74-3e97-45c8-b1d9-5e0fe733db59', NULL),
(67, 512, 1, '2023-04-24 16:18:47', '2023-04-24 16:18:47', '8b3f1ece-7a9b-4565-8ca7-f11147f731f4', NULL),
(68, 513, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', 'd4cecf50-1e2a-4d90-9c91-5e14e7f337e3', NULL),
(69, 514, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', '21708289-3b50-4306-938f-b624bc148d1c', NULL),
(70, 515, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', '0ad718b1-10bf-4610-98b9-0d05a5e46658', NULL),
(71, 516, 1, '2023-04-24 16:19:01', '2023-04-24 16:19:01', 'e82b707e-25b8-4351-bbf9-9e6c3b417aa9', NULL),
(72, 517, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', 'f82af88e-16a0-4b9c-a217-9bc6afefab6e', NULL),
(73, 518, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', '4d6f6715-3e01-403d-95a0-040c34546c5f', NULL),
(74, 519, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', 'df52bc63-20c9-4451-9aa1-112f8911f6ef', NULL),
(75, 520, 1, '2023-04-24 16:19:03', '2023-04-24 16:19:03', '14042445-9af1-4894-9915-2324cb5d2ab6', NULL),
(76, 521, 1, '2023-04-24 16:19:05', '2023-04-24 16:19:05', 'c69719c2-fccc-4ffb-b091-da42e8f7c5b8', NULL),
(77, 522, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', '9c61cf37-2bcd-4622-82d9-6366755da1bb', NULL),
(78, 523, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', '1a423efb-2b7b-4918-9ad8-2aa539b224fd', NULL),
(79, 524, 1, '2023-04-24 16:19:06', '2023-04-24 16:19:06', '1aaef3e2-309f-4103-9956-b8121f3299ba', NULL),
(80, 525, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', 'fbd379b0-ebb0-4f64-9f94-de9096e560c2', NULL),
(81, 526, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', 'abab49d9-1a0d-41b3-a866-188d13f074b7', NULL),
(82, 527, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', '01af9d83-a092-4820-994a-b856a97c83ca', NULL),
(83, 528, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', 'fad63239-942c-4091-9493-f6b50054f2f0', NULL),
(84, 529, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '96cddfa4-d6b1-416a-8bce-479641349483', NULL),
(85, 530, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '463643c9-7b2f-4943-8eaa-6adc96d96a94', NULL),
(86, 531, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', 'e445dcd4-88cb-4267-aa95-0d907f5fc0f9', NULL),
(87, 532, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', 'af2118b7-3698-4155-823d-9847b31b0213', NULL),
(88, 533, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', 'b1602dd3-6594-4263-a3dd-b7021ed532cd', NULL),
(89, 534, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', 'e075ea16-0ed0-4c92-aea2-37dbd786156d', NULL),
(90, 535, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', 'ba67e59d-323e-41c8-88c2-d37583718d41', NULL),
(91, 536, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '0aa00adc-7672-416d-8d76-b7870fc9de81', NULL),
(92, 537, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '99abeb19-db60-4c6e-8954-c6026b76fe13', NULL),
(93, 538, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', 'c2cebc74-6939-4717-b45a-3696e4e263bf', 'Sammie'),
(94, 539, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '41c91ecd-552e-4e92-8789-9a72d9449dd2', NULL),
(95, 540, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '1a6046f2-5c9f-4f8c-ade8-1a942da7a04f', NULL),
(96, 541, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', '5ed7d20f-a847-4832-9d11-2d5d7970ec45', NULL),
(97, 542, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'abbd0c1f-a3c9-429f-bb4e-eea81d2ae4ab', 'Sammie'),
(98, 543, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', '869b4946-6917-42f4-8233-6829f3a59929', 'Mimi'),
(99, 544, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'c28e15e8-2825-4559-8c38-0c13e2d5f7fa', NULL),
(100, 545, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '8e4e8ee9-25a0-4364-b77a-c65271b2d51d', NULL),
(101, 546, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '6e2f15bf-365c-40bd-8c3a-3e54fa64bddd', 'Sammie'),
(102, 547, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '5ab46022-de91-40d2-9787-7ac0ef948e78', 'Mimi'),
(103, 548, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '56d1c1b2-619d-4dd2-a591-4fd9780eb47f', 'M'),
(108, 553, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '089283b6-a871-4c2e-a5d1-0722e454d7d8', NULL),
(109, 554, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'f42eb7fd-b91f-4bcd-b44b-ddaf7b9b79f1', 'Sammie'),
(110, 555, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '99961a81-f3b1-48c3-a940-f43a5142daeb', 'Mimi'),
(111, 556, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '22c68f35-4eab-40cf-9ee4-278b57ca7b88', 'Mummie'),
(112, 561, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '559c204c-3887-474e-9de4-48cee3365ea8', NULL),
(113, 562, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'e535274e-6d58-479e-ac98-540579848340', 'Sammie'),
(114, 563, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '8044d3e3-2e58-40cd-a5fb-b0393923a19c', 'Mimi'),
(115, 564, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'a84a2e33-b72e-46c5-91ff-458f71b181ec', 'Mummie'),
(116, 569, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '91c1cead-78ff-4ceb-b59f-9d425644ffc5', NULL),
(117, 570, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'd3e9d8e2-701e-4f0f-a66a-648931daaf88', 'Sammie'),
(118, 571, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '8274950d-9f08-4618-98a2-99dd5f98a096', 'Mimi'),
(119, 572, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '86f84747-22fa-499e-b3b6-5599f85bec93', 'Mummie'),
(120, 574, 1, '2023-04-24 16:35:56', '2023-04-24 16:35:56', '2ae5e5e1-6e44-4c4b-a649-7199fb958aed', NULL),
(121, 579, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '8763efeb-99d7-4e1a-b2bf-d7afcabdadd6', 'Sammie'),
(122, 580, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '1b5ff934-6270-463c-8676-97b272422d31', 'Mimi'),
(123, 581, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '0134299d-a95c-4eda-b18b-821ed584eab4', 'Mummie'),
(124, 586, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '439deda3-b8ce-45f0-9d41-a8aa24f726a3', 'Sammie'),
(125, 587, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'f674074a-7c8a-4b1d-ad10-d354443e8ac7', 'Mimi'),
(126, 588, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '2ad9e6cc-894e-4182-9dd1-ecf8f3d16409', 'Mummie'),
(127, 657, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '99cadf9e-17c8-4da5-b101-933a63c8dc61', 'Sammie'),
(128, 658, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '97225084-66c3-4aed-a5a6-2f70e31d95c8', 'Mimi'),
(129, 659, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'e5ca865e-ad5f-4d04-a407-305eda5d4829', 'Mummie'),
(130, 667, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '98d5b09d-4d89-464e-b48e-f74f9272f880', 'Sammie'),
(131, 668, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'ef8a08b8-8659-4d42-8303-983190951c82', 'Mimi'),
(132, 669, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'fa8e1d1a-a161-4649-80f9-5f63f2b1fda1', 'Mummie');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_staffimage`
--

CREATE TABLE `matrixcontent_staffimage` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_staff_staffInstagramHandle_lfpjgwet` text DEFAULT NULL,
  `field_staff_staffPosition_adtcvgkd` text DEFAULT NULL,
  `field_staff_staffName_feuwtuom` text DEFAULT NULL,
  `field_staff_staffFacebookHandle_zzphjans` text DEFAULT NULL,
  `field_staff_staffTwitterHandle_oyfyrwiz` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matrixcontent_staffimage`
--

INSERT INTO `matrixcontent_staffimage` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_staff_staffInstagramHandle_lfpjgwet`, `field_staff_staffPosition_adtcvgkd`, `field_staff_staffName_feuwtuom`, `field_staff_staffFacebookHandle_zzphjans`, `field_staff_staffTwitterHandle_oyfyrwiz`) VALUES
(1, 590, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', '34d16fe5-e04c-42d7-983c-1b3d47802402', NULL, NULL, NULL, NULL, NULL),
(2, 591, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', '5b12e9b1-d61c-496c-8d65-aad081cbfcc7', NULL, NULL, NULL, NULL, NULL),
(3, 592, 1, '2023-04-24 17:33:24', '2023-04-24 17:33:24', 'e2bbfbc7-6873-486a-8331-f8d2163012bb', NULL, NULL, NULL, NULL, NULL),
(4, 593, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', '7ffc2695-2175-4270-b968-84c391682e8c', NULL, NULL, 'Sammie', NULL, NULL),
(5, 594, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', '90dc6060-6681-4ca1-9dee-10c29eb00cf6', NULL, NULL, NULL, NULL, NULL),
(6, 595, 1, '2023-04-24 17:33:36', '2023-04-24 17:33:36', '76582342-c666-4f1d-a336-860c3ea25ca2', NULL, NULL, NULL, NULL, NULL),
(7, 596, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', 'c69be1bc-9679-480c-bb4d-bacbacb35e16', NULL, 'C', 'Sammie', NULL, NULL),
(8, 597, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', '64dac4ad-cf03-42fa-a0ea-0d5d997c107a', NULL, NULL, NULL, NULL, NULL),
(9, 598, 1, '2023-04-24 17:33:40', '2023-04-24 17:33:40', '26b2e584-f617-44b5-b56e-e26ae795df1e', NULL, NULL, NULL, NULL, NULL),
(10, 599, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', 'f3ba370e-16fb-4cb8-8dc5-e11aa223685f', NULL, 'CEO', 'Sammie', NULL, NULL),
(11, 600, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', '0f54e940-c57b-4c7f-929e-a715527b35c5', NULL, NULL, NULL, NULL, NULL),
(12, 601, 1, '2023-04-24 17:33:41', '2023-04-24 17:33:41', '90b3dc6c-f714-45b5-9827-fe8538e6104a', NULL, NULL, NULL, NULL, NULL),
(13, 602, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', 'bae93992-4c07-4749-9f42-48e89f7c8295', NULL, 'CEO', 'Sammie', NULL, NULL),
(14, 603, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', '81fd7b03-96e3-47c6-aa3f-188b69c64eb6', NULL, NULL, NULL, NULL, NULL),
(15, 604, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', 'c7224ea3-94bd-4ba5-9794-7ef777c43196', NULL, NULL, NULL, NULL, NULL),
(16, 605, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', '1e32dfb3-da7b-4f8c-8068-a9f1f232cba8', NULL, 'CEO', 'Sammie', 'dfdfdfdf', NULL),
(17, 606, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', 'fd91184b-7059-4a08-b2e4-37e242a11b4c', NULL, NULL, NULL, NULL, NULL),
(18, 607, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', '79e4690b-eebe-4e59-995c-ccd61d7d0dc3', NULL, NULL, NULL, NULL, NULL),
(19, 608, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '8a6ee223-9d95-4947-9ae6-9068560d0aae', NULL, 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(20, 609, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '7382f794-3da1-49c3-ae51-6a317082f121', NULL, NULL, NULL, NULL, NULL),
(21, 610, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '88dfc5dd-ff98-4fe7-a4c1-a8407bcf84bf', NULL, NULL, NULL, NULL, NULL),
(22, 611, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', '8faa928e-d5dd-4839-b979-bcd6be9308f4', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(23, 612, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', 'c77c4d86-7048-44ba-a719-d3b9bdf0bfe3', NULL, NULL, NULL, NULL, NULL),
(24, 613, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', '10071a76-cd8c-465f-b82e-5e3668800fee', NULL, NULL, NULL, NULL, NULL),
(25, 614, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', 'b3dbcea1-e6ef-4875-9672-550db5594876', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(26, 615, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', '41237542-e3e5-44b7-934e-6cafa9308093', NULL, NULL, 'Mimi', NULL, NULL),
(27, 616, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', '1dd552e0-73fe-446d-b2cf-14d04dbe9621', NULL, NULL, NULL, NULL, NULL),
(28, 617, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', '2341e9d6-87ec-494f-8a17-26dc8e01923e', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(29, 618, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', '68cbe82b-672d-4584-b01e-1d5d55de7075', NULL, 'CIO', 'Mimi', NULL, NULL),
(30, 619, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', 'f071fda1-0994-4ece-b21d-4ebb63568e64', NULL, NULL, NULL, NULL, NULL),
(31, 620, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', '62ae1f7b-f877-49b7-9485-4d0120a587cb', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(32, 621, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', 'a2328f08-98f7-4417-b36f-dd3f462fc913', NULL, 'CIO', 'Mimi', NULL, NULL),
(33, 622, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', 'e22991aa-14d5-4159-be99-4d392e8735ce', NULL, NULL, NULL, NULL, NULL),
(34, 623, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '0a061f95-0b0a-4e91-95ab-81ad8524e6d9', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(35, 624, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '0ea65bb4-558c-4945-ae21-8e8eeedbb528', NULL, 'CIO', 'Mimi', 'dsdsdsf', NULL),
(36, 625, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '2b6a8366-a26e-449e-915a-b1b973642bd4', NULL, NULL, NULL, NULL, NULL),
(37, 626, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', '104dbd53-c89a-4043-a6aa-af7536b515f6', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(38, 627, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', 'e0ce9c02-3edc-4553-979f-f84160f62b55', NULL, 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(39, 628, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', '9ecb80ea-42c6-4b0a-b8ff-6619be265ca5', NULL, NULL, NULL, NULL, NULL),
(40, 629, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', '3af0b234-1f90-4587-b8ff-4630de2af764', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(41, 630, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', 'ae679c04-6983-4d9b-8773-94acad145947', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(42, 631, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', '079c83f7-e450-4652-88f1-1a2339249dc9', NULL, NULL, NULL, NULL, NULL),
(43, 632, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '987e9ea8-f1e2-4513-a7a4-5d9ce740f149', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(44, 633, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '7ffd03cf-6040-48b4-83f7-bbbc469922c2', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(45, 634, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', 'ec2aab2a-e555-4774-be2c-5f0f0ff19487', NULL, NULL, 'Mavis', NULL, NULL),
(46, 635, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', 'a9b0baa0-e998-46e9-b80c-1ae6af6b9e1b', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(47, 636, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', 'be9be9d8-c82f-448c-8819-63b12d8f631f', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(48, 637, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', '2026e835-f5ec-4e44-a771-f2f18ac37b53', NULL, 'Nurse', 'Mavis', NULL, NULL),
(49, 638, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', 'ed64a1db-7237-406c-a03f-11200c74a188', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(50, 639, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '12a8528e-2dc7-48c1-a5b0-d54531c0a9bb', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(51, 640, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '4dda10f9-e952-4862-a9c0-5ed19120ee06', NULL, 'Nurse', 'Mavis', NULL, NULL),
(52, 641, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', '831718e8-da59-4d64-97b9-1e2dceac6131', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(53, 642, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', '8aa6855f-0cdd-44c4-881d-e9db5288f10d', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(54, 643, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', 'd97ce776-20b4-4057-a5ab-927aab189419', NULL, 'Nurse', 'Mavis', 'cxcxcx', NULL),
(55, 644, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', 'd26c8f3a-5da8-4eb5-a9e0-18bbbc1ec8d5', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(56, 645, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', 'bbe00484-48cd-4613-a978-1c2e28ebfb00', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(57, 646, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', '0e364ff4-8038-4802-928d-7312423d49b3', NULL, 'Nurse', 'Mavis', 'cxcxcx', 'sdsdsds'),
(61, 650, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '16a989a8-9450-41ff-89c1-9ed30d0254d9', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(62, 651, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'a1265551-3ec3-4429-a113-1096e628d88f', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(63, 652, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '3ef466c9-b6a9-4a99-b0da-fb6eeffee86b', 'sdsdsdsd', 'Nurse', 'Mavis', 'cxcxcx', 'sdsdsds'),
(64, 660, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '3d30f774-38eb-44e8-8062-d8f6cb4c0915', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(65, 661, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'ebd81f2e-e2cb-44be-ac30-2384481bb15f', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(66, 662, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'ca027918-ef3c-47be-a3a8-8b0a190d3e40', 'sdsdsdsd', 'Nurse', 'Mavis', 'cxcxcx', 'sdsdsds'),
(67, 670, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '97ff6eb0-53fd-4f02-a1cd-5735e791d5a9', 'dfdfdf', 'CEO', 'Sammie', 'dfdfdfdf', 'dfdfdfdf'),
(68, 671, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'fd5fd3cf-b8a9-4bdb-b590-546dc326044e', 'dfdfdf', 'CIO', 'Mimi', 'dsdsdsf', 'dfdfd'),
(69, 672, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '41bff802-5f91-4998-8007-9f9fce89cda2', 'sdsdsdsd', 'Nurse', 'Mavis', 'cxcxcx', 'sdsdsds');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2023-03-19 04:02:56', '2023-03-19 04:02:56', '2023-03-19 04:02:56', '4c68bf97-e8df-4597-9fdd-212edbf1f613'),
(2, 'craft', 'm210121_145800_asset_indexing_changes', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'ed09499c-1233-425d-8ac9-8aac26b0f98a'),
(3, 'craft', 'm210624_222934_drop_deprecated_tables', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '20c455cb-85e5-4941-a7c8-5c2b1693a912'),
(4, 'craft', 'm210724_180756_rename_source_cols', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '773ba957-a5f5-496d-861c-d753a59d4815'),
(5, 'craft', 'm210809_124211_remove_superfluous_uids', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '7ad8a9c5-a299-4c41-a237-53ce80819827'),
(6, 'craft', 'm210817_014201_universal_users', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '07ef8428-a310-46c2-9b3b-dcdddd837c52'),
(7, 'craft', 'm210904_132612_store_element_source_settings_in_project_config', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '6e737837-7d19-4890-854a-863393f16829'),
(8, 'craft', 'm211115_135500_image_transformers', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '8dc2d4bb-a8b6-4abb-8c66-2045356296e6'),
(9, 'craft', 'm211201_131000_filesystems', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'f1ed9611-df55-45aa-af74-6a6d77712d4f'),
(10, 'craft', 'm220103_043103_tab_conditions', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'c0a9e87a-1eab-45ca-aa0b-248223336e57'),
(11, 'craft', 'm220104_003433_asset_alt_text', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'febacaa7-53b0-4a21-bffb-d16a9e88d340'),
(12, 'craft', 'm220123_213619_update_permissions', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'da6afa99-c8c0-4a7c-900e-c32fd8c0f99f'),
(13, 'craft', 'm220126_003432_addresses', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', 'c09ad862-5e47-4e18-afab-9f3727283705'),
(14, 'craft', 'm220209_095604_add_indexes', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '2023-03-19 04:02:57', '77e76eac-05a1-4fc3-9a74-69a674363079'),
(15, 'craft', 'm220213_015220_matrixblocks_owners_table', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '6a7a78c9-78e6-4381-b19b-2da047019b59'),
(16, 'craft', 'm220214_000000_truncate_sessions', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '27a4292c-7f64-4d97-8846-f7433e7a8c8f'),
(17, 'craft', 'm220222_122159_full_names', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '5b44373b-c173-4c44-ae5f-e3775928466e'),
(18, 'craft', 'm220223_180559_nullable_address_owner', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '113cd892-b26f-4fac-b999-50626dc4a36d'),
(19, 'craft', 'm220225_165000_transform_filesystems', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '4e05e174-e2a4-47d5-810a-ba221b2b01a9'),
(20, 'craft', 'm220309_152006_rename_field_layout_elements', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '9d0580ae-fe2a-4745-825e-ae4bda25b6ce'),
(21, 'craft', 'm220314_211928_field_layout_element_uids', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '0982f500-a71d-48e4-b683-5fc0194b3650'),
(22, 'craft', 'm220316_123800_transform_fs_subpath', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', 'd3f7ec6b-aa9b-4e79-b3ad-e7ef35ff778b'),
(23, 'craft', 'm220317_174250_release_all_jobs', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '2023-03-19 04:02:58', '3a8da4a8-fae5-471a-938a-fd815048769e'),
(24, 'craft', 'm220330_150000_add_site_gql_schema_components', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', 'bced4def-98c8-4a42-b237-69ad140f4a8a'),
(25, 'craft', 'm220413_024536_site_enabled_string', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '39c3cd8b-8285-48b9-8bbf-8d8cc32c72c5'),
(26, 'craft', 'm221027_160703_add_image_transform_fill', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '8175fbcf-a8ae-446a-9435-7cafc73952db'),
(27, 'craft', 'm221028_130548_add_canonical_id_index', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '519d2066-5b4f-4445-b463-556bf9235e1d'),
(28, 'craft', 'm221118_003031_drop_element_fks', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '8ba48946-7435-4319-8636-d053391c6756'),
(29, 'craft', 'm230131_120713_asset_indexing_session_new_options', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', 'aba9506c-d53a-4431-9746-bc238065ae9d'),
(30, 'craft', 'm230226_013114_drop_plugin_license_columns', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '2023-03-19 04:02:59', '24878591-562b-4d07-a10f-6ed3ff5b9031'),
(31, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2023-03-19 04:16:01', '2023-03-19 04:16:01', '2023-03-19 04:16:01', '02f7310c-eb13-4e24-9977-10399509faab'),
(32, 'plugin:redactor', 'Install', '2023-03-19 04:16:01', '2023-03-19 04:16:01', '2023-03-19 04:16:01', 'c624b10e-5e63-48f7-8e1f-6ea0461124dd'),
(33, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2023-03-19 04:16:01', '2023-03-19 04:16:01', '2023-03-19 04:16:01', 'fa22364a-0c24-4ec1-9385-c3abd2bbaf9f'),
(34, 'plugin:contact-form-extensions', 'Install', '2023-05-01 03:24:16', '2023-05-01 03:24:16', '2023-05-01 03:24:16', '27a607fa-82ac-4f48-9368-d6d52b2a8a31');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '3.0.4', '2.3.0', '2023-03-19 04:16:01', '2023-03-19 04:16:01', '2023-03-19 04:16:01', 'bc50aad6-db47-4b6e-8834-5239f90c7e75'),
(2, 'contact-form', '3.0.1', '1.0.0', '2023-04-27 17:08:04', '2023-04-27 17:08:04', '2023-04-27 17:08:04', '581138a2-862d-4fa6-8faa-779797e4cee4'),
(3, 'contact-form-extensions', '4.2.2', '1.0.1', '2023-05-01 03:24:16', '2023-05-01 03:24:16', '2023-05-01 03:24:16', '56141bc8-90d6-4cbc-b8ea-cdc994273e0f');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1682913564'),
('email.fromEmail', '\"duah@tacmail.org\"'),
('email.fromName', '\"St. Edward Hospital, Dwinyama\"'),
('email.replyToEmail', '\"duah@tacmail.org\"'),
('email.template', 'null'),
('email.transportSettings.host', '\"tacmail.org\"'),
('email.transportSettings.password', '\"&R@J+2L\"'),
('email.transportSettings.port', '\"25\"'),
('email.transportSettings.useAuthentication', '\"1\"'),
('email.transportSettings.username', '\"duah@tacmail.org\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Smtp\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elementCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.class', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.disabled', 'false'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.id', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.instructions', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.label', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.max', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.min', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.name', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.orientation', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.readonly', 'false'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.requirable', 'false'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.size', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.step', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.tip', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.title', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.uid', '\"cba609a6-de7c-4770-91fe-a9e700d3083c\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.warning', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.0.width', '100'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.fieldUid', '\"1035e9ec-c409-454a-9414-e50a9bab5e9d\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.instructions', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.label', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.required', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.tip', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.uid', '\"a4f3fe41-f128-49c0-86ef-5ffaabe6a00c\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.warning', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.1.width', '100'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.fieldUid', '\"c7810442-6833-4de5-99fc-1eee12ab1cde\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.instructions', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.label', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.required', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.tip', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.uid', '\"00e98be6-d6c2-4380-b05b-039bce85509a\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.warning', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.2.width', '100'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.fieldUid', '\"6580fc11-bcf4-4080-a97b-01c688d7012f\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.instructions', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.label', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.required', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.tip', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.uid', '\"8fa694dd-0bb4-40b6-9ed9-71bee9e2cf19\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.warning', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.elements.3.width', '100'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.name', '\"Hero\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.uid', '\"2ee747d9-c93a-4a3c-9227-276a52eae474\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.fieldLayouts.dccd3251-5f65-46fa-96e5-1ae5aec75686.tabs.0.userCondition', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.handle', '\"service\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.hasTitleField', 'true'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.name', '\"Service\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.section', '\"592a3596-a0e0-461d-bfdc-bd63731619c5\"'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.sortOrder', '1'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.titleFormat', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.titleTranslationKeyFormat', 'null'),
('entryTypes.1e701080-19f6-4740-9cc9-6f033dda07e6.titleTranslationMethod', '\"site\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.class', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.disabled', 'false'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.id', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.instructions', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.label', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.max', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.min', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.name', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.orientation', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.readonly', 'false'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.requirable', 'false'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.size', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.step', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.tip', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.title', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.uid', '\"e42bd976-b06b-4c84-a4f8-f378e1ffcbfc\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.warning', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.0.width', '100'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.fieldUid', '\"1035e9ec-c409-454a-9414-e50a9bab5e9d\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.instructions', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.label', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.required', 'false'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.tip', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.uid', '\"855ad487-4061-4032-bab0-4c4ac69676ef\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.warning', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.1.width', '100'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.fieldUid', '\"6580fc11-bcf4-4080-a97b-01c688d7012f\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.instructions', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.label', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.required', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.tip', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.uid', '\"51a79624-d494-474a-894e-0828584ba5af\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.warning', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.2.width', '100'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.fieldUid', '\"c7810442-6833-4de5-99fc-1eee12ab1cde\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.instructions', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.label', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.required', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.tip', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.uid', '\"bd7567e7-ec2a-4a79-8319-b87bff9ff538\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.warning', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.3.width', '100'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.fieldUid', '\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.instructions', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.label', '\"Author\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.required', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.tip', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.uid', '\"b4d6d8d6-d1ea-4ae9-9c76-822c55471eb4\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.warning', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.elements.4.width', '100'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.name', '\"Content\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.uid', '\"68de4abc-c63d-480b-a6f9-b92f5b455968\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.fieldLayouts.076b1ba8-5c2d-45ef-9314-ff9038590342.tabs.0.userCondition', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.handle', '\"newsBlog\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.hasTitleField', 'true'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.name', '\"News Blog\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.section', '\"171a5b1a-447a-4c4f-8446-61bb8deade78\"'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.sortOrder', '1'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.titleFormat', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.titleTranslationKeyFormat', 'null'),
('entryTypes.803d2c3d-46be-49be-a690-2e4c161b1be6.titleTranslationMethod', '\"site\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elementCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.class', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.disabled', 'false'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.id', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.instructions', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.label', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.max', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.min', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.name', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.orientation', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.readonly', 'false'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.requirable', 'false'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.size', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.step', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.tip', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.title', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.uid', '\"32f31894-7a31-4305-929d-60197abcf8ec\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.warning', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.0.width', '100'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.fieldUid', '\"aa8454cc-0332-4ebe-9603-d4a3484708a0\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.instructions', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.label', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.required', 'true'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.tip', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.uid', '\"853d514d-331b-4309-9a87-93668de92ae6\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.warning', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.1.width', '100'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.fieldUid', '\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.instructions', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.label', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.required', 'true'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.tip', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.uid', '\"920bf442-7c17-4d41-97e6-53bb5631f1e1\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.warning', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.elements.2.width', '100'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.name', '\"Content\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.uid', '\"93be5095-ea1f-4a41-a4ea-97892f0436ce\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.fieldLayouts.e77d80eb-c51d-49ca-9e4d-995d3bbd0bca.tabs.0.userCondition', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.handle', '\"contactUs\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.hasTitleField', 'true'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.name', '\"Contact Us\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.section', '\"21965bbe-a485-460b-bcd2-3cb57dfae29e\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.sortOrder', '1'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.titleTranslationKeyFormat', 'null'),
('entryTypes.9d1cfb5c-1bd4-4177-974b-d5eba29fb777.titleTranslationMethod', '\"site\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.class', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.disabled', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.id', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.max', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.min', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.name', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.orientation', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.readonly', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.requirable', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.size', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.step', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.title', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.uid', '\"b753c1a2-f295-48f6-849d-590d334f18cb\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.0.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.fieldUid', '\"aa8454cc-0332-4ebe-9603-d4a3484708a0\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.required', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.uid', '\"a0399dc0-070e-4a8e-9d19-c70795bff7cb\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.1.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.fieldUid', '\"093b96ce-f018-4a98-99c3-d6f8f1344404\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.uid', '\"162d3792-edba-48f0-be3f-81034a0edcff\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.2.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.fieldUid', '\"9ee8328f-52de-43e8-adfe-d898c5b75943\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.uid', '\"2bdd1760-f542-41ac-b7af-149c7cf8d960\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.3.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.fieldUid', '\"6d9f4e85-c20c-4bb7-a4ac-1291b563907b\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.uid', '\"21c914da-7fbe-4c4e-aac7-4f188e762dd2\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.4.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.fieldUid', '\"a25691bc-ec38-4d26-ac90-424df0a3f414\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.uid', '\"83482683-7c5d-4c44-9f57-b33852f349b2\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.5.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.fieldUid', '\"e1a794e8-76c2-40f8-9d0b-93588cac6e3f\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.uid', '\"1fa2e0c9-dbd7-47ee-bd11-2dea16aa405f\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.6.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.fieldUid', '\"cb979a56-f588-4638-a2d8-33a4cd74d81f\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.uid', '\"6d1f2235-8a59-43f8-80ee-b6179a65cadc\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.7.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.elementCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.fieldUid', '\"b65062c5-bc23-44c5-8088-439939e7dd6e\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.instructions', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.label', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.required', 'true'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.tip', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.uid', '\"aaefc5c8-1641-4385-8d74-e014a2a5ae48\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.warning', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.elements.8.width', '100'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.name', '\"Content\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.uid', '\"1bb7b2a0-63fb-4e47-b42f-4a06d26f05ed\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.fieldLayouts.ed49c44b-adef-423d-9c95-b136e9cdb6af.tabs.0.userCondition', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.handle', '\"layoutListing\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.hasTitleField', 'false'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.name', '\"Layout Listing\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.section', '\"d3d87ec6-e6e4-4328-a770-93fb3faa88f3\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.sortOrder', '1'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.titleTranslationKeyFormat', 'null'),
('entryTypes.a44b777a-c330-46d3-bfd9-90b27a4ff78c.titleTranslationMethod', '\"site\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elementCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.class', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.disabled', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.id', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.instructions', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.label', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.max', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.min', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.name', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.orientation', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.readonly', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.requirable', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.size', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.step', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.tip', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.title', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.uid', '\"946d66c0-a22b-40c3-be75-03c316db357b\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.userCondition', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.warning', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.0.width', '100'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.fieldUid', '\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.instructions', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.label', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.required', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.tip', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.uid', '\"baeb667f-c887-4196-9a55-3354c13b991d\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.warning', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.1.width', '100'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.fieldUid', '\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.instructions', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.label', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.required', 'false'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.tip', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.uid', '\"924f8d29-7bdc-4635-8697-0f922fbaf071\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.warning', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.elements.2.width', '100'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.name', '\"Content\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.uid', '\"3b5836e9-bef3-465e-9606-52a35a37c97b\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.fieldLayouts.56b7508d-0edc-4d0f-b9fb-fd481fb050b2.tabs.0.userCondition', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.handle', '\"servicesListing\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.hasTitleField', 'true'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.name', '\"Services Listing\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.section', '\"4619320a-5672-4840-9ff5-f697dd2e0d58\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.sortOrder', '1'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.titleTranslationKeyFormat', 'null'),
('entryTypes.b7628694-d6a0-4594-8d8b-a870b4af88ef.titleTranslationMethod', '\"site\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.class', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.disabled', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.id', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.max', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.min', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.name', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.orientation', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.readonly', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.requirable', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.size', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.step', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.title', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.uid', '\"19a97b52-98c5-4866-bedf-11355d0dee67\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.0.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.fieldUid', '\"ac3e7ae0-cb45-48a2-967f-8d317da0f8b2\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.uid', '\"6c297ed7-5f15-4209-bc86-ebd977d64bca\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.1.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.fieldUid', '\"ddd11158-2278-4790-bae2-f87722617ca1\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.uid', '\"9347583b-e405-4118-b947-06493f79d38d\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.2.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.fieldUid', '\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.uid', '\"52e7b37b-3670-4988-b403-7952d894dcd7\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.3.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.fieldUid', '\"9d380263-c39c-4837-bef8-c82ef75900a9\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.uid', '\"e9c0dd2b-cda4-4670-88f6-9ccaf1b2932d\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.4.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.fieldUid', '\"9eba2519-9c26-4850-8f34-be9d93777485\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.uid', '\"2ff9b6cd-2738-4b3f-b15b-f9e68273d86c\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.5.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.fieldUid', '\"891e2c26-4c9b-4a7e-8cf9-a7e3419f7432\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.uid', '\"a70f9515-a182-455a-b10e-91452f7006cb\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.elements.6.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.name', '\"Carousel\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.uid', '\"bc37c55a-e6ae-4ff4-83c7-b38bab18b341\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.fieldUid', '\"ad7d9367-8f02-4bc5-a8fb-ddd20066226a\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.uid', '\"fc6834fa-82a3-4bc9-937a-c22a70bf5544\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.elements.0.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.name', '\"Banners\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.uid', '\"eb97f41f-de8b-4e5a-9a56-603045ec2dca\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.1.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.fieldUid', '\"5f7cf67e-fa17-4496-94d5-80d60467006d\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.uid', '\"291c0daf-fd41-4935-bdaf-bfcf82421e65\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.elements.0.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.name', '\"About Us\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.uid', '\"eb6374ab-faa8-44a5-bb4c-7d4778223002\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.2.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.fieldUid', '\"01d82159-59cd-461e-aad5-c00aa78b6a3d\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.uid', '\"bf12a7fe-edbc-4672-8f61-422032c01e37\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.0.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.fieldUid', '\"98449dda-5b8d-410b-9c1e-a83db9f480e6\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.uid', '\"a57d9cbe-418d-4a1e-8709-d37521167606\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.elements.1.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.name', '\"Home Service\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.uid', '\"921b090d-4790-496f-a5b0-a229ffa6fd9e\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.3.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.fieldUid', '\"68a60340-5be7-4344-b9e5-4b01ed954450\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.uid', '\"494f3a82-359e-4ff8-ac18-a96e72bfd508\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.0.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.elementCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.fieldUid', '\"e93f436f-5fde-4b1c-a66e-8e159040866e\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.instructions', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.label', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.required', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.tip', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.uid', '\"3332912f-e356-4797-86cd-4acd6d6968f3\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.warning', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.elements.1.width', '100'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.name', '\"Staff\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.uid', '\"0792b198-fcd5-4063-9906-f15fb78bd203\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.fieldLayouts.6326bac3-17af-42b0-baa6-ccef29f34674.tabs.4.userCondition', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.handle', '\"homePage\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.hasTitleField', 'false'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.name', '\"Home Page\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.section', '\"c0bf0db5-c4a5-4212-ae16-50546e209b56\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.sortOrder', '1'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.titleTranslationKeyFormat', 'null'),
('entryTypes.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe.titleTranslationMethod', '\"site\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.class', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.disabled', 'false'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.id', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.instructions', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.label', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.max', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.min', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.name', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.orientation', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.readonly', 'false'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.requirable', 'false'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.size', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.step', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.tip', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.title', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.uid', '\"c3994483-62e8-4edb-b9e7-128bbe9bd012\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.warning', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.0.width', '100'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.fieldUid', '\"6580fc11-bcf4-4080-a97b-01c688d7012f\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.instructions', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.label', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.required', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.tip', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.uid', '\"48d94cf1-810f-44db-b8c5-644cf688b8c9\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.warning', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.1.width', '100'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.fieldUid', '\"891e2c26-4c9b-4a7e-8cf9-a7e3419f7432\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.instructions', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.label', '\"Banner\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.required', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.tip', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.uid', '\"779afe7f-0883-478d-ad86-b73b2b6c1d61\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.warning', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.2.width', '100'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.fieldUid', '\"c7810442-6833-4de5-99fc-1eee12ab1cde\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.instructions', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.label', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.required', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.tip', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.uid', '\"9fcaae10-4eb7-44ff-b86a-51e95f9c9c71\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.warning', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.3.width', '100'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.fieldUid', '\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.instructions', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.label', '\"About Image\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.required', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.tip', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.uid', '\"8d0f75fb-70dd-4957-9782-c2de34a173b8\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.warning', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.elements.4.width', '100'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.name', '\"Content\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.uid', '\"16fe91d6-b746-4a33-b27a-89a884e88d2c\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.fieldLayouts.915128da-9087-4f70-a939-30a7b4a6a216.tabs.0.userCondition', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.handle', '\"aboutUs\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.hasTitleField', 'true'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.name', '\"About Us\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.section', '\"c710dda9-161e-4720-ab3c-ef508310a05b\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.sortOrder', '1'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.titleTranslationKeyFormat', 'null'),
('entryTypes.e3931efc-d1d3-40b4-9c6a-8cc044579edc.titleTranslationMethod', '\"site\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elementCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.class', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.disabled', 'false'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.id', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.instructions', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.label', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.max', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.min', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.name', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.orientation', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.readonly', 'false'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.requirable', 'false'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.size', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.step', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.tip', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.title', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.uid', '\"b1d8615a-db91-4db7-a639-587ec2fe9f4d\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.warning', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.0.width', '100'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.fieldUid', '\"07cebb10-7e91-4d66-a6fc-94edbba90f29\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.instructions', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.label', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.required', 'true'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.tip', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.uid', '\"37d832f3-005f-4790-a3b0-1c06d2f0d10a\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.warning', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.elements.1.width', '100'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.name', '\"Content\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.uid', '\"499c1101-2c0d-423e-842f-7c8b789ff2b9\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.fieldLayouts.75d527a1-9645-42a4-903a-71bc425ace0a.tabs.0.userCondition', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.handle', '\"blogListing\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.hasTitleField', 'true'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.name', '\"Blog Listing\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.section', '\"daf1b712-9965-4d88-bd45-387e079d8106\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.sortOrder', '1'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.titleTranslationKeyFormat', 'null'),
('entryTypes.ed16eca0-b883-4ac5-9366-1e11c0b78107.titleTranslationMethod', '\"site\"'),
('fieldGroups.108a81f0-21fa-4699-9dd2-28a15fb8583b.name', '\"Services\"'),
('fieldGroups.369ee378-e78c-45b5-96d7-2810c20427ef.name', '\"Home Page\"'),
('fieldGroups.98732b45-a75a-4682-b38f-68211a86d58e.name', '\"Common\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.columnSuffix', '\"oeigaqai\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.contentColumnType', '\"text\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.handle', '\"service_title\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.instructions', '\"Title for All\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.name', '\"Service Title\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.searchable', 'false'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.byteLimit', 'null'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.charLimit', 'null'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.code', 'false'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.columnType', 'null'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.initialRows', '4'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.multiline', 'false'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.placeholder', '\"Title\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.settings.uiMode', '\"normal\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.translationKeyFormat', 'null'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.translationMethod', '\"none\"'),
('fields.01d82159-59cd-461e-aad5-c00aa78b6a3d.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.columnSuffix', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.contentColumnType', '\"string\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.handle', '\"carousel_1\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.instructions', '\"Carousel One\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.name', '\"Carousel 1\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.searchable', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.allowedKinds.0', '\"image\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.allowSelfRelations', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.allowSubfolders', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.allowUploads', 'true'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.branchLimit', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.defaultUploadLocationSubpath', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.localizeRelations', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.maintainHierarchy', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.maxRelations', '1'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.minRelations', '1'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.previewMode', '\"full\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.restrictedLocationSubpath', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.restrictFiles', 'true'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.restrictLocation', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.selectionLabel', '\"Add the first Carousel\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.showSiteMenu', 'true'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.showUnpermittedFiles', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.showUnpermittedVolumes', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.targetSiteId', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.validateRelatedElements', 'false'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.settings.viewMode', '\"large\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.translationKeyFormat', 'null'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.translationMethod', '\"site\"'),
('fields.07cebb10-7e91-4d66-a6fc-94edbba90f29.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.columnSuffix', '\"yisxdfsp\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.contentColumnType', '\"string(1020)\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.handle', '\"location\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.instructions', 'null'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.name', '\"Location\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.searchable', 'false'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.byteLimit', 'null'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.charLimit', '255'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.code', 'false'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.columnType', 'null'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.initialRows', '4'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.multiline', 'false'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.placeholder', '\"Location\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.settings.uiMode', '\"normal\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.translationKeyFormat', 'null'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.translationMethod', '\"none\"'),
('fields.093b96ce-f018-4a98-99c3-d6f8f1344404.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.columnSuffix', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.contentColumnType', '\"string\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.handle', '\"photos\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.instructions', '\"Photos\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.name', '\"Photos\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.searchable', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.allowedKinds.0', '\"image\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.allowSelfRelations', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.allowSubfolders', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.allowUploads', 'true'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.branchLimit', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.defaultUploadLocationSubpath', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.localizeRelations', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.maintainHierarchy', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.maxRelations', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.minRelations', '1'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.previewMode', '\"full\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.restrictedLocationSubpath', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.restrictFiles', 'true'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.restrictLocation', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.selectionLabel', '\"Add a photo\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.showSiteMenu', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.showUnpermittedFiles', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.showUnpermittedVolumes', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.targetSiteId', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.validateRelatedElements', 'false'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.settings.viewMode', '\"list\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.translationKeyFormat', 'null'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.translationMethod', '\"site\"'),
('fields.1035e9ec-c409-454a-9414-e50a9bab5e9d.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.columnSuffix', 'null'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.contentColumnType', '\"string\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.handle', '\"homeAboutUs\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.instructions', '\"About Us at the home page\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.name', '\"Home About Us\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.searchable', 'false'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.settings.contentTable', '\"{{%matrixcontent_homeaboutus}}\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.settings.maxBlocks', '1'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.settings.minBlocks', '1'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.settings.propagationKeyFormat', 'null'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.settings.propagationMethod', '\"all\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.translationKeyFormat', 'null'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.translationMethod', '\"site\"'),
('fields.5f7cf67e-fa17-4496-94d5-80d60467006d.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.columnSuffix', '\"aytyzkuo\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.contentColumnType', '\"text\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.handle', '\"shortDescription\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.instructions', '\"Short Description\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.name', '\"Short Description\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.searchable', 'false'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.byteLimit', 'null'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.charLimit', 'null'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.code', 'false'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.columnType', 'null'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.initialRows', '3'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.multiline', 'true'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.placeholder', 'null'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.settings.uiMode', '\"normal\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.translationKeyFormat', 'null'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.translationMethod', '\"none\"'),
('fields.6580fc11-bcf4-4080-a97b-01c688d7012f.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.columnSuffix', '\"salidnds\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.contentColumnType', '\"text\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.handle', '\"staffSectionTitle\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.instructions', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.name', '\"Staff Section Title\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.searchable', 'false'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.byteLimit', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.charLimit', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.code', 'false'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.columnType', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.initialRows', '4'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.multiline', 'false'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.placeholder', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.settings.uiMode', '\"normal\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.translationKeyFormat', 'null'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.translationMethod', '\"none\"'),
('fields.68a60340-5be7-4344-b9e5-4b01ed954450.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.columnSuffix', '\"zioftqcr\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.contentColumnType', '\"string(80)\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.handle', '\"telNumber\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.instructions', 'null'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.name', '\"Tel Number\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.searchable', 'false'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.byteLimit', 'null'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.charLimit', '20'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.code', 'false'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.columnType', 'null'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.initialRows', '4'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.multiline', 'false'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.placeholder', '\"Tel Number\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.settings.uiMode', '\"normal\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.translationKeyFormat', 'null'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.translationMethod', '\"none\"'),
('fields.6d9f4e85-c20c-4bb7-a4ac-1291b563907b.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.columnSuffix', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.contentColumnType', '\"string\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.handle', '\"carousel_2\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.instructions', '\"Carousel 2\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.name', '\"Carousel 2\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.searchable', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.allowedKinds', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.allowSelfRelations', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.allowSubfolders', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.allowUploads', 'true'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.branchLimit', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.defaultUploadLocationSubpath', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.localizeRelations', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.maintainHierarchy', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.maxRelations', '1'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.minRelations', '1'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.previewMode', '\"full\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.restrictedLocationSubpath', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.restrictFiles', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.restrictLocation', 'true'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.selectionLabel', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.showSiteMenu', 'true'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.showUnpermittedFiles', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.showUnpermittedVolumes', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.targetSiteId', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.validateRelatedElements', 'false'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.settings.viewMode', '\"large\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.translationKeyFormat', 'null'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.translationMethod', '\"site\"'),
('fields.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.columnSuffix', 'null'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.contentColumnType', '\"string\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.handle', '\"homeServices\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.instructions', '\"Home Services\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.name', '\"Home Services\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.searchable', 'false'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.settings.contentTable', '\"{{%matrixcontent_homeservices}}\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.settings.maxBlocks', '3'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.settings.minBlocks', '3'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.settings.propagationKeyFormat', 'null'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.settings.propagationMethod', '\"all\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.translationKeyFormat', 'null'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.translationMethod', '\"site\"'),
('fields.98449dda-5b8d-410b-9c1e-a83db9f480e6.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.columnSuffix', '\"lusxbtau\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.contentColumnType', '\"text\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.handle', '\"carousel_2_Title\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.instructions', '\"Carousel 2 Title\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.name', '\"Carousel 2 Title\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.searchable', 'false'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.byteLimit', 'null'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.charLimit', 'null'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.code', 'false'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.columnType', 'null'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.initialRows', '1'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.multiline', 'true'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.placeholder', '\"Carousel 2 Title\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.settings.uiMode', '\"normal\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.translationKeyFormat', 'null'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.translationMethod', '\"none\"'),
('fields.9d380263-c39c-4837-bef8-c82ef75900a9.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.columnSuffix', '\"pndpqtkn\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.contentColumnType', '\"text\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.handle', '\"carousel_2_Text\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.instructions', '\"Carousel 1 Text\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.name', '\"Carousel 2 Text\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.searchable', 'false'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.byteLimit', 'null'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.charLimit', 'null'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.code', 'false'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.columnType', 'null'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.initialRows', '3'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.multiline', 'true'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.placeholder', '\"Carousel 2 Text\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.settings.uiMode', '\"normal\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.translationKeyFormat', 'null'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.translationMethod', '\"none\"'),
('fields.9eba2519-9c26-4850-8f34-be9d93777485.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.columnSuffix', '\"vnaegkea\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.contentColumnType', '\"string(400)\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.handle', '\"emailAddress\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.instructions', 'null'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.name', '\"Email Address\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.searchable', 'false'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.byteLimit', 'null'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.charLimit', '100'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.code', 'false'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.columnType', 'null'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.initialRows', '4'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.multiline', 'false'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.placeholder', '\"Email Address\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.settings.uiMode', '\"normal\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.translationKeyFormat', 'null'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.translationMethod', '\"none\"'),
('fields.9ee8328f-52de-43e8-adfe-d898c5b75943.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.columnSuffix', '\"aphyyapv\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.contentColumnType', '\"string(400)\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.handle', '\"twitterAddress\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.instructions', 'null'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.name', '\"Twitter Address\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.searchable', 'false'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.byteLimit', 'null'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.charLimit', '100'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.code', 'false'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.columnType', 'null'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.initialRows', '4'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.multiline', 'false'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.placeholder', '\"Twitter Address\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.settings.uiMode', '\"normal\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.translationKeyFormat', 'null'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.translationMethod', '\"none\"'),
('fields.a25691bc-ec38-4d26-ac90-424df0a3f414.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.columnSuffix', '\"rzxybgmc\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.contentColumnType', '\"string(800)\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.handle', '\"pageTitle\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.instructions', 'null'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.name', '\"Page Title\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.searchable', 'false'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.byteLimit', 'null'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.charLimit', '200'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.code', 'false'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.columnType', 'null'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.initialRows', '4'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.multiline', 'false'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.placeholder', '\"Page title\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.settings.uiMode', '\"normal\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.translationKeyFormat', 'null'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.translationMethod', '\"none\"'),
('fields.aa8454cc-0332-4ebe-9603-d4a3484708a0.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.columnSuffix', '\"dzizeauc\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.contentColumnType', '\"text\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.handle', '\"carousel_1_Title\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.instructions', '\"Carousel 1 Title\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.name', '\"Carousel 1 Title\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.searchable', 'false'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.byteLimit', 'null'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.charLimit', 'null'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.code', 'false'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.columnType', 'null'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.initialRows', '1'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.multiline', 'true'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.placeholder', '\"Carousel 1 Title\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.settings.uiMode', '\"normal\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.translationKeyFormat', 'null'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.translationMethod', '\"none\"'),
('fields.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.columnSuffix', '\"klksgmmf\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.contentColumnType', '\"string\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.handle', '\"banners\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.instructions', '\"Banner\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.name', '\"Banners\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.searchable', 'false'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.settings.contentTable', '\"{{%matrixcontent_banners}}\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.settings.maxBlocks', '2'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.settings.minBlocks', '2'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.settings.propagationKeyFormat', 'null'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.settings.propagationMethod', '\"all\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.translationKeyFormat', 'null'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.translationMethod', '\"site\"'),
('fields.ad7d9367-8f02-4bc5-a8fb-ddd20066226a.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.columnSuffix', '\"bjofpuni\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.contentColumnType', '\"string(400)\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.handle', '\"sendToEmail\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.instructions', '\"Receive Email through this email\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.name', '\"Send to Email\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.searchable', 'false'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.byteLimit', 'null'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.charLimit', '100'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.code', 'false'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.columnType', 'null'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.initialRows', '4'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.multiline', 'false'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.placeholder', 'null'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.settings.uiMode', '\"normal\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.translationKeyFormat', 'null'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.translationMethod', '\"none\"'),
('fields.b65062c5-bc23-44c5-8088-439939e7dd6e.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.columnSuffix', '\"qkolfbfq\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.contentColumnType', '\"text\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.handle', '\"richText\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.instructions', '\"Rich Text\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.name', '\"Rich Text\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.searchable', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.availableTransforms', '\"*\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.availableVolumes', '\"*\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.columnType', '\"text\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.configSelectionMode', '\"choose\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.defaultTransform', '\"\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.manualConfig', '\"\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.purifierConfig', 'null'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.purifyHtml', 'true'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.redactorConfig', 'null'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.removeEmptyTags', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.removeInlineStyles', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.removeNbsp', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.showHtmlButtonForNonAdmins', 'true'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.showUnpermittedFiles', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.showUnpermittedVolumes', 'false'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.settings.uiMode', '\"enlarged\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.translationKeyFormat', 'null'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.translationMethod', '\"none\"'),
('fields.c7810442-6833-4de5-99fc-1eee12ab1cde.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.columnSuffix', '\"kmgkoxnb\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.contentColumnType', '\"string(400)\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.handle', '\"instagramAddress\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.instructions', 'null'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.name', '\"Instagram Address\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.searchable', 'false'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.byteLimit', 'null'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.charLimit', '100'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.code', 'false'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.columnType', 'null'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.initialRows', '4'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.multiline', 'false'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.placeholder', '\"Instagram Address\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.settings.uiMode', '\"normal\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.translationKeyFormat', 'null'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.translationMethod', '\"none\"'),
('fields.cb979a56-f588-4638-a2d8-33a4cd74d81f.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.columnSuffix', '\"rmsxoipx\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.contentColumnType', '\"text\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.handle', '\"carousel_1_Text\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.instructions', '\"Carousel 1 Text\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.name', '\"Carousel 1 Text\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.searchable', 'false'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.byteLimit', 'null'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.charLimit', 'null'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.code', 'false'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.columnType', 'null'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.initialRows', '3'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.multiline', 'true'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.placeholder', '\"Carousel 1 Text\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.settings.uiMode', '\"normal\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.translationKeyFormat', 'null'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.translationMethod', '\"none\"'),
('fields.ddd11158-2278-4790-bae2-f87722617ca1.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.columnSuffix', '\"tmwxichd\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.contentColumnType', '\"string(400)\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.fieldGroup', '\"98732b45-a75a-4682-b38f-68211a86d58e\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.handle', '\"facebookAddress\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.instructions', 'null'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.name', '\"Facebook Address\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.searchable', 'false'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.byteLimit', 'null'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.charLimit', '100'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.code', 'false'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.columnType', 'null'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.initialRows', '4'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.multiline', 'false'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.placeholder', '\"Facebook Address\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.settings.uiMode', '\"normal\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.translationKeyFormat', 'null'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.translationMethod', '\"none\"'),
('fields.e1a794e8-76c2-40f8-9d0b-93588cac6e3f.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.columnSuffix', 'null'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.contentColumnType', '\"string\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.fieldGroup', '\"369ee378-e78c-45b5-96d7-2810c20427ef\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.handle', '\"staffImage\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.instructions', '\"Staff Image\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.name', '\"Staff Image\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.searchable', 'false'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.settings.contentTable', '\"{{%matrixcontent_staffimage}}\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.settings.maxBlocks', '6'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.settings.minBlocks', '3'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.settings.propagationKeyFormat', 'null'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.settings.propagationMethod', '\"all\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.translationKeyFormat', 'null'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.translationMethod', '\"site\"'),
('fields.e93f436f-5fde-4b1c-a66e-8e159040866e.type', '\"craft\\\\fields\\\\Matrix\"'),
('fs.images.hasUrls', 'true'),
('fs.images.name', '\"Images\"'),
('fs.images.settings.path', '\"@webroot/web/img\"'),
('fs.images.type', '\"craft\\\\fs\\\\Local\"'),
('fs.images.url', '\"@web/web/img/\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.fill', 'null'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.format', 'null'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.handle', '\"transformationForHomeServiceImage\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.height', '300'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.interlace', '\"none\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.mode', '\"crop\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.name', '\"transformation for home service image\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.position', '\"center-center\"'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.quality', 'null'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.upscale', 'true'),
('imageTransforms.31f0372e-1bf6-4316-8cdf-26169b6ce79f.width', '500'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.fill', 'null'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.format', 'null'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.handle', '\"transformationForHomeAboutImage\"'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.height', '600'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.interlace', '\"none\"'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.mode', '\"crop\"'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.name', '\"transformation for home about image\"'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.position', '\"center-center\"'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.quality', 'null'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.upscale', 'true'),
('imageTransforms.4bd41aa9-ea55-4791-9022-11112dc4e7e6.width', '600'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.fill', 'null'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.format', 'null'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.handle', '\"staffImage\"'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.height', '450'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.interlace', '\"none\"'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.mode', '\"crop\"'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.name', '\"Staff Image\"'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.position', '\"center-center\"'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.quality', 'null'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.upscale', 'true'),
('imageTransforms.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b.width', '500'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.fill', 'null'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.format', 'null'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.handle', '\"homeCarousel\"'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.height', '1080'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.interlace', '\"none\"'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.mode', '\"fit\"'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.name', '\"Home Carousel\"'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.position', '\"center-center\"'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.quality', 'null'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.upscale', 'true'),
('imageTransforms.aa6970d9-9575-48e3-8ee8-1275d7d6d56d.width', '1920'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.field', '\"ad7d9367-8f02-4bc5-a8fb-ddd20066226a\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.fieldUid', '\"66539576-e552-409c-8b6a-e9f92817cb98\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.uid', '\"450a8481-55ce-4c5b-a0ae-d0b4e6738cb4\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.fieldUid', '\"2e187a4a-55e8-4f94-b493-c2830ee0b14e\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.uid', '\"ed2851ed-31de-4e72-967d-2d35bc39eb8b\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.elementCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.fieldUid', '\"c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.required', 'true'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.uid', '\"68e6c507-29e5-4a6c-b3e6-6d23acd2ddf7\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.userCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.uid', '\"ad42ced0-9f0c-4a65-b6c4-813b39f56f79\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fieldLayouts.d35cb240-0478-4d04-b71b-989335ed897e.tabs.0.userCondition', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.columnSuffix', '\"bxmahqpt\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.contentColumnType', '\"text\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.fieldGroup', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.handle', '\"bannertext\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.name', '\"bannerText\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.searchable', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.availableTransforms', '\"\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.availableVolumes', '\"\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.columnType', '\"text\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.manualConfig', '\"\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.purifierConfig', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.purifyHtml', 'true'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.redactorConfig', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.removeEmptyTags', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.removeInlineStyles', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.removeNbsp', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.showHtmlButtonForNonAdmins', 'true'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.translationKeyFormat', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.translationMethod', '\"none\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.2e187a4a-55e8-4f94-b493-c2830ee0b14e.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.columnSuffix', '\"tbkuklnl\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.contentColumnType', '\"text\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.fieldGroup', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.handle', '\"bannertitle\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.name', '\"bannerTitle\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.searchable', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.byteLimit', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.charLimit', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.code', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.columnType', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.initialRows', '4'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.multiline', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.placeholder', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.translationKeyFormat', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.translationMethod', '\"none\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.66539576-e552-409c-8b6a-e9f92817cb98.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.columnSuffix', '\"huwuepoe\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.contentColumnType', '\"text\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.fieldGroup', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.handle', '\"bgColor\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.instructions', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.name', '\"bg-color\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.searchable', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.byteLimit', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.charLimit', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.code', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.columnType', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.initialRows', '4'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.multiline', 'false'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.placeholder', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.translationKeyFormat', 'null'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.translationMethod', '\"none\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.fields.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.handle', '\"banner\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.name', '\"Banner\"'),
('matrixBlockTypes.37953704-984c-4070-a32f-563a57cec8c8.sortOrder', '1'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.field', '\"5f7cf67e-fa17-4496-94d5-80d60467006d\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.fieldUid', '\"2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.uid', '\"4d8dd151-9da3-4d44-93d7-dab8570a0422\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.fieldUid', '\"d10aab37-047a-48ae-b5cf-62f8a54a3bba\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.uid', '\"021041f6-e5cf-4bc4-913b-2361b4f1070a\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.elementCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.fieldUid', '\"5a27dd7d-1c21-4e2d-83b9-6346af5c17d3\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.required', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.uid', '\"9fa8944f-c20d-449c-9f99-9a2625f17e67\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.userCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.uid', '\"cc9cd356-bf16-40d0-90fe-fb7a64e3d507\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fieldLayouts.e1d748b8-8b18-4611-9305-91ea530e2926.tabs.0.userCondition', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.columnSuffix', '\"koeaunqb\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.contentColumnType', '\"text\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.fieldGroup', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.handle', '\"homeAboutTitle\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.name', '\"Home About Title\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.searchable', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.byteLimit', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.charLimit', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.code', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.columnType', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.initialRows', '4'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.multiline', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.placeholder', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.translationKeyFormat', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.translationMethod', '\"none\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.columnSuffix', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.contentColumnType', '\"string\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.fieldGroup', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.handle', '\"homeAboutImage\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.name', '\"Home About Image\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.searchable', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.allowSubfolders', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.allowUploads', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.branchLimit', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.defaultUploadLocationSubpath', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.localizeRelations', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.maintainHierarchy', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.maxRelations', '1'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.minRelations', '1'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.previewMode', '\"full\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.restrictedDefaultUploadSubpath', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.restrictedLocationSubpath', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.restrictFiles', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.restrictLocation', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.selectionLabel', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.showSiteMenu', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.targetSiteId', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.settings.viewMode', '\"large\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.translationKeyFormat', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.translationMethod', '\"site\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.columnSuffix', '\"qnmfexqe\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.contentColumnType', '\"text\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.fieldGroup', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.handle', '\"homeAboutDescription\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.instructions', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.name', '\"Home About Description\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.searchable', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.availableTransforms', '\"\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.availableVolumes', '\"\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.columnType', '\"text\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.manualConfig', '\"\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.purifierConfig', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.purifyHtml', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.redactorConfig', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.removeEmptyTags', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.removeInlineStyles', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.removeNbsp', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.showHtmlButtonForNonAdmins', 'true'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.translationKeyFormat', 'null'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.translationMethod', '\"none\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.fields.d10aab37-047a-48ae-b5cf-62f8a54a3bba.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.handle', '\"homeAbout\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.name', '\"Home About\"'),
('matrixBlockTypes.48fecc30-c01c-4e11-a3a1-444810d1a852.sortOrder', '1'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.field', '\"e93f436f-5fde-4b1c-a66e-8e159040866e\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.fieldUid', '\"7a06bfa0-f8c7-44da-8c07-5b71df73f553\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.uid', '\"7fc9d5aa-5a71-4543-ba51-e7d835bc51d4\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.fieldUid', '\"4a8ca9ec-9c74-4e4e-a483-33270f00c5d7\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.uid', '\"f21d8d9b-1d14-4597-9d8d-fef90ea3d434\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.fieldUid', '\"46716d8d-3949-49bf-91f2-9143de750edf\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.required', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.uid', '\"a89fe45e-f136-4b9e-b35d-2e21b794a79b\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.fieldUid', '\"bcb8126a-4fd3-4529-8fd1-70c05b6dee98\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.required', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.uid', '\"658486ea-9ec6-4709-bdfa-c4d699f8a5f4\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.3.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.fieldUid', '\"fad83b92-0189-4ac0-a504-b5d4abbb8aa0\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.required', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.uid', '\"c9b63ba3-e09c-4880-98a4-4d545387291b\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.4.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.elementCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.fieldUid', '\"2f7a25ba-dc03-429d-856d-e509e40f8701\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.instructions', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.label', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.required', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.tip', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.uid', '\"af6ee1a2-68b2-4eee-8325-bddb3de03215\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.warning', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.elements.5.width', '100'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.uid', '\"9e5e4363-7eba-41c3-9fe3-00bb84e0a0f2\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fieldLayouts.5e687059-7d40-44b3-825a-80c9baa42eba.tabs.0.userCondition', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.columnSuffix', '\"lfpjgwet\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.contentColumnType', '\"text\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.handle', '\"staffInstagramHandle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.instructions', '\"Staff Instagram Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.name', '\"Staff Instagram Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.byteLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.charLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.code', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.columnType', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.initialRows', '4'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.multiline', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.placeholder', '\"Staff Instagram Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.translationMethod', '\"none\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.2f7a25ba-dc03-429d-856d-e509e40f8701.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.columnSuffix', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.contentColumnType', '\"string\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.handle', '\"staff_image\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.instructions', '\"Staff Image\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.name', '\"Staff Image\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.allowSubfolders', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.allowUploads', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.branchLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.defaultUploadLocationSubpath', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.localizeRelations', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.maintainHierarchy', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.maxRelations', '1'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.minRelations', '1'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.previewMode', '\"full\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.restrictedDefaultUploadSubpath', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.restrictedLocationSubpath', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.restrictFiles', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.restrictLocation', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.selectionLabel', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.showSiteMenu', 'true'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.targetSiteId', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.settings.viewMode', '\"large\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.translationMethod', '\"site\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.46716d8d-3949-49bf-91f2-9143de750edf.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.columnSuffix', '\"adtcvgkd\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.contentColumnType', '\"text\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.handle', '\"staffPosition\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.instructions', '\"Staff Position\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.name', '\"Staff Position\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.byteLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.charLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.code', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.columnType', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.initialRows', '4'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.multiline', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.placeholder', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.translationMethod', '\"none\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.columnSuffix', '\"feuwtuom\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.contentColumnType', '\"text\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.handle', '\"staffName\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.instructions', '\"Staff Name\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.name', '\"Staff Name\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.byteLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.charLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.code', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.columnType', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.initialRows', '4'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.multiline', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.placeholder', '\"Staff Name\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.translationMethod', '\"none\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.7a06bfa0-f8c7-44da-8c07-5b71df73f553.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.columnSuffix', '\"zzphjans\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.contentColumnType', '\"text\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.handle', '\"staffFacebookHandle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.instructions', '\"Staff Facebook Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.name', '\"Staff Facebook Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.byteLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.charLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.code', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.columnType', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.initialRows', '4'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.multiline', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.placeholder', '\"Staff Facebook Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.translationMethod', '\"none\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.bcb8126a-4fd3-4529-8fd1-70c05b6dee98.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.columnSuffix', '\"oyfyrwiz\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.contentColumnType', '\"text\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.fieldGroup', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.handle', '\"staffTwitterHandle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.instructions', '\"Staff Twitter Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.name', '\"Staff Twitter Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.searchable', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.byteLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.charLimit', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.code', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.columnType', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.initialRows', '4'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.multiline', 'false'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.placeholder', '\"Staff Twitter Handle\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.translationKeyFormat', 'null'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.translationMethod', '\"none\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.fields.fad83b92-0189-4ac0-a504-b5d4abbb8aa0.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.handle', '\"staff\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.name', '\"Staff\"'),
('matrixBlockTypes.ce5aed38-d46c-42b2-bc7f-b9a7aa949009.sortOrder', '1'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.field', '\"98449dda-5b8d-410b-9c1e-a83db9f480e6\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.fieldUid', '\"3ad5adb6-33a5-4983-87b3-91220d55b703\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.uid', '\"443d02e2-3d1d-4cd5-9e0e-cc157cecd6b7\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.fieldUid', '\"8321b2a1-5cff-4d36-bf91-d69cb49850a0\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.uid', '\"42acaf6b-add6-4620-9c06-713d324c89af\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.uid', '\"27f67c06-fa01-4b85-8e85-a8522d59273b\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fieldLayouts.e0a75f0f-fc92-47ad-bef5-b5be69498a5f.tabs.0.userCondition', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.columnSuffix', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.contentColumnType', '\"string\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.fieldGroup', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.handle', '\"serviceImage\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.instructions', '\"Home Service Image\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.name', '\"Service Image\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.searchable', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.allowSubfolders', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.allowUploads', 'true'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.branchLimit', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.defaultUploadLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.defaultUploadLocationSubpath', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.localizeRelations', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.maintainHierarchy', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.maxRelations', '1'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.minRelations', '1'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.previewMode', '\"full\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.restrictedDefaultUploadSubpath', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.restrictedLocationSource', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.restrictedLocationSubpath', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.restrictFiles', 'true'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.restrictLocation', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.selectionLabel', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.showSiteMenu', 'true'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.sources.0', '\"volume:db4d347e-39df-4603-ab9d-364a4cf7f159\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.targetSiteId', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.settings.viewMode', '\"large\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.translationKeyFormat', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.translationMethod', '\"site\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.3ad5adb6-33a5-4983-87b3-91220d55b703.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.columnSuffix', '\"rmasbsiy\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.contentColumnType', '\"text\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.fieldGroup', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.handle', '\"serviceImageDescrition\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.instructions', '\"Service Image Descrition\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.name', '\"Service Image Descrition\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.searchable', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.byteLimit', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.charLimit', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.code', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.columnType', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.initialRows', '4'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.multiline', 'false'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.placeholder', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.translationKeyFormat', 'null'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.translationMethod', '\"none\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.fields.8321b2a1-5cff-4d36-bf91-d69cb49850a0.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.handle', '\"homeService\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.name', '\"Home Service\"'),
('matrixBlockTypes.d28be02d-887e-4b26-b1cd-b7285dfa262b.sortOrder', '1'),
('meta.__names__.01d82159-59cd-461e-aad5-c00aa78b6a3d', '\"Service Title\"'),
('meta.__names__.07cebb10-7e91-4d66-a6fc-94edbba90f29', '\"Carousel 1\"'),
('meta.__names__.093b96ce-f018-4a98-99c3-d6f8f1344404', '\"Location\"'),
('meta.__names__.1035e9ec-c409-454a-9414-e50a9bab5e9d', '\"Photos\"'),
('meta.__names__.108a81f0-21fa-4699-9dd2-28a15fb8583b', '\"Services\"'),
('meta.__names__.171a5b1a-447a-4c4f-8446-61bb8deade78', '\"News Blog\"'),
('meta.__names__.1e701080-19f6-4740-9cc9-6f033dda07e6', '\"Service\"'),
('meta.__names__.21965bbe-a485-460b-bcd2-3cb57dfae29e', '\"Contact Us\"'),
('meta.__names__.2dd75f70-8fd9-4d3c-b9e4-607b4ac20b50', '\"Home About Title\"'),
('meta.__names__.2e187a4a-55e8-4f94-b493-c2830ee0b14e', '\"bannerText\"'),
('meta.__names__.2f7a25ba-dc03-429d-856d-e509e40f8701', '\"Staff Instagram Handle\"'),
('meta.__names__.31f0372e-1bf6-4316-8cdf-26169b6ce79f', '\"transformation for home service image\"'),
('meta.__names__.369ee378-e78c-45b5-96d7-2810c20427ef', '\"Home Page\"'),
('meta.__names__.37953704-984c-4070-a32f-563a57cec8c8', '\"Banner\"'),
('meta.__names__.3ad5adb6-33a5-4983-87b3-91220d55b703', '\"Service Image\"'),
('meta.__names__.3bf5fb1c-11a4-4cc0-8e39-d83d64106c5c', '\"Home ServiceTitle\"'),
('meta.__names__.4619320a-5672-4840-9ff5-f697dd2e0d58', '\"Services Listing\"'),
('meta.__names__.46716d8d-3949-49bf-91f2-9143de750edf', '\"Staff Image\"'),
('meta.__names__.48fecc30-c01c-4e11-a3a1-444810d1a852', '\"Home About\"'),
('meta.__names__.4a8ca9ec-9c74-4e4e-a483-33270f00c5d7', '\"Staff Position\"'),
('meta.__names__.4bd41aa9-ea55-4791-9022-11112dc4e7e6', '\"transformation for home about image\"'),
('meta.__names__.53e7ace5-2656-4d04-a0a8-07c8d78ac9fc', '\"Awards\"'),
('meta.__names__.592a3596-a0e0-461d-bfdc-bd63731619c5', '\"Services\"'),
('meta.__names__.5a27dd7d-1c21-4e2d-83b9-6346af5c17d3', '\"Home About Image\"'),
('meta.__names__.5f7cf67e-fa17-4496-94d5-80d60467006d', '\"Home About Us\"'),
('meta.__names__.61374186-d744-4e86-8921-df9aed4a3a13', '\"St. Edward Hospital, Dwinyama\"'),
('meta.__names__.6580fc11-bcf4-4080-a97b-01c688d7012f', '\"Short Description\"'),
('meta.__names__.66539576-e552-409c-8b6a-e9f92817cb98', '\"bannerTitle\"'),
('meta.__names__.68a60340-5be7-4344-b9e5-4b01ed954450', '\"Staff Section Title\"'),
('meta.__names__.6d9f4e85-c20c-4bb7-a4ac-1291b563907b', '\"Tel Number\"'),
('meta.__names__.6fbbd23b-23a1-4c3c-bc98-ca4a0b1c559b', '\"Staff Image\"'),
('meta.__names__.7a06bfa0-f8c7-44da-8c07-5b71df73f553', '\"Staff Name\"'),
('meta.__names__.7eb80008-e9ae-442d-990e-2c8d122476cd', '\"St. Edward Hospital, Dwinyama\"'),
('meta.__names__.803d2c3d-46be-49be-a690-2e4c161b1be6', '\"News Blog\"'),
('meta.__names__.8321b2a1-5cff-4d36-bf91-d69cb49850a0', '\"Service Image Descrition\"'),
('meta.__names__.891e2c26-4c9b-4a7e-8cf9-a7e3419f7432', '\"Carousel 2\"'),
('meta.__names__.98449dda-5b8d-410b-9c1e-a83db9f480e6', '\"Home Services\"'),
('meta.__names__.98732b45-a75a-4682-b38f-68211a86d58e', '\"Common\"'),
('meta.__names__.9d1cfb5c-1bd4-4177-974b-d5eba29fb777', '\"Contact Us\"'),
('meta.__names__.9d380263-c39c-4837-bef8-c82ef75900a9', '\"Carousel 2 Title\"'),
('meta.__names__.9eba2519-9c26-4850-8f34-be9d93777485', '\"Carousel 2 Text\"'),
('meta.__names__.9ee8328f-52de-43e8-adfe-d898c5b75943', '\"Email Address\"'),
('meta.__names__.a25691bc-ec38-4d26-ac90-424df0a3f414', '\"Twitter Address\"'),
('meta.__names__.a44b777a-c330-46d3-bfd9-90b27a4ff78c', '\"Layout Listing\"'),
('meta.__names__.aa6970d9-9575-48e3-8ee8-1275d7d6d56d', '\"Home Carousel\"'),
('meta.__names__.aa8454cc-0332-4ebe-9603-d4a3484708a0', '\"Page Title\"'),
('meta.__names__.ac3e7ae0-cb45-48a2-967f-8d317da0f8b2', '\"Carousel 1 Title\"'),
('meta.__names__.ad7d9367-8f02-4bc5-a8fb-ddd20066226a', '\"Banners\"'),
('meta.__names__.b65062c5-bc23-44c5-8088-439939e7dd6e', '\"Send to Email\"'),
('meta.__names__.b7628694-d6a0-4594-8d8b-a870b4af88ef', '\"Services Listing\"'),
('meta.__names__.bcb8126a-4fd3-4529-8fd1-70c05b6dee98', '\"Staff Facebook Handle\"'),
('meta.__names__.c0bf0db5-c4a5-4212-ae16-50546e209b56', '\"Home Page\"'),
('meta.__names__.c242cc6b-bcd1-4acf-a08e-6cab6d2e8b7a', '\"bg-color\"'),
('meta.__names__.c710dda9-161e-4720-ab3c-ef508310a05b', '\"About Us\"'),
('meta.__names__.c7810442-6833-4de5-99fc-1eee12ab1cde', '\"Rich Text\"'),
('meta.__names__.cb979a56-f588-4638-a2d8-33a4cd74d81f', '\"Instagram Address\"'),
('meta.__names__.cc64c678-8b40-4d3d-bd8e-e0749b55bfbe', '\"Home Page\"'),
('meta.__names__.ce5aed38-d46c-42b2-bc7f-b9a7aa949009', '\"Staff\"'),
('meta.__names__.d10aab37-047a-48ae-b5cf-62f8a54a3bba', '\"Home About Description\"'),
('meta.__names__.d28be02d-887e-4b26-b1cd-b7285dfa262b', '\"Home Service\"'),
('meta.__names__.d3d87ec6-e6e4-4328-a770-93fb3faa88f3', '\"Layout Listing\"'),
('meta.__names__.daf1b712-9965-4d88-bd45-387e079d8106', '\"Blog Listing\"'),
('meta.__names__.db4d347e-39df-4603-ab9d-364a4cf7f159', '\"Images\"'),
('meta.__names__.ddd11158-2278-4790-bae2-f87722617ca1', '\"Carousel 1 Text\"'),
('meta.__names__.e1a794e8-76c2-40f8-9d0b-93588cac6e3f', '\"Facebook Address\"'),
('meta.__names__.e3931efc-d1d3-40b4-9c6a-8cc044579edc', '\"About Us\"'),
('meta.__names__.e93f436f-5fde-4b1c-a66e-8e159040866e', '\"Staff Image\"'),
('meta.__names__.ed16eca0-b883-4ac5-9366-1e11c0b78107', '\"Blog Listing\"'),
('meta.__names__.fad83b92-0189-4ac0-a504-b5d4abbb8aa0', '\"Staff Twitter Handle\"'),
('plugins.contact-form-extensions.edition', '\"standard\"'),
('plugins.contact-form-extensions.enabled', 'true'),
('plugins.contact-form-extensions.schemaVersion', '\"1.0.1\"'),
('plugins.contact-form-extensions.settings.confirmationSubject', '\"\"'),
('plugins.contact-form-extensions.settings.confirmationTemplate', '\"\"'),
('plugins.contact-form-extensions.settings.enableConfirmationEmail', '\"\"'),
('plugins.contact-form-extensions.settings.enableDatabase', '\"1\"'),
('plugins.contact-form-extensions.settings.enableRecaptchaOverride', '\"\"'),
('plugins.contact-form-extensions.settings.enableTemplateOverwrite', '\"\"'),
('plugins.contact-form-extensions.settings.notificationTemplate', '\"\"'),
('plugins.contact-form-extensions.settings.recaptcha', '\"\"'),
('plugins.contact-form-extensions.settings.recaptchaDataBadge', '\"bottomright\"'),
('plugins.contact-form-extensions.settings.recaptchaDebug', '\"\"'),
('plugins.contact-form-extensions.settings.recaptchaHideBadge', '\"\"'),
('plugins.contact-form-extensions.settings.recaptchaSecretKey', '\"$MY_SECRET_KEY_reCAPTCHA\"'),
('plugins.contact-form-extensions.settings.recaptchaSiteKey', '\"$MY_SITE_KEY_reCAPTCHA\"'),
('plugins.contact-form-extensions.settings.recaptchaThreshold', '\"0.5\"'),
('plugins.contact-form-extensions.settings.recaptchaTimeout', '\"5\"'),
('plugins.contact-form-extensions.settings.recaptchaUrl', '\"\"'),
('plugins.contact-form-extensions.settings.recaptchaVerificationUrl', '\"\"'),
('plugins.contact-form-extensions.settings.recaptchaVersion', '\"3\"'),
('plugins.contact-form.edition', '\"standard\"'),
('plugins.contact-form.enabled', 'true'),
('plugins.contact-form.schemaVersion', '\"1.0.0\"'),
('plugins.contact-form.settings.allowAttachments', '\"\"'),
('plugins.contact-form.settings.allowedMessageFields', 'null'),
('plugins.contact-form.settings.prependSender', '\"On behalf of\"'),
('plugins.contact-form.settings.prependSubject', '\"New message from St. Edward Hospital Contact form\"'),
('plugins.contact-form.settings.successFlashMessage', '\"Your message has been sent.\"'),
('plugins.contact-form.settings.toEmail', '\"sammav2018@gmail.com\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.defaultPlacement', '\"end\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.enableVersioning', 'true'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.handle', '\"newsBlog\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.name', '\"News Blog\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.propagationMethod', '\"all\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"blog/_entry\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"blog/{slug}\"'),
('sections.171a5b1a-447a-4c4f-8446-61bb8deade78.type', '\"channel\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.defaultPlacement', '\"end\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.enableVersioning', 'true'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.handle', '\"contactUs\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.name', '\"Contact Us\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.propagationMethod', '\"all\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"contact/index.twig\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"contact\"'),
('sections.21965bbe-a485-460b-bcd2-3cb57dfae29e.type', '\"single\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.defaultPlacement', '\"end\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.enableVersioning', 'true'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.handle', '\"servicesListing\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.name', '\"Services Listing\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.propagationMethod', '\"all\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"service/index\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"service\"'),
('sections.4619320a-5672-4840-9ff5-f697dd2e0d58.type', '\"single\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.defaultPlacement', '\"end\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.enableVersioning', 'true'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.handle', '\"services\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.name', '\"Services\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.propagationMethod', '\"all\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"service/_entry\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"service/{slug}\"'),
('sections.592a3596-a0e0-461d-bfdc-bd63731619c5.type', '\"channel\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.defaultPlacement', '\"end\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.enableVersioning', 'true'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.handle', '\"homePage\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.name', '\"Home Page\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.propagationMethod', '\"all\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"index\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"__home__\"'),
('sections.c0bf0db5-c4a5-4212-ae16-50546e209b56.type', '\"single\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.defaultPlacement', '\"end\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.enableVersioning', 'true'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.handle', '\"aboutUs\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.name', '\"About Us\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.propagationMethod', '\"all\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"about/index\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"about\"'),
('sections.c710dda9-161e-4720-ab3c-ef508310a05b.type', '\"single\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.defaultPlacement', '\"end\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.enableVersioning', 'true'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.handle', '\"layoutListing\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.name', '\"Layout Listing\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.propagationMethod', '\"all\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"_layout/app.twig\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"_layout\"'),
('sections.d3d87ec6-e6e4-4328-a770-93fb3faa88f3.type', '\"channel\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.defaultPlacement', '\"end\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.enableVersioning', 'true'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.handle', '\"blogListing\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.name', '\"Blog Listing\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.propagationMethod', '\"all\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.enabledByDefault', 'true'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.template', '\"blog/index.twig\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.siteSettings.7eb80008-e9ae-442d-990e-2c8d122476cd.uriFormat', '\"blog\"'),
('sections.daf1b712-9965-4d88-bd45-387e079d8106.type', '\"single\"'),
('siteGroups.61374186-d744-4e86-8921-df9aed4a3a13.name', '\"St. Edward Hospital, Dwinyama\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.handle', '\"default\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.hasUrls', 'true'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.language', '\"en-US\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.name', '\"St. Edward Hospital, Dwinyama\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.primary', 'true'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.siteGroup', '\"61374186-d744-4e86-8921-df9aed4a3a13\"'),
('sites.7eb80008-e9ae-442d-990e-2c8d122476cd.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"St. Edward Hospital, Dwinyama\"'),
('system.retryDuration', 'null'),
('system.schemaVersion', '\"4.4.0.4\"'),
('system.timeZone', '\"Africa/Accra\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elementCondition', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.autocomplete', 'false'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.autocorrect', 'true'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.class', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.disabled', 'false'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.elementCondition', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.id', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.instructions', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.label', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.max', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.min', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.name', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.orientation', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.placeholder', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.readonly', 'false'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.requirable', 'false'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.size', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.step', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.tip', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.title', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.uid', '\"f09ac0ba-06d2-4117-b3f2-02553e3deb45\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.userCondition', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.warning', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.elements.0.width', '100'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.name', '\"Content\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.uid', '\"a357f0b5-5200-40b5-989e-6e256387b820\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fieldLayouts.fdb0e942-3e45-40be-995d-61e1e4209085.tabs.0.userCondition', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.fs', '\"images\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.handle', '\"images\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.name', '\"Images\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.sortOrder', '2'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.titleTranslationKeyFormat', 'null'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.titleTranslationMethod', '\"site\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.transformFs', '\"\"'),
('volumes.db4d347e-39df-4603-ab9d-364a4cf7f159.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 2, 2, NULL, 32, 1, '2023-04-24 02:44:06', '2023-04-24 02:44:06', '4f5a10ab-11f1-4cb5-91da-1b78362c1b46'),
(7, 1, 34, NULL, 31, 1, '2023-04-24 02:44:07', '2023-04-24 02:44:07', '7737011b-7e88-4f4d-a5db-411bbac6cd0d'),
(8, 2, 34, NULL, 32, 1, '2023-04-24 02:44:07', '2023-04-24 02:44:07', '5293e94a-9f4e-48b6-b9bd-bf111d2a2070'),
(13, 1, 36, NULL, 32, 1, '2023-04-24 02:53:51', '2023-04-24 02:53:51', 'f3d7f2fa-6a14-41cf-98f5-dcc9f3bcbfe7'),
(14, 2, 36, NULL, 32, 1, '2023-04-24 02:53:51', '2023-04-24 02:53:51', 'fd8ebf3b-24f4-4f87-871d-84151b9ceba4'),
(18, 1, 2, NULL, 31, 1, '2023-04-24 02:54:21', '2023-04-24 02:54:21', '936eab9c-9a7f-4ecd-8a6c-d9080aee57af'),
(19, 1, 38, NULL, 31, 1, '2023-04-24 02:54:21', '2023-04-24 02:54:21', '216915be-0f32-46e0-adb5-efb41f0c2484'),
(20, 2, 38, NULL, 32, 1, '2023-04-24 02:54:21', '2023-04-24 02:54:21', '4fa1c7b9-55c8-4e69-962e-576662b3617f'),
(21, 1, 39, NULL, 31, 1, '2023-04-24 04:45:23', '2023-04-24 04:45:23', '5f8cec1d-73ca-42a0-bb7f-2f723f3b13eb'),
(22, 2, 39, NULL, 32, 1, '2023-04-24 04:45:23', '2023-04-24 04:45:23', 'c9909bac-f4f6-4652-ab05-79fffdff6703'),
(25, 1, 289, NULL, 31, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', '0afcad1e-62ae-4e3f-a99c-b598da0cd57a'),
(26, 2, 289, NULL, 32, 1, '2023-04-24 05:07:41', '2023-04-24 05:07:41', '97d12388-ac80-4832-aef6-ddc43c6a3412'),
(29, 1, 294, NULL, 31, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', '9a4dcc36-ff77-4945-9d6c-8b9b57bfc2f3'),
(30, 2, 294, NULL, 32, 1, '2023-04-24 05:10:44', '2023-04-24 05:10:44', '6946e55f-2501-4d11-856a-954aa9e71efd'),
(33, 1, 300, NULL, 31, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', '641ce8cf-0395-4fd2-855c-30f9fd1eaa74'),
(34, 2, 300, NULL, 32, 1, '2023-04-24 05:24:17', '2023-04-24 05:24:17', '4507aaf9-01b9-4277-9c75-2095ace520ca'),
(37, 1, 305, NULL, 31, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', '2b21fc30-2ec2-4766-8853-07405206a4dd'),
(38, 2, 305, NULL, 32, 1, '2023-04-24 05:26:16', '2023-04-24 05:26:16', 'e07be8af-eb90-4bd7-8a86-cccc51839027'),
(41, 1, 310, NULL, 31, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '3b6798f6-ac86-4bcb-8501-53d1e20be877'),
(42, 2, 310, NULL, 32, 1, '2023-04-24 05:27:53', '2023-04-24 05:27:53', '0ea4173e-919c-49b9-baf8-9b48b08addd8'),
(45, 1, 316, NULL, 31, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', '67a35b40-0b1e-4a0f-8a2f-b2cea00fb6c3'),
(46, 2, 316, NULL, 32, 1, '2023-04-24 05:29:15', '2023-04-24 05:29:15', '7596b8d8-516a-471e-974b-53d30afd49ff'),
(49, 1, 322, NULL, 31, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', '114edfc9-17f4-4c9c-b5e8-6d291efe66e6'),
(50, 2, 322, NULL, 32, 1, '2023-04-24 05:30:37', '2023-04-24 05:30:37', '33a870db-8a71-4e99-97a2-bc2d60fb119f'),
(53, 1, 327, NULL, 31, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '11d0b345-730b-4b8f-b180-8670ef01ad37'),
(54, 2, 327, NULL, 32, 1, '2023-04-24 05:30:55', '2023-04-24 05:30:55', '893f8fd6-aab6-4891-ac69-22b282f64157'),
(57, 1, 332, NULL, 31, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', 'd2660bb9-dc66-4790-9de9-f7a1ddbcbbff'),
(58, 2, 332, NULL, 32, 1, '2023-04-24 05:33:45', '2023-04-24 05:33:45', 'af90c82f-cd09-498a-a432-ae240a3d7846'),
(61, 1, 337, NULL, 31, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', 'b38957d5-7d3a-4b86-a203-fd3e5a771fd7'),
(62, 2, 337, NULL, 32, 1, '2023-04-24 05:35:04', '2023-04-24 05:35:04', '3e9bfae5-67b0-48a2-b07e-77ade22a1b63'),
(65, 1, 342, NULL, 31, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', 'a29e9cab-5648-469a-8045-d658c5cf158e'),
(66, 2, 342, NULL, 32, 1, '2023-04-24 05:38:03', '2023-04-24 05:38:03', 'cfb189ac-77cb-4cd1-9e6f-fd25ad036851'),
(69, 1, 347, NULL, 31, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '157f552e-d947-40c5-a39e-53f29115e1b4'),
(70, 2, 347, NULL, 32, 1, '2023-04-24 05:38:35', '2023-04-24 05:38:35', '3209ef84-c4dd-48e5-b994-8558f58e9349'),
(73, 1, 352, NULL, 31, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', '0c161f23-fa7c-4fec-a4f0-db9376d3e29c'),
(74, 2, 352, NULL, 32, 1, '2023-04-24 05:39:28', '2023-04-24 05:39:28', '16b6f4bb-e4ac-45d5-99ff-46cfaaa8d532'),
(77, 1, 357, NULL, 31, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '546ffbd1-5b0f-4cf7-b012-cfc6aca76103'),
(78, 2, 357, NULL, 32, 1, '2023-04-24 05:40:27', '2023-04-24 05:40:27', '19b55bef-5e5c-4f40-bdd2-79cb21093b44'),
(81, 1, 362, NULL, 31, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', 'a55c3f13-7b01-40c1-be19-c980633cbd7a'),
(82, 2, 362, NULL, 32, 1, '2023-04-24 05:41:49', '2023-04-24 05:41:49', '79d8b9e6-009b-4560-a16c-27138b951751'),
(85, 1, 367, NULL, 31, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', 'fc4b27ca-2f28-4485-9dc8-f079ac920d3c'),
(86, 2, 367, NULL, 32, 1, '2023-04-24 05:42:14', '2023-04-24 05:42:14', '46763aa5-893c-40a4-8a85-d887a333560c'),
(89, 1, 372, NULL, 31, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', '97bc7c83-2f65-43b2-953d-2bb1baf8f20d'),
(90, 2, 372, NULL, 32, 1, '2023-04-24 05:42:48', '2023-04-24 05:42:48', 'b1b07bd7-9c8a-4507-ae7b-f55e511ac113'),
(93, 1, 377, NULL, 31, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', 'c03abeae-d795-47f4-80a8-09eb457d6990'),
(94, 2, 377, NULL, 32, 1, '2023-04-24 05:43:34', '2023-04-24 05:43:34', '4f225e4a-1d97-4768-b082-855f704ca9bc'),
(97, 1, 382, NULL, 31, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', '6b667ff5-023a-4b66-9841-3001887a06cb'),
(98, 2, 382, NULL, 32, 1, '2023-04-24 05:44:49', '2023-04-24 05:44:49', '27704130-f19e-4b6e-b8d7-b192b6544155'),
(99, 1, 385, NULL, 31, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', '580866d4-4555-44db-8cdf-5309e60eb71d'),
(100, 2, 385, NULL, 32, 1, '2023-04-24 06:30:52', '2023-04-24 06:30:52', 'ddeb5b91-3253-4fa3-8e18-933b3495d33c'),
(101, 1, 388, NULL, 31, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', 'ebc4c20f-42eb-4b86-8c10-9b6f4f2fb9ff'),
(102, 2, 388, NULL, 32, 1, '2023-04-24 06:31:54', '2023-04-24 06:31:54', '425b0941-ec19-467c-bb7e-046a08e78c3e'),
(103, 1, 391, NULL, 31, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', '3b5f61b5-c9c2-48d6-8704-45115311749c'),
(104, 2, 391, NULL, 32, 1, '2023-04-24 06:32:25', '2023-04-24 06:32:25', '72364e83-0ba5-436f-adeb-0eaae88f5dd7'),
(108, 14, 408, NULL, 407, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '88bca66b-f71f-42cb-89ec-12ccbeedd3f0'),
(109, 1, 409, NULL, 31, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '1ffa986b-a672-4fd3-9139-5451f3633e56'),
(110, 2, 409, NULL, 32, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '39523055-105c-464d-92cb-230b723bcbeb'),
(111, 14, 412, NULL, 407, 1, '2023-04-24 06:37:35', '2023-04-24 06:37:35', '68aa9e47-9297-4fba-961e-3b8b47faa6bf'),
(115, 1, 415, NULL, 31, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '9637bca3-ef92-461d-8385-b9f03b45986a'),
(116, 2, 415, NULL, 32, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', '129fd670-92ef-4c90-b1ca-29ee65012259'),
(117, 14, 418, NULL, 407, 1, '2023-04-24 06:43:02', '2023-04-24 06:43:02', 'a44fa327-de33-41b3-9ae7-f5e8af5852eb'),
(121, 1, 421, NULL, 31, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'ee4da30a-03f8-4a3d-a0d8-b139ddccc904'),
(122, 2, 421, NULL, 32, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', '2c51dc38-ab6d-4417-a13f-c55ccf03d2de'),
(123, 14, 424, NULL, 407, 1, '2023-04-24 06:46:02', '2023-04-24 06:46:02', 'cfa49015-aa12-4548-ab54-aa383aa1b47e'),
(127, 1, 427, NULL, 31, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '9fe77db5-9967-48fb-8e20-b1faf0ad18dd'),
(128, 2, 427, NULL, 32, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '6f3ad3e0-c2a2-4652-bfb8-4d6119ed7269'),
(129, 14, 430, NULL, 407, 1, '2023-04-24 06:52:44', '2023-04-24 06:52:44', '0b7dc5d8-49f4-4f59-bec4-ef63621220d8'),
(130, 1, 431, NULL, 31, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '19375be7-8a49-4e49-9f44-7dffb23e579c'),
(131, 2, 431, NULL, 32, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '5a577e72-f2b4-4268-a086-ecd08170825a'),
(132, 14, 434, NULL, 407, 1, '2023-04-24 13:46:43', '2023-04-24 13:46:43', '2662b469-5e3e-4a62-b25c-84215f0d4619'),
(135, 18, 437, NULL, 435, 1, '2023-04-24 13:47:14', '2023-04-24 13:47:14', '0208c5aa-66d9-4f35-89fb-9d381cc27c11'),
(136, 18, 440, NULL, 435, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', 'bbfe0666-51ce-422c-91a1-fe90fb506ce7'),
(137, 18, 441, NULL, 435, 1, '2023-04-24 13:47:25', '2023-04-24 13:47:25', '16eea850-f236-4bd6-8edb-9e5def5dad8d'),
(138, 18, 443, NULL, 435, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '5a73ed51-ca1c-4262-b2b6-d0495f4264a3'),
(139, 18, 444, NULL, 435, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '8879c503-4ab2-4916-b1eb-ba5b579b970f'),
(140, 18, 445, NULL, 32, 1, '2023-04-24 13:47:34', '2023-04-24 13:47:34', '62635a85-c2b9-4d5d-a671-5ce36204c682'),
(141, 18, 446, NULL, 435, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', 'a005fd7a-3b23-4d9f-b97f-0f841c9dcd00'),
(142, 18, 447, NULL, 435, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', '98a354a9-b19b-4550-aa61-0eaa02a918b0'),
(143, 18, 448, NULL, 32, 1, '2023-04-24 13:47:43', '2023-04-24 13:47:43', 'd9c79234-8252-4397-8352-c86811918363'),
(144, 18, 449, NULL, 435, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', '1148dc33-94af-4ef9-b43e-f27c36815f50'),
(145, 18, 450, NULL, 435, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', '1f97947b-b4cb-4408-a02a-55c7d6d99077'),
(146, 18, 451, NULL, 32, 1, '2023-04-24 13:47:45', '2023-04-24 13:47:45', 'a5122390-e4f9-4e1d-8f8b-b96622d0fcfc'),
(147, 18, 452, NULL, 435, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', 'b9a56e93-7bad-486f-a845-acf82f2619a1'),
(148, 18, 453, NULL, 435, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', '1a44a9e6-b357-455b-8699-4a657de4ce27'),
(149, 18, 454, NULL, 32, 1, '2023-04-24 13:47:49', '2023-04-24 13:47:49', 'a369d9d8-38bd-46e6-b688-3d2bb6a1fe84'),
(150, 18, 455, NULL, 435, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', 'b794e7b8-89c3-4d2b-9f49-db536b430721'),
(151, 18, 456, NULL, 435, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', 'bd4211d8-6b40-48bc-897b-feaaa4db01a6'),
(152, 18, 457, NULL, 32, 1, '2023-04-24 13:47:54', '2023-04-24 13:47:54', '16a48edb-2f0c-4935-a31b-02dc7b0b1c03'),
(153, 18, 458, NULL, 435, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', '47459894-b41f-4d2f-abda-e85aba370828'),
(154, 18, 459, NULL, 435, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', '5dda19d9-e57a-4bcd-ab1e-aa61c559c7b3'),
(155, 18, 460, NULL, 32, 1, '2023-04-24 13:47:56', '2023-04-24 13:47:56', 'fdb407e7-e8f3-4052-a70d-b4ab842b0d50'),
(156, 18, 461, NULL, 435, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '41ca63fb-f476-4780-83ff-b1c77cc3fc0a'),
(157, 18, 462, NULL, 435, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', '31cf7052-93ca-4d92-8f19-2663cabcdcbb'),
(158, 18, 463, NULL, 32, 1, '2023-04-24 13:48:00', '2023-04-24 13:48:00', 'c7ad761d-3807-46cb-83f2-b49be7f56884'),
(159, 18, 464, NULL, 435, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '293bb2ae-272f-4e5d-a047-175c82bf27e0'),
(160, 18, 465, NULL, 435, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '1a25230b-79bf-443e-b122-40f92187d189'),
(161, 18, 466, NULL, 32, 1, '2023-04-24 13:48:03', '2023-04-24 13:48:03', '2569ed80-e1a0-4022-beb0-83194cb7b935'),
(162, 18, 467, NULL, 435, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '49638efa-0865-4c70-9a34-d636337f45ff'),
(163, 18, 468, NULL, 435, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '59199678-3016-4cdf-b935-79ac211ac42b'),
(164, 18, 469, NULL, 32, 1, '2023-04-24 13:48:04', '2023-04-24 13:48:04', '518fc962-c6d0-49da-8bcb-039e5fd19ccd'),
(168, 18, 473, NULL, 435, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'de6d3f96-cca4-46e4-bb83-cf00b8f83ccb'),
(169, 18, 474, NULL, 435, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'c9a4c969-24b4-4efb-9cdf-9d6d20b066b4'),
(170, 18, 475, NULL, 32, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'eef81c17-0373-4157-83f0-841723ed5575'),
(171, 1, 476, NULL, 31, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'db8d274a-0191-4d4a-b47b-fc83b75e11eb'),
(172, 2, 476, NULL, 32, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '5bb78d22-3889-4bed-b391-35d4e48ea154'),
(173, 14, 479, NULL, 407, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '0cef5bd2-b020-44d7-a85c-041b471f32af'),
(174, 18, 480, NULL, 435, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '71333da2-cc96-488b-8a12-3df1cc20d922'),
(175, 18, 481, NULL, 435, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', '76aea4dc-3812-4a8f-920b-a091c26ce5a4'),
(176, 18, 482, NULL, 32, 1, '2023-04-24 13:48:18', '2023-04-24 13:48:18', 'a6061715-49ca-46bf-b4a7-23f9f37385da'),
(177, 1, 483, NULL, 31, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', 'c8605158-3cbf-4904-b0ee-04e494120c62'),
(178, 2, 483, NULL, 32, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '4cd14f82-f32f-4ea9-9b52-b4a08416dd36'),
(179, 14, 486, NULL, 407, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '3535b87d-65bb-4704-b0f5-c7c464ab949e'),
(180, 18, 487, NULL, 435, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', 'c715bcfd-1c33-41ef-ac58-0717eaab5c1c'),
(181, 18, 488, NULL, 435, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', '1db176db-4caa-45ed-b17f-ff53cfb189dd'),
(182, 18, 489, NULL, 32, 1, '2023-04-24 16:11:56', '2023-04-24 16:11:56', 'e1120b9e-049d-40ee-9f8c-c79bfaadff88'),
(185, 18, 526, NULL, 435, 1, '2023-04-24 16:19:23', '2023-04-24 16:19:23', '3b9f328d-c184-4fdc-8851-0e2b7d7f6db4'),
(186, 18, 530, NULL, 435, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '78c55113-dd1d-499f-8005-f52760ae9238'),
(187, 18, 531, NULL, 407, 1, '2023-04-24 16:19:30', '2023-04-24 16:19:30', '2d2b5c54-d824-4c82-a04a-3dbd5fc8b371'),
(188, 18, 534, NULL, 435, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '868831fa-4f94-4f14-8ff6-0f1d34949483'),
(189, 18, 535, NULL, 407, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '2ba55a2b-230d-49ce-860e-125b4107796b'),
(190, 18, 536, NULL, 32, 1, '2023-04-24 16:19:38', '2023-04-24 16:19:38', '1934f927-765f-4a53-b7c0-b056fd0264c0'),
(191, 18, 538, NULL, 435, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', 'aa66a6dd-82ad-42d1-b13c-44f6c566b371'),
(192, 18, 539, NULL, 407, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '71dfca51-2ef6-419b-b27c-c5318931f4c6'),
(193, 18, 540, NULL, 32, 1, '2023-04-24 16:20:07', '2023-04-24 16:20:07', '7f2193d7-44df-40dd-b406-e17bb193c344'),
(194, 18, 542, NULL, 435, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'ce75787b-6124-4063-baa4-acf3b7938d40'),
(195, 18, 543, NULL, 407, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', 'a34e2d92-c13c-43fb-850b-ed75e43957ba'),
(196, 18, 544, NULL, 32, 1, '2023-04-24 16:20:10', '2023-04-24 16:20:10', '152b5518-87f4-4a4b-93e3-a9a15719dce1'),
(197, 18, 546, NULL, 435, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', 'd8ad7d84-125b-44b6-b722-953f2e682100'),
(198, 18, 547, NULL, 407, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '095196da-6c3b-4676-a5f6-be0c1957589a'),
(199, 18, 548, NULL, 32, 1, '2023-04-24 16:20:13', '2023-04-24 16:20:13', '65de4fff-01d3-49aa-870f-cf5d401a620d'),
(203, 18, 554, NULL, 435, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'b9e99d5e-ba6b-48c9-ada6-4c068fdf8f23'),
(204, 18, 555, NULL, 407, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '14671b01-de29-418e-ad5d-293927486682'),
(205, 18, 556, NULL, 32, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '3a4bd586-2254-4989-b11e-2b2edcfb0099'),
(206, 1, 557, NULL, 31, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', 'f8a14328-8c79-4203-a185-15ab540fcb66'),
(207, 2, 557, NULL, 32, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '2cd5a960-4cf0-47e0-8631-bf47d1a08d2e'),
(208, 14, 560, NULL, 407, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '605a41a5-5e42-444f-a85c-6f33acabf673'),
(209, 18, 562, NULL, 435, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '623e56aa-3e2e-43c3-b68b-201f7b1d7201'),
(210, 18, 563, NULL, 407, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '99f90306-8bb1-42cb-b9df-0354264d4c6c'),
(211, 18, 564, NULL, 32, 1, '2023-04-24 16:20:20', '2023-04-24 16:20:20', '3d2a9d6c-30a9-4c45-a0ed-a213550ea4e9'),
(212, 1, 565, NULL, 31, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'fcc9d0ed-3b51-4fc0-a581-be8dbf127d93'),
(213, 2, 565, NULL, 32, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'ee734100-1b39-4ffc-91ec-f2696bd7b5fd'),
(214, 14, 568, NULL, 407, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'd983b382-0ab0-4882-9ae3-bcc750dcc53f'),
(215, 18, 570, NULL, 435, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '8c63258e-9631-4da9-8dc1-06dcaba7bc33'),
(216, 18, 571, NULL, 407, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', '4fa5503e-f2f8-4b57-be37-34d5a16d0c14'),
(217, 18, 572, NULL, 32, 1, '2023-04-24 16:33:46', '2023-04-24 16:33:46', 'a1d924c6-b5cf-4e95-8a0d-dd44eb278c18'),
(220, 1, 575, NULL, 31, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '5a69c2b7-0f04-45e2-b52e-3628f3d9884c'),
(221, 2, 575, NULL, 32, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '95b576ef-2a11-4c0b-a386-0bf7f5d59b08'),
(222, 14, 578, NULL, 407, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '2d2d33f6-d20c-4d28-ae44-6ffbc65a9ddb'),
(223, 18, 579, NULL, 435, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', 'ce3e5593-b686-42ca-adbc-a2b292a0cb1d'),
(224, 18, 580, NULL, 407, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '2df8f4c8-7723-49b1-856f-7eefbde07832'),
(225, 18, 581, NULL, 32, 1, '2023-04-24 16:36:53', '2023-04-24 16:36:53', '9cc21079-c854-4c67-b5cc-4d6413436e55'),
(226, 1, 582, NULL, 31, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'b94400b4-47bd-4dab-a061-f3925e146c0a'),
(227, 2, 582, NULL, 32, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '85e0fdbc-88e9-449c-a835-fc689f206a7f'),
(228, 14, 585, NULL, 407, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'd043aa25-484c-4573-8835-2f81bac26570'),
(229, 18, 586, NULL, 435, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'f5ceccaa-4f6b-4380-8ecc-43461a29788d'),
(230, 18, 587, NULL, 407, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', '15bff619-6d77-4a74-a23e-b68a6fca265f'),
(231, 18, 588, NULL, 32, 1, '2023-04-24 17:32:45', '2023-04-24 17:32:45', 'c9b7bd46-ddf5-4e33-81d3-6c3810a3d592'),
(234, 26, 602, NULL, 435, 1, '2023-04-24 17:33:49', '2023-04-24 17:33:49', '55fc9972-f27e-4065-8ea8-1505d8009b47'),
(235, 26, 605, NULL, 435, 1, '2023-04-24 17:34:04', '2023-04-24 17:34:04', '2d97dea6-fe25-4cf2-846b-c6cfc80cdc02'),
(236, 26, 608, NULL, 435, 1, '2023-04-24 17:34:06', '2023-04-24 17:34:06', '87429d4f-1b4f-42bc-99f9-f57ecae71f2c'),
(237, 26, 611, NULL, 435, 1, '2023-04-24 17:34:11', '2023-04-24 17:34:11', '78c13696-ac63-45e3-a4a3-ce79c086e1fa'),
(238, 26, 614, NULL, 435, 1, '2023-04-24 17:34:13', '2023-04-24 17:34:13', 'a3f05997-a182-42a7-95e6-642229c560e4'),
(239, 26, 617, NULL, 435, 1, '2023-04-24 17:34:17', '2023-04-24 17:34:17', 'a2540fc0-7f65-452d-857d-c8beb5d1155b'),
(240, 26, 620, NULL, 435, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', 'c60fd076-28e6-46a5-b73c-933d1f85b0d9'),
(241, 26, 621, NULL, 32, 1, '2023-04-24 17:34:24', '2023-04-24 17:34:24', '9581670f-de61-4b39-adbe-9187ae500181'),
(242, 26, 623, NULL, 435, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', 'b9e6f773-8772-47eb-849a-b8030d67c125'),
(243, 26, 624, NULL, 32, 1, '2023-04-24 17:34:29', '2023-04-24 17:34:29', '955b61e8-e85b-46eb-8059-90fe3174bc1e'),
(244, 26, 626, NULL, 435, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', 'eef87f4b-0f83-4ab6-9cb8-7045b0e9d2a3'),
(245, 26, 627, NULL, 32, 1, '2023-04-24 17:34:31', '2023-04-24 17:34:31', '877a80d6-396b-40c3-8355-3fd50590b1db'),
(246, 26, 629, NULL, 435, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', '5ac32b22-e197-4efb-8b36-b08cd325390a'),
(247, 26, 630, NULL, 32, 1, '2023-04-24 17:34:33', '2023-04-24 17:34:33', '625f62d4-25bc-485f-ad0a-b3a04c6a3c18'),
(248, 26, 632, NULL, 435, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '30f06fb3-9513-4490-b1d7-9da8034c98fc'),
(249, 26, 633, NULL, 32, 1, '2023-04-24 17:34:38', '2023-04-24 17:34:38', '5032c73b-5591-41be-8011-a65c92d22f1b'),
(250, 26, 635, NULL, 435, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', '2188bd44-9315-4e5c-8e4b-921d3de96788'),
(251, 26, 636, NULL, 32, 1, '2023-04-24 17:34:43', '2023-04-24 17:34:43', '97ba3da6-a770-4be5-93eb-2473177f0bfb'),
(252, 26, 638, NULL, 435, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '9da4338e-c4cb-4512-9941-7add36fbbddd'),
(253, 26, 639, NULL, 32, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '529033ee-8e42-4122-b5ee-bcd6a30dc1bc'),
(254, 26, 640, NULL, 31, 1, '2023-04-24 17:34:58', '2023-04-24 17:34:58', '8d0c3070-d465-4779-a431-31c1edf387e4'),
(255, 26, 641, NULL, 435, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', '77cdcd72-2c3f-419b-ae6e-4ab03278ffd7'),
(256, 26, 642, NULL, 32, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', '2edb2b76-d615-4411-a028-20b30c44bb3c'),
(257, 26, 643, NULL, 31, 1, '2023-04-24 17:35:02', '2023-04-24 17:35:02', 'c35714e5-5ca0-497b-98bb-e5a2807797cf'),
(258, 26, 644, NULL, 435, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', '3b5fa7b4-8e34-4cbf-a6e8-6642895d1b5e'),
(259, 26, 645, NULL, 32, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', 'dbfba6cc-11ff-4027-8c59-a99608a6e8ff'),
(260, 26, 646, NULL, 31, 1, '2023-04-24 17:35:04', '2023-04-24 17:35:04', '3b386362-66e4-4737-b516-14b215ae77a2'),
(264, 26, 650, NULL, 435, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '71094f6c-73dd-4661-bab7-58d8f0e4e2d3'),
(265, 26, 651, NULL, 32, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '9906cf20-62b7-4890-b9db-d039bdb3215f'),
(266, 26, 652, NULL, 31, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '87caf0c2-9d6c-4ec2-8e2a-b635a8f365e7'),
(267, 1, 653, NULL, 31, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '98f91c16-4fcf-4fa1-853b-a1805e97c122'),
(268, 2, 653, NULL, 32, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '88f8b5fb-f13d-4ed9-9d59-0b6ea1b34b07'),
(269, 14, 656, NULL, 407, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '503fe6b6-851b-4362-902d-f6c7e99326c9'),
(270, 18, 657, NULL, 435, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'baff3eb5-5e79-4526-b834-048646f74571'),
(271, 18, 658, NULL, 407, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '61be9586-6fc6-4dac-8620-f2c464b6b856'),
(272, 18, 659, NULL, 32, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', 'f1d4328f-dba1-459e-81be-a765fa9d1971'),
(273, 26, 660, NULL, 435, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '01efa9d7-abda-4e4b-b684-6e9bfb8c3450'),
(274, 26, 661, NULL, 32, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '14e6feae-c8d2-4001-a586-55ed3df4e990'),
(275, 26, 662, NULL, 31, 1, '2023-04-24 17:35:11', '2023-04-24 17:35:11', '00b9dca9-9c91-4446-8eed-bc8e35fe1c60'),
(276, 1, 663, NULL, 31, 1, '2023-04-24 17:47:04', '2023-04-24 17:47:04', '9ac0b174-d958-43fc-93e0-976a0c80a6a6'),
(277, 2, 663, NULL, 32, 1, '2023-04-24 17:47:04', '2023-04-24 17:47:04', 'e1151285-02aa-4013-9d74-86a667cedce5'),
(278, 14, 666, NULL, 407, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'd34673cd-dc96-4078-8815-4ed8757a70ce'),
(279, 18, 667, NULL, 435, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '8729daf5-7fd0-4257-860e-8a033bcdb2e0'),
(280, 18, 668, NULL, 407, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', '24016f67-9a00-4c92-bd37-a6fb37bb969f'),
(281, 18, 669, NULL, 32, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'd773a8ca-aae6-4716-b5c6-cf7eb7c9366b'),
(282, 26, 670, NULL, 435, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'fdc341cd-5584-4de0-855b-50e97fe8ddd8'),
(283, 26, 671, NULL, 32, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'db46bee9-2426-4105-ad9c-d0c4fe8e943e'),
(284, 26, 672, NULL, 31, 1, '2023-04-24 17:47:05', '2023-04-24 17:47:05', 'fcf8deec-4f7b-4e2b-8412-901f80c2c09c'),
(291, 32, 678, NULL, 435, 1, '2023-04-25 05:33:53', '2023-04-25 05:33:53', '188e8cf2-748f-466d-a534-cb2e821a3b42'),
(293, 32, 678, NULL, 32, 2, '2023-04-25 05:33:53', '2023-04-29 19:24:11', '40d217af-d964-43d0-bdb9-2af36663585d'),
(294, 32, 678, NULL, 31, 4, '2023-04-25 05:33:53', '2023-04-29 19:41:02', '8f498599-e03c-4e04-bdff-a20a32800a52'),
(295, 32, 679, NULL, 435, 1, '2023-04-25 05:34:28', '2023-04-25 05:34:28', '89ec6673-666d-4a0e-873f-204233b36308'),
(296, 32, 679, NULL, 407, 2, '2023-04-25 05:34:28', '2023-04-25 05:34:28', '262f9718-1c38-4cae-bd3c-2ccef1428219'),
(297, 32, 679, NULL, 32, 3, '2023-04-25 05:34:28', '2023-04-25 05:34:28', '7966d4a0-f4b3-4048-88e7-0acf09f6ff76'),
(298, 32, 679, NULL, 31, 4, '2023-04-25 05:34:28', '2023-04-25 05:34:28', '37d9c5aa-3aeb-4ebd-a451-8535379b9824'),
(299, 32, 680, NULL, 435, 1, '2023-04-25 05:35:37', '2023-04-25 05:35:37', '8b8a02fa-5b14-4ba9-8b34-b6f89bc58672'),
(300, 32, 680, NULL, 407, 2, '2023-04-25 05:35:37', '2023-04-25 05:35:37', '05aabd0c-5941-45b9-841f-26fd34481a0a'),
(301, 32, 680, NULL, 32, 3, '2023-04-25 05:35:37', '2023-04-25 05:35:37', 'ee9ca5ab-90f2-444c-89ba-eaa8ccc82675'),
(302, 32, 681, NULL, 435, 1, '2023-04-25 05:35:41', '2023-04-25 05:35:41', '4c0f6886-6304-4296-a508-ef8b0718e0d1'),
(303, 32, 681, NULL, 407, 2, '2023-04-25 05:35:41', '2023-04-25 05:35:41', 'aeb80e2d-8dd6-4036-b052-26684ffc5f49'),
(304, 32, 681, NULL, 32, 3, '2023-04-25 05:35:41', '2023-04-25 05:35:41', '74b7afda-2294-4e7f-8e04-b021a4483972'),
(305, 32, 682, NULL, 407, 1, '2023-04-25 05:36:33', '2023-04-25 05:36:33', '44527f9c-332b-463b-a036-09cb91586312'),
(306, 32, 682, NULL, 32, 2, '2023-04-25 05:36:33', '2023-04-25 05:36:33', '7b6ef64c-2f54-4800-a810-69d564db4ac1'),
(307, 32, 682, NULL, 31, 4, '2023-04-25 05:36:33', '2023-05-01 03:01:25', '9d9c339d-9c50-4f93-882a-e99e12092768'),
(308, 32, 683, NULL, 407, 1, '2023-04-25 05:36:38', '2023-04-25 05:36:38', 'e883ad85-0311-4431-ae7f-21702f43f162'),
(309, 32, 683, NULL, 32, 2, '2023-04-25 05:36:38', '2023-04-25 05:36:38', 'f9a6e321-ac69-457c-9f55-c55a9bbb03f7'),
(310, 32, 683, NULL, 31, 3, '2023-04-25 05:36:38', '2023-04-25 05:36:38', '413ee4c1-b943-4a2a-874e-89c9c38ae1ef'),
(314, 32, 685, NULL, 407, 1, '2023-04-25 05:37:11', '2023-04-25 05:37:11', '6227b32e-a95d-4c40-a239-be8cc22b10cf'),
(315, 32, 685, NULL, 32, 2, '2023-04-25 05:37:11', '2023-04-25 05:37:11', 'bf3aaf7d-0aa2-4612-ac4a-2eb2ca2248df'),
(316, 32, 685, NULL, 31, 3, '2023-04-25 05:37:11', '2023-04-25 05:37:11', 'e00c5508-be07-450d-ab1c-b47621ff0618'),
(320, 32, 687, NULL, 435, 1, '2023-04-25 05:37:27', '2023-04-25 05:37:27', 'de9ea6cf-b17e-4cdb-8ada-055d90b78945'),
(321, 32, 687, NULL, 407, 2, '2023-04-25 05:37:27', '2023-04-25 05:37:27', '24795f12-32b1-4a88-9198-d713b19b29d4'),
(322, 32, 687, NULL, 32, 3, '2023-04-25 05:37:27', '2023-04-25 05:37:27', '8da50e8a-fdb0-407b-8ec4-6c74718118f8'),
(327, 32, 689, NULL, 435, 1, '2023-04-25 05:37:53', '2023-04-25 05:37:53', '9aa054d6-e9ea-486e-9836-5bd7a8dac7d8'),
(328, 32, 689, NULL, 407, 2, '2023-04-25 05:37:53', '2023-04-25 05:37:53', '913b3da9-e6f0-42b4-9841-35cf0384d966'),
(329, 32, 689, NULL, 32, 3, '2023-04-25 05:37:53', '2023-04-25 05:37:53', 'f978b04b-0e44-434f-bdd9-1ae91dbd71a6'),
(330, 32, 689, NULL, 31, 4, '2023-04-25 05:37:53', '2023-04-25 05:37:53', '21481745-c204-4f18-b502-d447f02170b7'),
(333, 1, 701, NULL, 31, 1, '2023-04-25 10:08:23', '2023-04-25 10:08:23', 'bdea9f75-4bc5-441b-bd25-f9d0425d191f'),
(336, 1, 690, NULL, 32, 1, '2023-04-25 10:10:42', '2023-04-25 10:10:42', 'ea3b723d-3518-4189-b7ee-7f9eb15c5fba'),
(337, 1, 703, NULL, 32, 1, '2023-04-25 10:10:42', '2023-04-25 10:10:42', '2650d957-a29c-4404-b191-1e7596d44e0d'),
(339, 2, 704, NULL, 32, 1, '2023-04-25 13:15:23', '2023-04-25 13:15:23', '02ef8942-fb8d-4597-8fbe-f514ed13d10f'),
(340, 2, 709, NULL, 32, 1, '2023-04-25 13:15:23', '2023-04-25 13:15:23', '32c9de54-3853-4bee-a02c-a8b52d9180b5'),
(341, 2, 710, NULL, 32, 1, '2023-04-25 13:18:09', '2023-04-25 13:18:09', '8f1ee6bd-1f0d-4135-88f7-0eb0d35bae1a'),
(342, 2, 711, NULL, 32, 1, '2023-04-25 13:18:55', '2023-04-25 13:18:55', 'c14dfb42-04b4-4960-837d-ee69dca53c32'),
(343, 2, 712, NULL, 32, 1, '2023-04-25 13:18:56', '2023-04-25 13:18:56', 'e02cf6a8-9df4-48ad-9a39-ac70b8e3ded3'),
(344, 2, 713, NULL, 32, 1, '2023-04-25 13:23:18', '2023-04-25 13:23:18', '3d6d660c-609f-41df-bbf4-4eb80789a562'),
(345, 2, 714, NULL, 32, 1, '2023-04-25 13:23:18', '2023-04-25 13:23:18', '720a271f-c224-461e-82b0-925dc544c3d8'),
(346, 2, 715, NULL, 32, 1, '2023-04-25 13:26:23', '2023-04-25 13:26:23', '3edabc9b-954d-4f83-b63f-f979a1b8f1b1'),
(349, 1, 704, NULL, 31, 1, '2023-04-25 13:26:48', '2023-04-25 13:26:48', 'e463df88-25ea-4133-8277-c37362bb8d0d'),
(350, 2, 717, NULL, 32, 1, '2023-04-25 13:26:48', '2023-04-25 13:26:48', '451b3b5b-4246-446b-b383-4ba99b739ab6'),
(351, 1, 717, NULL, 31, 1, '2023-04-25 13:26:48', '2023-04-25 13:26:48', '09377d7d-2b7f-4afa-8209-2c99ea4a6739'),
(352, 32, 718, NULL, 435, 1, '2023-04-25 14:07:43', '2023-04-25 14:07:43', 'b80e211d-c0f1-431d-9584-71532c6a62e4'),
(355, 32, 719, NULL, 435, 1, '2023-04-25 17:48:45', '2023-04-25 17:48:45', '51500753-25ed-4407-9b2d-f51944746055'),
(356, 32, 720, NULL, 32, 1, '2023-04-25 20:08:38', '2023-04-25 20:08:38', '3439ecc7-dba8-48bc-9929-0a19efe6241a'),
(357, 32, 721, NULL, 32, 1, '2023-04-25 20:08:50', '2023-04-25 20:08:50', 'f6fb575b-da4b-481c-a2a4-028e830c0b7d'),
(358, 32, 722, NULL, 31, 1, '2023-04-25 20:09:56', '2023-04-25 20:09:56', '8b900dfc-7476-4feb-9199-2465cd7a1b15'),
(359, 32, 723, NULL, 31, 1, '2023-04-25 20:10:04', '2023-04-25 20:10:04', 'cdb2af7c-bd41-4a01-bc2f-0f4042fba446'),
(361, 1, 724, NULL, 31, 1, '2023-04-25 20:54:53', '2023-04-25 20:54:53', '3bbf227a-f1a1-437c-923b-315c0477dd67'),
(362, 1, 729, NULL, 31, 1, '2023-04-25 20:54:53', '2023-04-25 20:54:53', 'efca0678-97cf-4dd2-9fbd-8b33cd91cd59'),
(364, 1, 730, NULL, 32, 1, '2023-04-27 04:16:31', '2023-04-27 04:16:31', 'c41f3534-db3f-4528-9ad8-c40adb88e650'),
(365, 1, 755, NULL, 32, 1, '2023-04-27 04:16:31', '2023-04-27 04:16:31', '6afa4536-6848-404f-9f4a-47f3ffe35007'),
(367, 1, 757, NULL, 32, 1, '2023-04-27 04:21:54', '2023-04-27 04:21:54', '0ff95181-27e3-4267-bb01-7e1fd47d7dc6'),
(368, 1, 758, NULL, 32, 1, '2023-04-27 04:24:17', '2023-04-27 04:24:17', '73f3c881-9386-47ca-9e61-8843f91f5bad'),
(369, 1, 759, NULL, 32, 1, '2023-04-27 04:25:22', '2023-04-27 04:25:22', 'f9be442d-35c3-48a1-bf78-f944918ad2b2'),
(371, 1, 761, NULL, 32, 1, '2023-04-27 04:27:15', '2023-04-27 04:27:15', '03cf5899-1d25-4ba6-b7fe-a06f1a9dff19'),
(375, 32, 767, NULL, 31, 1, '2023-04-29 19:08:23', '2023-04-29 19:08:23', '722639dc-c103-4fcd-911a-ee2ed9ed7bf4'),
(376, 32, 767, NULL, 32, 2, '2023-04-29 19:08:23', '2023-04-29 19:08:23', '58b90929-baad-4a93-a437-df7fe4dfd519'),
(379, 32, 720, NULL, 407, 2, '2023-04-29 19:08:39', '2023-04-29 19:08:39', '4d1efee7-87c2-4b00-b65d-557a7755af78'),
(380, 32, 769, NULL, 32, 1, '2023-04-29 19:08:39', '2023-04-29 19:08:39', 'c8335537-734f-4829-9a8f-75a6a980ed9f'),
(381, 32, 769, NULL, 407, 2, '2023-04-29 19:08:39', '2023-04-29 19:08:39', 'ebdf63b1-1851-4918-84c9-2ef80d8c2223'),
(384, 32, 718, NULL, 31, 2, '2023-04-29 19:08:56', '2023-04-29 19:08:56', 'f3090c8d-d48c-47b6-bd2c-b0ce7cb2a44b'),
(385, 32, 771, NULL, 435, 1, '2023-04-29 19:08:56', '2023-04-29 19:08:56', '0b2d1e83-6ee0-40eb-aa66-96bc8acd1c83'),
(386, 32, 771, NULL, 31, 2, '2023-04-29 19:08:56', '2023-04-29 19:08:56', '74ed7691-a788-4757-a204-fbc187e71efd'),
(387, 32, 772, NULL, 31, 1, '2023-04-29 19:12:36', '2023-04-29 19:12:36', '7a093624-f29e-4a2a-97ff-ecf8620e7255'),
(388, 32, 772, NULL, 32, 2, '2023-04-29 19:12:36', '2023-04-29 19:12:36', 'ec35f8b9-b2b6-4a94-adf4-0efe2cf45e51'),
(393, 32, 774, NULL, 435, 1, '2023-04-29 19:24:11', '2023-04-29 19:24:11', 'b7396b43-3e58-4b8d-9ea5-851f2dc8dc3a'),
(394, 32, 774, NULL, 32, 2, '2023-04-29 19:24:11', '2023-04-29 19:24:11', 'e674b4b4-64ae-47e5-98a3-5c62bfb58bf2'),
(395, 32, 774, NULL, 31, 3, '2023-04-29 19:24:11', '2023-04-29 19:24:11', 'b8b96f02-0e2b-4b2a-8316-d3e451441f0f'),
(400, 32, 678, NULL, 407, 3, '2023-04-29 19:26:21', '2023-04-29 19:41:02', 'f6c8c547-d861-4519-b0e1-02cd35159bfa'),
(401, 32, 776, NULL, 435, 1, '2023-04-29 19:26:21', '2023-04-29 19:26:21', 'c12c5590-29c7-4779-b68d-e3fa418e5c9e'),
(402, 32, 776, NULL, 32, 2, '2023-04-29 19:26:21', '2023-04-29 19:26:21', 'e7600220-d37b-4400-a98f-fe2c780f40d7'),
(403, 32, 776, NULL, 31, 3, '2023-04-29 19:26:21', '2023-04-29 19:26:21', '2b6e3a26-4f72-4458-9368-61e54ff38a1f'),
(404, 32, 776, NULL, 407, 4, '2023-04-29 19:26:21', '2023-04-29 19:26:21', 'cef28f6a-f1ae-47e3-a539-1ad7a3f66ede'),
(409, 32, 778, NULL, 435, 1, '2023-04-29 19:41:02', '2023-04-29 19:41:02', 'fda0469b-0584-4d81-8ca9-76d9699cb840'),
(410, 32, 778, NULL, 32, 2, '2023-04-29 19:41:02', '2023-04-29 19:41:02', '8f827068-8a8b-4f17-af8f-d06b50225030'),
(411, 32, 778, NULL, 407, 3, '2023-04-29 19:41:02', '2023-04-29 19:41:02', '3240bfc5-e162-4ebe-aabd-2c6b9b44efab'),
(412, 32, 778, NULL, 31, 4, '2023-04-29 19:41:02', '2023-04-29 19:41:02', '479a7195-3d25-426e-b48c-0cdd2d1dec09'),
(415, 32, 780, NULL, 31, 1, '2023-04-29 19:56:12', '2023-04-29 19:56:12', 'c433c5b0-94c5-4a45-ae26-c447846247d9'),
(420, 32, 682, NULL, 435, 3, '2023-05-01 03:01:25', '2023-05-01 03:01:25', '711e67c1-03bb-4bbd-87a1-8bc75f75416f'),
(421, 32, 782, NULL, 407, 1, '2023-05-01 03:01:25', '2023-05-01 03:01:25', 'c09abc24-ea63-4fef-9a9d-e1d9c8b5eb84'),
(422, 32, 782, NULL, 32, 2, '2023-05-01 03:01:25', '2023-05-01 03:01:25', '06d47d1d-7f15-4a3d-b631-f0aca9f793b2'),
(423, 32, 782, NULL, 435, 3, '2023-05-01 03:01:25', '2023-05-01 03:01:25', 'ed27a1b1-31bf-4166-a074-88d4041e103b'),
(424, 32, 782, NULL, 31, 4, '2023-05-01 03:01:25', '2023-05-01 03:01:25', '4eccc4e3-1bfd-4a2c-ab38-dea387dc5b78');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('11755194', '@craft/web/assets/deprecationerrors/dist'),
('16d02d1d', '@craft/web/assets/updater/dist'),
('16e2f23', '@craft/web/assets/jqueryui/dist'),
('1727e03e', '@craft/web/assets/updates/dist'),
('1dbb0e11', '@craft/web/assets/htmx/dist'),
('1f136b42', '@craft/web/assets/recententries/dist'),
('1f15f988', '@craft/web/assets/fileupload/dist'),
('21a9292c', '@craft/web/assets/updateswidget/dist'),
('21e2d6f4', '@craft/web/assets/d3/dist'),
('26f51cd5', '@craft/web/assets/jqueryui/dist'),
('29f2932b', '@craft/web/assets/elementresizedetector/dist'),
('2a83df43', '@craft/web/assets/iframeresizer/dist'),
('2c128cc3', '@bower/jquery/dist'),
('2cea0a75', '@craft/web/assets/fieldsettings/dist'),
('2e9944f1', '@craft/web/assets/editsection/dist'),
('2ec1b4ae', '@craft/web/assets/vue/dist'),
('2ef6bf68', '@craft/web/assets/dashboard/dist'),
('308ae8d7', '@craft/web/assets/tailwindreset/dist'),
('30bcd3c8', '@craft/web/assets/updates/dist'),
('313c5c04', '@craft/web/assets/matrixsettings/dist'),
('32db49c', '@craft/web/assets/picturefill/dist'),
('354269e2', '@craft/web/assets/assetindexes/dist'),
('35e4e31c', '@craft/web/assets/feed/dist'),
('35fd2364', '@craft/web/assets/clearcaches/dist'),
('379f52f5', '@craft/web/assets/selectize/dist'),
('388eca7e', '@craft/web/assets/fileupload/dist'),
('3a203de7', '@craft/web/assets/htmx/dist'),
('3ae16cf5', '@craft/web/assets/velocity/dist'),
('3bd7f0bd', '@craft/web/assets/cp/dist'),
('3f25b120', '@craft/web/assets/jquerytouchevents/dist'),
('3f766e42', '@craft/web/assets/jquerypayment/dist'),
('46e7fdd5', '@craft/web/assets/picturefill/dist'),
('4c90ce11', '@craft/web/assets/vue/dist'),
('4ca7c5d7', '@craft/web/assets/dashboard/dist'),
('4cc83e4e', '@craft/web/assets/editsection/dist'),
('4d5f40d5', '@craft/web/assets/xregexp/dist'),
('4f3b9711', '@craft/web/assets/craftsupport/dist'),
('5713135d', '@craft/web/assets/assetindexes/dist'),
('57ac59db', '@craft/web/assets/clearcaches/dist'),
('57b599a3', '@craft/web/assets/feed/dist'),
('57ba7a18', '@craft/web/assets/edittransform/dist'),
('58b0164a', '@craft/web/assets/velocity/dist'),
('59bd695e', '@craft/web/assets/garnish/dist'),
('5d2714fd', '@craft/web/assets/jquerypayment/dist'),
('5d74cb9f', '@craft/web/assets/jquerytouchevents/dist'),
('6125c877', '@craft/web/assets/utilities/dist'),
('617cce23', '@craft/web/assets/picturefill/dist'),
('623783eb', '@craft/web/assets/dbbackup/dist'),
('633f559c', '@craft/web/assets/jqueryui/dist'),
('66f954', '@craft/web/assets/dbbackup/dist'),
('68a0a4e7', '@craft/web/assets/craftsupport/dist'),
('69d8c58a', '@bower/jquery/dist'),
('6ac47323', '@craft/web/assets/xregexp/dist'),
('6b0bfde7', '@craft/web/assets/vue/dist'),
('6b530db8', '@craft/web/assets/editsection/dist'),
('6c38da62', '@craft/web/assets/elementresizedetector/dist'),
('702eaa55', '@craft/web/assets/feed/dist'),
('710f5e49', '@craft/web/assets/fabric/dist'),
('73242b2b', '@craft/web/assets/deprecationerrors/dist'),
('75769a81', '@craft/web/assets/updates/dist'),
('7abc270b', '@craft/web/assets/jquerypayment/dist'),
('7aeff869', '@craft/web/assets/jquerytouchevents/dist'),
('7d448337', '@craft/web/assets/fileupload/dist'),
('7e6fe1b', '@craft/web/assets/axios/dist'),
('7f2b25bc', '@craft/web/assets/velocity/dist'),
('846108e1', '@craft/web/assets/xregexp/dist'),
('8605df25', '@craft/web/assets/craftsupport/dist'),
('895099c', '@craft/web/assets/xregexp/dist'),
('8b12ff66', '@craft/web/assets/axios/dist'),
('8f80b3b5', '@craft/web/assets/utilities/dist'),
('8fd9b5e1', '@craft/web/assets/picturefill/dist'),
('9083216a', '@craft/web/assets/garnish/dist'),
('91582196', '@craft/web/assets/sites/dist'),
('93e76a3f', '@craft/web/assets/recententries/dist'),
('96d8c9e', '@craft/web/assets/dashboard/dist'),
('9a242c60', '@craft/web/assets/updater/dist'),
('9ea59517', '@craft/web/assets/findreplace/dist'),
('9faa258b', '@craft/web/assets/fabric/dist'),
('a01e0b08', '@craft/web/assets/fieldsettings/dist'),
('a677de3e', '@craft/web/assets/iframeresizer/dist'),
('a81b8043', '@craft/web/assets/utilities/dist'),
('ad16d789', '@craft/web/assets/d3/dist'),
('ad5d2851', '@craft/web/assets/updateswidget/dist'),
('af1de58', '@craft/web/assets/craftsupport/dist'),
('b3826f3f', '@craft/web/assets/jquerypayment/dist'),
('b3d1b05d', '@craft/web/assets/jquerytouchevents/dist'),
('b6156d88', '@craft/web/assets/velocity/dist'),
('b718129c', '@craft/web/assets/garnish/dist'),
('b723f1c0', '@craft/web/assets/cp/dist'),
('b831167d', '@craft/web/assets/fabric/dist'),
('b89bf35', '@bower/jquery/dist'),
('b910e261', '@craft/web/assets/feed/dist'),
('bb6b5388', '@craft/web/assets/selectize/dist'),
('bc7ee9aa', '@craft/web/assets/tailwindreset/dist'),
('be58c1bd', '@craft/web/assets/pluginstore/dist'),
('c053c4aa', '@craft/web/assets/dashboard/dist'),
('c24f71b7', '@craft/web/assets/fieldsettings/dist'),
('c426a481', '@craft/web/assets/iframeresizer/dist'),
('c62306b5', '@craft/web/assets/generalsettings/dist'),
('ced8b62f', '@craft/web/assets/axios/dist'),
('cf0c52ee', '@craft/web/assets/updateswidget/dist'),
('cf47ad36', '@craft/web/assets/d3/dist'),
('d5496823', '@craft/web/assets/garnish/dist'),
('d5728b7f', '@craft/web/assets/cp/dist'),
('d5aa4b22', '@craft/web/assets/conditionbuilder/dist'),
('d62d2376', '@craft/web/assets/recententries/dist'),
('d93a2937', '@craft/web/assets/selectize/dist'),
('de2f9315', '@craft/web/assets/tailwindreset/dist'),
('dfee6529', '@craft/web/assets/updater/dist'),
('e0ccdb1f', '@craft/web/assets/elementresizedetector/dist'),
('e3bd9777', '@craft/web/assets/iframeresizer/dist'),
('e52cc4f7', '@bower/jquery/dist'),
('e5d44241', '@craft/web/assets/fieldsettings/dist'),
('e69a0dd', '@craft/web/assets/elementresizedetector/dist'),
('e8976118', '@craft/web/assets/updateswidget/dist'),
('e8dc9ec0', '@craft/web/assets/d3/dist'),
('e94385d9', '@craft/web/assets/axios/dist'),
('ea32332a', '@craft/web/assets/queuemanager/dist'),
('edd1c90a', '@craft/web/assets/utilities/dist'),
('efcb54e1', '@craft/web/assets/jqueryui/dist'),
('f1b0824a', '@craft/web/assets/fileupload/dist'),
('f1b61080', '@craft/web/assets/recententries/dist'),
('f23178d4', '@craft/web/assets/conditionbuilder/dist'),
('f2e9b889', '@craft/web/assets/cp/dist'),
('f87556df', '@craft/web/assets/updater/dist'),
('f9829bfc', '@craft/web/assets/updates/dist'),
('f9b4a0e3', '@craft/web/assets/tailwindreset/dist'),
('fb9288f4', '@craft/web/assets/pluginstore/dist'),
('fdfb5f34', '@craft/web/assets/fabric/dist'),
('fea11ac1', '@craft/web/assets/selectize/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, NULL),
(3, 2, 1, 3, NULL),
(4, 2, 1, 4, NULL),
(5, 7, 1, 1, ''),
(6, 2, 1, 5, NULL),
(7, 2, 1, 6, NULL),
(8, 2, 1, 7, 'Applied “Draft 1”'),
(9, 2, 1, 8, 'Applied “Draft 1”'),
(10, 2, 1, 9, 'Applied “Draft 1”'),
(11, 2, 1, 10, NULL),
(12, 2, 1, 11, 'Applied “Draft 1”'),
(13, 287, 1, 1, NULL),
(14, 288, 1, 1, NULL),
(15, 2, 1, 12, 'Applied “Draft 1”'),
(16, 287, 1, 2, NULL),
(17, 288, 1, 2, NULL),
(18, 2, 1, 13, 'Applied “Draft 1”'),
(19, 287, 1, 3, NULL),
(20, 288, 1, 3, NULL),
(21, 2, 1, 14, 'Applied “Draft 1”'),
(22, 287, 1, 4, NULL),
(23, 288, 1, 4, NULL),
(24, 2, 1, 15, 'Applied “Draft 1”'),
(25, 287, 1, 5, NULL),
(26, 288, 1, 5, NULL),
(27, 2, 1, 16, 'Applied “Draft 1”'),
(28, 287, 1, 6, NULL),
(29, 288, 1, 6, NULL),
(30, 2, 1, 17, 'Applied “Draft 1”'),
(31, 287, 1, 7, NULL),
(32, 288, 1, 7, NULL),
(33, 2, 1, 18, 'Applied “Draft 1”'),
(34, 287, 1, 8, NULL),
(35, 288, 1, 8, NULL),
(36, 2, 1, 19, 'Applied “Draft 1”'),
(37, 287, 1, 9, NULL),
(38, 288, 1, 9, NULL),
(39, 2, 1, 20, 'Applied “Draft 1”'),
(40, 287, 1, 10, NULL),
(41, 288, 1, 10, NULL),
(42, 2, 1, 21, 'Applied “Draft 1”'),
(43, 287, 1, 11, NULL),
(44, 288, 1, 11, NULL),
(45, 2, 1, 22, 'Applied “Draft 1”'),
(46, 287, 1, 12, NULL),
(47, 288, 1, 12, NULL),
(48, 2, 1, 23, 'Applied “Draft 1”'),
(49, 287, 1, 13, NULL),
(50, 288, 1, 13, NULL),
(51, 2, 1, 24, 'Applied “Draft 1”'),
(52, 287, 1, 14, NULL),
(53, 288, 1, 14, NULL),
(54, 2, 1, 25, 'Applied “Draft 1”'),
(55, 287, 1, 15, NULL),
(56, 288, 1, 15, NULL),
(57, 2, 1, 26, 'Applied “Draft 1”'),
(58, 287, 1, 16, NULL),
(59, 288, 1, 16, NULL),
(60, 2, 1, 27, 'Applied “Draft 1”'),
(61, 287, 1, 17, NULL),
(62, 288, 1, 17, NULL),
(63, 2, 1, 28, 'Applied “Draft 1”'),
(64, 287, 1, 18, NULL),
(65, 288, 1, 18, NULL),
(66, 2, 1, 29, 'Applied “Draft 1”'),
(67, 287, 1, 19, NULL),
(68, 288, 1, 19, NULL),
(69, 2, 1, 30, NULL),
(70, 287, 1, 20, NULL),
(71, 288, 1, 20, NULL),
(72, 2, 1, 31, NULL),
(73, 287, 1, 21, NULL),
(74, 288, 1, 21, NULL),
(75, 2, 1, 32, NULL),
(76, 287, 1, 22, NULL),
(77, 288, 1, 22, NULL),
(78, 2, 1, 33, 'Applied “Draft 1”'),
(79, 287, 1, 23, NULL),
(80, 288, 1, 23, NULL),
(81, 408, 1, 1, NULL),
(82, 2, 1, 34, 'Applied “Draft 1”'),
(83, 287, 1, 24, NULL),
(84, 288, 1, 24, NULL),
(85, 408, 1, 2, NULL),
(86, 2, 1, 35, 'Applied “Draft 1”'),
(87, 287, 1, 25, NULL),
(88, 288, 1, 25, NULL),
(89, 408, 1, 3, NULL),
(90, 2, 1, 36, 'Applied “Draft 1”'),
(91, 287, 1, 26, NULL),
(92, 288, 1, 26, NULL),
(93, 408, 1, 4, NULL),
(94, 2, 1, 37, NULL),
(95, 287, 1, 27, NULL),
(96, 288, 1, 27, NULL),
(97, 408, 1, 5, NULL),
(98, 2, 1, 38, 'Applied “Draft 1”'),
(99, 287, 1, 28, NULL),
(100, 288, 1, 28, NULL),
(101, 408, 1, 6, NULL),
(102, 473, 1, 1, NULL),
(103, 474, 1, 1, NULL),
(104, 475, 1, 1, NULL),
(105, 2, 1, 39, NULL),
(106, 287, 1, 29, NULL),
(107, 288, 1, 29, NULL),
(108, 408, 1, 7, NULL),
(109, 473, 1, 2, NULL),
(110, 474, 1, 2, NULL),
(111, 475, 1, 2, NULL),
(112, 2, 1, 40, 'Applied “Draft 1”'),
(113, 287, 1, 30, NULL),
(114, 288, 1, 30, NULL),
(115, 408, 1, 8, NULL),
(116, 553, 1, 1, NULL),
(117, 554, 1, 1, NULL),
(118, 555, 1, 1, NULL),
(119, 556, 1, 1, NULL),
(120, 2, 1, 41, NULL),
(121, 287, 1, 31, NULL),
(122, 288, 1, 31, NULL),
(123, 408, 1, 9, NULL),
(124, 553, 1, 2, NULL),
(125, 554, 1, 2, NULL),
(126, 555, 1, 2, NULL),
(127, 556, 1, 2, NULL),
(128, 2, 1, 42, 'Applied “Draft 1”'),
(129, 287, 1, 32, NULL),
(130, 288, 1, 32, NULL),
(131, 408, 1, 10, NULL),
(132, 554, 1, 3, NULL),
(133, 555, 1, 3, NULL),
(134, 556, 1, 3, NULL),
(135, 2, 1, 43, NULL),
(136, 287, 1, 33, NULL),
(137, 288, 1, 33, NULL),
(138, 408, 1, 11, NULL),
(139, 554, 1, 4, NULL),
(140, 555, 1, 4, NULL),
(141, 556, 1, 4, NULL),
(142, 2, 1, 44, 'Applied “Draft 1”'),
(143, 287, 1, 34, NULL),
(144, 288, 1, 34, NULL),
(145, 408, 1, 12, NULL),
(146, 554, 1, 5, NULL),
(147, 555, 1, 5, NULL),
(148, 556, 1, 5, NULL),
(149, 650, 1, 1, NULL),
(150, 651, 1, 1, NULL),
(151, 652, 1, 1, NULL),
(152, 2, 1, 45, ''),
(153, 287, 1, 35, NULL),
(154, 288, 1, 35, NULL),
(155, 408, 1, 13, NULL),
(156, 554, 1, 6, NULL),
(157, 555, 1, 6, NULL),
(158, 556, 1, 6, NULL),
(159, 650, 1, 2, NULL),
(160, 651, 1, 2, NULL),
(161, 652, 1, 2, NULL),
(162, 7, 1, 2, 'Applied “Draft 1”'),
(163, 7, 1, 3, ''),
(164, 676, 1, 1, ''),
(165, 678, 1, 1, ''),
(166, 680, 1, 1, ''),
(167, 682, 1, 1, ''),
(168, 682, 1, 2, 'Applied “Draft 1”'),
(169, 680, 1, 2, 'Applied “Draft 1”'),
(170, 678, 1, 2, 'Applied “Draft 1”'),
(171, 690, 1, 1, NULL),
(172, 690, 1, 2, NULL),
(173, 690, 1, 3, NULL),
(174, 690, 1, 4, NULL),
(175, 690, 1, 5, NULL),
(176, 690, 1, 6, NULL),
(177, 690, 1, 7, 'Applied “Draft 1”'),
(178, 690, 1, 8, NULL),
(179, 690, 1, 9, 'Applied “Draft 1”'),
(180, 690, 1, 10, 'Applied “Draft 1”'),
(181, 704, 1, 1, NULL),
(182, 704, 1, 2, NULL),
(183, 704, 1, 3, NULL),
(184, 704, 1, 4, 'Applied “Draft 1”'),
(185, 704, 1, 5, ''),
(186, 704, 1, 6, NULL),
(187, 704, 1, 7, NULL),
(188, 704, 1, 8, NULL),
(189, 704, 1, 9, NULL),
(190, 704, 1, 10, NULL),
(191, 704, 1, 11, 'Applied “Draft 1”'),
(192, 718, 1, 1, ''),
(193, 720, 1, 1, ''),
(194, 722, 1, 1, ''),
(195, 724, 1, 1, NULL),
(196, 724, 1, 2, NULL),
(197, 724, 1, 3, NULL),
(198, 724, 1, 4, 'Applied “Draft 1”'),
(199, 730, 1, 1, NULL),
(200, 730, 1, 2, NULL),
(201, 733, 1, 1, NULL),
(202, 733, 1, 2, NULL),
(203, 733, 1, 3, NULL),
(204, 733, 1, 4, NULL),
(205, 733, 1, 5, 'Applied “Draft 1”'),
(206, 733, 1, 6, NULL),
(207, 733, 1, 7, NULL),
(208, 733, 1, 8, NULL),
(209, 733, 1, 9, NULL),
(210, 733, 1, 10, NULL),
(211, 733, 1, 11, NULL),
(212, 733, 1, 12, NULL),
(213, 733, 1, 13, NULL),
(214, 733, 1, 14, NULL),
(215, 733, 1, 15, NULL),
(216, 733, 1, 16, NULL),
(217, 733, 1, 17, 'Applied “Draft 1”'),
(218, 730, 1, 3, NULL),
(219, 730, 1, 4, 'Applied “Draft 1”'),
(220, 730, 1, 5, 'Applied “Draft 1”'),
(221, 730, 1, 6, NULL),
(222, 730, 1, 7, NULL),
(223, 730, 1, 8, ''),
(224, 733, 1, 18, 'Applied “Draft 1”'),
(225, 733, 1, 19, 'Applied “Draft 1”'),
(226, 722, 1, 2, 'Applied “Draft 1”'),
(227, 720, 1, 2, 'Applied “Draft 1”'),
(228, 718, 1, 2, 'Applied “Draft 1”'),
(229, 722, 1, 3, ''),
(230, 678, 1, 3, 'Applied “Draft 1”'),
(231, 678, 1, 4, 'Applied “Draft 1”'),
(232, 678, 1, 5, 'Applied “Draft 1”'),
(233, 722, 1, 4, 'Applied “Draft 1”'),
(234, 682, 1, 3, 'Applied “Draft 1”'),
(235, 733, 1, 20, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' info stewardhospitalgh org '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' stedward '),
(2, 'slug', 0, 1, ' home page '),
(2, 'title', 0, 1, ' home page '),
(7, 'slug', 0, 1, ' serice '),
(7, 'title', 0, 1, ' service '),
(10, 'alt', 0, 1, ''),
(10, 'extension', 0, 1, ' jpg '),
(10, 'filename', 0, 1, ' asset6418619bdfc5b2 29089713 jpg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' carousel 1 '),
(11, 'alt', 0, 1, ''),
(11, 'extension', 0, 1, ' jpg '),
(11, 'filename', 0, 1, ' asset641861baee1a12 09346352 jpg '),
(11, 'kind', 0, 1, ' image '),
(11, 'slug', 0, 1, ''),
(11, 'title', 0, 1, ' carousel 1 '),
(27, 'alt', 0, 1, ''),
(27, 'extension', 0, 1, ' png '),
(27, 'filename', 0, 1, ' screenshot from 2023 03 23 09 47 35 png '),
(27, 'kind', 0, 1, ' image '),
(27, 'slug', 0, 1, ''),
(27, 'title', 0, 1, ' screenshot from 2023 03 23 09 47 35 '),
(28, 'alt', 0, 1, ''),
(28, 'extension', 0, 1, ' jpg '),
(28, 'filename', 0, 1, ' carousel 1 2023 03 26 191021 hhsq jpg '),
(28, 'kind', 0, 1, ' image '),
(28, 'slug', 0, 1, ''),
(28, 'title', 0, 1, ' carousel 1 '),
(29, 'alt', 0, 1, ''),
(29, 'extension', 0, 1, ' jpg '),
(29, 'filename', 0, 1, ' carousel 2 2023 03 26 191023 tijg jpg '),
(29, 'kind', 0, 1, ' image '),
(29, 'slug', 0, 1, ''),
(29, 'title', 0, 1, ' carousel 2 '),
(31, 'alt', 0, 1, ''),
(31, 'extension', 0, 1, ' jpg '),
(31, 'filename', 0, 1, ' carousel 1 2023 04 24 023146 syer jpg '),
(31, 'kind', 0, 1, ' image '),
(31, 'slug', 0, 1, ''),
(31, 'title', 0, 1, ' carousel 1 '),
(32, 'alt', 0, 1, ''),
(32, 'extension', 0, 1, ' jpg '),
(32, 'filename', 0, 1, ' carousel 2 2023 04 24 023147 ofja jpg '),
(32, 'kind', 0, 1, ' image '),
(32, 'slug', 0, 1, ''),
(32, 'title', 0, 1, ' carousel 2 '),
(287, 'slug', 0, 1, ''),
(288, 'slug', 0, 1, ''),
(407, 'alt', 0, 1, ''),
(407, 'extension', 0, 1, ' jpg '),
(407, 'filename', 0, 1, ' about jpg '),
(407, 'kind', 0, 1, ' image '),
(407, 'slug', 0, 1, ''),
(407, 'title', 0, 1, ' about '),
(408, 'slug', 0, 1, ''),
(435, 'alt', 0, 1, ''),
(435, 'extension', 0, 1, ' jpg '),
(435, 'filename', 0, 1, ' about 2023 04 24 134713 ugsi jpg '),
(435, 'kind', 0, 1, ' image '),
(435, 'slug', 0, 1, ''),
(435, 'title', 0, 1, ' about '),
(473, 'slug', 0, 1, ''),
(474, 'slug', 0, 1, ''),
(475, 'slug', 0, 1, ''),
(553, 'slug', 0, 1, ''),
(554, 'slug', 0, 1, ''),
(555, 'slug', 0, 1, ''),
(556, 'slug', 0, 1, ''),
(574, 'slug', 0, 1, ''),
(650, 'slug', 0, 1, ''),
(651, 'slug', 0, 1, ''),
(652, 'slug', 0, 1, ''),
(676, 'slug', 0, 1, ' service '),
(676, 'title', 0, 1, ' service '),
(678, 'slug', 0, 1, ' exporing peru by motorbike '),
(678, 'title', 0, 1, ' antinatal or postnatal service '),
(680, 'slug', 0, 1, ' ktms nile river rally '),
(680, 'title', 0, 1, ' pharmacy service '),
(682, 'slug', 0, 1, ' summer days in argentina '),
(682, 'title', 0, 1, ' out pateint service '),
(690, 'slug', 0, 1, ' service listing '),
(690, 'title', 0, 1, ' services '),
(704, 'slug', 0, 1, ' about us '),
(704, 'title', 0, 1, ' about us '),
(718, 'slug', 0, 1, ' the worlds best dental clinic that you can trust '),
(718, 'title', 0, 1, ' the worls best dental clinic that you can trust '),
(720, 'slug', 0, 1, ' good work '),
(720, 'title', 0, 1, ' good work '),
(722, 'slug', 0, 1, ' malesuada fames ac turpis egestas '),
(722, 'title', 0, 1, ' malesuada fames ac turpis egestas '),
(724, 'slug', 0, 1, ' blog listing '),
(724, 'title', 0, 1, ' news blog '),
(730, 'slug', 0, 1, ' contact us '),
(730, 'title', 0, 1, ' contact us '),
(733, 'slug', 0, 1, ' layout listing '),
(733, 'title', 0, 1, ' layout listing '),
(785, 'form', 0, 1, ' contact '),
(785, 'fromemail', 0, 1, ' samm yahoo com '),
(785, 'fromname', 0, 1, ' sammie '),
(785, 'slug', 0, 1, ''),
(785, 'subject', 0, 1, ' simman '),
(786, 'form', 0, 1, ' contact '),
(786, 'fromemail', 0, 1, ' nana gmail com '),
(786, 'fromname', 0, 1, ' nana '),
(786, 'slug', 0, 1, ''),
(786, 'subject', 0, 1, ' test ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home Page', 'homePage', 'single', 1, 'all', 'end', NULL, '2023-03-19 19:11:29', '2023-03-19 19:11:29', NULL, 'c0bf0db5-c4a5-4212-ae16-50546e209b56'),
(2, NULL, 'Services', 'services', 'channel', 1, 'all', 'end', NULL, '2023-03-19 19:15:01', '2023-04-25 05:28:06', NULL, '592a3596-a0e0-461d-bfdc-bd63731619c5'),
(3, NULL, 'Services Listing', 'servicesListing', 'single', 1, 'all', 'end', NULL, '2023-04-25 09:57:58', '2023-04-25 10:01:44', NULL, '4619320a-5672-4840-9ff5-f697dd2e0d58'),
(4, NULL, 'About Us', 'aboutUs', 'single', 1, 'all', 'end', NULL, '2023-04-25 11:48:37', '2023-04-25 11:48:37', NULL, 'c710dda9-161e-4720-ab3c-ef508310a05b'),
(5, NULL, 'News Blog', 'newsBlog', 'channel', 1, 'all', 'end', NULL, '2023-04-25 14:02:34', '2023-04-25 14:02:34', NULL, '171a5b1a-447a-4c4f-8446-61bb8deade78'),
(6, NULL, 'Blog Listing', 'blogListing', 'single', 1, 'all', 'end', NULL, '2023-04-25 20:52:21', '2023-04-25 20:52:21', NULL, 'daf1b712-9965-4d88-bd45-387e079d8106'),
(7, NULL, 'Contact Us', 'contactUs', 'single', 1, 'all', 'end', NULL, '2023-04-26 20:06:38', '2023-04-26 20:06:38', NULL, '21965bbe-a485-460b-bcd2-3cb57dfae29e'),
(8, NULL, 'Layout Listing', 'layoutListing', 'channel', 1, 'all', 'end', NULL, '2023-04-26 20:16:54', '2023-04-27 04:03:55', NULL, 'd3d87ec6-e6e4-4328-a770-93fb3faa88f3');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'index', 1, '2023-03-19 19:11:29', '2023-03-19 19:13:52', '0453a57b-8e7a-4067-a042-90cba72ac1d8'),
(2, 2, 1, 1, 'service/{slug}', 'service/_entry', 1, '2023-03-19 19:15:01', '2023-03-19 19:15:01', 'e76ce886-1327-4fa9-b1a0-462f53ccb95a'),
(3, 3, 1, 1, 'service', 'service/index', 1, '2023-04-25 09:57:58', '2023-04-25 09:57:58', '74f89185-d537-4491-a4fd-e7f143909694'),
(4, 4, 1, 1, 'about', 'about/index', 1, '2023-04-25 11:48:37', '2023-04-25 13:23:18', 'df2fe9c7-4852-4953-80e1-32fc30dd6dd4'),
(5, 5, 1, 1, 'blog/{slug}', 'blog/_entry', 1, '2023-04-25 14:02:34', '2023-04-25 14:02:34', '0135ba0b-75f4-400f-ad42-5e08fee44dc6'),
(6, 6, 1, 1, 'blog', 'blog/index.twig', 1, '2023-04-25 20:52:21', '2023-04-25 20:52:21', '32f1c1f0-1383-47fa-984b-71ec390ca123'),
(7, 7, 1, 1, 'contact', 'contact/index.twig', 1, '2023-04-26 20:06:38', '2023-04-26 20:06:38', '7c0dd13a-f162-471f-a06f-5acd6aefaee5'),
(8, 8, 1, 1, '_layout', '_layout/app.twig', 1, '2023-04-26 20:16:54', '2023-04-26 21:09:23', '74124f7e-e7b2-4f9a-b855-0410800aef46');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'P8QPsxwEAS9fqrpk2r40LiRMTprpKPJb7CxI9WzJyT4ykOStyc7EsaDxTERQn-OLZjZq8EJ15piWZkJKzId06-IrtJ8bRUhQ1XF2', '2023-03-19 04:12:01', '2023-03-19 05:29:27', '3c68e13c-0be3-46a9-b189-fb7612008e21'),
(2, 1, '54rzxFWKWhOCmk3h7itbCqaJ62CzAtzbs2XhEvAAFJ7mku7ETP6AyJdTzmnppJPPZLXuTBpcSap8gXfSLmHrW0ml1cd1aIKH3j8t', '2023-03-19 19:10:51', '2023-03-19 19:13:31', 'd978d5b2-187d-403d-a2a3-fcfa74aa3c89'),
(3, 1, 'ZhbN0xNqrm5yupiFwu7PHgRHGUa-1focxVkmonPf088zQVOOxlEm9iBbUq049HhWokwWf9ZDKY1Kp0xeBDkZx77C5GtrpdREw77C', '2023-03-19 19:13:31', '2023-03-19 19:14:36', '92d267da-7df6-490f-8079-30419cad2079'),
(4, 1, 'oSftYcDcwtNoUnyXDhuUZgiZ21MxTBCjnsXRSzA-oALcdNVfPLnNcHpKTO4UUFgP1V9dr8r6aZVYkHluq7Tky0sTvhVSV47IYMyc', '2023-03-19 19:14:36', '2023-03-19 19:15:23', '910ebb17-67e8-46e2-aed4-26742e70b697'),
(5, 1, 'VbYupkTY16wtbqjdoRV8esuqNhDjxrERTSS3VHb_9NerayuXgZN1kqN9mhI6kmPzyNB11C2IKbmXtDsxuETgnE5-NXWvypvvWy8v', '2023-03-19 19:15:23', '2023-03-19 19:18:10', 'c8aa37b0-7195-4b2f-9b72-5e18f177ba9a'),
(6, 1, 'LSKgPeoHWM3DeKbxiV9LIbPVnE1I0mh8ngh-tRxhn5aHwOZ61mSQCpB3SnU9fhKN71gwjaVwVq1s9N8WxmF0Jw_HWXKvu1FsGEro', '2023-03-19 19:17:14', '2023-03-19 19:17:14', 'a1b013ac-c212-44d0-80d0-ba91bddb1e28'),
(7, 1, '270farzbxbhjVMpMsbt8a8h4JcUavfjSK3wm3WeanRt1FcdG6onnYlQSX0RLnwXD1YyCMLdxhZKtsSPSEr1GtPqmaVZTOpNTTGW-', '2023-03-19 19:18:10', '2023-03-19 19:18:27', '5463fe58-b2e2-4cfa-97f6-3014bbb85de3'),
(8, 1, '8t8GIBqeImKrvCwGDaIN17Wmw03tCFx3x09ixruKuSvbsL1H3Zfw1tFtMN_VUi3YbIydnVtkjKo92Vz9FinNl6hA-3WIuz5jNKwt', '2023-03-19 19:18:27', '2023-03-19 19:19:35', '06943713-645c-48e5-ad17-369ff55c7459'),
(9, 1, 'BzySppcYD6BznymdGWsiYIaVLURsKh5zs1UP-6P-ZKtDBDP_ioc8WDp8nzvbL3yroklzKBcLUnaCC4W8UFCRywSgzR5ahPWhAuFV', '2023-03-19 19:19:36', '2023-03-19 19:24:52', 'c9e502a9-2a72-4331-b661-53e9b34e25c1'),
(10, 1, 'wuP220D62M64us-YwCXZW9WSMEZWwsHDfIMbtAmfLdt9s0lJ5ZRtJkZSILOtoA3ZLxYqiaZ_FtJuMMzbhPN_Pxd_uvvpAy4XS-28', '2023-03-19 19:20:56', '2023-03-19 19:21:00', '5b0c27ac-5c54-4e3c-8834-b499b33ef1f0'),
(11, 1, 'quXx4NxG02ikaKV0jnCq-sr5HZjQ3_aL7cFJAc_t9T0i5SK--V1xbglzmPbL-nyu15F4LAyUSMd0q7dhSagIbskOEjAFIhceX73j', '2023-03-19 19:21:57', '2023-03-19 19:21:57', '78a408bc-226e-49bc-837f-68763f3cd8c3'),
(12, 1, 'IMjDVTD_ja282inLEeUl5IiOpdrjjB1Zk_d6PGpHhbh-nx32_j0H_RZ96KgPTP0koUbf-dztnjMt9Kvl_pkW27Ul6KuOlIPPJiaI', '2023-03-19 19:22:58', '2023-03-19 19:23:01', '1889a68a-f7c1-4db0-8e58-00d5b1b36a15'),
(13, 1, 'xxy1DaOx56Jtpt8RHX57JfRFi2Rbh1hS1QplbydEs3xuQYhxUhPFVjIbbGrAy1AeZ1SlNt2o6pE-xrPynDGd6TgyW9_C4RICPhxw', '2023-03-19 19:23:59', '2023-03-19 19:23:59', 'dea7fdf7-4fa9-4689-b503-7d69b19cd2cd'),
(14, 1, 'zcX_0h2v8SqvFVSDZCSgHraES_aFVNuFbWfP5D3jj-kkBnxbxPn8Odvo3ATbQjPHI1XC6qey9IGnLnibOQWIJLaSB_u9FlHOlJmI', '2023-03-19 19:24:52', '2023-03-19 19:25:53', '0d6208a0-a7bc-4636-8f12-765103410c93'),
(15, 1, 'ZqPuBPJUHTbnPJV1vbNeqG2OiDxTPA5Bf3yChDDkLHX2QlB7vyNhG_0pHvDoM5y70rr3s3yZCTfqzqbZufqPAtPu2Jz6WiIM0ORv', '2023-03-19 19:25:53', '2023-03-19 19:27:40', '438d39dc-6405-4872-bc68-a81052ea21a1'),
(16, 1, 'OtEfzlb_aBGL-ZK5ZOU3HNVe4ux4uWxYet68t4ofxkDQZA8fPfcWs81Jo_dOM_qF21QQ-ZUpLJshs8W1hjYYoqnoTRrKwFY7Ne20', '2023-03-19 19:27:02', '2023-03-19 19:27:20', 'd49a53cb-d087-4b00-aacd-ef7b0554b6cb'),
(17, 1, '2J2JSE4hNtvzlswTE97Pi_w-3yy-P44sBGtRhZg3nz3v06OIXfseY2hHTiuyUpm7uDLQsu3oatnvUHN6HqKLeBInczz7gWVj98Uh', '2023-03-19 19:27:40', '2023-03-19 19:29:52', '3e094289-80d4-401d-9cbe-aeca6a2dfcd6'),
(18, 1, 'ZTnKtP-yGs9Z5TSQGyQh9HjyhFA_QL0B28ZkFAXR2GioshEvdobgwLRiCP5Ueyp9TUQHlXVPbkVbJpPf4aDyDHnpKYsBEKr1I-Ld', '2023-03-19 19:28:50', '2023-03-19 19:29:28', '12612d6a-b0cb-4d6f-8d91-5b14d6fb507f'),
(19, 1, 'FPfwzFe-daPhoAvz_CmzWbJ8Se41eYMbBCaeP-OFtybVkD2B9Jgv5YnhfqzKEeCB-lVRpNUkAmhNAYlMJb920A4ZsyJ5DxHzkIR0', '2023-03-19 19:29:52', '2023-03-19 19:31:21', '77a7a76c-d825-4163-bf8a-ea7ae2c13658'),
(20, 1, 'mbx4oz9vsriL8orzl_kfD0qc1AQEVSflcYkzpFfhstRtKumHw0V_hlv3gWMe3surF5JC4iu-HwfnuBf5xI--PHGkjh0R5wsG53cp', '2023-03-19 19:31:21', '2023-03-19 19:31:43', '8a04aa7c-7a4e-4f66-ae9d-18e7d3432481'),
(21, 1, 'pgFAhHUt_rD--dCTsYP9YA_JzcwXMm7mIrtA4ExafmUSN4VrEtc8okjqwJMT-dDyeh7IxBHpSaS46E8F2XgYtFLWRLS_ReGV6YXs', '2023-03-19 19:31:43', '2023-03-19 19:33:13', 'efb055ab-9528-4729-90ad-d4e38a789f4a'),
(22, 1, 'CKTt33DSnXNX0GbosuQwafPWlId5g9mB9ak7iViAw6ycnB2eY0fLVmcHnnJVdx-hh-h84GSfJ3CaLFofxLmJxzrnZ30-LGk_dLwP', '2023-03-19 19:33:13', '2023-03-19 19:33:48', '5ad8b5dd-d56e-43fd-ae89-c64233da5f29'),
(23, 1, 'pl0dZWcTKl6YmrS9N9TLeoGLao7GeinOaKpjRLgJQKFpWIvGGgLrz-j0SOtnhewg2GXmWP3dBOh8ai0J-SuwBmYPjx_ED5obLIT1', '2023-03-19 19:33:48', '2023-03-19 19:39:19', '1fb72ef6-a5f4-4e20-aa1b-1f5748812622'),
(24, 1, 'pUlxGNtpGDSz3KVL9CBl7vLqpGL9JNlQMEG9B1KYqKaeaD_04NRJvIixEhsOhq4uOxTO6f38fdyUWzeMwKUl0SZxYEqaHbbz-DrG', '2023-03-19 19:35:27', '2023-03-19 19:35:27', 'd6821591-a334-415f-b5ed-0ab861fb0d51'),
(25, 1, 'ciT2AUmRoVJG1aQTlun7K3p3K4CLrHDvdcQpSkJQHIWknvJfCqsVjNAaugG2oq4wlH0ZdC5f5KYiTTttRJJk6_g2CofRbD1A4-91', '2023-03-19 19:36:28', '2023-03-19 19:36:28', '25dc09fd-3e8e-44d9-97a7-f7c92030c36d'),
(26, 1, 'M0qR0QSu7DAEF1WwZjRr1uM66pDNgrccktLTsMFbi0wtep3lmwvVrLaKloLbU-hHu1fEmBr8WqfGe4fyPLPzAYhlL_W7XgOhyUfF', '2023-03-19 19:37:29', '2023-03-19 19:37:29', '31b2fa28-21f2-4b99-850b-b96f0017c9f1'),
(27, 1, 'aRNHFWs64VcGpRjfZKi6Jc23uQ8T92_lju3ld3eJkv1Ui84ObN0GZQZ65LxxXxwps7zVivDhitY9APxjcv8dkBS2F1-Y5PPiQ3A4', '2023-03-19 19:38:30', '2023-03-19 19:38:30', 'b601cfc8-7abd-4931-a0b9-7c11ae262841'),
(28, 1, 'sekh3Evp38Qb6hbl3iPDXIAX_AN-TgbNsRS8vC9mUTXe-Q5tT3d8sR-7Nw3pYW2uWHjP7yRBz5IWkLv3k6ZmQPpIfJc_Oj1a6mqZ', '2023-03-19 19:39:19', '2023-03-19 19:40:50', '5f9947fa-97a8-4893-8958-a5451d58f427'),
(29, 1, '9-liotnvsBo1WX7VCLGjFTS8gixlDD5lWnxDfY6qVkDF61Ndtf02Ix0YIwNNVtjKwNV3rKQ7XBHHIy4i5wGIqONGDWjWKpEU6f5m', '2023-03-19 19:40:32', '2023-03-19 19:40:40', '87a2ed15-cc37-4793-9c23-322fd94a851b'),
(33, 1, 'mlj2Y29nHyu0AJ6Qy18XZzT8sLm042VGK3tLgd393W60M_aiWXBW2oW9KTyxG-NsgHxG8_7rQSroJpRaTVruuPNNBDJ8AxO3no5-', '2023-03-26 16:42:48', '2023-03-26 16:49:21', '53ece97b-a9ca-4e9a-85bd-a468c23f35cd'),
(34, 1, 'NK7HlOzz1ZSD9Ei8zzYpUTYHBtQWP5UdIEfR_NSAr5RFDttxbaseuld1_O-QKFbNhAItBwXIDSBTu6hyQYa1ZElV8400H5jcsDvJ', '2023-03-26 18:43:32', '2023-03-26 18:51:00', '7df5de15-81c4-470b-a371-0adf3c53a502'),
(35, 1, 'JxSDFyud8YIqm-RMF4LMF7oG572KIrkj-OUBGqNfFaGKhdk-9O5dCdjIPqoFJz_DMtfhoQnDm_g0D7wCQ_-GVFFDiiUSL6m6v8s5', '2023-03-26 18:49:09', '2023-03-26 18:49:09', 'c951c18e-539b-4d2c-8c32-717683cf3517'),
(36, 1, 'ckvZkLBP-eSQknR7POh9yB_uVgDI82bxwoSD3BN2Kzg9jmbPJmQqPTPRRu8TbAPtEwBQhQgwND7HOI6dmEb_YV_N82P8L0ynaO3p', '2023-03-26 18:50:10', '2023-03-26 18:50:10', '62d3f791-51ab-4287-b5d9-697721a08075'),
(37, 1, 'NMd5aTp4DVbPMhajjVs0Z7bgRr1uELSxkCgBLXoGaRwJPQ5w-CBWE01PyWZi-7KcNcTsjuXY4jBmcx95U9QcLuAOQhsrFry8kvYU', '2023-03-26 18:51:00', '2023-03-26 18:53:07', 'f55338e5-ca2d-47bb-b567-0354803f865d'),
(38, 1, 'l3P00e0MUg7l6JCdj1FRcrthvP0GWShakfthOtAvslMUvje-gNxlaOCZL4dCi0CHu_qBjb58Gc71rWUXZOxvnxa-8__vahbaBr-Z', '2023-03-26 18:52:29', '2023-03-26 18:52:29', '0d11fb50-ae4a-48e2-85fd-169d3352b985'),
(39, 1, '08Rho2IMP2iDX5hanrLrChdiGtgDa-C8jgA9u4j19tWEjfKPBhJ4F5QANX4ixVNykjXmsMZwDFMmVz7lPpJHdrgEC5UXrD-HWg7z', '2023-03-26 18:53:07', '2023-03-26 18:54:11', 'c6d9b231-4915-4ad6-94b6-f0442662ac70'),
(40, 1, 'XApSZY37C7YX1PO1Y7EFw4eWNcT0tgKnZ0pu1YKV0x0G7CEJtqanNHZx8Nzr2tqvnCMO2cme8ShM14fWwaCGFgatx06Q9bLnwNeG', '2023-03-26 18:54:11', '2023-03-26 18:54:11', '55cc3826-ba08-4cbd-8e9f-6cab347ed673'),
(44, 1, '2bLyFiDGvJWshH-Y5bKBTLLvXcmZqOoALJLqi2PIPWK4O7MFsdc9d9v2FxCJeIEJo_6FDy-uwtBxXxePueNZVvgyrYfKGO3NAEhT', '2023-04-24 04:35:29', '2023-04-24 06:56:50', '4220c452-23ad-4bbf-9543-8d4e72f8c06e'),
(47, 1, 'CgP5jJ3NFXSJ2d1gIcmdtGT87SRAtMDl03r7MjCVTeuSqrwLBUrHKnygPSnRxKSAlN8tWA8wHS4iC8XYyiJZAicULoA9GsBYtesB', '2023-04-24 17:51:58', '2023-04-24 18:30:09', '0141557d-d499-4213-bf3f-01e8e253b9c4'),
(48, 1, 'VVllepWCPRNWdfcGxxv1iKLaVKYeOPlSD3KD6jgWEICUI1sR3T9oZr1BnrDokE2LesyhIFc_y8TR5pRYR8zOIcqCGFQK5jFuLAs_', '2023-04-24 18:30:09', '2023-04-25 03:20:48', 'c50353e0-155a-453e-866d-6f439837aeb4'),
(49, 1, 'kFfLSsl2hjYZ0yBn-iwNkrNdPM8FwuAXfAhc3rW4fUxCZYKEQ33B-vFK41vPs8gL4U0aO2FRl71UOHDKO6MCb5omDDDXR-yn-ekf', '2023-04-25 03:20:48', '2023-04-25 08:34:18', '9815b88c-b79e-434f-a664-f6003ce1cf60'),
(51, 1, '0SMq2zpe_mkBmYyPTwdbTNkLkFxwa2VoozkKxXu7KTq65ZaAzkAZVb-pNQIdxm9HxrjIDRS2Xo7SJvU_ldwZ40glzv6m_HV06Lxd', '2023-04-25 09:35:47', '2023-04-25 20:06:16', '622b4f5c-af4e-4359-8e0c-4bbd2892dd3d'),
(52, 1, 'Vfs-jhk4o98T5l3y7huPtzTLQxsFZ7OG4wb4tGC7qcGrI7KrX8QnAOsQaIhBFEARQw7PCXZVUqmZtTji5jtoTBccnej2NmfqXmw2', '2023-04-25 20:06:16', '2023-04-26 15:34:47', '5d128f4d-da53-4400-a99e-8135ea4f1a8b'),
(53, 1, '01-P1fae4pS8FnPPRygar_nCN7hM90wup_21jz8TL1m0g3kZT8JMj01JG7mTIw56dAPa0A4Yf9dHFfOVaHWQHk_0xVCXcgNdCEUG', '2023-04-26 15:34:47', '2023-04-26 18:34:20', '2375ac17-64bf-477a-96c3-74cc1d19cb5d'),
(54, 1, 'W5i_UYmpMVBBxRVd1V7ZgObZPsXJxDZEQSHa5rpwRCwpRO-yBheup90vMyY1RYflJxIciKatJk9zG43dIPYd6Hi8e8E6WGAHf8Gk', '2023-04-26 18:34:20', '2023-04-26 21:02:38', '1481a222-394b-4a42-a969-4bd974b0d85b'),
(55, 1, 'ebvNlzVS4PE9pC0AFxkJ2bcg-Y3QL3LakDCGvgUC88fEDJGOYM4LkXW7QS4FzO7YaFlqOggbhizpaaDx7b6Su5y-j3ikgSevJWKX', '2023-04-26 21:02:38', '2023-04-27 04:02:46', '2f0af788-a44a-4bdf-b22d-947b05d51c0f'),
(56, 1, '7L7ZqMcN5dRS7ltOV7YG-mpQ4JXOy4FUN9_Dcu1ZR4vCEZmKxlcQIDDJ-hOjch6Gj_nSxOc7MKCUVpfjm7tWExlkgRjZz1IgFmPP', '2023-04-27 04:02:46', '2023-04-27 09:59:51', '32f95e4a-a43f-487e-a2ad-da365acb2a93'),
(57, 1, 'Gu7l0AscvnUUFBbJjSIBUwksj1hSZoycFYlQm3pUIb4Lg3uPWNwh1eY41uNPxusWgG-_It97yUxUDMXsZkBbs9G3VHjFWIBvycCU', '2023-04-27 09:59:51', '2023-04-28 03:44:24', 'a4a6c846-3fce-43c9-a609-1e7f7b2c1fa5'),
(59, 1, 'AWVVBsjq0KGvLlnUqbQa1KbnMq7IK26SfeWNApjMmyppk4X_0Vi9J1Ksqf_2xqNOnf_hFfu9karMLHZvKYWygdS4LnViDC0-ky3S', '2023-04-28 03:48:53', '2023-04-28 04:22:21', 'dce77d02-810b-410c-b670-805f1a3cc91e'),
(60, 1, 'XKv_rkaY5FGfjZY7viSd32SOWPpGoRC-KL1rn8nAKmdTFRduPEr_YhmzIFSg2A2SrsLwIEIpF3bjVU-Y7VZAfPHT90WWZwdMoEaW', '2023-04-28 14:39:31', '2023-04-28 18:03:09', '76407e12-774b-4278-bf49-b744a1529790'),
(61, 1, 'B1WEVfTk0Rlkt82yGmnTIQjbd1BT5_RGi2dWwgo0ywZ9OK4TI4NTA3ObyXBnmj9kafoOhwzU_ouO8IL7OOkbLpz8be_EDJ_OKKdh', '2023-04-28 18:03:09', '2023-04-29 17:29:06', 'd2a69160-f794-4589-82b5-71fdeede3fc7'),
(62, 1, 'ONv_6VUIbjWuI3jmwPYOrjPdkD8H_KwhQGT3bNXlg24Wm6k85Ak47OffWuIYcNyIXvYcQlkVCzvJDoZcK7KSc3BYW2ySewP9A1YX', '2023-04-29 17:29:06', '2023-04-30 04:27:50', '6de09c71-b704-4cb2-912e-0f741479f536'),
(63, 1, 'SUSG3cwk9x9cbKy4HiTFh0_Xf6XKc7m7YZlDOEL3LEI4HC88h2oxTdEfe4jX8XsbObL7IfYTBzlr0VWb8-JXaKqbH4NJ3qcRdagk', '2023-04-30 04:27:50', '2023-04-30 17:09:22', '281ec103-b883-4460-9ebd-624669dab88e'),
(64, 1, 'z5QtbNar7MKWISzMigsBDDYmObZ3JIkRjkuUyWOVrox8VOrujJ3ktL9a6HGJtvN8X0yDnS4aCwpUGBRizLqoB5UdJOhdiqz3HCcs', '2023-04-30 17:09:22', '2023-05-01 02:39:42', '6192a5fd-ce24-44aa-bea2-f7904ee0736c'),
(65, 1, 'A2wxnBICiYXtkwknyYrW7Smy97PfcgpmKjBZqT67aFEO4dTxlNesh9gP4J8OIOyo1mQcbn2bgtKC2ONEJUQLfdmh8n-SIzl5ODBN', '2023-05-01 02:39:42', '2023-05-01 04:07:44', '6ab5db72-449f-46b0-8b3d-c7032578775b');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'St. Edward Hospital, Dwinyama', '2023-03-19 04:02:55', '2023-03-19 04:02:55', NULL, '61374186-d744-4e86-8921-df9aed4a3a13');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'true', 'St. Edward Hospital, Dwinyama', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2023-03-19 04:02:55', '2023-03-19 04:02:55', NULL, '7eb80008-e9ae-442d-990e-2c8d122476cd');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'LiEUS8DFIz6TF2vDJIUir4vY59dF5is0', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":7,\"siteId\":1,\"draftId\":1,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2023-03-20 19:27:52', '2023-03-19 19:27:52', '2023-03-19 19:27:52', '975efebd-80d2-42e4-bffe-16a8a14a10f8'),
(2, 'psa3QG2kJXhS9JzeLO4XzXDIk8ZIaapJ', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":7,\"siteId\":1,\"draftId\":1,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2023-03-20 19:28:56', '2023-03-19 19:28:56', '2023-03-19 19:28:56', '8be2e8f7-3f55-4e34-a4c3-40e6c609f2ec');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, 1, 0, 0, 0, 1, 'stedward', NULL, NULL, NULL, 'info@stewardhospitalgh.org', '$2y$13$NPefGntRxiQ/bWn5V3sNz.C6IrZN4uv1T0L1CGeMYRfvTBrP6dQ7O', '2023-05-01 02:39:42', NULL, NULL, NULL, '2023-04-24 02:23:59', NULL, 1, NULL, NULL, NULL, 0, '2023-03-19 04:02:56', '2023-03-19 04:02:56', '2023-05-01 02:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Carousel Image', NULL, '2023-03-20 13:35:58', '2023-03-20 13:44:34', '0d7a1f79-fafd-41f4-b255-d61a2fcf253a'),
(2, NULL, NULL, 'Temporary filesystem', NULL, '2023-03-20 13:37:31', '2023-03-20 13:37:31', '1498ef79-5f72-4840-9485-5a8eef96f660'),
(3, 2, NULL, 'user_1', 'user_1/', '2023-03-20 13:37:31', '2023-03-20 13:37:31', 'f229f66f-b59e-4598-8e61-8ea706885a08'),
(4, NULL, 2, 'Images', NULL, '2023-03-26 16:48:57', '2023-03-26 18:58:12', '50ca96d6-bb4e-45bb-bd3f-a31194c3f67c');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 3, 'Carousel Image', 'carouselImage', 'carouselImges', '', '', 'site', NULL, 1, '2023-03-20 13:35:58', '2023-03-20 14:25:41', '2023-03-26 16:45:28', '5d123939-2211-427d-adad-1c659ec569f1'),
(2, 4, 'Images', 'images', 'images', '', '', 'site', NULL, 2, '2023-03-26 16:48:56', '2023-03-26 18:58:12', NULL, 'db4d347e-39df-4603-ab9d-364a4cf7f159');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2023-03-19 04:12:01', '2023-03-19 04:12:01', '48f89b35-6891-4739-a601-d7b9159ee71e'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2023-03-19 04:12:01', '2023-03-19 04:12:01', '1ad454cc-66ef-4ce7-9c5d-bb5fac4d308f'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2023-03-19 04:12:01', '2023-03-19 04:12:01', '06ae629d-f1a6-41f0-94ad-6278976ace78'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2023-03-19 04:12:01', '2023-03-19 04:12:01', 'ddaa32b3-4f55-4945-9ea4-f9b222ef1bc8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bkhbkbditojkhivganogepztytshyrsibmfz` (`ownerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wzbuvxsvdxdpbrueahvfkusrrphcbhlligwy` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_htztnxgzpbubaexvbqbxmecwjvkxgvcikcoe` (`dateRead`),
  ADD KEY `fk_esupseiqdlmkhjmjuyptlhszbggqkyzoisbf` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dmntknprbqjuwvufjdddgteynjxcmujdfuio` (`sessionId`,`volumeId`),
  ADD KEY `idx_esqtjwzjsyjcxhlbouoarqfwfrmnqfqfveed` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wkzcxsoptnytkxrxdnqznkxjicrqbufmtdzz` (`filename`,`folderId`),
  ADD KEY `idx_rrkzxluieofrybbuyfkpnknllhnqprpirtvo` (`folderId`),
  ADD KEY `idx_ldkmerqlemjahqeecayeawgmmqqigpmanpoz` (`volumeId`),
  ADD KEY `fk_gkghoehcsapzgxvrkopjdzxntxcwanbgfhtz` (`uploaderId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jxwlbszierejjkwzfzgfkzozqtdffwhfigzu` (`groupId`),
  ADD KEY `fk_edlpmmwbkwkfgqidwatfdheeuryeeqcpylss` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hbbglnfihcltdinsfqbvgmstuipoxmgciose` (`name`),
  ADD KEY `idx_pvrozmsfopjbwtwhnchoqngsjfbpishyscmm` (`handle`),
  ADD KEY `idx_zmqurrorgxlcvdktgmyvprpfdkrmkgkcaavm` (`structureId`),
  ADD KEY `idx_ygaboooktiutnwqocthhwwqwpsrhasegogdq` (`fieldLayoutId`),
  ADD KEY `idx_doctvqlpcysieayackvnqciytyhxhiphjgfx` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dunmydqfwqnhsjmldjznkikjazsiisbviqeo` (`groupId`,`siteId`),
  ADD KEY `idx_ipprmjplsunmqgybccntyubosqlbpujkavld` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_knpptodvagovzmhfiddlupwjmouwckdljgot` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_krmeaxakbqfnmceypzcmxhkigsazzrizqbtp` (`siteId`),
  ADD KEY `fk_kcmwwefyktufhpfwfjmjmduoffwitifixlog` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_dnrnqqbtrmmnxqqaebftqtkqcvugxwbgvvpx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_mgvikfjgstmqlmuehxgfnhacfwtxkvcilnkj` (`siteId`),
  ADD KEY `fk_gqihqmaixroszhqfwpqwtjkcqrbnmwxsqzdt` (`fieldId`),
  ADD KEY `fk_yomgfugpfulqjhscbanczqgmzhfiwrxlbrpq` (`userId`);

--
-- Indexes for table `contactform_submissions`
--
ALTER TABLE `contactform_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cjytkknxxdcnwyqgnfrwasvlhpumruqvlyja` (`elementId`,`siteId`),
  ADD KEY `idx_bblhpqbdkxpaefbwupqyspgjpifvwqkscdfa` (`siteId`),
  ADD KEY `idx_adzdckmcnwryazwbjordaxfsypbmtvsdiwyf` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_twvlsgrfvqpxigzssrphhrbxgalwovunkehv` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ibkwhouffbtafwoeygbqpfmbwbynfwqwwfxu` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mdxlchsowpmycieirudwuncciqfqvizadsdb` (`creatorId`,`provisional`),
  ADD KEY `idx_semzytbzqpjcgvetcvefqrdqlnuwmnrzueiy` (`saved`),
  ADD KEY `fk_kxzejwxoolveeujvqdwxvqzfltjkdxebbals` (`canonicalId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orfhhzedglbhysvvkgtbbxdokajxqgaeyahw` (`dateDeleted`),
  ADD KEY `idx_leibflzjtgpzxohpsfnvzxfdexkasfcrdcvj` (`fieldLayoutId`),
  ADD KEY `idx_ddtzzydlvnkrqgplxdegicjoqlmndukozuxc` (`type`),
  ADD KEY `idx_vbxcyscsvmnvnhceibrfozzzgxfxqiylbioz` (`enabled`),
  ADD KEY `idx_bwoslznxiyevgsdtusfiilaujtqvwmbossys` (`canonicalId`),
  ADD KEY `idx_hihrntevodlmqtdqajxrlxxizhjdoalpmlab` (`archived`,`dateCreated`),
  ADD KEY `idx_utrahlahmtzorvhtlaxyfmuklzldzmocdarq` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_rjcxbpxsrjgvibbuclgdsonerowkqsxhdkad` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_nvjhdetgqbwayvagigjftodmvlcowbcgowsi` (`draftId`),
  ADD KEY `fk_fcwiqxvrcckmurpnhedbqhaqsxavqckpivqi` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_iobrpfpbdvpaadzkisoxplkdmrwqpomhreso` (`elementId`,`siteId`),
  ADD KEY `idx_djtpiqkdyxncvkowehaxhqvovcbzoheqfhiy` (`siteId`),
  ADD KEY `idx_wydgycixbpazgouvoohddeaxykrcyeasginx` (`slug`,`siteId`),
  ADD KEY `idx_ibctrpkwcehknbsdoxdntlxtnewycapacrzb` (`enabled`),
  ADD KEY `idx_omwuagqyhahfnulseonlfzheycybtoirvlht` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wmpcknwgphaeuczlrextuksmihcgpajzairm` (`postDate`),
  ADD KEY `idx_flrxflytbqqaxawqyqyjybjtyxfvyxlnsrqo` (`expiryDate`),
  ADD KEY `idx_bluzqrtzbsrkojpjwaezdhfisxhslhtfgnhj` (`authorId`),
  ADD KEY `idx_yqkjmnvhsukjssifoiiyafrlrnaqfzserbtu` (`sectionId`),
  ADD KEY `idx_wbwnzzjvdgxcinetznrshpncpamtrpfxydao` (`typeId`),
  ADD KEY `fk_mcxahjqvmmdygfhmvolzdezzxpvhxvdrorsj` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rtotekubwplyerzkeawtjghdcqjvimhxgbwc` (`name`,`sectionId`),
  ADD KEY `idx_ewemgwmgmwsvtqoyoysfvskcyolephtglwpw` (`handle`,`sectionId`),
  ADD KEY `idx_whqpvgekbbvuvduuvfqvuwwjpkpnzjbmqrws` (`sectionId`),
  ADD KEY `idx_vkyvxtadndlexxmrspiclrbapkyzksoakhau` (`fieldLayoutId`),
  ADD KEY `idx_dcnctwnsthruxjbgtjuklnarerkvsqjnpawe` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rsccwtarnteddorgykfrtmpbuxdnloleklxc` (`name`),
  ADD KEY `idx_qysseefnjtltddqoonpvxpkbqqseqncmgihm` (`dateDeleted`,`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wegusggzkzcnmaqlzduckybzgvjxeawkpbkl` (`layoutId`,`fieldId`),
  ADD KEY `idx_rfxkozqqvubsaxslgrbmbiqqelvzmmcfknvk` (`sortOrder`),
  ADD KEY `idx_awlsscrsdgjfuayhuwmxojrfglauzidsbsrd` (`tabId`),
  ADD KEY `idx_gajayygkfnifateqymwhwzymrjdulzetigdb` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fiwovduxnnajypgetffczpwgztrfvuaafuzd` (`dateDeleted`),
  ADD KEY `idx_tujuxtdjntkzudpoiwtdpvsujpnkncqohybw` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mktxcwpogmgmapnjhzcftuvtgdzuvdiluiiy` (`sortOrder`),
  ADD KEY `idx_pxhallwmbnvxhjaonrbjgvyejjvanpwwksgn` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opqnipfivrzgnudoysslshnfiumzyniabwdd` (`handle`,`context`),
  ADD KEY `idx_ydgmcemkaflgyzqbiwnrjgsdkfeacpphcsja` (`groupId`),
  ADD KEY `idx_sooksxorcgudovigsgiwliocnnrhqpfgiqmx` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lpfpbjttmgescoelzymndnbkmvxkufuxschb` (`name`),
  ADD KEY `idx_hgedbotoohoczlskaxllwrkubxcrigepvbyj` (`handle`),
  ADD KEY `idx_rbaiywswvhtbejwawmysrmutubecgmfnpbve` (`fieldLayoutId`),
  ADD KEY `idx_fvbvjvboixowqixvjkbqawgxwttgzgtywadl` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_noswhfqfqzzwafzzeyenuyiintsymhjvnryd` (`accessToken`),
  ADD UNIQUE KEY `idx_xazziwenlzzixjhcozvdlfruuevyhmvqtzoe` (`name`),
  ADD KEY `fk_qnfylanvzcgcdndulchfqhybuuhlafristrx` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zcuwwcbvvkhukhensbnpmrvfxalbptfztugn` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dgosreqctdgwsimjjyeyuxdqqhywwnrbzoof` (`name`),
  ADD KEY `idx_fhnawxbemfczfgkduuikcoghjxavjlavjygq` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tqqwfqprilvmyugvwfecrutfbtcpwhbnveou` (`primaryOwnerId`),
  ADD KEY `idx_mqxhbvggidvywnsvmjhyjsgzkxyzzeoeqqgi` (`fieldId`),
  ADD KEY `idx_mmrontodeqgzojpatddsxbuvxftatsydjfxt` (`typeId`);

--
-- Indexes for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD PRIMARY KEY (`blockId`,`ownerId`),
  ADD KEY `fk_dwbesvorzajakpdvqjslwskiyocezncckfde` (`ownerId`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xsgmsceiwuxoovjzjfczszxolutdmfsrmzjp` (`name`,`fieldId`),
  ADD KEY `idx_vlgvzkuklotyqjrzarceusygbmojalqyxxka` (`handle`,`fieldId`),
  ADD KEY `idx_pmqlywtibvbaxaomimmdoqogdpundxbljxae` (`fieldId`),
  ADD KEY `idx_bfxrnyrwwkvqoifoeddasiuxnuhkbihzdihu` (`fieldLayoutId`);

--
-- Indexes for table `matrixcontent_banners`
--
ALTER TABLE `matrixcontent_banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zwsikadrmpkfxtytsuexyzsolynzzqigqfgp` (`elementId`,`siteId`),
  ADD KEY `fk_vjecfulehqsvonymfkhbcekoxkdivjzhlflf` (`siteId`);

--
-- Indexes for table `matrixcontent_homeaboutus`
--
ALTER TABLE `matrixcontent_homeaboutus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ypmnfjbmwuscuylajsofmcozyyfooceuxwrj` (`elementId`,`siteId`),
  ADD KEY `fk_ocoswzcxrfniqgviyjvcdftsrwgartrfzwmw` (`siteId`);

--
-- Indexes for table `matrixcontent_homeservices`
--
ALTER TABLE `matrixcontent_homeservices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_bpgrvwrhavvqjmbjnlzqvcojsrdzmaaworgr` (`elementId`,`siteId`),
  ADD KEY `fk_tzyczqohdxbvkvabysjxhtsjtmufzytadzhr` (`siteId`);

--
-- Indexes for table `matrixcontent_staffimage`
--
ALTER TABLE `matrixcontent_staffimage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_bxbbuywznaszyidyrazhgfarapxuooacyleo` (`elementId`,`siteId`),
  ADD KEY `fk_ncspwrvyjnudwuaopuadumppgveatgjsfmbx` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_bvzrfhbfcdqdhjucwvnzlfquhbbplopnsudf` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_chjyllfqarezmujxyjdwvdusxgwupikrhqnx` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_miluwmhacncyvjlidgzpgdpfqpgzzftxbjuy` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_valclwxtrjdadjqtotntvhaqrqmolfzzahnj` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ixiubwvmxfmzbyhcpstxpxwfbecenuoqksfk` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_bqkcmisgxvlgbjuuvlbwiirfwgnlvcnwyzpw` (`sourceId`),
  ADD KEY `idx_nhrzgqyafzojontfjfkkuunrsynhxmjbquvo` (`targetId`),
  ADD KEY `idx_pgiufzjmjgricfvqduykzozvbpcermowtuny` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_frvbqervohmshyxsgyeujqeemtyelaxaxaey` (`canonicalId`,`num`),
  ADD KEY `fk_jalzbqhdzeqldaxanvzrruxgcxhwvcyxsttz` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_ebewvillkccezknazvuzeuznwkdpooajzdmy` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vdsohrkkvuoujxycpffaqygxngqzssmpnjhl` (`handle`),
  ADD KEY `idx_wdzcqvrzudkegmlvijhsofskzuukdkoiqzyo` (`name`),
  ADD KEY `idx_eznpfbpvoxurxgolbxlrunvmzhhzxrntuysw` (`structureId`),
  ADD KEY `idx_ncxbjtlwxrkacphazelxdlldivvetvbdlmfl` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qgnbcdpleclmqzxpyryhwsymsvpghskwggtw` (`sectionId`,`siteId`),
  ADD KEY `idx_kxnwgvkgxargaaiiokolqlawuxlqeeszfaxw` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vvsrtbolprxnvujhodsmpfxfwnowfdtkunog` (`uid`),
  ADD KEY `idx_ltjrctqsdjobxqpbhvrdlmplegncdpnjvyzl` (`token`),
  ADD KEY `idx_hcbwvmbiltxnwqlbchsqddugklyezflnpyuv` (`dateUpdated`),
  ADD KEY `idx_jybmpabgmthnjbjttrchmsparodxefonlrye` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_bqpndaqnuhbfgrzcjuunufnljmumojthczko` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wmvipifrarklrmzjpuslptgfjgfqegdleeoc` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sblfutadowtvkkeaoegkvnjssknxfitdjhsd` (`dateDeleted`),
  ADD KEY `idx_kxxvmmwsspksmqwrqkkbtgllfczbbmcuehky` (`handle`),
  ADD KEY `idx_dhxveozheyiwprkemjojojvmhvhzeoednzva` (`sortOrder`),
  ADD KEY `fk_xdhdgixlunlzmezaoiabvdwgckgynfobenqh` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ykqsppplzlzdbdcfyznagiuvjigrfjiiwltd` (`structureId`,`elementId`),
  ADD KEY `idx_xumuqboflbaeynnqunlojkowlklcoevuoffd` (`root`),
  ADD KEY `idx_cnrtcvgpdlslsgdllwgfffhieztgyyzwybwy` (`lft`),
  ADD KEY `idx_wqgehkxiucffbapqbjxheqrbgrgzijbfbmpw` (`rgt`),
  ADD KEY `idx_gxqtrymyksthodjwhedqvowzleihcvlevtvz` (`level`),
  ADD KEY `idx_utjicqayepgrsmwuababeljkgksubfgxtadw` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lnkpntrkkowjcycpvrypngqhumaijvfnerub` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mahuynmefsvapcezeerskwdiyflxjouihbru` (`key`,`language`),
  ADD KEY `idx_cqdsqbeqggujmwplsssqbtoekobnkrhaivni` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ohwqtzochwqdechxufuagpzeqhsgukghvapp` (`name`),
  ADD KEY `idx_llcidyllusrqtikhwmhcewaocihlnwblmdpz` (`handle`),
  ADD KEY `idx_yxpgxleroyrehruzgiikmmjbsfpmxqlfgork` (`dateDeleted`),
  ADD KEY `fk_jcuikqesgmvahmrvxqnzxoguvabjbvyruhtf` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wiqgmtrunleaqgkhsoxvjxqsnbcdlgiwwjos` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rqedvmebvaijvdgqakizczhghoefufvnqlfn` (`token`),
  ADD KEY `idx_abtdslwhizcjtlzssryvuwzvogturndnxfao` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bnwysglxoyhijtfknyosutyokwhqitfwunhq` (`handle`),
  ADD KEY `idx_ggxrngnhnfkskwnvqnnzybiimdovxvemnhhw` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_iskkpuzvnxekvappahjrzcmzmshgdyidtauq` (`groupId`,`userId`),
  ADD KEY `idx_jcstzvpfbpxmtoxsflczrdrptrkxnaspfwvm` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_axbiivdbzypymrqkyikuvwsyrinvvamrunuh` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wavjshlsorprmynmorxetyeykekusezctkgt` (`permissionId`,`groupId`),
  ADD KEY `idx_ptfdqrzqlqjzimxgmtuezrnhqmchnjfzemkz` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rqrragyvqbalrjnosnppdzjcgljxbtbayrgf` (`permissionId`,`userId`),
  ADD KEY `idx_worjtokgosfjvpparjbgeyeckxzbutaheqze` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_quvrvkapaulwlkyonrpqstifimmuljtnxbcz` (`active`),
  ADD KEY `idx_fnddcbivfuqetvwlfiwnmvrogrtgnaghkwpb` (`locked`),
  ADD KEY `idx_kinibojykpjgjupsslphlwfremcsbzzqgklo` (`pending`),
  ADD KEY `idx_ebyficxaqbmvaliokhvcveeuttsgobfsuruj` (`suspended`),
  ADD KEY `idx_suivrfvhonqlzrdkmzkrmbduxdglasmclzjd` (`verificationCode`),
  ADD KEY `idx_vdloawvzydvxbncbphluzwqrybcnnplfjhgn` (`email`),
  ADD KEY `idx_rqnztqwimkntrmmyrcjcqiqhtzevtlwzudvp` (`username`),
  ADD KEY `fk_sgzwsmfqhehcmrmcawfylchvmwoqijschkcr` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_niodzpjmpxbwybwurqmxnboxwzjiurowvxmo` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_xuotefqziybzbomsqelnfbnilpwjlegevwxg` (`parentId`),
  ADD KEY `idx_whhmbpywomzzqlwhmginpxowvfldnmfedgqt` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rmmxtrdoznldnwshnstawibnpbfhlauzvusl` (`name`),
  ADD KEY `idx_pwciwtlvjqghipvtbhqzbyrwrqgsiecqqqvv` (`handle`),
  ADD KEY `idx_vkwbsvvzyyfcsciisqyyboiiiqistxwxmuxb` (`fieldLayoutId`),
  ADD KEY `idx_fyxdpmepfasxbyplccmcilsktprktskqmdnr` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zqgrtnqaosifnxmonomxwvashklajdyuqopa` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `matrixcontent_banners`
--
ALTER TABLE `matrixcontent_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `matrixcontent_homeaboutus`
--
ALTER TABLE `matrixcontent_homeaboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `matrixcontent_homeservices`
--
ALTER TABLE `matrixcontent_homeservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `matrixcontent_staffimage`
--
ALTER TABLE `matrixcontent_staffimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1889;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_bkhbkbditojkhivganogepztytshyrsibmfz` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tvoihqmrtywlhoodnmulvvcxncxyzszpmfya` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_esupseiqdlmkhjmjuyptlhszbggqkyzoisbf` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ipsxrveefssbbwhbjikqaommrzaqlngjcory` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_mzbqdpkeggardfqwqzdweyjuvwolnmvsztag` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vjfkqvattitolublkwrutpfnxuagldkmhkrq` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_fqfokylduvdkagrxqbkdusmkvinktxyygifx` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gkghoehcsapzgxvrkopjdzxntxcwanbgfhtz` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pgjhbxtrwfjyeybokxohgbkhejrrbbxjifgu` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zzdcmakbsloapwlisubbxmiivgjrbvfeuywg` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_edlpmmwbkwkfgqidwatfdheeuryeeqcpylss` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_jywrullsybvjemczcctuwpddwknqipzngrmg` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ymfzetxyvfhsqjikzvdovxotagaougdrgjbg` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_kzboultdmgnihqzcztmztwwweyorooakzmbb` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_votvktiamrmivzpvnvnngsamgngicoxkuffc` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_coeekabmvftgxnrwlqprxgbcvixluaxordnz` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zsltfqlkfmnluydpunrtebziulcbbgtcxwsh` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_glrurdezxchxpyegaaphpfptxvqotfecvvoc` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kcmwwefyktufhpfwfjmjmduoffwitifixlog` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_krmeaxakbqfnmceypzcmxhkigsazzrizqbtp` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_gqihqmaixroszhqfwpqwtjkcqrbnmwxsqzdt` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jzljidjccgtohpwahoocxlycmtnntzwtbvta` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mgvikfjgstmqlmuehxgfnhacfwtxkvcilnkj` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yomgfugpfulqjhscbanczqgmzhfiwrxlbrpq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `contactform_submissions`
--
ALTER TABLE `contactform_submissions`
  ADD CONSTRAINT `fk_hicrfzqtvkhzdkajryjpzmqtyquyvygpfvar` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_kklqwjpykbdgoegnmrsgrodapxweyjcdbzsh` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vvjnrvddqflrjqboddhjvzdqeiikgtmovogr` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_twvlsgrfvqpxigzssrphhrbxgalwovunkehv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_kxzejwxoolveeujvqdwxvqzfltjkdxebbals` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_whwpgdgqdfounnkavyjpcfmcvodocxltrmro` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_cyiemghaqqddlyracpuypbytjytxskmeiurn` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_fcwiqxvrcckmurpnhedbqhaqsxavqckpivqi` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nvjhdetgqbwayvagigjftodmvlcowbcgowsi` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yragfylkjaeyjudunmebrdwxymtunwcakgnb` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_dpqamhczflyeyfjodgqfhwevyvyfutfqaubr` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_gmmafhnlojziuwwuvuolmrykyolisatwmref` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_enfgyxbdwoopwcbniytuggwfiovktuxrdfcg` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fuvfsqnjdrnxqpyeyqyolgjmgpbwkhbqgwbw` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kpghcrnbvwukfpxcafcxroeomotdfcosonss` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mcxahjqvmmdygfhmvolzdezzxpvhxvdrorsj` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xihqnwatubhppgwsekmnzbzlvcztaxyuqjme` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_agtkeropkrvqnqebdxwjhiftpllabohxhlas` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tsdqlrnufmgqtzdaugoewfhqaahtldkqqjsl` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_gcansowwvtegsqutbwjchmvpdwnrndlzuvge` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_phkzljxawmqrkmxecytzwlfgzmkwflhfryaj` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_unnzdctfyeaatbjlsybsxijywnxaoyykcrsr` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_jlihncagebwxztkdkzeemgtmdfcilspjpjct` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_brusmhlxjtrvjrcrpfdddzcjhzcohvtxiere` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_hutisaffajvdyzwlwibysoqqxdsipalkpdom` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qxxmksuefhlsvgsgtepbpetwumskujvubohh` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_qnfylanvzcgcdndulchfqhybuuhlafristrx` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_dpjozvtppjwhbuiohwykcvbcwatxoburtdvr` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vlxpoddwlkgelqcivawcjdlllpnlkuqvndxu` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wrkwbwcxkpsvravzvbkhcyxxdorqglcdjnwx` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wukqhbreaxoxoziknzlkczkyoujlamakardn` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD CONSTRAINT `fk_dwbesvorzajakpdvqjslwskiyocezncckfde` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sxjprwgqajernqlutqrncohvpgxrhwuzhykr` FOREIGN KEY (`blockId`) REFERENCES `matrixblocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_doozvruthfsdbrebrfltzqkejrwjvqlplwek` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mnktyhgabnigpijuvyszinjpydvmalwcgepj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_banners`
--
ALTER TABLE `matrixcontent_banners`
  ADD CONSTRAINT `fk_embwukwcxumjnplzvvvbhopnrfgdqqamhivr` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vjecfulehqsvonymfkhbcekoxkdivjzhlflf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_homeaboutus`
--
ALTER TABLE `matrixcontent_homeaboutus`
  ADD CONSTRAINT `fk_eyikjayfmnjmluumzrgxearaoswyckfbyumv` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ocoswzcxrfniqgviyjvcdftsrwgartrfzwmw` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_homeservices`
--
ALTER TABLE `matrixcontent_homeservices`
  ADD CONSTRAINT `fk_jupyxioiovhujganetftkdzydhpfcynhmuid` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tzyczqohdxbvkvabysjxhtsjtmufzytadzhr` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_staffimage`
--
ALTER TABLE `matrixcontent_staffimage`
  ADD CONSTRAINT `fk_ncspwrvyjnudwuaopuadumppgveatgjsfmbx` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_xbevbivphwxkwuozflglfcagidmvjffnewur` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_ggzvaccehmbmmbkoymvlqocnhvkjhctujwxs` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_gtfphafggavkqlxtcnzqvwmvpfjjdffrzkcb` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lwqkvhwvpjiyadcpnapwmfniraudboddgalo` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_jalzbqhdzeqldaxanvzrruxgcxhwvcyxsttz` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_qjlaajnrnxhgmivskijcttfqidloeffrjfoz` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_culmtilpkcklysznrwjqvcazxqpsqbkpchcl` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_huewhmwyubtpkpbtddszyvcqbrmktzbaswjs` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yfbpyxzlzvtfimufihcovhwfgmmawhvnmork` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_jpauuffybagdglavpnelaeafhxdmygliyllh` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_mgxtwoctcghmgcfzihllvjwsibaafkkxcvdb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_xdhdgixlunlzmezaoiabvdwgckgynfobenqh` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_kegunqmrlmjvtpikmcyrqzsiozdlyjwxkhsw` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_jcuikqesgmvahmrvxqnzxoguvabjbvyruhtf` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_qclscpxdznubbbledmxdisiujphjqhmshgos` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xwfaeiuxzpascxcoqulaubhwzklbhayvmtxe` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_cjblzbimsgjsllibuigkrvtwzwluqbhfpgqb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sdpozcwjbbukoyongnwlrakohoyuiespwzpe` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_itmqaeidibjqpekywsamddqukgnstmjmbzmx` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yzmpfyovdqlohoyejioowbpiuymhiosvwsyv` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_gsyyatzszkbyhjhrjccncnpykqhxizcczoga` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ojlharcbeimxfvxkkekbgerpvpdesaymrzay` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_tlxgliwuyrtdufqgfbdzizgssmdlkthgrrxg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_dkbkstlqlgqhsvozpnyaotalpipmyezbkyrz` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sgzwsmfqhehcmrmcawfylchvmwoqijschkcr` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_iosnzyxmmfviiogvmocxqxxvfxhjjxegqkyu` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pugcosgjhwwskrqfivynofbjwujddkzwaduj` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_rqmgjsrdrqgmxewddkmclvvgrgzrlgicefpi` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_migsgooxbcjfobaqnoijsuyqwqxgxsofuyyf` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
