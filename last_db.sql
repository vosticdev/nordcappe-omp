-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2025 at 11:31 PM
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
-- Database: `maryland`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL,
  `Username` varchar(25) NOT NULL DEFAULT 'Ime_Prezime',
  `Password` varchar(144) NOT NULL,
  `Staff` int(11) NOT NULL DEFAULT 0,
  `LastLogin` timestamp NOT NULL DEFAULT current_timestamp(),
  `RegisterDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(50) NOT NULL DEFAULT '@gmail.com',
  `SpecialRank` int(11) NOT NULL DEFAULT 0,
  `last_ip` varchar(16) DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `Username`, `Password`, `Staff`, `LastLogin`, `RegisterDate`, `Email`, `SpecialRank`, `last_ip`) VALUES
(11, 'Frosty', '123456', 4, '2023-11-29 17:25:33', '2023-11-29 17:25:33', 'fuck@off.com', 0, '0.0.0.0'),
(12, 'Nodislav', 'dino9099', 4, '2023-11-30 18:06:44', '2023-11-30 18:06:44', 'dino@mailer.com', 0, '0.0.0.0'),
(13, 'Nodislav_Aleksienko', 'ferid420', 4, '0000-00-00 00:00:00', '2023-12-01 09:19:52', 'ferid@mailer.com', 0, '127.0.0.1'),
(14, 'Vostic', 'Vostica23', 0, '2023-12-02 17:08:50', '2023-12-02 17:08:50', 'silent@gmail.com', 1, '127.0.0.1'),
(15, 'Ogi', '123456', 4, '2023-12-02 17:45:56', '2023-12-02 17:45:56', 'dexterwalton132@gmail.com', 0, '0.0.0.0'),
(16, 'Capital_Camora', 'ichbruderman1', 4, '2023-12-02 17:52:35', '2023-12-02 17:52:35', 'capital@samp.com', 0, '0.0.0.0'),
(17, 'Capital_Camoras', '12345678', 0, '2023-12-02 19:27:27', '2023-12-02 19:27:27', 'trake@smail.com', 0, '0.0.0.0'),
(18, 'djasa', '401253', 0, '2023-12-03 12:45:24', '2023-12-03 12:45:24', 'lazarradisavljevic5@gmail.com', 0, '0.0.0.0'),
(19, 'Klaus', 'klaus021', 4, '2023-12-03 13:51:35', '2023-12-03 13:51:35', 'dada@gmail.com', 0, '0.0.0.0'),
(20, 'Darko_Jovanovic', 'durant123', 0, '2023-12-03 16:34:47', '2023-12-03 16:34:47', 'ladjevacpc@gmail.com', 0, '0.0.0.0'),
(21, 'Nodislav_Alksienko', 'ferid420', 0, '2024-06-03 13:32:02', '2024-06-03 13:32:02', 'ferid420@gmail.com', 0, '0.0.0.0'),
(22, 'Casey_Skendy', '123456', 4, '2024-06-03 14:03:00', '2024-06-03 14:03:00', 'macka@gmail.com', 0, '0.0.0.0'),
(23, 'Vostic_Dev', 'Voki23', 0, '2024-10-28 15:42:50', '2024-10-28 15:42:50', 'vostic@gmail.com', 0, '0.0.0.0'),
(24, 'Daco_Delahunt', 'alemrjgh', 0, '2024-12-03 19:06:09', '2024-12-03 19:06:09', 'alem.cokoja@gmail.com', 0, '0.0.0.0'),
(25, 'Eros_Bosandzeros', '123321', 0, '2024-12-03 19:06:10', '2024-12-03 19:06:10', 'dsad@gmail.com', 0, '0.0.0.0'),
(26, 'Silva', '123321', 4, '2024-12-03 19:07:11', '2024-12-03 19:07:11', 'dsag@gmail.com', 0, '0.0.0.0'),
(27, 'Silva_Rose', 'Moosy1312', 0, '2024-12-07 22:46:46', '2024-12-07 22:46:46', 'kurac@gmail.com', 0, '0.0.0.0'),
(28, 'Casey', '123456', 5, '2024-12-07 22:50:11', '2024-12-07 22:50:11', 'caseymacka@whiskas.com', 0, '0.0.0.0'),
(29, 'Leon_Skandy', '123456', 5, '2024-12-07 23:13:21', '2024-12-07 23:13:21', '@.com', 0, '0.0.0.0'),
(30, 'Midori_Smith', '123123', 0, '2024-12-07 23:13:40', '2024-12-07 23:13:40', 'midori123@gmail.com', 0, '0.0.0.0'),
(31, 'Midori_Test', '123123', 0, '2024-12-07 23:16:34', '2024-12-07 23:16:34', 'dasdasd@gmail.com', 0, '0.0.0.0'),
(32, 'Frenkie_Deep', 'Burek12', 0, '2024-12-22 19:48:07', '2024-12-22 19:48:07', 'eldarhrnjictrovo@gmail.com', 0, '0.0.0.0'),
(33, 'Filip_Panic', 'feridKruh', 0, '2024-12-25 16:33:55', '2024-12-25 16:33:55', 'oasndnoasdnoa@massdk', 0, '0.0.0.0'),
(34, 'Gobejla_West', 'kokolo420', 0, '2024-12-26 14:32:38', '2024-12-26 14:32:38', 'ferid@kruh.ba', 0, '0.0.0.0'),
(35, 'Pinky_Test', '123123123', 0, '2025-01-01 19:58:30', '2025-01-01 19:58:30', 'test@gmail.com', 0, '0.0.0.0'),
(36, 'Frosty_Saints', '1234567', 0, '2025-01-01 20:16:08', '2025-01-01 20:16:08', 'fuckoff@forreal.com', 0, '0.0.0.0'),
(37, 'Frostyslav_Saints', '123456', 0, '2025-01-17 20:14:33', '2025-01-17 20:14:33', 'fuck@off3.com', 0, '0.0.0.0'),
(38, 'Fjerit_Olsun', 'kuracgejming', 0, '2025-01-19 18:30:20', '2025-01-19 18:30:20', 'feridAllah@skibidi.rizz', 0, '0.0.0.0'),
(39, 'Djura_Ajradinovski', 'skibidisolja', 0, '2025-01-19 20:54:52', '2025-01-19 20:54:52', 'skibidi@rizz.gyat', 0, '0.0.0.0'),
(40, 'Vostica1', 'Omaeva1312', 0, '2025-01-27 09:19:33', '2025-01-27 09:19:33', 'gas@gmail.com', 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `model` int(11) NOT NULL DEFAULT 19324,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `rot_x` float NOT NULL,
  `rot_y` float NOT NULL,
  `rot_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `model`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`) VALUES
(1, 19324, 805.339, -1320.21, 13.1228, 0, 0, 53.2619);

-- --------------------------------------------------------

--
-- Table structure for table `bankaccounts`
--

CREATE TABLE `bankaccounts` (
  `AccountID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `OwnerType` enum('Player','Faction','Bussiness','Government') NOT NULL DEFAULT 'Player',
  `Dollar` float NOT NULL DEFAULT 0,
  `Euro` float NOT NULL DEFAULT 0,
  `Pound` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bankaccounts`
--

INSERT INTO `bankaccounts` (`AccountID`, `OwnerID`, `OwnerType`, `Dollar`, `Euro`, `Pound`) VALUES
(1, 11, 'Player', 0, 0, 0),
(2, 11, 'Player', 0, 0, 0),
(3, 11, 'Player', 0, 0, 0),
(4, 4, 'Player', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `ban_date` datetime NOT NULL,
  `ban_expire` datetime DEFAULT NULL,
  `is_permanent` tinyint(1) DEFAULT 0,
  `ban_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`id`, `character_id`, `ban_reason`, `ban_date`, `ban_expire`, `is_permanent`, `ban_ip`) VALUES
(1, 4, 'zato', '2024-10-18 15:07:53', '2024-10-18 15:07:54', 0, NULL),
(2, 4, 'testiram', '2024-10-18 15:09:24', '2024-10-18 15:12:24', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `benches`
--

CREATE TABLE `benches` (
  `seat_ID` int(11) NOT NULL,
  `seat_x` float NOT NULL,
  `seat_y` float NOT NULL,
  `seat_z` float NOT NULL,
  `seat_a` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `registerID` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotX` float NOT NULL,
  `rotY` float NOT NULL,
  `rotZ` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `character_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `cName` varchar(24) NOT NULL,
  `cSkin` int(11) NOT NULL,
  `cGender` int(11) NOT NULL DEFAULT 0,
  `cAge` int(11) NOT NULL DEFAULT 18,
  `cJob` int(11) NOT NULL DEFAULT 0,
  `cState` int(11) NOT NULL DEFAULT 0,
  `cDollars` float NOT NULL DEFAULT 0,
  `cEuro` float NOT NULL,
  `cEGPound` float NOT NULL,
  `cLevel` int(11) NOT NULL DEFAULT 0,
  `cLastLogin` datetime NOT NULL,
  `cLastX` float NOT NULL DEFAULT 1401.78,
  `cLastY` float NOT NULL DEFAULT 1591.35,
  `cLastZ` float NOT NULL DEFAULT 12.0481,
  `cVW` int(11) NOT NULL DEFAULT 6,
  `cInt` int(11) NOT NULL DEFAULT 6,
  `cWanted` int(11) NOT NULL DEFAULT 0,
  `XP` int(11) NOT NULL DEFAULT 1,
  `Score` int(11) NOT NULL DEFAULT 0,
  `NeedXP` int(11) NOT NULL DEFAULT 1250,
  `Accent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`character_id`, `account_id`, `cName`, `cSkin`, `cGender`, `cAge`, `cJob`, `cState`, `cDollars`, `cEuro`, `cEGPound`, `cLevel`, `cLastLogin`, `cLastX`, `cLastY`, `cLastZ`, `cVW`, `cInt`, `cWanted`, `XP`, `Score`, `NeedXP`, `Accent`) VALUES
(4, 14, 'Vostic', 2, 0, 0, 0, 0, 16292800, 0, 0, 0, '2025-01-28 18:57:37', 1253.46, -1135.61, 23.8281, 0, 0, 0, 244, 3, 2813, 2),
(11, 13, 'Ferid_Olsun', 20, 0, 0, 0, 0, 6181270, 0, 0, 0, '2025-01-20 23:11:20', 1671.13, -1093.33, 23.9062, 0, 0, 0, 108, 2, 2813, 0),
(24, 32, 'Frenkie_Deep', 5, 0, 0, 0, 0, 899.55, 0, 0, 0, '2024-12-22 20:54:11', 1416.22, 445.523, 1081.5, 2, 18, 0, 120, 0, 1250, 0),
(25, 33, 'Fejda_Olsun', 12, 1, 0, 0, 0, 0, 0, 0, 0, '2024-12-25 17:34:40', 1401.78, 1592.49, 10.8125, 6, 6, 0, 1, 0, 1250, 0),
(26, 34, 'Ferid_Kulusevski', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-26 15:33:12', 831.325, -1341.15, 9.87468, 0, 0, 0, 1, 0, 1250, 0),
(27, 35, 'Pinky_Ljubav', 22, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-01 21:07:49', 2192.35, -1221.43, 24.6977, 0, 0, 0, 0, 0, 1250, 0),
(28, 36, 'Frostyslav_Agronom', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-01 22:12:33', 1845.15, -1447.72, 12.9719, 0, 0, 0, 0, 0, 1250, 0),
(29, 13, 'Joy_Silencce', 60, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-03 21:26:32', 1401.78, 1591.35, 12.0481, 6, 6, 0, 82, 0, 1250, 0),
(30, 11, 'Frosty_McSlav', 22, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-05 17:13:46', 208.326, -230.405, 1.77862, 0, 0, 0, 0, 0, 1250, 0),
(31, 37, 'Frostyslav_Saints', 26, 0, 0, 0, 1, 0, 0, 0, 0, '2025-01-17 21:15:30', 1411.1, 1588.87, 12.0481, 6, 6, 0, 0, 0, 1250, 0),
(32, 13, 'Mein_Kampf', 93, 1, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 21:17:00', 1421.72, 1587.31, 17.2366, 6, 6, 0, 0, 0, 1250, 0),
(33, 26, 'Silva_Rose', 2, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 22:08:13', 1404.78, 1624.14, 10.8125, 6, 0, 0, 231, 0, 1250, 0),
(34, 38, 'Kokolo_McGee', 60, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 19:32:41', 805.416, -1328.31, 13.4843, 0, 0, 0, 0, 0, 1250, 0),
(35, 39, 'Silva_Gay', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 22:08:14', 1813.37, -1580.35, 13.5469, 0, 0, 0, 0, 0, 1250, 0),
(36, 15, 'Ogi_Ivanov', 22, 0, 0, 0, 0, 100000000, 0, 0, 0, '2025-01-27 01:20:37', 838.58, -1345.91, 7.17879, 0, 0, 0, 0, 0, 1250, 0),
(37, 40, 'Omaeva_McCufin', 60, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-27 10:20:45', 1403.39, 1591.29, 12.0481, 6, 6, 0, 0, 0, 1250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `character_attachs`
--

CREATE TABLE `character_attachs` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `modelid` int(11) NOT NULL,
  `boneid` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rX` float NOT NULL,
  `rY` float NOT NULL,
  `rZ` float NOT NULL,
  `sX` float NOT NULL,
  `sY` float NOT NULL,
  `sZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `character_attachs`
--

INSERT INTO `character_attachs` (`id`, `character_id`, `modelid`, `boneid`, `x`, `y`, `z`, `rX`, `rY`, `rZ`, `sX`, `sY`, `sZ`) VALUES
(0, 11, 3044, 18, -0.064, -0.028, -0.009, 3.5, 1.19999, 75.2, 0.337006, 1, 0.373004),
(1, 11, 339, 1, 0.382999, -0.117, 0.103, 0, -125.6, -2.1, 1, 1, 1),
(2, 11, 339, 1, 0.402, -0.121, -0.108, 0, -67.6001, 171.3, 1, 1, 1),
(3, 11, 19140, 2, 0.099, 0.034, -0.003, 1.3, 91.7997, 87.6998, 1, 1.068, 1),
(4, 11, 19079, 15, 0.101, 0.054, 0.056, 139.4, 89.4002, 36.4, 1, 1, 1),
(0, 4, 19025, 2, 0.067, 0.021, 0.002, 87.6, 70.1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_disarms`
--

CREATE TABLE `character_disarms` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `reason` varchar(128) NOT NULL,
  `disarm_date` datetime DEFAULT current_timestamp(),
  `disarm_expire` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_locks`
--

CREATE TABLE `character_locks` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `lock_type` tinyint(4) NOT NULL,
  `lock_expire` datetime DEFAULT NULL,
  `lock_date` datetime DEFAULT current_timestamp(),
  `active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_quests`
--

CREATE TABLE `character_quests` (
  `characterid` int(11) NOT NULL DEFAULT 0,
  `Quest_1` int(11) NOT NULL DEFAULT 0,
  `Quest_2` int(11) NOT NULL DEFAULT 0,
  `Quest_3` int(11) NOT NULL DEFAULT 0,
  `Quest_4` int(11) NOT NULL DEFAULT 0,
  `Quest_5` int(11) NOT NULL DEFAULT 0,
  `Quest_6` int(11) NOT NULL DEFAULT 0,
  `Quest_7` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `character_quests`
--

INSERT INTO `character_quests` (`characterid`, `Quest_1`, `Quest_2`, `Quest_3`, `Quest_4`, `Quest_5`, `Quest_6`, `Quest_7`) VALUES
(4, 1, 1, 0, 1, 1, 0, 1),
(11, 1, 1, 1, 1, 1, 0, 1),
(19, 1, 0, 0, 0, 0, 0, 1),
(24, 0, 0, 0, 0, 0, 0, 1),
(25, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 0, 0, 0, 0, 0, 0),
(32, 0, 0, 0, 0, 0, 0, 0),
(33, 0, 0, 0, 0, 0, 1, 0),
(34, 0, 0, 0, 0, 0, 0, 0),
(35, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 0, 0, 0, 0, 0, 0),
(37, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `character_spawns`
--

CREATE TABLE `character_spawns` (
  `character_id` int(11) NOT NULL,
  `spawnType` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `character_spawns`
--

INSERT INTO `character_spawns` (`character_id`, `spawnType`) VALUES
(4, 1),
(11, 2),
(19, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_vip`
--

CREATE TABLE `character_vip` (
  `character_id` int(11) NOT NULL,
  `vip_level` int(11) DEFAULT 0,
  `vip_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `character_vip`
--

INSERT INTO `character_vip` (`character_id`, `vip_level`, `vip_expiry`) VALUES
(11, 0, NULL),
(33, 2, '2025-01-29 19:32:23'),
(34, 0, NULL),
(35, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE `containers` (
  `conID` int(11) NOT NULL,
  `con_x` float DEFAULT 0,
  `con_y` float DEFAULT 0,
  `con_z` float DEFAULT 0,
  `con_rx` float DEFAULT 0,
  `con_ry` float DEFAULT 0,
  `con_rz` float DEFAULT 0,
  `con_jnumber` mediumint(9) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_wallets`
--

CREATE TABLE `crypto_wallets` (
  `character_id` int(11) NOT NULL,
  `bitcoin` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `ethereum` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `litecoin` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `dogecoin` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `tether` decimal(18,8) NOT NULL DEFAULT 0.00000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crypto_wallets`
--

INSERT INTO `crypto_wallets` (`character_id`, `bitcoin`, `ethereum`, `litecoin`, `dogecoin`, `tether`) VALUES
(4, 0.00000000, 40.00000000, 0.00000000, 0.00000000, 0.00000000),
(11, 3.14285707, 3.14999914, 0.00000000, 26400.00000000, 0.00000000),
(19, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(24, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(25, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(26, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(27, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(28, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(29, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(30, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(31, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(32, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(33, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(34, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(35, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(36, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000),
(37, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `daily_records`
--

CREATE TABLE `daily_records` (
  `record_date` date NOT NULL,
  `player_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_records`
--

INSERT INTO `daily_records` (`record_date`, `player_count`) VALUES
('2025-01-19', 1),
('2025-01-20', 1),
('2025-01-26', 1),
('2025-01-27', 1),
('2025-01-28', 1),
('2025-01-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `factionID` int(11) NOT NULL,
  `factionName` varchar(30) NOT NULL,
  `factionType` int(11) NOT NULL,
  `factionBoss` int(11) NOT NULL,
  `factionRightHand` int(11) NOT NULL,
  `factionAreaX` float NOT NULL DEFAULT 0,
  `factionAreaY` float NOT NULL DEFAULT 0,
  `factionAreaZ` float NOT NULL DEFAULT 0,
  `factionInterior` int(11) NOT NULL DEFAULT 0,
  `factionVirtualWorld` int(11) NOT NULL DEFAULT 0,
  `factionHouseID` int(11) NOT NULL DEFAULT 0,
  `factionBunker` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`factionID`, `factionName`, `factionType`, `factionBoss`, `factionRightHand`, `factionAreaX`, `factionAreaY`, `factionAreaZ`, `factionInterior`, `factionVirtualWorld`, `factionHouseID`, `factionBunker`) VALUES
(1, 'Niggers Family', 1, 11, 26, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faction_members`
--

CREATE TABLE `faction_members` (
  `member_id` int(11) NOT NULL,
  `faction_id` int(11) NOT NULL,
  `faction_rank` int(11) NOT NULL,
  `faction_respekt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faction_members`
--

INSERT INTO `faction_members` (`member_id`, `faction_id`, `faction_rank`, `faction_respekt`) VALUES
(11, 1, 4, 1),
(33, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faction_police`
--

CREATE TABLE `faction_police` (
  `fPoliceID` int(11) NOT NULL,
  `fPoliceName` varchar(60) NOT NULL DEFAULT 'Police',
  `fPoliceShortName` varchar(30) NOT NULL DEFAULT 'PD',
  `fPoliceAdress` varchar(35) NOT NULL DEFAULT 'Nepoznata',
  `fPoliceState` varchar(30) NOT NULL,
  `fPoliceBoss` int(11) NOT NULL,
  `fPoliceType` int(11) NOT NULL DEFAULT 0,
  `fPoliceX` float NOT NULL DEFAULT 0,
  `fPoliceY` float NOT NULL DEFAULT 0,
  `fPoliceZ` float NOT NULL DEFAULT 0,
  `fPoliceExitX` float NOT NULL DEFAULT 246.66,
  `fPoliceExitY` float NOT NULL DEFAULT 65.8,
  `fPoliceExitZ` float NOT NULL DEFAULT 1003.64,
  `fPoliceInt` int(11) NOT NULL DEFAULT 6,
  `fPoliceVault` int(11) NOT NULL DEFAULT 0,
  `fPoliceMoney` int(11) NOT NULL DEFAULT 0,
  `fPoliceDirtMoney` int(11) NOT NULL DEFAULT 0,
  `fConfiscatedDrugs` int(11) NOT NULL DEFAULT 0,
  `fDutyPointX` float NOT NULL DEFAULT 0,
  `fDutyPointY` float NOT NULL DEFAULT 0,
  `fDutyPointZ` float NOT NULL DEFAULT 0,
  `fEquipmentX` float NOT NULL DEFAULT 0,
  `fEquipmentY` float NOT NULL DEFAULT 0,
  `fEquipmentZ` float NOT NULL DEFAULT 0,
  `fPoliceRank_1` varchar(64) NOT NULL DEFAULT 'Rank1',
  `fPoliceRank_2` varchar(64) NOT NULL DEFAULT 'Rank2',
  `fPoliceRank_3` varchar(64) NOT NULL DEFAULT 'Rank3',
  `fPoliceRank_4` varchar(64) NOT NULL DEFAULT 'Rank4',
  `fPoliceRank_5` varchar(64) NOT NULL DEFAULT 'Rank5',
  `fPoliceRank_6` varchar(64) NOT NULL DEFAULT 'Rank6',
  `fPoliceRank_7` varchar(64) NOT NULL DEFAULT 'Rank7',
  `fPoliceRank_8` varchar(64) NOT NULL DEFAULT 'Rank8',
  `fPoliceRank_9` varchar(64) NOT NULL DEFAULT 'Rank9',
  `fPoliceRank_10` varchar(64) NOT NULL DEFAULT 'Rank10',
  `fPoliceRank_11` varchar(64) NOT NULL DEFAULT 'Rank11',
  `fPoliceRank_12` varchar(64) NOT NULL DEFAULT 'Rank12',
  `fPoliceRank_13` varchar(64) NOT NULL DEFAULT 'Rank13',
  `fPoliceSkins1` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins2` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins3` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins4` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins5` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins6` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins7` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins8` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins9` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins10` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins11` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins12` int(11) NOT NULL DEFAULT 280,
  `fPoliceSkins13` int(11) NOT NULL DEFAULT 280
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faction_police`
--

INSERT INTO `faction_police` (`fPoliceID`, `fPoliceName`, `fPoliceShortName`, `fPoliceAdress`, `fPoliceState`, `fPoliceBoss`, `fPoliceType`, `fPoliceX`, `fPoliceY`, `fPoliceZ`, `fPoliceExitX`, `fPoliceExitY`, `fPoliceExitZ`, `fPoliceInt`, `fPoliceVault`, `fPoliceMoney`, `fPoliceDirtMoney`, `fConfiscatedDrugs`, `fDutyPointX`, `fDutyPointY`, `fDutyPointZ`, `fEquipmentX`, `fEquipmentY`, `fEquipmentZ`, `fPoliceRank_1`, `fPoliceRank_2`, `fPoliceRank_3`, `fPoliceRank_4`, `fPoliceRank_5`, `fPoliceRank_6`, `fPoliceRank_7`, `fPoliceRank_8`, `fPoliceRank_9`, `fPoliceRank_10`, `fPoliceRank_11`, `fPoliceRank_12`, `fPoliceRank_13`, `fPoliceSkins1`, `fPoliceSkins2`, `fPoliceSkins3`, `fPoliceSkins4`, `fPoliceSkins5`, `fPoliceSkins6`, `fPoliceSkins7`, `fPoliceSkins8`, `fPoliceSkins9`, `fPoliceSkins10`, `fPoliceSkins11`, `fPoliceSkins12`, `fPoliceSkins13`) VALUES
(1, 'Maryland Police Department', 'MLPD', 'Rockville, Maryland', 'Maryland', 4, 2, 327.207, -1515.58, 36.1391, 796.306, 1769.43, -61.9399, 6, 0, 0, 0, 0, 739.103, 1781.27, -61.9399, 741.049, 1763.12, -61.9399, 'Rank1', 'Rank2', 'Rank3', 'Rank4', 'Rank5', 'Rank6', 'Rank7', 'Rank8', 'Rank9', 'Rank10', 'Rank11', 'Rank12', 'Rank13', 280, 280, 280, 280, 280, 280, 280, 280, 280, 280, 280, 280, 280);

-- --------------------------------------------------------

--
-- Table structure for table `faction_vehicles`
--

CREATE TABLE `faction_vehicles` (
  `ID` int(11) NOT NULL,
  `factionID` int(11) NOT NULL,
  `factionType` int(11) NOT NULL DEFAULT 1,
  `fvModel` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `fvColor1` int(11) NOT NULL DEFAULT 1,
  `fvColor2` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faction_vehicles`
--

INSERT INTO `faction_vehicles` (`ID`, `factionID`, `factionType`, `fvModel`, `X`, `Y`, `Z`, `A`, `fvColor1`, `fvColor2`) VALUES
(1, 1, 2, 596, 333.97, -1537.74, 33.2459, 333.824, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `closed_x` float NOT NULL,
  `closed_y` float NOT NULL,
  `closed_z` float NOT NULL,
  `closed_rx` float NOT NULL,
  `closed_ry` float NOT NULL,
  `closed_rz` float NOT NULL,
  `open_x` float NOT NULL,
  `open_y` float NOT NULL,
  `open_z` float NOT NULL,
  `open_rx` float NOT NULL,
  `open_ry` float NOT NULL,
  `open_rz` float NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `faction_id` int(11) NOT NULL DEFAULT 0,
  `police_division` int(11) NOT NULL DEFAULT 0,
  `close_time` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`id`, `model`, `closed_x`, `closed_y`, `closed_z`, `closed_rx`, `closed_ry`, `closed_rz`, `open_x`, `open_y`, `open_z`, `open_rx`, `open_ry`, `open_rz`, `type`, `owner_id`, `faction_id`, `police_division`, `close_time`) VALUES
(1, 2933, 800.43, -1332.62, 14.0628, 0, 0, 0, 800.43, -1332.62, 10.6928, 0, 0, 0, 1, 4, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `hOwner` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Adress` varchar(50) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `Safe` tinyint(1) NOT NULL,
  `Money` int(11) NOT NULL,
  `Weed` int(11) NOT NULL,
  `Cocaine` int(11) NOT NULL,
  `Extazy` int(11) NOT NULL,
  `WardX` float NOT NULL,
  `WardY` float NOT NULL,
  `WardZ` float NOT NULL,
  `FridgeX` float NOT NULL,
  `FridgeY` float NOT NULL,
  `FridgeZ` float NOT NULL,
  `Int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `hOwner`, `Price`, `Type`, `Adress`, `Locked`, `PosX`, `PosY`, `PosZ`, `ExitX`, `ExitY`, `ExitZ`, `Safe`, `Money`, `Weed`, `Cocaine`, `Extazy`, `WardX`, `WardY`, `WardZ`, `FridgeX`, `FridgeY`, `FridgeZ`, `Int`) VALUES
(1, 4, 90000, 1, 'Jefferson, Maryland', 0, 2209.56, -1239.72, 24.1496, 224.28, 1289.19, 1082.14, 0, 0, 0, 0, 0, 224.28, 1289.19, 1082.14, 224.28, 1289.19, 1082.14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `PlayerID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL DEFAULT 50,
  `ItemQuantity` int(11) NOT NULL DEFAULT 10,
  `ItemType` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`PlayerID`, `ItemID`, `ItemQuantity`, `ItemType`) VALUES
(11, 54, 1, 4),
(28, 50, 4, 2),
(28, 51, 4, 2),
(28, 70, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `inv_containers`
--

CREATE TABLE `inv_containers` (
  `ID` int(11) NOT NULL,
  `propID` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Item` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inv_containers`
--

INSERT INTO `inv_containers` (`ID`, `propID`, `Type`, `Item`, `ItemType`, `Quantity`, `Model`, `posX`, `posY`, `posZ`) VALUES
(12, 0, 3, 53, 2, 1, 19570, 1147.77, -1205.74, 18.1734),
(15, 0, 3, 1, 3, 3, 331, 2000.73, -1255.55, 22.8844);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Uniform` int(11) NOT NULL,
  `UniformX` float NOT NULL,
  `UniformY` float NOT NULL,
  `UnifromZ` float NOT NULL,
  `PositionX` float NOT NULL,
  `PositionY` float NOT NULL,
  `PositionZ` float NOT NULL,
  `Interior` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `life_insurance`
--

CREATE TABLE `life_insurance` (
  `character_id` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL DEFAULT current_timestamp(),
  `expiry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `life_insurance`
--

INSERT INTO `life_insurance` (`character_id`, `purchase_date`, `expiry`) VALUES
(11, '2025-01-20 23:11:14', '2025-01-20 23:11:14'),
(19, '2024-12-26 19:53:08', '2024-12-26 19:53:08'),
(24, '2024-12-22 20:49:13', '2024-12-22 20:49:13'),
(25, '2024-12-25 17:34:36', '2024-12-25 17:34:36'),
(26, '2024-12-26 15:33:00', '2024-12-26 15:33:00'),
(29, '2025-01-03 21:26:32', '2025-01-03 21:26:32'),
(30, '2025-01-05 17:14:45', '2025-01-05 17:14:45'),
(31, '2025-01-17 21:15:24', '2025-01-17 21:15:24'),
(32, '2025-01-17 21:16:20', '2025-01-17 21:16:20'),
(33, '2025-01-19 22:06:00', '2025-01-19 22:06:00'),
(34, '2025-01-19 19:30:58', '2025-01-19 19:30:58'),
(35, '2025-01-19 22:05:35', '2025-01-19 22:05:35'),
(36, '2025-01-29 21:50:04', '2025-01-29 21:50:04'),
(37, '2025-01-27 10:20:29', '2025-01-27 10:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `log_anticheat`
--

CREATE TABLE `log_anticheat` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_anticheat`
--

INSERT INTO `log_anticheat` (`log_str`, `date`) VALUES
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-11 18:26:13'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-13 22:23:20'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-15 15:07:29'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-15 15:17:59'),
('ANTICHEAT-LOG:  Vostic se uspjesno prijavio kao RCON | IP: -363438822', '2024-12-15 16:47:16'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-15 17:07:28'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-19 18:52:16'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-20 19:15:04'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-20 19:18:01'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-20 19:19:32'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-21 13:14:49'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-21 13:17:09'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-21 17:15:31'),
('ANTICHEAT-LOG:  Silva se uspjesno prijavio kao RCON | IP: -1532966630', '2024-12-21 19:25:26'),
('ANTICHEAT-LOG:  Silva se uspjesno prijavio kao RCON | IP: -1532966630', '2024-12-21 19:41:14'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-22 09:33:30'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-22 09:40:43'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-22 13:20:41'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-22 15:29:33'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-23 18:51:47'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-23 19:00:05'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-23 19:04:31'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-23 19:13:44'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-23 21:46:46'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-24 14:32:32'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-24 14:34:45'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-24 14:38:52'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se pokusao prijaviti kao RCON | IP: 16777343', '2024-12-24 21:19:45'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-24 21:19:46'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-25 12:13:54'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-30 08:26:29'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-30 08:30:19'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-30 11:50:02'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-31 17:20:51'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se pokusao prijaviti kao RCON | IP: 16777343', '2024-12-31 19:49:39'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-31 19:49:42'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2024-12-31 20:33:28'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-01 09:45:23'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-01 17:47:35'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-01 21:00:44'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-01 21:55:21'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-01 22:09:40'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-03 09:29:09'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-05 16:30:51'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-05 16:38:02'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-05 16:58:00'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-06 16:52:35'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-14 21:55:16'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-17 14:39:14'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 11:51:32'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 11:57:09'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 11:58:47'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 12:01:17'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 12:04:40'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 12:06:16'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-18 18:11:42'),
('ANTICHEAT-LOG:  Silva se pokusao prijaviti kao RCON | IP: -1532966630', '2025-01-19 21:55:02'),
('JAIL | Silva je pusten iz alcatraza! | ODSLUZENA KAZNA', '2025-01-19 21:57:20'),
('JAIL | Djura_Ajradinovski je pusten iz alcatraza! | ODSLUZENA KAZNA', '2025-01-19 22:08:11'),
('ANTICHEAT-LOG:  Nodislav_Aleksienko se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-20 22:47:00'),
('ANTICHEAT-LOG:  Vostic se uspjesno prijavio kao RCON | IP: 16777343', '2025-01-26 10:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `log_commands`
--

CREATE TABLE `log_commands` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_commands`
--

INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Vostic je iskoristio komandu /createrent', '2024-12-09 10:04:48'),
('COMMAND:  Vostic je iskoristio komandu /createrent 522 560 451', '2024-12-09 10:04:55'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 11:51:06'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 11:51:09'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 11:51:11'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-09 11:51:13'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-09 11:51:14'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 11:51:16'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 12:04:40'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 12:04:48'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 12:05:28'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-09 12:10:00'),
('COMMAND:  Vostic je iskoristio komandu /clear', '2024-12-09 12:10:16'),
('COMMAND:  Vostic je iskoristio komandu /unret', '2024-12-09 12:10:18'),
('COMMAND:  Vostic je iskoristio komandu /unrent', '2024-12-09 12:10:23'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-09 12:10:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jail', '2024-12-09 21:48:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jail 0 1 10', '2024-12-09 21:48:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2295.757,-3588.850,-14.594', '2024-12-09 21:51:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2295.757,-3588.850,-14.594', '2024-12-09 21:51:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2295.757,-3588.850,20.594', '2024-12-09 21:51:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 0 0', '2024-12-09 21:54:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-09 21:55:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-09 21:55:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-09 21:55:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-09 21:55:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-09 21:55:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-09 21:55:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 20', '2024-12-09 21:56:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1430.018310, 1507.042358, 32.806980', '2024-12-09 21:56:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1430.018310, 1507.042358, 32.806980', '2024-12-09 21:56:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-09 21:56:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:19:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:19:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:19:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:19:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:19:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-11 18:21:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 0 0', '2024-12-11 18:23:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-11 18:25:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness', '2024-12-11 18:26:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness', '2024-12-11 18:26:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness 7Eleven 1 1 900', '2024-12-11 18:26:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -2257.441894, -1743.539916, 487.737579', '2024-12-11 18:34:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 50.001941, -1528.682739, -0.777544', '2024-12-11 18:35:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 50.001941, -1528.682739, -0.777544', '2024-12-11 18:35:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 50.001941, -1528.682739, 5.777544', '2024-12-11 18:35:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 8', '2024-12-11 18:37:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1358.160400, 1501.470703, 101.226661', '2024-12-11 18:37:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:38:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:38:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:38:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:38:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 20', '2024-12-11 18:39:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 20', '2024-12-11 18:39:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-11 18:39:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956', '2024-12-11 18:39:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -849.774291, 89.610961, 46.717956w', '2024-12-11 18:39:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -850.774291, 89.610961, 46.717956w', '2024-12-11 18:39:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -850.774291, 89.610961, 46.717956', '2024-12-11 18:39:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-11 18:39:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -850.774291, 89.610961, 46.717956', '2024-12-11 18:40:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2838.814453, 1330.542480, 19.785236', '2024-12-11 18:41:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-11 18:41:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-11 18:41:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1687.083740, -1450.942871, 12.507729', '2024-12-11 18:42:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1687.083740, -1450.942871, 12.507729', '2024-12-11 18:42:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1687.083740, -1460.942871, 12.507729', '2024-12-11 18:42:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1687.083740, -1450.942871, 12.507729', '2024-12-11 18:42:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1687.083740, -1450.942871, 15.507729', '2024-12-11 18:42:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 15', '2024-12-11 18:43:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 4.941112, 1501.662963', '2024-12-11 18:43:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 5.941112, 1501.662963', '2024-12-11 18:43:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 9.941112, 1501.662963', '2024-12-11 18:43:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 4.941112, 1501.662963', '2024-12-11 18:43:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 4.941112, 1521.662963', '2024-12-11 18:43:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 4.941112, 1511.662963', '2024-12-11 18:43:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 4.941112, 1519.662963', '2024-12-11 18:43:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 9.941112, 1519.662963', '2024-12-11 18:43:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 9.941112, 1510.662963', '2024-12-11 18:44:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 200.901672, 9.941112, 1505.662963', '2024-12-11 18:44:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 199.687561, 4.908154, 1504.100097', '2024-12-11 18:44:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 17', '2024-12-11 18:45:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -2139.315673, -1401.012939, 1.974555', '2024-12-11 18:45:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-11 18:46:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-13 15:24:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 45000 1', '2024-12-13 15:24:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-13 15:25:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 45000 1', '2024-12-13 15:26:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu //q', '2024-12-13 22:09:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-13 22:10:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /prerada', '2024-12-13 22:11:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /prerada', '2024-12-13 22:11:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /slap 0', '2024-12-13 22:15:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1401.7648,-32.3919,10000.0106', '2024-12-13 22:16:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1401.7648,-32.3919,1000.0106', '2024-12-13 22:16:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1401.7648,-32.3919,1005.0106', '2024-12-13 22:16:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-13 22:17:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-13 22:17:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-13 22:23:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpackw', '2024-12-13 22:23:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpackw', '2024-12-13 22:23:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-13 22:23:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-13 22:23:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-13 22:23:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1401.7648,-32.3919,1005.0106', '2024-12-13 22:24:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-14 21:45:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-14 21:54:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-14 21:54:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-14 22:06:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-15 10:41:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-15 10:42:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 411 1 1', '2024-12-15 10:42:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-15 10:43:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 10:43:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 10:44:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /winter', '2024-12-15 10:44:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 541', '2024-12-15 10:46:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 541', '2024-12-15 10:46:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitro', '2024-12-15 10:46:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 541', '2024-12-15 10:47:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 10:48:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 541 1 1', '2024-12-15 11:07:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /winter', '2024-12-15 11:08:45'),
('COMMAND:  Vostic je iskoristio komandu /jetpack', '2024-12-15 12:24:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-15 12:24:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2024-12-15 12:24:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /slap 1', '2024-12-15 12:24:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 12:25:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 12:25:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney', '2024-12-15 13:04:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney 0 1000 1', '2024-12-15 13:04:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 13:06:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 13:06:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-15 13:07:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-15 13:10:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 13:10:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 13:11:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 13:12:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 13:14:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1285.8971,10.0347,1004.2898', '2024-12-15 13:15:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1285.8971,5.0347,1004.2898', '2024-12-15 13:15:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 13:18:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 13:19:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 -1', '2024-12-15 14:39:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw0 -1', '2024-12-15 14:39:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 -1', '2024-12-15 14:39:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-15 14:40:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-15 14:40:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1220.2867,-2397.0332,10.8593', '2024-12-15 14:40:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 14:40:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowertakejob', '2024-12-15 14:40:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1215.3478,-2369.3628,10.7937', '2024-12-15 14:41:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu //q', '2024-12-15 14:53:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 14:55:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 14:55:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 14:55:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 14:55:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 14:55:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 14:56:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:02:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:02:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:03:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-15 15:07:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:07:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:07:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:08:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:08:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:10:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:11:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:11:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:12:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:13:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:13:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:13:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:13:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 15:13:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 15:13:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:13:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:15:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:15:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:15:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:18:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:18:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:20:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:21:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 15:21:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitro', '2024-12-15 15:21:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitro', '2024-12-15 15:22:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mowervehicle', '2024-12-15 15:23:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:23:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /poort', '2024-12-15 15:38:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:38:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /otkaz', '2024-12-15 15:40:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 15:44:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mower', '2024-12-15 15:44:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /poslovi', '2024-12-15 15:46:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gmenu', '2024-12-15 15:51:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /recolorer', '2024-12-15 15:51:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:00:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-15 16:01:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-15 16:01:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 1', '2024-12-15 16:01:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 2', '2024-12-15 16:01:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 3', '2024-12-15 16:01:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 4', '2024-12-15 16:01:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 5', '2024-12-15 16:01:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 6', '2024-12-15 16:01:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 7', '2024-12-15 16:01:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 8', '2024-12-15 16:01:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 9', '2024-12-15 16:02:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 10', '2024-12-15 16:02:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 11', '2024-12-15 16:02:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 12', '2024-12-15 16:02:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 13', '2024-12-15 16:02:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 14', '2024-12-15 16:02:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 15', '2024-12-15 16:02:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 16', '2024-12-15 16:02:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 17', '2024-12-15 16:02:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 18', '2024-12-15 16:02:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 19', '2024-12-15 16:02:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 20', '2024-12-15 16:02:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 21', '2024-12-15 16:02:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 22', '2024-12-15 16:02:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 23', '2024-12-15 16:02:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 24', '2024-12-15 16:02:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 25', '2024-12-15 16:02:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 26', '2024-12-15 16:02:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 26', '2024-12-15 16:02:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 27', '2024-12-15 16:02:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 28', '2024-12-15 16:02:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 29', '2024-12-15 16:02:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 30', '2024-12-15 16:02:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 31', '2024-12-15 16:02:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 313', '2024-12-15 16:02:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 32', '2024-12-15 16:02:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 34', '2024-12-15 16:02:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 180', '2024-12-15 16:02:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 181', '2024-12-15 16:02:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 182', '2024-12-15 16:02:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 183', '2024-12-15 16:02:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 184', '2024-12-15 16:02:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 185', '2024-12-15 16:02:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 186', '2024-12-15 16:02:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 187', '2024-12-15 16:02:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 188', '2024-12-15 16:02:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 189', '2024-12-15 16:02:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 190', '2024-12-15 16:02:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 191', '2024-12-15 16:02:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 1912', '2024-12-15 16:03:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 192', '2024-12-15 16:03:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 193', '2024-12-15 16:03:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 1934', '2024-12-15 16:03:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 194', '2024-12-15 16:03:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 195', '2024-12-15 16:03:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 196', '2024-12-15 16:03:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 197', '2024-12-15 16:03:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 180', '2024-12-15 16:03:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 16:03:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 16:03:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 16:03:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:16:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:16:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun', '2024-12-15 16:16:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:16:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 1 1', '2024-12-15 16:16:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 24 90', '2024-12-15 16:16:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 1 90', '2024-12-15 16:17:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 3 90', '2024-12-15 16:17:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 4 90', '2024-12-15 16:17:06'),
('COMMAND:  Vostic je iskoristio komandu /jetpack', '2024-12-15 16:17:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-15 16:17:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-15 16:17:51'),
('COMMAND:  Vostic je iskoristio komandu /frezze 0', '2024-12-15 16:17:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-15 16:17:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-15 16:18:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-15 16:18:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-15 16:18:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:18:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0ww', '2024-12-15 16:18:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0www', '2024-12-15 16:18:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0wwww', '2024-12-15 16:18:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0wwwww', '2024-12-15 16:18:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:18:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0ww', '2024-12-15 16:18:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:18:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:18:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:18:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:19:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:19:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:19:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:19:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0w', '2024-12-15 16:19:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:19:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 455 1', '2024-12-15 16:19:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 455 1', '2024-12-15 16:19:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /katana', '2024-12-15 16:19:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /helmet', '2024-12-15 16:19:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /katana', '2024-12-15 16:19:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mask', '2024-12-15 16:19:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mask', '2024-12-15 16:19:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /belt', '2024-12-15 16:19:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /belt', '2024-12-15 16:19:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bucksaw', '2024-12-15 16:20:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cigar', '2024-12-15 16:20:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cigar', '2024-12-15 16:20:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cigar', '2024-12-15 16:20:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /torch', '2024-12-15 16:20:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /torch', '2024-12-15 16:20:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cigar', '2024-12-15 16:20:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:20:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:20:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-15 16:21:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:39:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 4 1', '2024-12-15 16:45:29'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-15 16:45:55'),
('COMMAND:  Vostic je iskoristio komandu /setvw 1 0', '2024-12-15 16:46:04'),
('COMMAND:  Vostic je iskoristio komandu /setint 1 0', '2024-12-15 16:46:07'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-15 16:46:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitro', '2024-12-15 16:46:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-15 16:46:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1000 1', '2024-12-15 16:47:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitro', '2024-12-15 16:47:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:48:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 16:48:17'),
('COMMAND:  Vostic je iskoristio komandu /t 2', '2024-12-15 16:48:18'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-15 16:48:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-15 16:48:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1', '2024-12-15 16:48:52'),
('COMMAND:  Vostic je iskoristio komandu /givegun ', '2024-12-15 16:49:01'),
('COMMAND:  Vostic je iskoristio komandu /givegun  0 30 333', '2024-12-15 16:49:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 10', '2024-12-15 16:49:09'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2024-12-15 16:50:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /katana', '2024-12-15 16:50:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mask', '2024-12-15 16:50:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /parrot', '2024-12-15 16:50:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fstance', '2024-12-15 16:50:53'),
('COMMAND:  Vostic je iskoristio komandu /katana', '2024-12-15 16:50:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-15 16:54:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-15 16:54:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-15 16:54:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 411 1 1', '2024-12-15 16:54:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh', '2024-12-15 16:54:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 16:55:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 16:56:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 34 90', '2024-12-15 16:56:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mask', '2024-12-15 16:56:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 16:56:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 16:58:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 17:07:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cameditor', '2024-12-15 17:07:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 17:07:36'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-15 17:08:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /q/q', '2024-12-15 17:10:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /debugui', '2024-12-15 17:11:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 17:11:11'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-15 17:11:51'),
('COMMAND:  Vostic je iskoristio komandu /setint 1 0', '2024-12-15 17:12:18'),
('COMMAND:  Vostic je iskoristio komandu /setvw 1 0', '2024-12-15 17:12:22'),
('COMMAND:  Vostic je iskoristio komandu /mower', '2024-12-15 17:12:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 17:18:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-15 17:18:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 19:24:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory]', '2024-12-15 19:24:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:24:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 19:24:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:25:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:25:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:25:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:25:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:25:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1', '2024-12-15 19:25:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:26:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-15 19:26:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 19:26:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 19:26:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 19:26:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 19:26:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-15 19:28:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-15 19:28:22'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-19 16:19:53'),
('COMMAND:  Silva je iskoristio komandu /setinv si 0', '2024-12-19 16:20:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -776.4226, -1977.0199, 8.7799', '2024-12-19 16:20:04'),
('COMMAND:  Silva je iskoristio komandu /setint si 0', '2024-12-19 16:20:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -776.4226, -1977.0199, 8.7799', '2024-12-19 16:20:05'),
('COMMAND:  Silva je iskoristio komandu /setvw', '2024-12-19 16:20:06'),
('COMMAND:  Silva je iskoristio komandu /setvw 1 0', '2024-12-19 16:20:09'),
('COMMAND:  Silva je iskoristio komandu /setint 1 0', '2024-12-19 16:20:14'),
('COMMAND:  Silva je iskoristio komandu /tod 1', '2024-12-19 16:20:17'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-19 16:20:21'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-19 16:20:22'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-19 16:20:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 3', '2024-12-19 16:20:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -776.4226, -1977.0199, 8.7799', '2024-12-19 16:20:31'),
('COMMAND:  Silva je iskoristio komandu /goto nodi', '2024-12-19 16:20:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-19 16:20:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f eee', '2024-12-19 16:20:58'),
('COMMAND:  Silva je iskoristio komandu /f ,', '2024-12-19 16:21:00'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-19 16:21:06'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-19 16:21:12'),
('COMMAND:  Silva je iskoristio komandu /f dasdsa', '2024-12-19 16:21:14'),
('COMMAND:  Silva je iskoristio komandu /f dasdsa', '2024-12-19 16:21:15'),
('COMMAND:  Silva je iskoristio komandu /f dasdsa', '2024-12-19 16:21:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f aa', '2024-12-19 16:21:20'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-19 16:21:36'),
('COMMAND:  Silva je iskoristio komandu /r', '2024-12-19 16:21:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f AAAAAAAAA', '2024-12-19 16:21:41'),
('COMMAND:  Silva je iskoristio komandu /f', '2024-12-19 16:21:42'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-19 16:21:44'),
('COMMAND:  Silva je iskoristio komandu /f fdfds', '2024-12-19 16:21:46'),
('COMMAND:  Silva je iskoristio komandu /f dsadsa ', '2024-12-19 16:21:52'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-19 16:22:38'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-19 16:22:51'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-19 16:23:06'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-19 16:23:19'),
('COMMAND:  Silva je iskoristio komandu /f ?.', '2024-12-19 16:24:35'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-19 16:24:38'),
('COMMAND:  Silva je iskoristio komandu /skate', '2024-12-19 16:25:54'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-19 16:26:00'),
('COMMAND:  Silva je iskoristio komandu /tod 1', '2024-12-19 16:28:37'),
('COMMAND:  Silva je iskoristio komandu /setint 0 3', '2024-12-19 16:29:12'),
('COMMAND:  Silva je iskoristio komandu /xgoto -767.463134 -1977.023803 5.113958', '2024-12-19 16:29:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-19 16:29:25'),
('COMMAND:  Silva je iskoristio komandu / f.', '2024-12-19 16:29:36'),
('COMMAND:  Silva je iskoristio komandu /f .', '2024-12-19 16:29:39'),
('COMMAND:  Silva je iskoristio komandu /f .', '2024-12-19 16:30:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f e', '2024-12-19 16:30:15'),
('COMMAND:  Silva je iskoristio komandu /f ,', '2024-12-19 16:30:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-19 16:30:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-19 16:30:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 1 0', '2024-12-19 16:30:50'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-19 16:30:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 1 0', '2024-12-19 16:30:52'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-19 16:31:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-19 16:31:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-19 16:33:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-19 16:35:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-19 16:35:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-19 16:36:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1w', '2024-12-19 16:36:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /g alo bre', '2024-12-19 16:40:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidanw', '2024-12-19 17:45:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidanw', '2024-12-19 17:45:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:50:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:50:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:50:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:50:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:52:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:52:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:52:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:53:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vokisupercharged', '2024-12-19 17:53:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:53:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:55:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:56:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:56:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-19 17:58:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:58:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:58:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:58:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:58:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 17:58:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidanw', '2024-12-19 17:58:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidanww', '2024-12-19 17:58:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:00:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:00:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:00:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:05:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:05:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:05:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:06:07');
INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:06:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:06:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:06:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stats', '2024-12-19 18:06:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stats', '2024-12-19 18:06:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:06:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:07:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:07:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-19 18:07:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stats', '2024-12-19 18:20:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-19 18:21:16'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-19 18:23:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1=', '2024-12-19 18:23:37'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-19 18:23:38'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-19 18:23:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-19 18:23:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-19 18:23:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite', '2024-12-19 18:26:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-19 18:26:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-19 18:27:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-19 18:27:14'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-19 18:41:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-19 18:41:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f ooo', '2024-12-19 18:42:04'),
('COMMAND:  Vostic je iskoristio komandu /f a', '2024-12-19 18:42:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560', '2024-12-19 18:50:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-19 18:50:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 18:51:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 18:51:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-19 18:52:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 18:52:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 20:44:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 20:44:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /getint', '2024-12-19 20:44:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 20:45:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /todolist', '2024-12-19 20:45:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /todo', '2024-12-19 20:45:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:45:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 20:47:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 20:47:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:48:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 20:48:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoiler', '2024-12-19 20:48:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 20:48:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 20:49:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 20:49:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 20:49:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 20:49:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 20:52:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 20:53:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /todolist', '2024-12-19 20:53:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 20:56:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 20:56:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:56:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 20:56:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 20:57:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 20:58:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:58:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-19 20:58:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 20:58:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /todolist', '2024-12-19 20:58:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:58:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 20:59:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 20:59:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-19 20:59:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 20:59:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 20:59:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 20:59:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 20:59:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:00:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:00:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:00:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:00:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:00:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 21:04:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 21:05:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:05:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:05:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:05:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-19 21:05:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:05:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:06:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 21:06:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:06:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:06:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 21:06:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:06:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:06:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 21:09:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 21:09:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-19 21:10:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:10:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:10:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:10:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:10:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 21:10:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:11:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:11:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:11:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:11:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:11:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:11:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1', '2024-12-19 21:12:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stats', '2024-12-19 21:12:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stats', '2024-12-19 21:12:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 21:12:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-19 21:19:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 21:19:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:20:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-19 21:20:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:20:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:20:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 21:20:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:22:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:22:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-19 21:22:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:22:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:22:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:22:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:22:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-19 21:22:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:23:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:23:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-19 21:23:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-19 21:23:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-19 21:23:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-19 21:24:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 6', '2024-12-19 22:04:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 6', '2024-12-19 22:04:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-19 22:04:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-19 22:04:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-19 22:04:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jail', '2024-12-19 22:04:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jail 1 1 1', '2024-12-19 22:05:14'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-20 13:29:45'),
('COMMAND:  Vostic je iskoristio komandu /slap 0', '2024-12-20 13:31:17'),
('COMMAND:  Vostic je iskoristio komandu /kill', '2024-12-20 13:31:31'),
('COMMAND:  Vostic je iskoristio komandu /komande', '2024-12-20 13:31:38'),
('COMMAND:  Vostic je iskoristio komandu /komande', '2024-12-20 13:31:45'),
('COMMAND:  Vostic je iskoristio komandu //q', '2024-12-20 13:35:38'),
('COMMAND:  Vostic je iskoristio komandu /setvw 0 10', '2024-12-20 13:46:00'),
('COMMAND:  Vostic je iskoristio komandu /setint 0 0', '2024-12-20 13:46:26'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-20 13:50:54'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-20 13:56:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-20 14:17:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-20 14:17:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-20 14:17:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-20 14:17:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:18:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 14:18:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 14:18:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-20 14:18:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 14:18:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /champspoilers', '2024-12-20 14:18:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 14:18:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-20 14:19:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 14:19:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-20 14:19:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-20 14:19:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 14:19:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 14:20:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /carservice', '2024-12-20 14:20:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:35:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 14:35:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /q2', '2024-12-20 14:43:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:44:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 14:45:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 14:45:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:49:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 14:49:52'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-20 14:51:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:51:42'),
('COMMAND:  Silva je iskoristio komandu /setint', '2024-12-20 14:51:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 14:51:48'),
('COMMAND:  Silva je iskoristio komandu /startservis', '2024-12-20 14:52:55'),
('COMMAND:  Silva je iskoristio komandu /startservices', '2024-12-20 14:52:57'),
('COMMAND:  Silva je iskoristio komandu /startservices', '2024-12-20 14:53:02'),
('COMMAND:  Silva je iskoristio komandu /lslist', '2024-12-20 14:53:10'),
('COMMAND:  Silva je iskoristio komandu /lsist', '2024-12-20 14:53:13'),
('COMMAND:  Silva je iskoristio komandu /llist', '2024-12-20 14:53:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:55:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 14:55:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 14:59:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 14:59:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:02:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 15:02:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:04:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 15:04:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:11:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 15:11:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 15:11:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 15:11:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:16:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:16:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 15:16:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 15:16:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:30:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 15:30:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 15:32:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 15:32:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 15:33:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 15:33:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 15:33:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-20 15:33:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 15:33:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 15:34:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /notify', '2024-12-20 16:36:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jedemnudlesvakidan', '2024-12-20 16:36:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-20 16:41:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-20 16:42:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-20 16:42:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-20 16:42:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 1 1 1', '2024-12-20 16:42:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 1 ', '2024-12-20 16:42:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-20 16:42:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1', '2024-12-20 16:42:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-20 16:42:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-20 19:14:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-20 19:14:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xpdevil', '2024-12-20 19:15:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xpattach', '2024-12-20 19:15:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xattach', '2024-12-20 19:15:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spa', '2024-12-20 19:18:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spa', '2024-12-20 19:19:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-20 19:28:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-20 19:28:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 19:28:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 19:28:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 19:28:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-20 19:29:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 19:29:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-20 19:29:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-20 19:29:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:29:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:30:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:30:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:30:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:32:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-20 19:32:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:27:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:30:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:31:13'),
('COMMAND:  Silva je iskoristio komandu /komande', '2024-12-20 20:31:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:33:03'),
('COMMAND:  Silva je iskoristio komandu /quests', '2024-12-20 20:33:05'),
('COMMAND:  Silva je iskoristio komandu /quests', '2024-12-20 20:33:07'),
('COMMAND:  Silva je iskoristio komandu /komande', '2024-12-20 20:33:26'),
('COMMAND:  Silva je iskoristio komandu /komande', '2024-12-20 20:33:28'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-20 20:33:56'),
('COMMAND:  Silva je iskoristio komandu /buybizcenter', '2024-12-20 20:34:23'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney', '2024-12-20 20:34:27'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-20 20:34:37'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-20 20:37:20'),
('COMMAND:  Silva je iskoristio komandu /dron', '2024-12-20 20:37:34'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-20 20:37:47'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney', '2024-12-20 20:38:21'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney 0 100.00 1', '2024-12-20 20:38:27'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney 0 100.00 1', '2024-12-20 20:38:41'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney 0 100.00 1', '2024-12-20 20:38:41'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney 0 100.00 1', '2024-12-20 20:38:41'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney 0 100.00 1', '2024-12-20 20:38:52'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-20 20:39:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-20 20:41:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:41:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:41:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:41:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:41:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-20 20:44:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:44:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /questsw', '2024-12-20 20:44:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /questsw', '2024-12-20 20:44:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:44:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:44:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:45:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:45:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:45:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 20:49:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-20 20:50:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-20 20:50:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 21:09:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-20 21:09:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 08:50:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:50:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 08:50:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 08:50:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /c', '2024-12-21 08:51:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 08:51:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-21 08:51:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-21 08:51:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-21 08:51:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-21 08:51:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-21 08:52:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-21 08:52:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsc', '2024-12-21 08:52:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-21 08:52:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-21 08:52:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:53:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:53:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:53:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 08:53:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:54:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:54:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 08:54:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 10:02:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 10:02:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 10:02:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 10:02:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 10:03:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 10:04:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 10:07:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 10:07:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 10:33:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 10:33:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 10:34:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 11:58:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 11:58:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 11:58:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 11:58:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 11:59:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 11:59:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 12:00:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gpsoff', '2024-12-21 12:00:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gpsoff', '2024-12-21 12:00:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-21 12:00:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 12:00:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 12:01:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 12', '2024-12-21 12:38:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 170.662719, -82.817192, 1002.156555', '2024-12-21 12:38:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 12:39:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 12:41:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-21 12:42:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 152.745544, -70.060661, 1001.895690', '2024-12-21 12:42:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 152.745544, -70.060661, 1005.895690', '2024-12-21 12:42:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 152.745544, -70.060661, 1004.895690', '2024-12-21 12:42:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-21 12:42:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 1', '2024-12-21 12:43:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 1', '2024-12-21 12:43:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 13', '2024-12-21 12:43:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-21 12:43:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 14', '2024-12-21 12:43:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 15', '2024-12-21 12:43:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 15', '2024-12-21 12:43:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 18', '2024-12-21 12:43:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 1', '2024-12-21 12:44:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 19', '2024-12-21 12:44:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 20', '2024-12-21 12:44:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 21', '2024-12-21 12:44:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 21', '2024-12-21 12:44:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 20', '2024-12-21 12:44:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 20', '2024-12-21 12:44:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 18', '2024-12-21 12:44:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 18', '2024-12-21 12:45:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 17', '2024-12-21 12:45:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setivw 0 11', '2024-12-21 12:45:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 11', '2024-12-21 12:45:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 18', '2024-12-21 12:45:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 19', '2024-12-21 12:45:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 19w', '2024-12-21 12:45:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 12:45:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:14:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 13:14:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:14:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 13:14:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-21 13:14:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness', '2024-12-21 13:15:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness Levis 1 13 1', '2024-12-21 13:15:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:16:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 13:16:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:16:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 13:16:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness', '2024-12-21 13:17:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness Binco 1 13 1', '2024-12-21 13:17:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:22:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 13:22:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:22:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 13:22:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:26:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:27:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-21 13:27:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 13:29:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 13:30:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 13:30:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:30:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:35:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 13:35:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:35:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:36:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:38:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-21 13:38:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:38:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:38:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:39:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:39:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:39:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:43:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:43:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:43:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:43:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:45:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:46:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testniggers', '2024-12-21 13:49:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:49:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:50:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:50:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:50:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:50:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:50:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:50:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:50:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:50:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:51:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:51:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:51:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:51:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:52:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:52:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:52:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testniggers', '2024-12-21 13:53:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /testnigger', '2024-12-21 13:53:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:57:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 13:57:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 13:57:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 14:53:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 14:53:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 14:53:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 14:56:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 8', '2024-12-21 14:58:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1298.4663,1560.8510,100.6721', '2024-12-21 14:58:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:01:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 15:01:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:01:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 15:09:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-21 15:12:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:26:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:27:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:27:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:27:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:27:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 15:30:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 15:31:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 17:15:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-21 17:15:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-21 17:17:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 17:20:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /burglary', '2024-12-21 17:24:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /burglary', '2024-12-21 17:25:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /burglary', '2024-12-21 17:30:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2087.1863, -1557.7731, 12.8787', '2024-12-21 17:34:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /burglary', '2024-12-21 19:10:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-21 19:13:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:14:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:20:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:21:55'),
('COMMAND:  Silva je iskoristio komandu /goto 0', '2024-12-21 19:23:36'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-21 19:23:46'),
('COMMAND:  Silva je iskoristio komandu /bank', '2024-12-21 19:23:51'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-21 19:24:13'),
('COMMAND:  Silva je iskoristio komandu /bank', '2024-12-21 19:25:07'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:28'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:33'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:35'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:37'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:39'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:42'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:44'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:50'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:25:55'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-21 19:26:01'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:26:03'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:26:17'),
('COMMAND:  Silva je iskoristio komandu /server', '2024-12-21 19:26:31'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:26:33'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:26:50'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:27:09'),
('COMMAND:  Silva je iskoristio komandu /anims', '2024-12-21 19:28:24'),
('COMMAND:  Silva je iskoristio komandu /anim', '2024-12-21 19:28:25'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-21 19:28:27'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-21 19:29:12'),
('COMMAND:  Silva je iskoristio komandu /spanek', '2024-12-21 19:29:20'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:29:21'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:00'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:03'),
('COMMAND:  Silva je iskoristio komandu /metro', '2024-12-21 19:30:19'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:22'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:25'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:28'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:31'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-21 19:30:47'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:30:51'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:05'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:11'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:17'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:21'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:21'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:25'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:31:30'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-21 19:31:39'),
('COMMAND:  Silva je iskoristio komandu /ainvite', '2024-12-21 19:32:07'),
('COMMAND:  Silva je iskoristio komandu /ubacime', '2024-12-21 19:32:09'),
('COMMAND:  Silva je iskoristio komandu /ubaci', '2024-12-21 19:32:12'),
('COMMAND:  Silva je iskoristio komandu /makelider', '2024-12-21 19:32:17'),
('COMMAND:  Silva je iskoristio komandu /makeleader', '2024-12-21 19:32:19'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-21 19:32:23'),
('COMMAND:  Silva je iskoristio komandu /org', '2024-12-21 19:32:40'),
('COMMAND:  Silva je iskoristio komandu /orginvite', '2024-12-21 19:32:43'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:32:45'),
('COMMAND:  Silva je iskoristio komandu /arrest', '2024-12-21 19:33:17'),
('COMMAND:  Silva je iskoristio komandu /wl', '2024-12-21 19:33:18'),
('COMMAND:  Silva je iskoristio komandu /su', '2024-12-21 19:33:20'),
('COMMAND:  Silva je iskoristio komandu /aubaci', '2024-12-21 19:33:25'),
('COMMAND:  Silva je iskoristio komandu /inviteme', '2024-12-21 19:33:29'),
('COMMAND:  Silva je iskoristio komandu /pd', '2024-12-21 19:33:32'),
('COMMAND:  Silva je iskoristio komandu /police', '2024-12-21 19:33:34'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-21 19:33:41'),
('COMMAND:  Silva je iskoristio komandu /f kuraccc', '2024-12-21 19:33:43'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-21 19:33:44'),
('COMMAND:  Silva je iskoristio komandu /setint 0 3', '2024-12-21 19:35:24'),
('COMMAND:  Silva je iskoristio komandu /xgoto -767.463134 -1977.023803 5.113958', '2024-12-21 19:35:28'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-21 19:36:22'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-21 19:36:23'),
('COMMAND:  Silva je iskoristio komandu /setint 0 0', '2024-12-21 19:36:40'),
('COMMAND:  Silva je iskoristio komandu /setint 0 0', '2024-12-21 19:36:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:39:17'),
('COMMAND:  Silva je iskoristio komandu /f silva je tata', '2024-12-21 19:39:59'),
('COMMAND:  Silva je iskoristio komandu /f silva je tata', '2024-12-21 19:40:01'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-21 19:40:02'),
('COMMAND:  Silva je iskoristio komandu /inv', '2024-12-21 19:40:43'),
('COMMAND:  Silva je iskoristio komandu /inventory', '2024-12-21 19:40:46'),
('COMMAND:  Silva je iskoristio komandu /inventory', '2024-12-21 19:40:53'),
('COMMAND:  Silva je iskoristio komandu /inventory', '2024-12-21 19:40:56'),
('COMMAND:  Silva je iskoristio komandu /spec', '2024-12-21 19:41:03'),
('COMMAND:  Silva je iskoristio komandu /sms', '2024-12-21 19:41:06'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:41:16'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:41:17'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:41:32'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:41:36'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:41:49'),
('COMMAND:  Silva je iskoristio komandu /giveplayermoney', '2024-12-21 19:41:59'),
('COMMAND:  Silva je iskoristio komandu /givemoney', '2024-12-21 19:42:05'),
('COMMAND:  Silva je iskoristio komandu /givemoney 1 120000', '2024-12-21 19:42:10'),
('COMMAND:  Silva je iskoristio komandu /sever', '2024-12-21 19:42:11'),
('COMMAND:  Silva je iskoristio komandu /spanel', '2024-12-21 19:42:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:43:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:44:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 19:56:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-21 19:57:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 20:00:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 20:28:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 20:30:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 20:31:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-21 20:39:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 21:12:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-21 21:12:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 09:13:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:13:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:13:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:14:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:14:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:14:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:14:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 09:16:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-22 09:16:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 19', '2024-12-22 09:16:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1098.321777, -203.046279, 16.343063', '2024-12-22 09:16:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1098.321777, -203.046279, 10.343063', '2024-12-22 09:16:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1098.321777, -203.046279, 10.343063', '2024-12-22 09:16:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1098.321777, -203.046279, 14.343063', '2024-12-22 09:17:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 09:32:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /getint', '2024-12-22 09:32:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createmetro', '2024-12-22 09:33:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:33:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation', '2024-12-22 09:33:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation', '2024-12-22 09:33:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation Voki Supercharged', '2024-12-22 09:33:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation Debela Guza', '2024-12-22 09:33:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /stationlist', '2024-12-22 09:34:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /liststations', '2024-12-22 09:34:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:34:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:34:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:35:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:39:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:40:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:40:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:40:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 09:40:31');
INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /editstation', '2024-12-22 09:40:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /editstation', '2024-12-22 09:40:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /editstation 1 Fjerit Olsun', '2024-12-22 09:40:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:40:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:41:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:41:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /deletestation', '2024-12-22 09:41:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /deletestation 1', '2024-12-22 09:41:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /travel', '2024-12-22 09:41:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:41:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-22 09:41:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 09:45:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:46:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:46:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:46:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:49:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:49:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:49:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:49:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:49:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:50:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:51:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:54:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 09:54:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 10:08:57'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-22 13:21:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-22 13:21:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givecrypto', '2024-12-22 13:21:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givecrypto 0 1 100', '2024-12-22 13:21:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchange', '2024-12-22 13:21:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchangecrypto', '2024-12-22 13:21:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchangecrypto 1 0 500', '2024-12-22 13:21:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchangecrypto 1 0 50', '2024-12-22 13:21:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /transfercrypto', '2024-12-22 13:22:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /transfer', '2024-12-22 13:22:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sendcrypto', '2024-12-22 13:22:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sendcrypto 1 1 40', '2024-12-22 13:22:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mycrypto', '2024-12-22 13:23:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:41:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:44:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:44:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:44:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:47:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:47:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:48:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:49:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:49:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:49:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:50:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:50:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:53:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:58:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:58:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:58:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 13:59:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 15:28:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-22 15:29:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createsz', '2024-12-22 15:29:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createsz', '2024-12-22 15:29:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 15:30:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchangecrypto', '2024-12-22 15:33:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /exchangecrypto 1 3 3', '2024-12-22 15:33:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 15:33:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-22 15:33:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 15:37:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 15:37:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 15:37:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-22 15:39:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-22 15:40:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-22 15:40:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 15:47:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 15:47:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 15:50:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 15:51:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 15:54:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:00:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:12:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:13:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:13:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:19:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:23:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:24:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 16:28:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:26:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:27:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:27:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:28:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:28:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:28:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 17:29:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:29:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:30:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 17:30:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:13:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:17:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:33:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:33:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:39:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:39:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:40:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:54:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:55:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:55:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney ', '2024-12-22 18:55:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney  0 1000 1', '2024-12-22 18:56:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:56:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /ccc', '2024-12-22 18:56:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 18:56:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney 0 1 5000', '2024-12-22 18:56:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney 0', '2024-12-22 18:56:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setplayermoney 0 5000 1', '2024-12-22 18:56:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:56:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 18:57:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:57:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 18:58:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 18:59:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 19:00:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-22 19:00:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gps', '2024-12-22 19:00:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 19:01:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 19:01:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 19:02:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 19:02:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quitjob', '2024-12-22 19:02:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 19:03:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-22 19:03:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-22 19:03:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 19:03:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-22 19:03:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 19:04:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-22 19:04:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 19:04:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-22 19:04:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-22 19:05:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quitjob', '2024-12-22 19:06:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-22 19:06:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sethunger', '2024-12-22 19:20:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givehunger', '2024-12-22 19:20:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-22 20:42:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-22 20:42:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 20:42:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-22 20:42:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 20:43:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-22 20:43:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-22 20:43:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-22 20:43:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-22 20:44:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-22 20:44:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:45:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:45:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:46:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:46:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:49:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-22 20:49:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-22 20:50:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2024-12-22 20:50:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2024-12-22 20:50:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-22 20:51:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1000', '2024-12-22 20:51:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1000 1', '2024-12-22 20:51:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 14:38:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /g eee', '2024-12-23 14:38:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /g ojsa', '2024-12-23 14:38:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 14:38:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 14:50:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 14:50:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 14:51:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 15:06:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 15:08:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:10:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:10:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:10:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:16:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:17:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 15:17:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-23 15:18:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-23 15:25:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 15:52:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinrandomvehicle', '2024-12-23 15:54:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinradnomvehicle', '2024-12-23 15:57:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinrandomvehicle', '2024-12-23 15:57:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 520 1 1', '2024-12-23 16:15:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 16:19:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /qw', '2024-12-23 16:25:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:27:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:27:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-23 16:27:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-23 16:27:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:27:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:28:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-23 16:29:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-23 16:29:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:29:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:30:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-23 16:30:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:34:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:34:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:34:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:34:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 16:35:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:35:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 16:35:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:36:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:36:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 16:37:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 16:40:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 16:50:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 16:50:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu //q', '2024-12-23 17:18:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinrandomvehicle', '2024-12-23 17:28:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinrandomvehicle', '2024-12-23 17:28:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 17:30:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:30:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:30:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:51:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-23 17:51:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 17:52:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 17:52:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:52:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:52:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 17:53:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /askq', '2024-12-23 18:38:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /askq Volim garave', '2024-12-23 18:38:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lp', '2024-12-23 18:38:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /questions', '2024-12-23 18:38:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:49:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:50:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 18:50:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:50:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:50:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:50:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-23 18:50:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:52:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:52:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:52:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 18:52:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 18:56:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 19:11:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 19:11:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 19:13:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createmetro', '2024-12-23 19:13:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-23 19:13:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kreirajmetro', '2024-12-23 19:13:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation', '2024-12-23 19:14:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation Maryland - Market Station', '2024-12-23 19:14:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 19:14:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 19:14:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation', '2024-12-23 19:14:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createstation Maryland - H4RBOR Bank', '2024-12-23 19:14:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 19:14:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-23 19:14:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-23 19:56:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 19:57:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 19:57:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 19:57:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 19:57:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-23 19:57:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:45:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:45:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:45:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /notifyme', '2024-12-23 20:45:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:48:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:48:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:49:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /unrent', '2024-12-23 20:49:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:49:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-23 20:49:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:49:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:52:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:52:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:54:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:54:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:54:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:54:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:55:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 20:55:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:55:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:57:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu //dl', '2024-12-23 20:57:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 20:57:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:57:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-23 20:57:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /portw', '2024-12-23 20:57:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 20:57:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:07:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:07:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:07:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-23 21:19:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-23 21:36:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /katana', '2024-12-23 21:41:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mask', '2024-12-23 21:41:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:41:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:41:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /fv', '2024-12-23 21:45:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 21:45:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /help createbusiness', '2024-12-23 21:46:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /help createbusiness', '2024-12-23 21:46:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness', '2024-12-23 21:46:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createbusiness 7Elven 1 1 450000', '2024-12-23 21:47:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 21:47:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /katana', '2024-12-23 21:59:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /metro', '2024-12-23 22:27:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /medic', '2024-12-23 22:27:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-23 22:27:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /help', '2024-12-23 22:28:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2024-12-23 22:28:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2024-12-23 22:28:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2024-12-23 22:28:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem', '2024-12-23 22:29:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem 50 1', '2024-12-23 22:29:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-23 22:29:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-23 22:29:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-23 22:37:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-23 22:39:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spawnchange', '2024-12-23 22:43:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /chagnespawn', '2024-12-23 22:43:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spawn', '2024-12-23 22:43:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-23 22:43:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-23 22:44:35'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 13:25:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite', '2024-12-24 13:27:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 0', '2024-12-24 13:27:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f e', '2024-12-24 13:27:10'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:27:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:27:15'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:29:10'),
('COMMAND:  Silva je iskoristio komandu /fre', '2024-12-24 13:29:12'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:29:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:29:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f e', '2024-12-24 13:29:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f e', '2024-12-24 13:29:23'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-24 13:29:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:29:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f aaa', '2024-12-24 13:31:39'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:31:41'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 13:31:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:31:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-24 13:32:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-24 13:32:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:32:23'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-24 13:32:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:32:26'),
('COMMAND:  Silva je iskoristio komandu /f a', '2024-12-24 13:35:24'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 13:35:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-24 13:35:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f ee', '2024-12-24 13:35:32'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:35:33'),
('COMMAND:  Silva je iskoristio komandu /metro', '2024-12-24 13:36:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faciton', '2024-12-24 13:36:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:36:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:37:02'),
('COMMAND:  Silva je iskoristio komandu /stas', '2024-12-24 13:41:26'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 13:41:27'),
('COMMAND:  Silva je iskoristio komandu /crypto', '2024-12-24 13:41:30'),
('COMMAND:  Silva je iskoristio komandu /exchangecrypto', '2024-12-24 13:41:35'),
('COMMAND:  Silva je iskoristio komandu /komande', '2024-12-24 13:41:48'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:43:36'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:43:37'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:43:41'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-24 13:48:09'),
('COMMAND:  Silva je iskoristio komandu /cc', '2024-12-24 13:48:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f eee', '2024-12-24 13:54:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-24 13:55:02'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:55:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f eeee', '2024-12-24 13:55:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:55:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /leader', '2024-12-24 13:55:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:55:33'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:56:33'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:56:34'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:56:36'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:56:37'),
('COMMAND:  Silva je iskoristio komandu /winter', '2024-12-24 13:56:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-24 13:58:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 1', '2024-12-24 13:58:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f ALOOO', '2024-12-24 13:58:27'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:58:27'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 13:58:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:58:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 13:58:42'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:58:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f aa', '2024-12-24 13:59:02'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 13:59:07'),
('COMMAND:  Silva je iskoristio komandu /port', '2024-12-24 14:00:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2024-12-24 14:00:48'),
('COMMAND:  Silva je iskoristio komandu /setint 0 0', '2024-12-24 14:00:50'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 14:00:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f ee', '2024-12-24 14:00:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 0', '2024-12-24 14:00:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f e', '2024-12-24 14:01:03'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 14:01:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:01:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:01:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /f alo', '2024-12-24 14:01:22'),
('COMMAND:  Silva je iskoristio komandu /f e', '2024-12-24 14:01:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 14:01:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 0 ', '2024-12-24 14:02:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:02:08'),
('COMMAND:  Silva je iskoristio komandu /faction', '2024-12-24 14:02:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:02:13'),
('COMMAND:  Silva je iskoristio komandu /faction', '2024-12-24 14:02:29'),
('COMMAND:  Silva je iskoristio komandu /faction', '2024-12-24 14:02:32'),
('COMMAND:  Silva je iskoristio komandu /faction', '2024-12-24 14:02:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:04:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 14:30:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-24 14:32:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 14:32:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-24 14:32:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv 1 411 1', '2024-12-24 14:32:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-24 14:35:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-24 14:35:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv 1 411 1', '2024-12-24 14:35:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-24 14:38:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv 1 411 1 ', '2024-12-24 14:38:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:39:35'),
('COMMAND:  Silva je iskoristio komandu /stats', '2024-12-24 14:40:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /faction', '2024-12-24 14:40:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:47:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:47:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:47:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:50:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:50:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:51:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:51:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:51:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /CC', '2024-12-24 16:51:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:52:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem 0 51', '2024-12-24 16:52:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem 51 1', '2024-12-24 16:52:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:52:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:52:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:53:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:53:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem 1 51', '2024-12-24 16:53:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:53:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem 51 1', '2024-12-24 16:53:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:53:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 16:53:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 17:32:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 17:33:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-24 17:33:05'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-24 18:05:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-24 18:05:41'),
('COMMAND:  Vostic je iskoristio komandu /setint', '2024-12-24 18:05:44'),
('COMMAND:  Vostic je iskoristio komandu /buzz 0', '2024-12-24 18:05:58'),
('COMMAND:  Vostic je iskoristio komandu /buzz 1', '2024-12-24 18:06:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /accept', '2024-12-24 18:06:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney', '2024-12-24 18:06:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 9000000 1', '2024-12-24 18:06:26'),
('COMMAND:  Vostic je iskoristio komandu /buybizcenter', '2024-12-24 18:06:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buzz 0', '2024-12-24 18:07:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buzz 0', '2024-12-24 18:07:07'),
('COMMAND:  Vostic je iskoristio komandu /accept', '2024-12-24 18:07:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybizcenter', '2024-12-24 18:08:30'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-24 18:08:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 9000000 1', '2024-12-24 18:08:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybizcenter', '2024-12-24 18:08:44'),
('COMMAND:  Vostic je iskoristio komandu /buybizcenter', '2024-12-24 18:08:50'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-24 18:11:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybizcenter', '2024-12-24 18:11:57'),
('COMMAND:  Vostic je iskoristio komandu /buybizcenter', '2024-12-24 18:11:58'),
('COMMAND:  Vostic je iskoristio komandu /buzz 0', '2024-12-24 18:12:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /accept', '2024-12-24 18:12:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-24 18:13:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-24 20:36:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 20:36:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 20:36:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 20:37:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 20:37:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 20:37:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 20:37:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 20:38:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 20:38:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-24 20:46:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 20:47:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 20:47:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 20:48:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 20:49:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 20:49:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 20:49:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 20:49:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 20:50:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-24 20:54:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-24 20:54:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 20:54:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 20:54:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-24 20:58:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-24 20:58:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 20:58:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 20:58:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-24 21:01:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 21:01:09'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-24 21:01:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2024-12-24 21:01:28'),
('COMMAND:  Vostic je iskoristio komandu /winter', '2024-12-24 21:01:33'),
('COMMAND:  Vostic je iskoristio komandu /winter', '2024-12-24 21:01:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-24 21:01:52'),
('COMMAND:  Vostic je iskoristio komandu /startservice', '2024-12-24 21:01:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:01:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:02:05'),
('COMMAND:  Vostic je iskoristio komandu /bumpers', '2024-12-24 21:02:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:02:21'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-24 21:02:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:02:27'),
('COMMAND:  Vostic je iskoristio komandu /spoilers', '2024-12-24 21:02:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:02:46'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-24 21:02:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 21:02:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:02:55'),
('COMMAND:  Vostic je iskoristio komandu /wheels', '2024-12-24 21:02:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 21:03:16'),
('COMMAND:  Vostic je iskoristio komandu /wheels', '2024-12-24 21:03:19'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-24 21:03:21'),
('COMMAND:  Vostic je iskoristio komandu /nitrous', '2024-12-24 21:03:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:03:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 21:03:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:17:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:17:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:17:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:18:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:18:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 21:18:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:18:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 21:18:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:19:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:19:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:19:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spa', '2024-12-24 21:19:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:20:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-24 21:25:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:25:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:25:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:25:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:26:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:26:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:26:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:26:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:27:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:27:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:27:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:27:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 21:27:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:28:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 21:28:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:28:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:33:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:33:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-24 21:33:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:33:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-24 21:33:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-24 21:33:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:33:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-24 21:34:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-24 21:34:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:44:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-24 21:52:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-24 21:52:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2024-12-25 10:17:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startservice', '2024-12-25 10:18:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-25 10:18:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-25 10:18:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-25 10:19:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:19:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bumpers', '2024-12-25 10:19:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:19:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spoilers', '2024-12-25 10:19:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:20:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-25 10:20:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-25 10:20:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /wheels', '2024-12-25 10:20:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:20:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:21:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /nitrous', '2024-12-25 10:21:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /lsclist', '2024-12-25 10:21:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-25 10:21:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-25 10:21:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-25 10:21:50');
INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 10:27:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /refresh', '2024-12-25 10:28:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /catalogue', '2024-12-25 10:28:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 11', '2024-12-25 10:30:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2024-12-25 10:30:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 10:39:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 10:39:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 11', '2024-12-25 10:40:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 11', '2024-12-25 10:40:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 11:00:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-25 11:00:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 520', '2024-12-25 11:04:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 590 1 1', '2024-12-25 11:42:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 592 1 1', '2024-12-25 11:42:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 592 1 1', '2024-12-25 11:42:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 593', '2024-12-25 11:42:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 593', '2024-12-25 11:42:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 593', '2024-12-25 11:42:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 569', '2024-12-25 11:42:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 569', '2024-12-25 11:42:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 569', '2024-12-25 11:42:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 569', '2024-12-25 11:42:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 432', '2024-12-25 11:42:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 12:07:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hotel', '2024-12-25 12:08:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 12:09:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hotel', '2024-12-25 12:10:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-25 12:10:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-25 12:12:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /getvw', '2024-12-25 12:12:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /getint', '2024-12-25 12:12:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-25 12:12:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 12:13:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-25 12:13:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buyhouse', '2024-12-25 12:14:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 12:15:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 12:15:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buyhouse', '2024-12-25 12:16:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 12:18:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buyhouse', '2024-12-25 12:18:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 12:43:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-25 12:43:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 12:44:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-25 12:44:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2024-12-25 13:22:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 13:23:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 13:28:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 13:28:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 13:29:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-25 13:29:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 21:28:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 21:32:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 21:32:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 22:07:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 22:15:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 22:15:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 22:18:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-25 22:18:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dodatak1', '2024-12-25 22:28:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 22:29:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dodatak1', '2024-12-25 22:33:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-25 22:47:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 09:53:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 09:53:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 09:53:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-26 10:08:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /qw', '2024-12-26 10:10:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 10:16:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-26 10:16:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:16:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:17:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-26 10:17:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:21:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:22:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:24:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:24:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:24:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:24:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-26 10:24:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:25:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 10:25:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:50:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:50:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /catalogue', '2024-12-26 10:51:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:51:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:51:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:51:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:51:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:51:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:52:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:54:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:54:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 10:54:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:54:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:54:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:54:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 10:55:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 180', '2024-12-26 13:37:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setskin 0 20', '2024-12-26 13:37:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 13:50:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:22:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:24:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:26:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /eo', '2024-12-26 14:27:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 14:27:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:27:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-26 14:29:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 14:30:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 14:30:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 14:38:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 14:39:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 14:40:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /otkaz', '2024-12-26 14:40:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:50:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 14:51:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 14:53:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-26 14:53:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 14:53:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /attachments', '2024-12-26 15:17:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 18:49:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /v', '2024-12-26 18:49:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:53:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 18:53:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 18:54:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:54:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:54:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:54:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:54:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /house', '2024-12-26 18:54:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveplayermoney 0 1 1', '2024-12-26 18:55:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 19:49:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 19:49:17'),
('COMMAND:  Silva je iskoristio komandu /sc DOSO SAM SAMO DA KAZEM JEDAN VELIKI RISPEKT NODIJU', '2024-12-26 19:49:22'),
('COMMAND:  Silva je iskoristio komandu /sc DOSO SAM SAMO DA KAZEM JEDAN VELIKI RISPEKT NODIJU', '2024-12-26 19:49:23'),
('COMMAND:  Silva je iskoristio komandu /sc DOSO SAM SAMO DA KAZEM JEDAN VELIKI RISPEKT NODIJU', '2024-12-26 19:49:23'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2024-12-26 19:53:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 19:56:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 20:00:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 20:00:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:00:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:00:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-26 20:03:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-26 20:03:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:03:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:03:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:03:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:03:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /firma', '2024-12-26 20:03:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-26 20:03:48'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:42:54'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:42:58'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:42:59'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:42:59'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:00'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:00'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:02'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:12'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:13'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:14'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:15'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:15'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:16'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:17'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:18'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:19'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:20'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:21'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:32'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:33'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:43:34'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:43:35'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:36'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:37'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:38'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:39'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:39'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:43:40'),
('COMMAND:  Vostic je iskoristio komandu /testnotify', '2024-12-27 17:48:16'),
('COMMAND:  Vostic je iskoristio komandu /testnotify', '2024-12-27 17:48:17'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:23'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:24'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:25'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:25'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:26'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:26'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:27'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:48:27'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:48:33'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:48:34'),
('COMMAND:  Vostic je iskoristio komandu /notifytestt', '2024-12-27 17:48:34'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:36'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:37'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:37'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:38'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:38'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:39'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:40'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:42'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:43'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:43'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:44'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:45'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:45'),
('COMMAND:  Vostic je iskoristio komandu /notifytest', '2024-12-27 17:48:46'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-27 18:13:14'),
('COMMAND:  Vostic je iskoristio komandu /quests', '2024-12-27 18:36:52'),
('COMMAND:  Vostic je iskoristio komandu /startservice', '2024-12-27 18:37:35'),
('COMMAND:  Vostic je iskoristio komandu /bumpers', '2024-12-27 18:37:41'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-27 18:38:01'),
('COMMAND:  Vostic je iskoristio komandu /spoilers', '2024-12-27 18:38:07'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-27 18:38:23'),
('COMMAND:  Vostic je iskoristio komandu /wheels', '2024-12-27 18:38:29'),
('COMMAND:  Vostic je iskoristio komandu /lsclist', '2024-12-27 18:38:47'),
('COMMAND:  Vostic je iskoristio komandu /nitrous', '2024-12-27 18:38:53'),
('COMMAND:  Vostic je iskoristio komandu /quests', '2024-12-27 18:39:20'),
('COMMAND:  Vostic je iskoristio komandu /portr', '2024-12-27 18:39:30'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-27 18:39:32'),
('COMMAND:  Vostic je iskoristio komandu /quitjob', '2024-12-27 18:39:50'),
('COMMAND:  Vostic je iskoristio komandu /otkaz', '2024-12-27 18:39:52'),
('COMMAND:  Vostic je iskoristio komandu /bank', '2024-12-27 18:39:58'),
('COMMAND:  Vostic je iskoristio komandu /bank', '2024-12-27 18:40:16'),
('COMMAND:  Vostic je iskoristio komandu /quests', '2024-12-27 18:40:19'),
('COMMAND:  Vostic je iskoristio komandu /por', '2024-12-27 18:40:26'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-27 18:40:27'),
('COMMAND:  Vostic je iskoristio komandu /setint 0 0', '2024-12-27 18:40:36'),
('COMMAND:  Vostic je iskoristio komandu /setvw 0 0', '2024-12-27 18:40:39'),
('COMMAND:  Vostic je iskoristio komandu /quests', '2024-12-27 18:42:19'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-27 18:42:27'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2024-12-27 18:42:35'),
('COMMAND:  Vostic je iskoristio komandu /quests', '2024-12-27 18:43:01'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-27 18:43:11'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:11'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:13'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:14'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:15'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:41'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:42'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:42'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:43'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:43'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:44'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:44'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:45'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:45'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:46'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:47'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:48'),
('COMMAND:  Vostic je iskoristio komandu /givexpgej', '2024-12-27 18:47:49'),
('COMMAND:  Vostic je iskoristio komandu /q/q', '2024-12-27 18:47:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-29 08:51:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-29 08:51:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-29 12:12:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-29 12:12:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 6', '2024-12-29 12:12:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2024-12-29 12:12:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-29 12:15:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-29 12:16:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-29 13:21:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-29 13:21:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:21:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 13:22:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-29 17:57:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-29 17:58:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 17:58:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 17:58:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 17:58:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-29 17:58:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-30 08:25:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 08:26:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-30 08:26:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-30 08:26:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv 1 596 1 2', '2024-12-30 08:27:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 08:29:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 08:29:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /creatrfv ', '2024-12-30 08:30:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /creatrfv ', '2024-12-30 08:30:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv', '2024-12-30 08:30:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createfv 1 596 1 2', '2024-12-30 08:30:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 08:31:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 11:33:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2024-12-30 11:34:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-30 11:49:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-30 11:49:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-30 11:51:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-30 11:51:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 11:51:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 11:51:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu //q', '2024-12-30 11:53:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-30 11:53:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-30 11:53:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 11:53:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startgg', '2024-12-30 16:19:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-30 16:19:38'),
('COMMAND:  Vostic je iskoristio komandu /joingg', '2024-12-30 16:20:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /joingg', '2024-12-30 16:21:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 16:21:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 16:21:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 16:21:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 16:21:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /advanceme', '2024-12-30 16:21:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-30 18:17:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-30 18:18:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-30 18:19:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-30 19:15:02'),
('COMMAND:  Vostic je iskoristio komandu /goto ', '2024-12-30 19:16:45'),
('COMMAND:  Vostic je iskoristio komandu /port', '2024-12-30 19:16:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:17:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:17:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:17:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:17:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:17:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite', '2024-12-30 19:17:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:21:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:21:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:21:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite', '2024-12-30 19:21:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite 1', '2024-12-30 19:21:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-30 19:21:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 590', '2024-12-30 19:22:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 590', '2024-12-30 19:22:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 589', '2024-12-30 19:22:18'),
('COMMAND:  Vostic je iskoristio komandu /giveweapon', '2024-12-30 19:22:27'),
('COMMAND:  Vostic je iskoristio komandu /givegub\\', '2024-12-30 19:22:31'),
('COMMAND:  Vostic je iskoristio komandu /givegun', '2024-12-30 19:22:32'),
('COMMAND:  Vostic je iskoristio komandu /givegun 0 24 999', '2024-12-30 19:22:38'),
('COMMAND:  Vostic je iskoristio komandu /givegun 1\\ 24 999', '2024-12-30 19:22:41'),
('COMMAND:  Vostic je iskoristio komandu /givegun 1 24 999', '2024-12-30 19:22:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere vo', '2024-12-30 19:23:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite vo', '2024-12-30 19:23:15'),
('COMMAND:  Vostic je iskoristio komandu /givegun 1 24 999', '2024-12-30 19:25:20'),
('COMMAND:  Vostic je iskoristio komandu /givegun 1 24 999', '2024-12-30 19:25:21'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-30 19:25:40'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:01'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:04'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:06'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:07'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:17'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:19'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:29'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:31'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:26:58'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:27:04'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:27:08'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:27:09'),
('COMMAND:  Vostic je iskoristio komandu /inventory', '2024-12-30 19:27:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:27:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 34 90', '2024-12-30 19:28:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:28:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-30 19:28:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-30 19:28:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-30 19:28:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-30 19:28:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite', '2024-12-30 19:29:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite 1', '2024-12-30 19:29:56'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-30 19:30:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vow', '2024-12-30 19:31:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vow', '2024-12-30 19:31:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:31:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finviter', '2024-12-30 19:31:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite', '2024-12-30 19:31:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite', '2024-12-30 19:31:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pinvite 1', '2024-12-30 19:31:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /r ee', '2024-12-30 19:31:47'),
('COMMAND:  Vostic je iskoristio komandu /r a', '2024-12-30 19:31:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 34 90', '2024-12-30 19:32:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 34 90', '2024-12-30 19:32:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:32:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:32:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 34 90', '2024-12-30 19:33:10'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2024-12-30 19:34:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-30 19:34:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 1 34 90', '2024-12-30 19:34:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:35:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto vo', '2024-12-30 19:35:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2024-12-30 19:37:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:38:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:38:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1w', '2024-12-30 19:38:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1w', '2024-12-30 19:38:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1w', '2024-12-30 19:38:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1w', '2024-12-30 19:38:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1', '2024-12-30 19:38:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 0', '2024-12-30 19:38:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 12', '2024-12-30 19:38:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 12', '2024-12-30 19:38:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 12', '2024-12-30 19:38:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-30 19:38:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 1', '2024-12-30 19:38:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /freeze 0', '2024-12-30 19:38:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 1', '2024-12-30 19:38:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-31 17:13:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1234.5, 2345.6, 10.5', '2024-12-31 17:14:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1234.5, 2345.6, 10.5', '2024-12-31 17:14:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2345.6, 3456.7, 10.5', '2024-12-31 17:14:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 2345.6, 3456.7, 10.5', '2024-12-31 17:14:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 3456.7, 4567.8, 10.5', '2024-12-31 17:14:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1234.5, 2345.6, 10.5', '2024-12-31 17:14:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 17:14:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 17:15:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-31 17:15:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bank', '2024-12-31 17:15:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 560 1 1', '2024-12-31 17:17:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod', '2024-12-31 17:20:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 2', '2024-12-31 17:20:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 3', '2024-12-31 17:20:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 5', '2024-12-31 17:20:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 2', '2024-12-31 17:20:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /seatweather', '2024-12-31 17:20:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:20:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 12', '2024-12-31 17:21:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 12', '2024-12-31 17:21:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vreme', '2024-12-31 17:21:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 2', '2024-12-31 17:21:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2024-12-31 17:21:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 2', '2024-12-31 17:21:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 17:22:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-31 17:22:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 17:22:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 17:25:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 17:25:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljaka', '2024-12-31 17:26:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 17:26:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 546.3323,-21.6686', '2024-12-31 17:26:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1313.6786,2546.3323,-21.6686', '2024-12-31 17:26:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 17:26:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp', '2024-12-31 19:49:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-31 19:49:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 0', '2024-12-31 19:49:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droga', '2024-12-31 19:49:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealer', '2024-12-31 19:49:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 19:50:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 19:50:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 19:50:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-31 19:50:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 19:51:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2024-12-31 19:51:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-31 19:57:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 0', '2024-12-31 20:33:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 1', '2024-12-31 20:33:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-31 20:33:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 0', '2024-12-31 20:33:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp ', '2024-12-31 20:33:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 1', '2024-12-31 20:33:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 1 ', '2024-12-31 20:33:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 2w', '2024-12-31 20:33:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dealertp 2', '2024-12-31 20:33:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:33:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-31 20:34:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:34:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-31 20:34:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:34:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:34:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:34:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kupidrogu', '2024-12-31 20:34:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1234.5, -2345.6, 10.5', '2024-12-31 20:35:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1234.5, -2345.6, 10.5', '2024-12-31 20:35:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1234.5, -2345.6, 10.5', '2024-12-31 20:35:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 3456.7, 4567.8, 10.5', '2024-12-31 20:35:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 4567.8, 5678.9, 10.5', '2024-12-31 20:35:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -2345.6, -3456.7, 10.5', '2024-12-31 20:35:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 234.5, 2345.6, 10.5', '2024-12-31 20:35:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 234.5, 2345.6, 10.5', '2024-12-31 20:35:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 234.5, 2345.6, 10.5', '2024-12-31 20:35:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 234.5, 2345.6, 10.5', '2024-12-31 20:35:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1234.5, 2345.6, 10.5', '2024-12-31 20:35:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1234.5, 2345.6, 10.5', '2024-12-31 20:35:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /start', '2024-12-31 20:36:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droge', '2024-12-31 20:36:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 20:36:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2024-12-31 20:36:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 20:37:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljackaj', '2024-12-31 20:37:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2024-12-31 20:37:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2024-12-31 20:38:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-31 20:38:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2024-12-31 20:55:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 800.8521,-545.9084,16.3359', '2024-12-31 20:59:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droga', '2024-12-31 20:59:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /drugs', '2024-12-31 20:59:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droga', '2024-12-31 20:59:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droge', '2024-12-31 20:59:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 411 ', '2024-12-31 21:46:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droge', '2024-12-31 21:48:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /droge', '2024-12-31 21:48:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-31 21:48:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2024-12-31 21:48:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:32:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:32:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 520', '2025-01-01 09:33:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 550', '2025-01-01 09:33:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 550', '2025-01-01 09:33:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:37:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:38:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:38:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:39:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 09:39:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 09:39:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:39:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:47:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:55:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:55:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 09:55:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /polioce', '2025-01-01 15:56:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 15:56:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 15:56:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 15:56:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 15:56:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 15:56:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 15:59:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:00:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:03:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:03:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 16:04:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:04:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:04:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:04:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /police', '2025-01-01 16:05:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 16:28:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 16:28:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 16:28:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 16:29:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 16:29:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-01 16:36:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 16:52:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:52:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:52:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1313.6786,2546.3323,-21.6686', '2025-01-01 16:53:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:53:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 16:54:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:54:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:55:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:55:10');
INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:55:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:55:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:55:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 1313.6786,2546.3323,-21.6686', '2025-01-01 16:55:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /pljacka', '2025-01-01 16:56:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1587.4742 -2574.4417 29.4856', '2025-01-01 17:39:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 17:42:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-01 17:43:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 17:44:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-01 17:47:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createsz', '2025-01-01 17:47:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-01 17:50:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createsz', '2025-01-01 17:50:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heist', '2025-01-01 18:56:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistplan', '2025-01-01 18:56:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1587.4742 -2574.4417 29.4856', '2025-01-01 18:57:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistplan', '2025-01-01 18:58:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1587.4742 -2574.4417 29.4856', '2025-01-01 19:03:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistplan', '2025-01-01 19:04:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistplan', '2025-01-01 19:04:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 20:59:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 20:59:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 20:59:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 20:59:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 20:59:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-01 20:59:40'),
('COMMAND:  Pinky_Test je iskoristio komandu /stats', '2025-01-01 20:59:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-01 21:02:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 21:02:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 21:02:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 21:02:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 21:02:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 21:02:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-01 21:02:28'),
('COMMAND:  Pinky_Test je iskoristio komandu /accept', '2025-01-01 21:02:35'),
('COMMAND:  Pinky_Test je iskoristio komandu /help', '2025-01-01 21:02:39'),
('COMMAND:  Pinky_Test je iskoristio komandu /komande', '2025-01-01 21:02:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2025-01-01 21:04:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 21:04:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 21:04:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinivte', '2025-01-01 21:04:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 21:04:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 0 2', '2025-01-01 21:04:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem', '2025-01-01 21:04:55'),
('COMMAND:  Pinky_Test je iskoristio komandu /giveitek', '2025-01-01 21:04:58'),
('COMMAND:  Pinky_Test je iskoristio komandu /giveitem', '2025-01-01 21:04:58'),
('COMMAND:  Pinky_Test je iskoristio komandu /giveitem 71 1', '2025-01-01 21:05:01'),
('COMMAND:  Pinky_Test je iskoristio komandu /inv', '2025-01-01 21:05:07'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:05:15'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:19'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:24'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:05:42'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:05:52'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:54'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:56'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:57'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:05:58'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:10'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:12'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:15'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:22'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:28'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:33'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:38'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:41'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:44'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:47'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:06:51'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:07:01'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventoryx', '2025-01-01 21:07:06'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:07:07'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:07:12'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:07:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:07:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:08:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 21:08:38'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:08:40'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:08:43'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:08:47'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:08:53'),
('COMMAND:  Pinky_Test je iskoristio komandu /inventory', '2025-01-01 21:09:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 1 1', '2025-01-01 21:13:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 1 1', '2025-01-01 21:13:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 1 1', '2025-01-01 21:13:20'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:17:00'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:17:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 21:17:59'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:18:20'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:18:29'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:20:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2025-01-01 21:20:24'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:20:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:20:34'),
('COMMAND:  Frosty_Saints je iskoristio komandu /s 115', '2025-01-01 21:20:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 21:21:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 21:21:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 21:21:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 0 2', '2025-01-01 21:21:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 0 2', '2025-01-01 21:21:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /giveitem', '2025-01-01 21:21:28'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 71 1', '2025-01-01 21:21:32'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:21:43'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:25:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:29:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:35:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:36:27'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 71 1', '2025-01-01 21:47:51'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 50 1', '2025-01-01 21:48:04'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:49:19'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:49:43'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 50 1', '2025-01-01 21:49:53'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:49:54'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 51 1', '2025-01-01 21:49:58'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:49:59'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 50 2', '2025-01-01 21:50:09'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:50:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /inventory', '2025-01-01 21:55:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kick 0', '2025-01-01 21:55:23'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:56:09'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 70 1', '2025-01-01 21:56:19'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:56:20'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:56:23'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory 71 1', '2025-01-01 21:56:29'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 71 1', '2025-01-01 21:56:36'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:56:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-01 21:57:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-01 21:57:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-01 21:57:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 21:57:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 21:57:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 21:57:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 21:57:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-01 21:58:02'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 21:58:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-01 22:10:34'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 22:10:53'),
('COMMAND:  Frosty_Saints je iskoristio komandu /giveitem 71 2', '2025-01-01 22:11:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-01 22:11:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-01 22:11:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 2', '2025-01-01 22:11:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-01 22:11:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-01 22:11:16'),
('COMMAND:  Frosty_Saints je iskoristio komandu /inventory', '2025-01-01 22:11:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-02 17:44:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-02 18:16:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hakedujme', '2025-01-02 18:51:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hakedujme', '2025-01-02 18:59:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hakedujme', '2025-01-02 19:01:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:07:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:07:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:11:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:11:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2025-01-02 19:12:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:12:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:12:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:15:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:15:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:26:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:26:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:26:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:26:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:28:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:28:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:29:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:32:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:32:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:32:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:34:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:34:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:34:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 19:36:58'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 19:37:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 19:37:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 20:04:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:04:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:04:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:04:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:04:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:04:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:04:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:05:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:05:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:05:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:05:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 20:05:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /activecombo', '2025-01-02 20:05:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-02 20:05:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat chatlog.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat cleo.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat crashes.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat FramerateVigilante.SA.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat frostByte.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat III.VC.SA.LimitAdjuster.asi', '2025-01-02 21:10:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat InterfaceEditor.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat modloader.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat MoonLoader.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat NOPGamma.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat sampfuncs.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat Screenshot.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat sensfix.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat shadows.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat SilentPatchSA.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat skygrad.asi', '2025-01-02 21:10:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat AutoReboot.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat check-moonloader-updates.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat fogdist.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat RakLogger.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat reload_all.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat SF Integration.lua', '2025-01-02 21:10:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat', '2025-01-02 21:10:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:10:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:10:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat chatlog.asi', '2025-01-02 21:16:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat cleo.asi', '2025-01-02 21:16:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat crashes.asi', '2025-01-02 21:16:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat FramerateVigilante.SA.asi', '2025-01-02 21:16:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat frostByte.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat III.VC.SA.LimitAdjuster.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat InterfaceEditor.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat modloader.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat MoonLoader.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat NOPGamma.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat sampfuncs.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /reportcheat Screenshot.asi', '2025-01-02 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:17:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:17:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:22:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:22:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:30:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:30:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-02 21:31:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:31:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:31:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-02 21:32:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:39:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:39:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:40:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:40:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:44:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:44:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-02 21:45:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:45:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:46:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:51:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:51:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 21:52:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 21:52:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-02 22:04:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-02 22:04:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-03 09:27:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-03 09:27:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 09:27:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vreme', '2025-01-03 09:29:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-03 09:29:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2025-01-03 09:46:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 09:46:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 3', '2025-01-03 09:46:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 09:58:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hack', '2025-01-03 09:59:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hackcombo', '2025-01-03 09:59:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-03 10:02:07'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat chatlog.asi', '2025-01-03 10:18:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat cleo.asi', '2025-01-03 10:18:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat crashes.asi', '2025-01-03 10:18:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat FramerateVigilante.SA.asi', '2025-01-03 10:18:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat frostByte.asi', '2025-01-03 10:18:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat III.VC.SA.LimitAdjuster.asi', '2025-01-03 10:18:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat InterfaceEditor.asi', '2025-01-03 10:18:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat modloader.asi', '2025-01-03 10:18:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat MoonLoader.asi', '2025-01-03 10:18:44'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat NOPGamma.asi', '2025-01-03 10:18:44'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat sampfuncs.asi', '2025-01-03 10:18:44'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat Screenshot.asi', '2025-01-03 10:18:44'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat sensfix.asi', '2025-01-03 10:18:44'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat shadows.asi', '2025-01-03 10:18:45'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat SilentPatchSA.asi', '2025-01-03 10:18:45'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat skygrad.asi', '2025-01-03 10:18:45'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat AutoReboot.lua', '2025-01-03 10:18:46'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat check-moonloader-updates.lua', '2025-01-03 10:18:46'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat fogdist.lua', '2025-01-03 10:18:46'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat reload_all.lua', '2025-01-03 10:18:46'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat SF Integration.lua', '2025-01-03 10:18:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-03 10:19:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-03 10:19:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-03 10:19:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-03 10:19:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-03 10:19:29'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /h e', '2025-01-03 10:19:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-03 10:19:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-03 10:21:18'),
('COMMAND:  Vostic je iskoristio komandu /bruteforce', '2025-01-03 10:22:11'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat chatlog.asi', '2025-01-03 10:24:39'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat cleo.asi', '2025-01-03 10:24:39'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat crashes.asi', '2025-01-03 10:24:39'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat FramerateVigilante.SA.asi', '2025-01-03 10:24:39'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat frostByte.asi', '2025-01-03 10:24:40'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat III.VC.SA.LimitAdjuster.asi', '2025-01-03 10:24:40'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat InterfaceEditor.asi', '2025-01-03 10:24:40'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat modloader.asi', '2025-01-03 10:24:40'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat MoonLoader.asi', '2025-01-03 10:24:40'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat NOPGamma.asi', '2025-01-03 10:24:41'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat sampfuncs.asi', '2025-01-03 10:24:41'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat Screenshot.asi', '2025-01-03 10:24:41'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat sensfix.asi', '2025-01-03 10:24:41'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat shadows.asi', '2025-01-03 10:24:41'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat SilentPatchSA.asi', '2025-01-03 10:24:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat skygrad.asi', '2025-01-03 10:24:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat AutoReboot.lua', '2025-01-03 10:24:42'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat check-moonloader-updates.lua', '2025-01-03 10:24:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat fogdist.lua', '2025-01-03 10:24:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat reload_all.lua', '2025-01-03 10:24:43'),
('COMMAND:  Vostic je iskoristio komandu /reportcheat SF Integration.lua', '2025-01-03 10:24:43'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-03 10:24:51'),
('COMMAND:  Vostic je iskoristio komandu /goto 1', '2025-01-03 10:24:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere vo', '2025-01-03 10:24:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-03 10:24:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-03 10:24:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-03 10:25:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-03 10:25:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere vo', '2025-01-03 10:28:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere vo', '2025-01-03 10:28:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-03 10:28:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-03 10:28:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-03 10:28:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-03 10:28:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 411', '2025-01-03 10:28:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-03 10:29:29'),
('COMMAND:  Vostic je iskoristio komandu /bruteforce', '2025-01-03 10:30:17'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-03 11:13:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-03 11:13:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-03 11:13:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-03 11:13:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-03 11:13:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 11:13:39'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-03 11:13:43'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-03 11:14:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 11:14:13'),
('COMMAND:  Vostic je iskoristio komandu /bruteforce', '2025-01-03 11:14:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-03 11:15:08'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-03 11:16:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere vo', '2025-01-03 11:17:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-03 11:17:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-03 11:17:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinviter', '2025-01-03 11:17:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinviter', '2025-01-03 11:17:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-03 11:17:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 1 2', '2025-01-03 11:17:17'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-03 11:17:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 11:17:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-03 11:17:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 11:18:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-03 11:18:01'),
('COMMAND:  Vostic je iskoristio komandu /bruteforce', '2025-01-03 11:18:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-03 11:19:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sc', '2025-01-03 21:26:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sc e', '2025-01-03 21:26:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /help', '2025-01-03 21:26:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2025-01-03 21:26:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /tod 14', '2025-01-03 21:27:14'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /quests', '2025-01-03 21:27:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /questions', '2025-01-03 21:28:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 411', '2025-01-04 21:50:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /messageme', '2025-01-05 12:57:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 15:59:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto', '2025-01-05 15:59:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere', '2025-01-05 15:59:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spm', '2025-01-05 15:59:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kick', '2025-01-05 15:59:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /ban', '2025-01-05 15:59:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere Fro', '2025-01-05 15:59:38'),
('COMMAND:  Frosty je iskoristio komandu /startheist', '2025-01-05 15:59:48'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 15:59:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-05 15:59:59'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 16:00:07'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 16:00:11'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 16:00:16'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 16:00:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /r a', '2025-01-05 16:00:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:24:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-05 16:25:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-05 16:25:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere Fro', '2025-01-05 16:25:05'),
('COMMAND:  Vostic je iskoristio komandu /goto 2', '2025-01-05 16:25:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite]', '2025-01-05 16:25:11'),
('COMMAND:  Vostic je iskoristio komandu /goto 1', '2025-01-05 16:25:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvit', '2025-01-05 16:25:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-05 16:25:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite Fro 2', '2025-01-05 16:25:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite Fro 2', '2025-01-05 16:25:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 16:25:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:25:51'),
('COMMAND:  Frosty je iskoristio komandu /bruteforce', '2025-01-05 16:26:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-05 16:28:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite', '2025-01-05 16:29:20'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /heistinvite 2 3', '2025-01-05 16:29:21'),
('COMMAND:  Frosty je iskoristio komandu /prijavitebug', '2025-01-05 16:29:56'),
('COMMAND:  Frosty je iskoristio komandu /w', '2025-01-05 16:30:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere Fro', '2025-01-05 16:32:09'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 16:32:14'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 16:32:20'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 16:32:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:32:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-05 16:32:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 16:32:46'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 16:32:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-05 16:33:03'),
('COMMAND:  Frosty je iskoristio komandu /bruteforce', '2025-01-05 16:33:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bruteforce', '2025-01-05 16:33:45'),
('COMMAND:  Frosty je iskoristio komandu /dynamite', '2025-01-05 16:35:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:39:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-05 16:39:07'),
('COMMAND:  Frosty je iskoristio komandu /startheist', '2025-01-05 16:39:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere Fro', '2025-01-05 16:39:59'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 16:40:01'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 16:40:05'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 16:40:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 16:40:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 16:40:15'),
('COMMAND:  Frosty je iskoristio komandu /tp', '2025-01-05 16:40:16'),
('COMMAND:  Frosty je iskoristio komandu /teleport', '2025-01-05 16:40:19'),
('COMMAND:  Frosty je iskoristio komandu /teleports', '2025-01-05 16:40:21'),
('COMMAND:  Frosty je iskoristio komandu /teleport', '2025-01-05 16:40:25'),
('COMMAND:  Frosty je iskoristio komandu /teleports', '2025-01-05 16:40:25'),
('COMMAND:  Frosty je iskoristio komandu /ports', '2025-01-05 16:40:29'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 16:40:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere fro', '2025-01-05 16:40:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bruteforce', '2025-01-05 16:41:00'),
('COMMAND:  Frosty je iskoristio komandu /dynamite', '2025-01-05 16:41:01'),
('COMMAND:  Frosty je iskoristio komandu /dynamite', '2025-01-05 16:41:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /SVEH 411', '2025-01-05 16:44:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist', '2025-01-05 16:45:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /startheist 1', '2025-01-05 16:45:53'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:52:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-05 16:52:42'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 16:53:04'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 16:53:09'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 16:53:11'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 16:53:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 16:53:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:53:19'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-05 16:53:31'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bruteforce', '2025-01-05 16:53:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-05 16:55:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 16:57:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere fro', '2025-01-05 16:57:35'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 16:57:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-05 16:57:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-05 16:57:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vreme', '2025-01-05 16:57:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-05 16:58:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-05 16:59:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-05 16:59:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:02:29'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 17:04:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:04:45'),
('COMMAND:  Frosty je iskoristio komandu /startheist', '2025-01-05 17:04:46'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 17:04:46'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite', '2025-01-05 17:04:50'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 17:04:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /goto 0', '2025-01-05 17:05:36'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 0 2', '2025-01-05 17:05:40'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 1 2', '2025-01-05 17:05:44'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 1 2', '2025-01-05 17:05:50'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 1 2', '2025-01-05 17:05:52'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 1 2', '2025-01-05 17:06:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-05 17:06:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 17:06:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:06:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:06:27'),
('COMMAND:  Frosty je iskoristio komandu /dynamite', '2025-01-05 17:06:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bruteforce', '2025-01-05 17:06:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-05 17:08:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /healme', '2025-01-05 17:08:21'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /hy', '2025-01-05 17:10:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /h', '2025-01-05 17:10:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:10:32'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 17:10:34'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 17:14:49'),
('COMMAND:  Frosty je iskoristio komandu /startheist', '2025-01-05 17:15:00'),
('COMMAND:  Frosty je iskoristio komandu /startheist 1', '2025-01-05 17:15:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:15:22'),
('COMMAND:  Frosty je iskoristio komandu /heistinvite 1 2', '2025-01-05 17:15:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-05 17:15:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /teargas', '2025-01-05 17:16:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:16:05'),
('COMMAND:  Frosty je iskoristio komandu /dynamite', '2025-01-05 17:16:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /bruteforce', '2025-01-05 17:16:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /dynamite', '2025-01-05 17:17:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 17:19:33'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 17:19:33'),
('COMMAND:  Frosty je iskoristio komandu /port', '2025-01-05 17:19:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1587.4742 -2574.4417 29.4856', '2025-01-05 18:58:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 19:01:23'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-05 19:01:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-05 19:17:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-06 16:08:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-06 16:08:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 756.614990, 1787.895507, -61.703414', '2025-01-06 16:13:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 767.436157, 1794.156005, -69.999862', '2025-01-06 16:13:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 756.614990, 1787.895507, -61.703414', '2025-01-06 16:14:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 767.436157, 1794.156005, -69.999862', '2025-01-06 16:14:12'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto 773.671936, 1794.156005, -69.999862', '2025-01-06 16:14:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-06 16:53:28'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /chagnespawn', '2025-01-06 16:53:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /changespawn', '2025-01-06 16:53:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /getint', '2025-01-06 16:55:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybunker', '2025-01-06 19:54:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -1587.4742, -2574.4417, 29.4856', '2025-01-06 19:54:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybunker', '2025-01-06 19:54:47'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybunker', '2025-01-06 19:57:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-14 21:50:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /saveb businessCentreOruzaonica_Bigi', '2025-01-14 21:51:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /saveb businessCentreGarderober_Bigi', '2025-01-14 21:51:32'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-14 21:54:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-14 21:54:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-14 21:55:17'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-14 21:55:44'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522', '2025-01-16 21:49:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /givegun 0 24 90', '2025-01-16 21:50:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sc jesi tuuu', '2025-01-16 21:55:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-16 21:55:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-16 21:55:49'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-16 21:56:08'),
('COMMAND:  Vostic je iskoristio komandu /kuca', '2025-01-16 21:56:12'),
('COMMAND:  Vostic je iskoristio komandu /kuca', '2025-01-16 21:56:24'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 0', '2025-01-17 14:25:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setvw 0 0', '2025-01-17 14:25:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buyhouse', '2025-01-17 14:26:26'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-17 14:30:00'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:30:07'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:30:09'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:30:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:30:13'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:37:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /spanel', '2025-01-17 14:39:16'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buyhouse', '2025-01-17 14:39:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:39:32'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-17 14:40:36'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:40:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:41:08'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:41:13'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-17 14:47:22'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:47:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2025-01-17 14:50:36'),
('COMMAND:  Vostic je iskoristio komandu /goto 0', '2025-01-17 14:50:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 1', '2025-01-17 14:50:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:50:42'),
('COMMAND:  Vostic je iskoristio komandu /kuca', '2025-01-17 14:50:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /kuca', '2025-01-17 14:51:03'),
('COMMAND:  Vostic je iskoristio komandu /kuca', '2025-01-17 14:51:06'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-17 20:31:56'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybizcenter', '2025-01-17 20:32:10'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /buybizcenter', '2025-01-17 20:33:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /b radim ribara', '2025-01-17 21:16:59'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 11:51:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 11:57:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 11:58:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 12:01:15'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 12:01:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 12:04:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 12:06:18'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gethere 0', '2025-01-18 17:58:51'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite', '2025-01-18 17:58:54'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /finvite 0', '2025-01-18 17:58:55');
INSERT INTO `log_commands` (`log_str`, `date`) VALUES
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /capture', '2025-01-18 17:59:02'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /capture', '2025-01-18 18:00:04'),
('COMMAND:  Silva je iskoristio komandu /capture', '2025-01-18 18:00:54'),
('COMMAND:  Silva je iskoristio komandu /setskin si 2', '2025-01-18 18:01:24'),
('COMMAND:  Silva je iskoristio komandu /goto nodi', '2025-01-18 18:04:39'),
('COMMAND:  Silva je iskoristio komandu /goto nodi', '2025-01-18 18:04:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /q/q', '2025-01-18 18:08:07'),
('COMMAND:  Silva je iskoristio komandu /goto 3', '2025-01-18 18:11:22'),
('COMMAND:  Silva je iskoristio komandu /goto 3', '2025-01-18 18:11:23'),
('COMMAND:  Silva je iskoristio komandu /goto 2', '2025-01-18 18:11:25'),
('COMMAND:  Silva je iskoristio komandu /goto 1', '2025-01-18 18:11:26'),
('COMMAND:  Silva je iskoristio komandu /goto 0', '2025-01-18 18:11:27'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-18 18:11:28'),
('COMMAND:  Silva je iskoristio komandu /jetpack', '2025-01-18 18:11:37'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-18 18:11:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /capture', '2025-01-18 18:12:42'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2025-01-19 18:58:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vtod', '2025-01-19 19:00:30'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vport', '2025-01-19 19:00:35'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /vipport', '2025-01-19 19:00:38'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-19 19:00:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2025-01-19 19:02:18'),
('COMMAND:  Silva je iskoristio komandu /vtp', '2025-01-19 19:31:28'),
('COMMAND:  Silva je iskoristio komandu /g a', '2025-01-19 19:31:31'),
('COMMAND:  Fjerit_Olsun je iskoristio komandu /setvip', '2025-01-19 19:31:42'),
('COMMAND:  Silva je iskoristio komandu /killme', '2025-01-19 19:31:46'),
('COMMAND:  Silva je iskoristio komandu /setvip', '2025-01-19 19:31:49'),
('COMMAND:  Silva je iskoristio komandu /setvip 1 1', '2025-01-19 19:31:56'),
('COMMAND:  Silva je iskoristio komandu /setvip 1 1 10', '2025-01-19 19:31:59'),
('COMMAND:  Silva je iskoristio komandu /vtp', '2025-01-19 19:32:01'),
('COMMAND:  Silva je iskoristio komandu /vtp', '2025-01-19 19:32:16'),
('COMMAND:  Silva je iskoristio komandu /setvip 1 2 10', '2025-01-19 19:32:23'),
('COMMAND:  Silva je iskoristio komandu /vtp', '2025-01-19 19:32:24'),
('COMMAND:  Silva je iskoristio komandu /vtp 0', '2025-01-19 19:32:26'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /komande', '2025-01-19 19:59:57'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /help', '2025-01-19 20:00:04'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-19 20:00:05'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /jetpack', '2025-01-19 21:00:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /sveh 522 1 1', '2025-01-19 21:02:39'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 30', '2025-01-19 21:16:45'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -837.2924,2582.9185,3698.4119', '2025-01-19 21:16:46'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -837.2924,2582.9185,3698.4119', '2025-01-19 21:16:48'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -837.2924,2582.9185,3698.4119', '2025-01-19 21:16:50'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -837.2924,2582.9185,3698.4119', '2025-01-19 21:16:52'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-19 21:16:55'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /setint 0 29', '2025-01-19 21:17:03'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /xgoto -837.2924,2582.9185,3698.4119', '2025-01-19 21:17:04'),
('COMMAND:  Silva je iskoristio komandu /jail', '2025-01-19 21:55:06'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 21:55:13'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 21:55:15'),
('COMMAND:  Silva je iskoristio komandu /jail', '2025-01-19 21:56:17'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 21:56:20'),
('COMMAND:  Silva je iskoristio komandu /jail', '2025-01-19 21:56:36'),
('COMMAND:  Silva je iskoristio komandu /jail', '2025-01-19 21:59:20'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 21:59:22'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 22:04:35'),
('COMMAND:  Silva je iskoristio komandu /jail 0 1 1', '2025-01-19 22:06:11'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /port', '2025-01-20 20:20:25'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mute', '2025-01-20 20:20:33'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /mute 0 1', '2025-01-20 20:20:34'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gototurf', '2025-01-20 20:25:40'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /gototurf 1', '2025-01-20 20:25:41'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /cc', '2025-01-20 22:47:01'),
('COMMAND:  Nodislav_Aleksienko je iskoristio komandu /createturf', '2025-01-20 22:47:05'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:13:17'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:13:22'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:13:27'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:13:35'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:13:47'),
('COMMAND:  Vostic je iskoristio komandu /chatsize 12', '2025-01-26 00:17:18'),
('COMMAND:  Vostic je iskoristio komandu /chatsize 2', '2025-01-26 00:17:19'),
('COMMAND:  Vostic je iskoristio komandu /fontsize/cc', '2025-01-26 00:17:33'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2025-01-26 00:17:35'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:17:47'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:17:54'),
('COMMAND:  Vostic je iskoristio komandu /me ', '2025-01-26 00:18:01'),
('COMMAND:  Vostic je iskoristio komandu /me a', '2025-01-26 00:18:02'),
('COMMAND:  Vostic je iskoristio komandu /do a', '2025-01-26 00:18:06'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:18:18'),
('COMMAND:  Vostic je iskoristio komandu /akcenat', '2025-01-26 00:18:26'),
('COMMAND:  Vostic je iskoristio komandu /creategate', '2025-01-26 01:02:46'),
('COMMAND:  Vostic je iskoristio komandu /creategate 981', '2025-01-26 01:02:52'),
('COMMAND:  Vostic je iskoristio komandu /creategate 2933', '2025-01-26 01:06:21'),
('COMMAND:  Vostic je iskoristio komandu /veh 522', '2025-01-26 01:07:06'),
('COMMAND:  Vostic je iskoristio komandu /sveh 522', '2025-01-26 01:07:09'),
('COMMAND:  Vostic je iskoristio komandu /editgate', '2025-01-26 01:07:27'),
('COMMAND:  Vostic je iskoristio komandu /editgate 1', '2025-01-26 01:07:37'),
('COMMAND:  Vostic je iskoristio komandu /editgate 0', '2025-01-26 01:07:41'),
('COMMAND:  Vostic je iskoristio komandu /creategate 2933', '2025-01-26 01:19:15'),
('COMMAND:  Vostic je iskoristio komandu /creategate 2933', '2025-01-26 01:25:10'),
('COMMAND:  Vostic je iskoristio komandu /promenipasswordigracu', '2025-01-26 01:29:06'),
('COMMAND:  Vostic je iskoristio komandu /changepass', '2025-01-26 01:29:14'),
('COMMAND:  Vostic je iskoristio komandu /changepass 1 1', '2025-01-26 01:29:27'),
('COMMAND:  Vostic je iskoristio komandu /changepass 1 123456', '2025-01-26 01:29:31'),
('COMMAND:  Ogi je iskoristio komandu /gethere', '2025-01-26 01:34:03'),
('COMMAND:  Vostic je iskoristio komandu /setstaff 1 0', '2025-01-26 01:35:09'),
('COMMAND:  Vostic je iskoristio komandu /editgate', '2025-01-26 01:35:27'),
('COMMAND:  Vostic je iskoristio komandu /setstaff 1 4', '2025-01-26 01:35:58'),
('COMMAND:  Ogi je iskoristio komandu /editgate', '2025-01-26 01:36:09'),
('COMMAND:  Ogi je iskoristio komandu /editgate', '2025-01-26 01:36:11'),
('COMMAND:  Ogi je iskoristio komandu /bring 1', '2025-01-26 01:36:46'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:39:30'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:39:37'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:39:55'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:51:25'),
('COMMAND:  Vostic je iskoristio komandu /slap 0', '2025-01-26 10:51:40'),
('COMMAND:  Vostic je iskoristio komandu /slap 0', '2025-01-26 10:52:48'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:52:52'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 10:57:41'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:00:17'),
('COMMAND:  Vostic je iskoristio komandu /deleteatm', '2025-01-26 11:04:12'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 11:04:20'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:04:26'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:04:39'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:04:54'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:04:56'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:04:57'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:05:12'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:08:00'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:10:47'),
('COMMAND:  Vostic je iskoristio komandu /deletatm', '2025-01-26 11:11:04'),
('COMMAND:  Vostic je iskoristio komandu /deletatm', '2025-01-26 11:11:06'),
('COMMAND:  Vostic je iskoristio komandu /deleteatm', '2025-01-26 11:11:11'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 11:11:16'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:11:27'),
('COMMAND:  Vostic je iskoristio komandu /createatm', '2025-01-26 11:15:07'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:15:15'),
('COMMAND:  Vostic je iskoristio komandu /editatm', '2025-01-26 11:15:17'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2025-01-26 11:16:04'),
('COMMAND:  Vostic je iskoristio komandu /metro', '2025-01-26 11:31:58'),
('COMMAND:  Vostic je iskoristio komandu /metro', '2025-01-26 11:35:19'),
('COMMAND:  Vostic je iskoristio komandu /metro', '2025-01-26 11:40:52'),
('COMMAND:  Vostic je iskoristio komandu /metro', '2025-01-26 11:44:51'),
('COMMAND:  Vostic je iskoristio komandu /changename', '2025-01-27 00:51:44'),
('COMMAND:  Vostic je iskoristio komandu /changename 0 Vostic', '2025-01-27 00:52:00'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank', '2025-01-27 01:17:07'),
('COMMAND:  Vostic je iskoristio komandu /update', '2025-01-27 01:17:55'),
('COMMAND:  Ogi je iskoristio komandu /togtag', '2025-01-27 01:18:28'),
('COMMAND:  Vostic je iskoristio komandu /togtag', '2025-01-27 01:18:31'),
('COMMAND:  Vostic je iskoristio komandu /togtag', '2025-01-27 01:18:34'),
('COMMAND:  Ogi je iskoristio komandu /togtag', '2025-01-27 01:18:34'),
('COMMAND:  Ogi je iskoristio komandu /togtag', '2025-01-27 01:18:36'),
('COMMAND:  Ogi je iskoristio komandu /togtag', '2025-01-27 01:18:43'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 1', '2025-01-27 01:18:53'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 2', '2025-01-27 01:19:07'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 3', '2025-01-27 01:19:09'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 4', '2025-01-27 01:19:11'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 5', '2025-01-27 01:19:14'),
('COMMAND:  Ogi je iskoristio komandu /zaduzenja', '2025-01-27 01:19:15'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 6', '2025-01-27 01:19:15'),
('COMMAND:  Vostic je iskoristio komandu /setspecialrank Ogi 0', '2025-01-27 01:19:19'),
('COMMAND:  Ogi je iskoristio komandu /setspecialrank', '2025-01-27 01:19:28'),
('COMMAND:  Ogi je iskoristio komandu /setspecialrank 0 1', '2025-01-27 01:19:33'),
('COMMAND:  Ogi je iskoristio komandu /setspecialrank 0 2', '2025-01-27 01:19:42'),
('COMMAND:  Ogi je iskoristio komandu /setspecialrank 0 6', '2025-01-27 01:19:51'),
('COMMAND:  Ogi je iskoristio komandu /setspecialrank 0 1', '2025-01-27 01:19:55'),
('COMMAND:  Vostic je iskoristio komandu /changegender', '2025-01-27 01:32:30'),
('COMMAND:  Vostic je iskoristio komandu /changegender Vostic 1', '2025-01-27 01:32:34'),
('COMMAND:  Vostic je iskoristio komandu /changegender Vostic 0', '2025-01-27 01:32:49'),
('COMMAND:  Vostic je iskoristio komandu /createstreet', '2025-01-27 01:51:47'),
('COMMAND:  Vostic je iskoristio komandu /createstreet VokiUlica 25000', '2025-01-27 01:52:00'),
('COMMAND:  Vostic je iskoristio komandu /createstreet', '2025-01-27 01:55:40'),
('COMMAND:  Vostic je iskoristio komandu /createstreet Meow 30000', '2025-01-27 01:55:44'),
('COMMAND:  Vostic je iskoristio komandu /buystreet', '2025-01-27 01:56:31'),
('COMMAND:  Vostic je iskoristio komandu /streetname', '2025-01-27 01:57:37'),
('COMMAND:  Vostic je iskoristio komandu /streetname Omg', '2025-01-27 01:57:39'),
('COMMAND:  Vostic je iskoristio komandu /sellstreet', '2025-01-27 01:57:48'),
('COMMAND:  Vostic je iskoristio komandu /deletestreet', '2025-01-27 01:57:58'),
('COMMAND:  Vostic je iskoristio komandu /vpnlist', '2025-01-27 10:15:59'),
('COMMAND:  Vostic je iskoristio komandu /vpnlist Vostic', '2025-01-27 10:16:03'),
('COMMAND:  Vostic je iskoristio komandu /vpnlist Vostic', '2025-01-27 10:18:37'),
('COMMAND:  Vostic je iskoristio komandu /veh 562', '2025-01-27 10:25:34'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-27 10:25:37'),
('COMMAND:  Vostic je iskoristio komandu /fv', '2025-01-27 10:28:50'),
('COMMAND:  Vostic je iskoristio komandu /fv 0', '2025-01-27 10:28:53'),
('COMMAND:  Vostic je iskoristio komandu /fv 0', '2025-01-27 10:29:58'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 10:30:32'),
('COMMAND:  Vostic je iskoristio komandu /catalogue', '2025-01-27 10:30:42'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 10:32:11'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 10:34:51'),
('COMMAND:  Vostic je iskoristio komandu /fixveh', '2025-01-27 10:35:16'),
('COMMAND:  Vostic je iskoristio komandu /fixveh 0', '2025-01-27 10:35:18'),
('COMMAND:  Vostic je iskoristio komandu /fixveh 0', '2025-01-27 10:37:00'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 10:58:55'),
('COMMAND:  Vostic je iskoristio komandu /catalogue', '2025-01-27 10:59:10'),
('COMMAND:  Vostic je iskoristio komandu /catalogue', '2025-01-27 10:59:45'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:00:25'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:03:01'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:14:27'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:14:39'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:14:48'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:16:31'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:16:42'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:16:48'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:18:24'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:18:29'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:18:33'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:18:34'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:22:26'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:22:35'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:25:57'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:27:52'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:01'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:18'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:24'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:34'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:41'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:45'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:28:49'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:32:25'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:32:31'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:32:43'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:33:02'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2025-01-27 11:33:07'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:34:14'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:34:30'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:36:45'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:36:49'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-27 11:36:53'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:36:55'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:36:58'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:37:03'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:37:17'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:39:18'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-27 11:39:32'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-28 18:04:47'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-28 18:04:53'),
('COMMAND:  Vostic je iskoristio komandu /veh 522', '2025-01-28 18:05:56'),
('COMMAND:  Vostic je iskoristio komandu /sveh 552', '2025-01-28 18:06:00'),
('COMMAND:  Vostic je iskoristio komandu /sveh 552', '2025-01-28 18:06:03'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-28 18:06:05'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:06:21'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:06:50'),
('COMMAND:  Vostic je iskoristio komandu /registrationed', '2025-01-28 18:10:24'),
('COMMAND:  Vostic je iskoristio komandu /registrationend', '2025-01-28 18:10:29'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-28 18:21:22'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-28 18:21:28'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:22:22'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-28 18:22:33'),
('COMMAND:  Vostic je iskoristio komandu /cc', '2025-01-28 18:22:46'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-28 18:22:48'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-28 18:22:50'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:22:53'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:23:00'),
('COMMAND:  Vostic je iskoristio komandu /sveh 562', '2025-01-28 18:23:02'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-28 18:23:07'),
('COMMAND:  Vostic je iskoristio komandu /catalgoeu', '2025-01-28 18:23:19'),
('COMMAND:  Vostic je iskoristio komandu /catalogue', '2025-01-28 18:23:22'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-28 18:23:53'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-28 18:24:05'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-28 18:24:37'),
('COMMAND:  Vostic je iskoristio komandu /tinspect', '2025-01-28 18:24:52'),
('COMMAND:  Vostic je iskoristio komandu /registrationedn', '2025-01-28 18:28:09'),
('COMMAND:  Vostic je iskoristio komandu /registrationend', '2025-01-28 18:28:12'),
('COMMAND:  Vostic je iskoristio komandu /v', '2025-01-28 18:28:32'),
('COMMAND:  Vostic je iskoristio komandu /pee', '2025-01-28 19:00:40'),
('COMMAND:  Vostic je iskoristio komandu /anims', '2025-01-28 19:01:08'),
('COMMAND:  Vostic je iskoristio komandu /police', '2025-01-29 21:48:52'),
('COMMAND:  Vostic je iskoristio komandu /police', '2025-01-29 21:48:58'),
('COMMAND:  Vostic je iskoristio komandu /police', '2025-01-29 21:49:03'),
('COMMAND:  Vostic je iskoristio komandu /police', '2025-01-29 21:49:08'),
('COMMAND:  Vostic je iskoristio komandu /police', '2025-01-29 21:49:12'),
('COMMAND:  Vostic je iskoristio komandu /update', '2025-01-29 21:49:35'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:50:08'),
('COMMAND:  Vostic je iskoristio komandu /writeticket', '2025-01-29 21:50:23'),
('COMMAND:  Vostic je iskoristio komandu /port', '2025-01-29 21:50:26'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:50:44'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:50:47'),
('COMMAND:  Ogi je iskoristio komandu /komande', '2025-01-29 21:50:53'),
('COMMAND:  Vostic je iskoristio komandu /writeticket', '2025-01-29 21:51:16'),
('COMMAND:  Vostic je iskoristio komandu /writeticket 1', '2025-01-29 21:51:18'),
('COMMAND:  Ogi je iskoristio komandu /payticket', '2025-01-29 21:52:55'),
('COMMAND:  Vostic je iskoristio komandu /giveplayermoney', '2025-01-29 21:53:04'),
('COMMAND:  Vostic je iskoristio komandu /setplayermoney 1 99999999 1', '2025-01-29 21:53:15'),
('COMMAND:  Ogi je iskoristio komandu /payticket', '2025-01-29 21:53:19'),
('COMMAND:  Vostic je iskoristio komandu /writeticket', '2025-01-29 21:53:51'),
('COMMAND:  Vostic je iskoristio komandu /writeticket 1', '2025-01-29 21:53:54'),
('COMMAND:  Vostic je iskoristio komandu /update', '2025-01-29 21:54:51'),
('COMMAND:  Vostic je iskoristio komandu /gov ', '2025-01-29 21:54:59'),
('COMMAND:  Vostic je iskoristio komandu /gov  AAAAAAAAAAA', '2025-01-29 21:55:02'),
('COMMAND:  Vostic je iskoristio komandu /update', '2025-01-29 21:55:09'),
('COMMAND:  Vostic je iskoristio komandu /pokaziznacku', '2025-01-29 21:55:18'),
('COMMAND:  Ogi je iskoristio komandu /pokaziznacku', '2025-01-29 21:55:18'),
('COMMAND:  Vostic je iskoristio komandu /pokaziznacku 1', '2025-01-29 21:55:20'),
('COMMAND:  Vostic je iskoristio komandu /pokaziznacku 1', '2025-01-29 21:55:24'),
('COMMAND:  Vostic je iskoristio komandu /kaucija', '2025-01-29 21:55:52'),
('COMMAND:  Ogi je iskoristio komandu /jail', '2025-01-29 21:56:19'),
('COMMAND:  Ogi je iskoristio komandu /jail 1 alcatraz 0', '2025-01-29 21:56:29'),
('COMMAND:  Ogi je iskoristio komandu /jail 1 asd 30', '2025-01-29 21:56:39'),
('COMMAND:  Ogi je iskoristio komandu /jail 1 alcatraz 30', '2025-01-29 21:56:45'),
('COMMAND:  Ogi je iskoristio komandu /jail 1  30', '2025-01-29 21:56:49'),
('COMMAND:  Ogi je iskoristio komandu /jail ', '2025-01-29 21:57:00'),
('COMMAND:  Ogi je iskoristio komandu /jail', '2025-01-29 21:57:39'),
('COMMAND:  Ogi je iskoristio komandu /jail 1 1 10', '2025-01-29 21:57:43'),
('COMMAND:  Ogi je iskoristio komandu /jail 0 ', '2025-01-29 21:57:48'),
('COMMAND:  Ogi je iskoristio komandu /jail 0 0 1', '2025-01-29 21:57:51'),
('COMMAND:  Ogi je iskoristio komandu /setstaff 0 0', '2025-01-29 21:57:58'),
('COMMAND:  Ogi je iskoristio komandu /jail 0 0 1', '2025-01-29 21:58:00'),
('COMMAND:  Ogi je iskoristio komandu /jail 0 0 1', '2025-01-29 21:58:05'),
('COMMAND:  Ogi je iskoristio komandu /jail', '2025-01-29 21:58:09'),
('COMMAND:  Ogi je iskoristio komandu /jail 0 1 10', '2025-01-29 21:58:15'),
('COMMAND:  Ogi je iskoristio komandu /ogot o0', '2025-01-29 21:58:19'),
('COMMAND:  Ogi je iskoristio komandu /ogoto 0', '2025-01-29 21:58:20'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:58:22'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:58:24'),
('COMMAND:  Ogi je iskoristio komandu /goto 0', '2025-01-29 21:58:25'),
('COMMAND:  Ogi je iskoristio komandu /unjail', '2025-01-29 21:58:26'),
('COMMAND:  Ogi je iskoristio komandu /unprison', '2025-01-29 21:58:30'),
('COMMAND:  Ogi je iskoristio komandu /jail', '2025-01-29 21:58:33'),
('COMMAND:  Ogi je iskoristio komandu /unjail', '2025-01-29 21:58:36'),
('COMMAND:  Ogi je iskoristio komandu /unprison', '2025-01-29 21:58:38'),
('COMMAND:  Ogi je iskoristio komandu /unprison 0', '2025-01-29 21:58:42'),
('COMMAND:  Ogi je iskoristio komandu /unjail', '2025-01-29 21:58:51'),
('COMMAND:  Ogi je iskoristio komandu /unprison', '2025-01-29 21:58:54'),
('COMMAND:  Ogi je iskoristio komandu /jail ', '2025-01-29 21:58:59'),
('COMMAND:  Ogi je iskoristio komandu /jail  0 1 1', '2025-01-29 21:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `log_connection`
--

CREATE TABLE `log_connection` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_connection`
--

INSERT INTO `log_connection` (`log_str`, `date`) VALUES
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 10:04:14'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 11:08:38'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 11:32:40'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 11:38:10'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 11:49:35'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 12:04:11'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-09 12:08:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-09 21:47:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-09 21:50:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-11 18:19:10'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-11 18:23:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-13 15:24:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-13 22:05:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-13 22:09:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-13 22:13:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-13 22:22:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-14 21:45:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-14 21:54:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-14 22:06:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 10:35:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 10:38:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 10:41:02'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 12:22:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 12:23:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:01:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:03:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:06:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:10:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:17:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:19:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:22:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 13:23:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 14:38:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 14:53:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 14:54:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 14:58:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:06:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:10:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:12:33'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:18:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:20:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:38:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:44:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:49:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:52:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 15:59:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 16:08:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 16:15:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 16:15:34'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 16:16:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 16:36:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 16:39:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 16:44:57'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 16:45:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 17:06:17'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 17:07:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 17:10:50'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-15 17:11:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-15 19:23:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 16:19:21'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-19 16:19:34'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-19 16:28:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 16:28:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 17:44:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 17:49:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 17:51:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 17:54:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 17:57:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:00:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:05:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:07:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:20:32'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-19 18:21:49'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-19 18:23:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:25:39'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-19 18:26:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:39:29'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-19 18:40:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 18:51:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 20:44:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 20:47:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 20:52:34'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 20:55:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 20:57:40'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 21:04:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 21:09:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-19 21:19:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 26.57.53.176', '2024-12-19 22:01:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 26.57.53.176', '2024-12-19 22:03:55'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:04:02'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:13:41'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:14:42'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:28:36'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:33:08'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-19 22:39:27'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 12:49:20'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 12:58:52'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:02:24'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:06:38'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:08:24'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:12:40'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:13:32'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:28:36'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:30:47'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:32:12'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:34:43'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:36:02'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:45:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:48:57'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:50:25'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:52:54'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 13:56:10'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:00:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:17:22'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:34:59'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:44:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:49:12'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-20 14:51:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:51:10'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:54:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 14:58:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:01:33'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:04:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:10:56'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:15:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:19:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:22:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:29:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 15:32:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 16:36:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 16:41:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:13:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:17:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:18:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:19:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:27:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 19:32:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:26:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:30:19'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-20 20:30:57'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-20 20:32:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:32:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:41:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:44:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 20:49:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 21:07:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-20 21:09:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 08:44:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 08:46:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 08:50:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 08:54:33'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 10:01:59'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 10:07:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 10:32:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 11:57:56'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 12:38:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 12:41:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 12:43:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:13:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:16:22'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:22:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:25:34'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:26:42'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:29:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:35:39'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:37:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:39:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:43:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:45:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:49:34'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:52:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 13:57:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 14:52:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 15:01:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 15:09:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 15:11:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 15:26:40'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 15:30:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 17:15:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 17:23:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 17:30:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:09:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:14:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:20:30'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-21 19:23:21'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-21 19:24:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:39:02'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-21 19:39:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:42:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 19:56:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 20:28:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 20:30:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-21 21:12:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:13:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:32:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:39:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:45:29'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:49:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 09:53:53'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 10:08:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:20:26'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-22 13:20:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:41:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:43:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:48:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:52:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 13:58:22'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 15:28:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 15:37:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 15:47:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 15:50:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 15:53:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 16:12:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 16:23:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 16:28:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 17:26:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 17:29:34'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 18:13:40'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 18:17:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 18:33:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 18:39:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 18:54:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 19:20:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 20:42:00'),
('CONNECT-LOG:  Frenkie_Deep se konektuje na server | IP : 26.14.197.215', '2024-12-22 20:47:27'),
('CONNECT-LOG:  Frenkie_Deep se konektuje na server | IP : 26.14.197.215', '2024-12-22 20:47:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-22 20:47:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 14:37:56'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 14:49:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 15:05:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 15:08:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 15:16:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 15:52:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 15:55:53'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:15:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:18:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:23:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:25:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:26:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:28:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:30:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:34:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:36:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:39:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:43:10'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:46:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:51:42'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:55:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 16:57:42'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 17:13:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 17:19:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 17:23:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 17:27:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 17:50:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 18:37:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 18:49:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 18:56:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 18:58:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 19:00:42'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 19:05:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 19:08:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 19:10:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 20:44:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 20:48:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 20:51:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 20:54:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:06:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:15:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:19:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:33:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:41:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 21:59:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:24:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:26:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:37:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:39:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:43:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-23 22:44:07'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:25:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:26:46'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:28:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:29:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:31:27'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:31:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:34:57'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:35:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:54:34'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:54:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 13:57:52'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 13:57:57'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 14:00:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 14:00:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 14:32:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 14:34:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 14:38:32'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-24 14:39:40'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 16:47:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 16:50:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 17:32:34'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-24 18:05:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 18:05:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 18:08:11'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-24 18:08:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 18:10:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 18:11:16'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-24 18:11:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 20:36:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 20:46:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 20:54:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 20:58:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:00:42'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-24 21:01:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:17:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:24:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:32:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:44:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-24 21:51:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 10:17:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 10:27:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 10:39:31'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-25 10:59:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 11:00:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 11:41:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:06:50'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:09:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:10:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:12:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:15:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:17:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:42:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 12:43:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 13:23:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 13:28:37'),
('CONNECT-LOG:  Filip_Panic se konektuje na server | IP : 127.0.0.1', '2024-12-25 17:33:39'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 17:42:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 21:28:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 21:32:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:07:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:14:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:17:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:22:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:27:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-25 22:46:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 09:53:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:13:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:15:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:21:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:23:56'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:50:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 10:53:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 13:35:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 14:22:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 14:24:09'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 14:29:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:17:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:18:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:19:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:21:29'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:21:54'),
('CONNECT-LOG:  Gobejla_West se konektuje na server | IP : 127.0.0.1', '2024-12-26 15:32:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 18:48:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 19:48:23'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-26 19:49:02'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2024-12-26 19:52:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 19:55:42'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 19:59:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-26 20:02:55'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 17:42:37'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 17:47:59'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 18:12:39'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 18:27:03'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 18:35:57'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2024-12-27 18:46:55'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 08:50:39'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 10:02:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 12:12:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 12:15:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 13:21:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-29 17:57:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 08:25:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 08:29:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 08:31:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 11:33:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 11:49:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 11:51:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 11:53:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 16:19:05'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 16:20:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 18:17:11'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 19:16:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 19:17:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 19:20:37'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 19:20:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 19:29:42'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 19:29:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-30 19:30:53'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 19:30:54'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2024-12-30 19:31:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 17:07:29'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 17:09:29'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 17:11:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 17:19:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 17:25:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 19:49:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 20:33:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 20:55:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 20:58:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2024-12-31 21:46:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 09:32:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 09:45:39'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 09:46:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 09:55:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 15:56:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 15:58:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 16:04:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 16:28:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 16:52:03'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 16:54:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 17:39:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 18:56:36'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 19:03:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 20:58:10'),
('CONNECT-LOG:  Pinky_Test se konektuje na server | IP : 26.138.130.204', '2025-01-01 20:58:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:01:57'),
('CONNECT-LOG:  Pinky_Test se konektuje na server | IP : 26.138.130.204', '2025-01-01 21:01:57'),
('CONNECT-LOG:  Pinky_Test se konektuje na server | IP : 26.138.130.204', '2025-01-01 21:04:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:04:10'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:08:06'),
('CONNECT-LOG:  Pinky_Test se konektuje na server | IP : 26.138.130.204', '2025-01-01 21:08:21'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:15:34'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:19:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:19:53'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:24:49'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:25:44'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:29:00'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:31:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:35:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:47:15'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:47:16'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:49:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 21:54:46'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:55:03'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:55:53'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 21:57:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 22:08:57'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-01 22:09:19'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 22:09:25'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-01 22:10:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 17:43:56'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 18:16:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 18:51:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 18:59:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:01:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:07:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:10:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:10:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:11:39'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:15:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:26:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:28:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:32:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:33:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 19:36:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 20:04:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 20:25:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:10:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:16:47'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:17:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:21:48'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:30:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:31:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:39:22'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:44:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 21:51:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-02 22:04:02'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 09:26:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 09:58:37'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 10:18:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 10:18:36'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 10:24:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 10:24:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 10:27:44'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 10:27:54'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 10:43:26'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 10:43:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 11:12:02'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 11:12:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 11:16:00'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-03 11:16:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-03 21:25:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-04 21:50:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 12:57:31'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 15:54:55'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 15:58:31'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 16:24:22'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 16:24:25'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-05 16:24:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 16:31:30'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 16:31:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 16:38:43'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 16:39:30'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 16:51:40'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 16:51:41'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 17:04:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 17:04:25'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 17:05:18'),
('CONNECT-LOG:  Frosty se konektuje na server | IP : 26.177.240.214', '2025-01-05 17:14:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 17:14:52'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-05 18:58:30');
INSERT INTO `log_connection` (`log_str`, `date`) VALUES
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 16:07:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 16:53:04'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 17:00:07'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 17:24:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 19:54:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-06 19:57:20'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-14 21:50:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-16 21:49:13'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-16 21:54:45'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 11:36:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 11:37:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 11:40:13'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 11:43:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 11:43:40'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:25:01'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:25:33'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-17 14:29:26'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:36:59'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-17 14:37:14'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:39:01'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-17 14:40:15'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:46:27'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-17 14:47:06'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 14:50:04'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 26.93.86.234', '2025-01-17 14:50:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 20:30:28'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 20:33:22'),
('CONNECT-LOG:  Frosty_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-17 21:13:13'),
('CONNECT-LOG:  Frostyslav_Saints se konektuje na server | IP : 26.177.240.214', '2025-01-17 21:14:08'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-17 21:15:21'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 11:50:38'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 11:56:43'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 11:58:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 12:00:51'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 12:04:17'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 12:05:59'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-18 17:58:19'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 17:58:35'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 18:03:44'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-18 18:04:23'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 18:05:46'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 18:09:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 18:11:04'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-18 18:11:05'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-18 18:13:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 18:57:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 19:02:03'),
('CONNECT-LOG:  Fjerit_Olsun se konektuje na server | IP : 127.0.0.1', '2025-01-19 19:29:58'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 19:30:58'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 19:40:05'),
('CONNECT-LOG:  Fjerit_Olsun se konektuje na server | IP : 127.0.0.1', '2025-01-19 19:59:11'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 19:59:41'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:00:16'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:02:24'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:16:05'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:54:31'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 21:54:46'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:55:55'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 21:56:01'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:58:33'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 21:58:46'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 21:59:01'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 22:03:56'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 22:04:19'),
('CONNECT-LOG:  Djura_Ajradinovski se konektuje na server | IP : 127.0.0.1', '2025-01-19 22:05:22'),
('CONNECT-LOG:  Silva se konektuje na server | IP : 26.201.160.164', '2025-01-19 22:05:49'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 20:08:27'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 20:20:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 22:46:18'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 23:00:58'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 23:04:32'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 23:08:12'),
('CONNECT-LOG:  Nodislav_Aleksienko se konektuje na server | IP : 127.0.0.1', '2025-01-20 23:11:03'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 00:12:12'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 00:16:56'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:02:21'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:05:51'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:18:46'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:24:43'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:28:23'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-26 01:28:28'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-26 01:29:24'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-26 01:29:57'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 01:32:22'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-26 01:33:48'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 10:39:01'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 10:51:02'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 10:57:17'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:03:47'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:07:34'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:10:23'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:13:35'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:14:44'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:31:31'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:34:58'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:40:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-26 11:44:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 00:51:29'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 01:16:48'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-27 01:18:09'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 01:32:19'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 01:51:16'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 01:54:59'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 10:15:45'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 10:18:24'),
('CONNECT-LOG:  Vostica1 se konektuje na server | IP : 127.0.0.1', '2025-01-27 10:19:18'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 10:25:05'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 10:58:39'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:02:51'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:14:15'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:16:20'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:18:11'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:22:13'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:24:57'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:25:46'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:27:42'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:32:14'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:36:34'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-27 11:39:09'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-28 18:04:38'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-28 18:21:11'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-28 18:57:12'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-28 19:00:30'),
('CONNECT-LOG:  Vostic se konektuje na server | IP : 127.0.0.1', '2025-01-29 21:48:37'),
('CONNECT-LOG:  Ogi se konektuje na server | IP : 26.61.19.159', '2025-01-29 21:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `log_crecords`
--

CREATE TABLE `log_crecords` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_crecords`
--

INSERT INTO `log_crecords` (`log_str`, `date`) VALUES
('ROBBERY:  Nodislav_Aleksienko je obio kasu | Iznos novca 159', '2024-12-21 13:17:27'),
('ROBBERY:  Nodislav_Aleksienko je obio kasu | Iznos novca 46', '2024-12-21 13:23:12'),
('GOV: Vostic: AAAAAAAAAAA', '2025-01-29 21:55:02'),
('POLICE: Vostic je pokazao znacku igracu Ogi_Ivanov', '2025-01-29 21:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_staff`
--

CREATE TABLE `log_staff` (
  `log_str` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_staff`
--

INSERT INTO `log_staff` (`log_str`, `date`) VALUES
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-11 18:46:31'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Nodislav_Aleksienko', '2024-12-13 22:17:26'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-13 22:17:28'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 10:44:09'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:00:39'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 1 igracu Vostic', '2024-12-15 16:16:38'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:16:47'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 1 igracu Nodislav_Aleksienko', '2024-12-15 16:17:01'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 3 igracu Nodislav_Aleksienko', '2024-12-15 16:17:04'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 4 igracu Nodislav_Aleksienko', '2024-12-15 16:17:06'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Vostic', '2024-12-15 16:17:49'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-15 16:17:59'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Vostic', '2024-12-15 16:18:02'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Vostic', '2024-12-15 16:18:04'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-15 16:18:06'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:39:49'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 4 igracu Nodislav_Aleksienko', '2024-12-15 16:45:29'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:48:13'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:48:17'),
('STAFF:  Vostic je dao oruzje id 30 igracu Nodislav_Aleksienko', '2024-12-15 16:49:04'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 16:49:09'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Vostic', '2024-12-15 16:54:09'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-15 16:54:14'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Nodislav_Aleksienko', '2024-12-15 16:56:32'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-15 17:18:41'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-19 18:21:16'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-24 18:13:47'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-26 10:08:53'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-26 14:53:21'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-30 18:17:48'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-30 19:21:30'),
('STAFF:  Vostic je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-30 19:22:38'),
('STAFF:  Vostic je dao oruzje id 24 igracu Vostic', '2024-12-30 19:22:45'),
('STAFF:  Vostic je dao oruzje id 24 igracu Vostic', '2024-12-30 19:25:20'),
('STAFF:  Vostic je dao oruzje id 24 igracu Vostic', '2024-12-30 19:25:21'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Nodislav_Aleksienko', '2024-12-30 19:28:00'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Nodislav_Aleksienko', '2024-12-30 19:28:07'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-30 19:28:09'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Vostic', '2024-12-30 19:28:11'),
('STAFF:  Nodislav_Aleksienko je odmrznuo igraca Nodislav_Aleksienko', '2024-12-30 19:28:23'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Vostic', '2024-12-30 19:32:14'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Nodislav_Aleksienko', '2024-12-30 19:32:18'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Nodislav_Aleksienko', '2024-12-30 19:33:10'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 34 igracu Vostic', '2024-12-30 19:34:42'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2024-12-30 19:37:26'),
('STAFF:  Nodislav_Aleksienko je zamrznuo igraca Nodislav_Aleksienko', '2024-12-30 19:38:55'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2025-01-02 19:12:01'),
('STAFF:  Nodislav_Aleksienko je dao oruzje id 24 igracu Nodislav_Aleksienko', '2025-01-16 21:50:09'),
('STAFF: Silva je dodelio Silva VIP nivo 1 na 10 dana', '2025-01-19 19:31:59'),
('STAFF: Silva je dodelio Silva VIP nivo 2 na 10 dana', '2025-01-19 19:32:23'),
('STAFF: Vostic je promenio sifru igraca Ogi', '2025-01-26 01:29:31'),
('STAFF:  Vostic je postavio staff level 0 igracu Ogi', '2025-01-26 01:35:09'),
('STAFF:  Vostic je postavio staff level 4 igracu Ogi', '2025-01-26 01:35:58'),
('STAFF:  Vostic je slapovao igraca Vostic', '2025-01-26 10:51:40'),
('STAFF:  Vostic je slapovao igraca Vostic', '2025-01-26 10:52:48'),
('STAFF: Vostic je promenio ime igracu Joy_Silence u: Vostic', '2025-01-27 00:52:00'),
('STAFF: Vostic je promenio pol igracu Vostic iz Musko u Zensko', '2025-01-27 01:32:34'),
('STAFF: Vostic je promenio pol igracu Vostic iz Zensko u Musko', '2025-01-27 01:32:49'),
('STAFF: Vostic je kreirao ulicu Meow (ID: 1, Cena: 30000)', '2025-01-27 01:55:44'),
('STAFF: Vostic je obrisao ulicu Omg (ID: 1)', '2025-01-27 01:57:58'),
('STAFF: Vostic je proverio VPN listu za IP 127.0.0.1 (Vostic)', '2025-01-27 10:18:37'),
('STAFF:  Ogi je postavio staff level 0 igracu Vostic', '2025-01-29 21:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `metro_stations`
--

CREATE TABLE `metro_stations` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metro_stations`
--

INSERT INTO `metro_stations` (`id`, `name`, `x`, `y`, `z`) VALUES
(1, 'Voki Supercharged', 2004.93, -1452.46, 13.5547),
(3, 'Maryland - Market Station', 827.046, -1333.97, 13.5469),
(4, 'Maryland - H4RBOR Bank', 1007.32, -1154.45, 23.8321);

-- --------------------------------------------------------

--
-- Table structure for table `mowerdata`
--

CREATE TABLE `mowerdata` (
  `storageCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mowerdata`
--

INSERT INTO `mowerdata` (`storageCapacity`) VALUES
(266);

-- --------------------------------------------------------

--
-- Table structure for table `player_crypto`
--

CREATE TABLE `player_crypto` (
  `character_id` int(11) NOT NULL,
  `AmountBTC` float DEFAULT NULL,
  `AmountETH` float DEFAULT NULL,
  `AmountLTC` float DEFAULT NULL,
  `AmountUSDT` float DEFAULT NULL,
  `AmountDOT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_crypto`
--

INSERT INTO `player_crypto` (`character_id`, `AmountBTC`, `AmountETH`, `AmountLTC`, `AmountUSDT`, `AmountDOT`) VALUES
(2, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_documents`
--

CREATE TABLE `player_documents` (
  `character_document` int(11) NOT NULL,
  `NationalID` int(11) NOT NULL,
  `Passport` int(11) NOT NULL,
  `DriveLicense` int(11) NOT NULL,
  `MotoLicense` int(11) NOT NULL,
  `BoatLicense` int(11) NOT NULL,
  `GunLicense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_documents`
--

INSERT INTO `player_documents` (`character_document`, `NationalID`, `Passport`, `DriveLicense`, `MotoLicense`, `BoatLicense`, `GunLicense`) VALUES
(4, 0, 0, 1, 0, 0, 0),
(11, 0, 0, 1, 0, 0, 0),
(24, 0, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 0, 0, 0),
(30, 0, 0, 0, 0, 0, 0),
(31, 0, 0, 0, 0, 0, 0),
(32, 0, 0, 0, 0, 0, 0),
(33, 0, 0, 0, 0, 0, 0),
(34, 0, 0, 0, 0, 0, 0),
(35, 0, 0, 0, 0, 0, 0),
(36, 0, 0, 0, 0, 0, 0),
(37, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_electronic`
--

CREATE TABLE `player_electronic` (
  `character_electronics` int(11) NOT NULL,
  `Dron` tinyint(4) NOT NULL DEFAULT 0,
  `Battery` int(11) NOT NULL DEFAULT 0,
  `GPS` tinyint(4) NOT NULL DEFAULT 0,
  `phoneModel` int(11) NOT NULL DEFAULT -1,
  `phoneNumber` varchar(16) NOT NULL DEFAULT '0 | 0 | 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_electronic`
--

INSERT INTO `player_electronic` (`character_electronics`, `Dron`, `Battery`, `GPS`, `phoneModel`, `phoneNumber`) VALUES
(4, 0, 0, 0, 0, '60 | 826 | 245'),
(11, 0, 1, 1, 3, '61 | 179 | 872'),
(24, 0, 0, 0, -1, '0 | 0 | 0'),
(25, 0, 0, 0, -1, '0 | 0 | 0'),
(26, 0, 0, 0, -1, '0 | 0 | 0'),
(27, 0, 0, 0, -1, '0 | 0 | 0'),
(28, 0, 0, 0, -1, '0 | 0 | 0'),
(29, 0, 0, 0, -1, '0 | 0 | 0'),
(30, 0, 0, 0, -1, '0 | 0 | 0'),
(31, 0, 0, 0, -1, '0 | 0 | 0'),
(32, 0, 0, 0, -1, '0 | 0 | 0'),
(33, 0, 0, 0, -1, '0 | 0 | 0'),
(34, 0, 0, 0, -1, '0 | 0 | 0'),
(35, 0, 0, 0, -1, '0 | 0 | 0'),
(36, 0, 0, 0, -1, '0 | 0 | 0'),
(37, 0, 0, 0, -1, '0 | 0 | 0');

-- --------------------------------------------------------

--
-- Table structure for table `player_jails`
--

CREATE TABLE `player_jails` (
  `character_id` int(11) NOT NULL,
  `jailType` int(11) NOT NULL,
  `jailTime` int(11) NOT NULL,
  `jailedBy` varchar(25) NOT NULL,
  `jailDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_jails`
--

INSERT INTO `player_jails` (`character_id`, `jailType`, `jailTime`, `jailedBy`, `jailDate`) VALUES
(4, 1, 10, 'Ogi', '2025-01-29 21:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `player_jewlery`
--

CREATE TABLE `player_jewlery` (
  `character_id` int(11) NOT NULL,
  `Gold` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_jewlery`
--

INSERT INTO `player_jewlery` (`character_id`, `Gold`) VALUES
(3, 0),
(4, 0),
(11, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_mutes`
--

CREATE TABLE `player_mutes` (
  `character_id` int(11) NOT NULL,
  `mutedBy` varchar(32) NOT NULL,
  `muteTime` datetime NOT NULL,
  `muteDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_mutes`
--

INSERT INTO `player_mutes` (`character_id`, `mutedBy`, `muteTime`, `muteDate`) VALUES
(11, 'Ferid_Olsun', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `player_plants`
--

CREATE TABLE `player_plants` (
  `ID` int(11) NOT NULL,
  `GrowTime` int(11) NOT NULL,
  `RothTime` int(11) NOT NULL,
  `CharacterID` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_prisons`
--

CREATE TABLE `player_prisons` (
  `characterID` int(11) NOT NULL,
  `jailTime` int(11) NOT NULL,
  `jailedBy` varchar(24) NOT NULL,
  `jailDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_property`
--

CREATE TABLE `player_property` (
  `pOwner` int(11) NOT NULL,
  `BCenter` int(11) NOT NULL DEFAULT 0,
  `HouseID` int(11) NOT NULL DEFAULT -1,
  `BusinessID` int(11) NOT NULL,
  `HotelRoom` float NOT NULL DEFAULT 0,
  `GarageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_property`
--

INSERT INTO `player_property` (`pOwner`, `BCenter`, `HouseID`, `BusinessID`, `HotelRoom`, `GarageID`) VALUES
(4, 0, 0, 0, 0, 0),
(11, 4, -1, 0, 0, 0),
(31, 0, -1, 0, 0, 0),
(32, 0, -1, 0, 0, 0),
(33, 0, -1, 0, 0, 0),
(34, 0, -1, 0, 0, 0),
(35, 0, -1, 0, 0, 0),
(36, 0, -1, 0, 0, 0),
(37, 0, -1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_robbery_stats`
--

CREATE TABLE `player_robbery_stats` (
  `character_id` int(11) NOT NULL,
  `successful_robberies` int(11) DEFAULT 0,
  `failed_robberies` int(11) DEFAULT 0,
  `total_money_stolen` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_robbery_stats`
--

INSERT INTO `player_robbery_stats` (`character_id`, `successful_robberies`, `failed_robberies`, `total_money_stolen`) VALUES
(11, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_settings`
--

CREATE TABLE `player_settings` (
  `character_id` int(11) NOT NULL,
  `leaderChat` tinyint(1) NOT NULL,
  `newbieChat` tinyint(1) NOT NULL,
  `vipChat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `police_members`
--

CREATE TABLE `police_members` (
  `police_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `police_rank` int(11) NOT NULL,
  `arrests` int(11) NOT NULL,
  `joinDate` datetime NOT NULL,
  `badge_number` int(10) UNSIGNED NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_members`
--

INSERT INTO `police_members` (`police_id`, `character_id`, `police_rank`, `arrests`, `joinDate`, `badge_number`) VALUES
(1, 4, 4, 1, '2025-01-29 00:26:51', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `police_tickets`
--

CREATE TABLE `police_tickets` (
  `ticket_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `officer_id` int(11) NOT NULL,
  `reason` varchar(128) NOT NULL,
  `amount` int(11) NOT NULL,
  `issue_date` datetime DEFAULT current_timestamp(),
  `paid` tinyint(4) DEFAULT 0,
  `paid_to_officer` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `police_tickets`
--

INSERT INTO `police_tickets` (`ticket_id`, `character_id`, `officer_id`, `reason`, `amount`, `issue_date`, `paid`, `paid_to_officer`) VALUES
(1, 36, 4, 'Nepropisno parkiranje	$300', 300, '2025-01-29 21:51:31', 1, 0),
(2, 36, 4, 'Peder', 100, '2025-01-29 21:54:06', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `ID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Type` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ports`
--

INSERT INTO `ports` (`ID`, `Name`, `Type`, `posX`, `posY`, `posZ`) VALUES
(1, 'Spawn', 1, 815.897, -1332.13, 13.4854),
(2, 'Banka', 1, 996.333, -1157.41, 23.9641),
(3, 'Bolnica', 1, 2029.9, -1421.9, 16.9922),
(4, 'Biro Rada', 1, 1454.16, -1028.46, 23.9278),
(5, 'Hotel', 1, 1792.66, -1280.81, 13.7328),
(6, 'Business {737be1}Centre', 1, 1641.53, -1322.93, 17.5447),
(7, 'Baltimore Opstina', 1, 1482.45, -1806.75, 23.7203),
(8, 'Bus Vozac', 2, 1805.88, -1888.63, 13.5076),
(9, 'Trzni Centar', 1, 1114.87, -931.297, 43.1413),
(10, '{737BE1}Police {FFFFFF}Department', 3, 359.57, -1538.13, 33.6132),
(11, 'Auto Salon', 1, 934.99, -1722.07, 13.646),
(12, 'Maryland Jewelry', 1, 1721.67, -1627.55, 20.2128),
(13, 'Auto Skola', 1, 2515.46, -1510, 24.0991),
(14, 'Teretana', 1, 802.339, -1762.18, 13.6466),
(15, 'Technomedia', 1, 1683.79, -1635.24, 13.6461),
(16, 'Polje Plantaze', 1, 1882.75, 222.158, 29.0836),
(17, 'Black Market', 1, -395.579, 1256.56, 6.98163),
(18, 'Stolar', 2, 117.238, -285.258, 1.57812),
(19, 'Kosac Trave', 2, 1238.6, -2378.38, 10.7937),
(20, 'Mehanicar', 2, 1115.75, -1205.48, 17.7822),
(21, 'Dostava Novca - H4RBOR', 1, 209.336, -230.685, 1.7786),
(22, 'Fleeca Banka', 1, 1699.28, -1446.71, 13.5469);

-- --------------------------------------------------------

--
-- Table structure for table `pumps`
--

CREATE TABLE `pumps` (
  `pumpID` int(11) NOT NULL,
  `pumpBusinessID` int(11) NOT NULL,
  `pumpFuel` int(11) NOT NULL DEFAULT 0,
  `pumpFuelType` int(11) NOT NULL DEFAULT 0,
  `pump_X` float NOT NULL DEFAULT 0,
  `pump_Y` float NOT NULL DEFAULT 0,
  `pump_Z` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pumps`
--

INSERT INTO `pumps` (`pumpID`, `pumpBusinessID`, `pumpFuel`, `pumpFuelType`, `pump_X`, `pump_Y`, `pump_Z`) VALUES
(1, 0, 4000, 1, 1761.86, -1815.32, 13.5437);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rentID` int(11) NOT NULL,
  `fVehModel` int(11) NOT NULL DEFAULT 0,
  `sVehModel` int(11) NOT NULL DEFAULT 0,
  `tVehModel` int(11) NOT NULL DEFAULT 0,
  `rPosX` float NOT NULL DEFAULT 0,
  `rPosY` float NOT NULL DEFAULT 0,
  `rPosZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rentID`, `fVehModel`, `sVehModel`, `tVehModel`, `rPosX`, `rPosY`, `rPosZ`) VALUES
(1, 522, 560, 451, 823.602, -1317.12, 13.5262);

-- --------------------------------------------------------

--
-- Table structure for table `re_business`
--

CREATE TABLE `re_business` (
  `bID` int(11) NOT NULL,
  `bOwner` int(11) NOT NULL DEFAULT 0,
  `bName` varchar(64) NOT NULL DEFAULT 'Undefined',
  `bLocked` int(11) NOT NULL DEFAULT 1,
  `bType` int(11) NOT NULL DEFAULT 1,
  `bPrice` int(11) NOT NULL DEFAULT 250000,
  `bLevel` int(11) NOT NULL DEFAULT 3,
  `bCashRegister` float NOT NULL DEFAULT 0,
  `bEnterX` float NOT NULL,
  `bEnterY` float NOT NULL,
  `bEnterZ` float NOT NULL,
  `bExitX` float NOT NULL,
  `bExitY` float NOT NULL,
  `bExitZ` float NOT NULL,
  `bInteractX` float NOT NULL DEFAULT 0,
  `bInteractY` float NOT NULL DEFAULT 0,
  `bInteractZ` float NOT NULL DEFAULT 0,
  `bActorSkin` int(11) NOT NULL DEFAULT 24,
  `bActorX` int(11) NOT NULL DEFAULT 0,
  `bActorY` int(11) NOT NULL DEFAULT 0,
  `bActorZ` int(11) NOT NULL DEFAULT 0,
  `bActorA` int(11) NOT NULL DEFAULT 0,
  `bProducts` int(11) NOT NULL DEFAULT 100,
  `bInt` int(11) NOT NULL,
  `bVW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_business`
--

INSERT INTO `re_business` (`bID`, `bOwner`, `bName`, `bLocked`, `bType`, `bPrice`, `bLevel`, `bCashRegister`, `bEnterX`, `bEnterY`, `bEnterZ`, `bExitX`, `bExitY`, `bExitZ`, `bInteractX`, `bInteractY`, `bInteractZ`, `bActorSkin`, `bActorX`, `bActorY`, `bActorZ`, `bActorA`, `bProducts`, `bInt`, `bVW`) VALUES
(1, 0, 'Ammunation', 0, 11, 250000, 10, 0, 1367.08, -1280.09, 13.6461, 297.14, -109.87, 1001.51, 288.258, -109.782, 1001.52, 179, 288, -112, 1002, 1, 100, 6, 1),
(2, 0, '7Eleven', 0, 1, 250000, 1, 3.4, 973.081, -1288.71, 13.454, 1414.38, 430.507, 1081.5, 1421.31, 432.656, 1081.5, 20, 1423, 433, 1082, 92, 100, 18, 2),
(3, 11, 'Binco', 0, 13, 250000, 1, 650.45, 961.075, -1288.42, 13.454, 161.097, -96.6359, 1001.8, 179.544, -83.1313, 1001.79, 1, 181, -83, 1002, 91, 100, 0, 3),
(4, 0, '7Elven', 0, 1, 250000, 1, 0, 1832.97, -1842.59, 13.5781, 1414.38, 430.507, 1081.5, 1421.31, 432.656, 1081.5, 20, 1423, 433, 1082, 92, 100, 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `re_centar`
--

CREATE TABLE `re_centar` (
  `re_BCenterID` int(11) NOT NULL,
  `re_BCenterOwner` int(11) NOT NULL DEFAULT 0,
  `re_BCenterName` varchar(21) NOT NULL DEFAULT 'Nepoznato',
  `re_BCenterInterior` int(11) NOT NULL DEFAULT 0,
  `re_BCenterVirtualWorld` int(11) NOT NULL DEFAULT 0,
  `re_BCenterType` int(11) NOT NULL DEFAULT 0,
  `re_BCenterIntX` float NOT NULL DEFAULT 0,
  `re_BCenterIntY` float NOT NULL DEFAULT 0,
  `re_BCenterIntZ` float NOT NULL DEFAULT 0,
  `re_BCenterLocked` tinyint(4) NOT NULL DEFAULT 0,
  `re_BCenterSafe` tinyint(4) NOT NULL DEFAULT 0,
  `re_BCenterSafePosX` float NOT NULL DEFAULT 0,
  `re_BCenterSafePosY` float NOT NULL DEFAULT 0,
  `re_BCenterSafePosZ` float NOT NULL DEFAULT 0,
  `re_BCenterWardrobe` tinyint(4) NOT NULL DEFAULT 0,
  `re_BCenterWardrobePosX` float NOT NULL DEFAULT 0,
  `re_BCenterWardrobePosY` float NOT NULL DEFAULT 0,
  `re_BCenterWardrobePosZ` float NOT NULL DEFAULT 0,
  `re_BCenterArmory` tinyint(4) NOT NULL DEFAULT 0,
  `re_BCenterArmoryPosX` float NOT NULL DEFAULT 0,
  `re_BCenterArmoryPosY` float NOT NULL DEFAULT 0,
  `re_BCenterArmoryPosZ` float NOT NULL DEFAULT 0,
  `re_BCenterAgentType` int(11) NOT NULL DEFAULT 0,
  `re_AgentPosX` float NOT NULL DEFAULT 0,
  `re_AgentPosY` float NOT NULL DEFAULT 0,
  `re_AgentPosZ` float NOT NULL DEFAULT 0,
  `re_AgentPosA` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_centar`
--

INSERT INTO `re_centar` (`re_BCenterID`, `re_BCenterOwner`, `re_BCenterName`, `re_BCenterInterior`, `re_BCenterVirtualWorld`, `re_BCenterType`, `re_BCenterIntX`, `re_BCenterIntY`, `re_BCenterIntZ`, `re_BCenterLocked`, `re_BCenterSafe`, `re_BCenterSafePosX`, `re_BCenterSafePosY`, `re_BCenterSafePosZ`, `re_BCenterWardrobe`, `re_BCenterWardrobePosX`, `re_BCenterWardrobePosY`, `re_BCenterWardrobePosZ`, `re_BCenterArmory`, `re_BCenterArmoryPosX`, `re_BCenterArmoryPosY`, `re_BCenterArmoryPosZ`, `re_BCenterAgentType`, `re_AgentPosX`, `re_AgentPosY`, `re_AgentPosZ`, `re_AgentPosA`) VALUES
(1, 4, 'Mikica', 9, 1, 2, 2277.15, 2199.62, 103.931, 0, 1, 0, 0, 0, 1, 2262.13, 2178.29, 103.916, 1, 2295.51, 2176.33, 103.906, 147, 2279.2, 2183.56, 103.916, 0.2942),
(2, 11, 'Nepoznato', 9, 2, 2, 2277.15, 2199.62, 103.931, 0, 1, 0, 0, 0, 1, 2262.13, 2178.29, 103.916, 1, 2295.51, 2176.33, 103.906, 150, 2279.2, 2183.56, 103.916, 0.2942),
(3, 11, 'Nepoznato', 4, 3, 1, 1826.06, -1286.32, 131.754, 0, 1, 0, 0, 0, 1, 2262.13, 2178.29, 103.916, 0, 2295.51, 2176.33, 103.906, 150, 1827.96, -1302.59, 131.739, 3.5893),
(4, 11, 'Nepoznato', 9, 4, 2, 2277.15, 2199.62, 103.931, 0, 1, 0, 0, 0, 1, 2262.13, 2178.29, 103.916, 0, 2295.51, 2176.33, 103.906, 150, 2279.2, 2183.56, 103.916, 0.2942);

-- --------------------------------------------------------

--
-- Table structure for table `robbery_history`
--

CREATE TABLE `robbery_history` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `members` varchar(128) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safezones`
--

CREATE TABLE `safezones` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `min_x` float NOT NULL,
  `min_y` float NOT NULL,
  `max_x` float NOT NULL,
  `max_y` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `safezones`
--

INSERT INTO `safezones` (`id`, `name`, `min_x`, `min_y`, `max_x`, `max_y`) VALUES
(1, 'Maryland Central Park', 1436.85, -1722.31, 1521.03, -1600.54);

-- --------------------------------------------------------

--
-- Table structure for table `staff_questions`
--

CREATE TABLE `staff_questions` (
  `ID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `Question` varchar(246) NOT NULL,
  `Date` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_reports`
--

CREATE TABLE `staff_reports` (
  `ID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `ReportedID` int(11) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Answered` tinyint(1) DEFAULT 0,
  `Response` varchar(128) DEFAULT NULL,
  `AdminID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `streets`
--

CREATE TABLE `streets` (
  `street_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `owner_id` int(11) DEFAULT 0,
  `price` float DEFAULT 50000,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `turf_id` int(11) NOT NULL,
  `turf_faction` int(11) NOT NULL,
  `turf_perk` int(11) NOT NULL,
  `turf_minX` float NOT NULL,
  `turf_minY` float NOT NULL,
  `turf_maxX` float NOT NULL,
  `turf_maxY` float NOT NULL,
  `turf_captureX` float NOT NULL,
  `turf_captureY` float NOT NULL,
  `turf_captureZ` float NOT NULL,
  `turf_color` varchar(32) NOT NULL DEFAULT 'FFFFFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`turf_id`, `turf_faction`, `turf_perk`, `turf_minX`, `turf_minY`, `turf_maxX`, `turf_maxY`, `turf_captureX`, `turf_captureY`, `turf_captureZ`, `turf_color`) VALUES
(1, 0, 3, 1620.98, -1265.34, 1718.98, -1180.99, 1707.52, -1176.44, 23.8281, 'FFFFFF'),
(2, 0, 2, 1966.54, -1330.76, 2058.06, -1271.26, 2019.67, -1305.59, 20.8732, 'FFFFFF'),
(3, 0, 1, 1676.49, -1132.52, 1685.92, -1077.06, 1674.2, -1094.45, 23.9062, 'FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vID` int(11) NOT NULL,
  `vOwner` int(11) NOT NULL DEFAULT 0,
  `vOwnerType` int(11) NOT NULL DEFAULT 0,
  `vModel` int(11) NOT NULL DEFAULT 0,
  `Color1` int(11) NOT NULL DEFAULT 0,
  `Color2` int(11) NOT NULL DEFAULT 0,
  `vPlate` varchar(32) NOT NULL DEFAULT 'UNREGISTERED-00',
  `vPosX` float NOT NULL,
  `vPosY` float NOT NULL,
  `vPosZ` float NOT NULL,
  `vPosA` float NOT NULL,
  `vRegDate` datetime DEFAULT current_timestamp(),
  `vOil` int(11) NOT NULL DEFAULT 100,
  `vRange` int(11) NOT NULL DEFAULT 0,
  `vRangeKM` int(11) NOT NULL DEFAULT 0,
  `vFuel` int(11) NOT NULL DEFAULT 100,
  `vFuelType` int(11) NOT NULL DEFAULT 1,
  `vAlarm` tinyint(4) NOT NULL DEFAULT 0,
  `vXenon` tinyint(4) NOT NULL DEFAULT 0,
  `vLock` tinyint(4) NOT NULL DEFAULT 0,
  `vNitro` tinyint(4) NOT NULL DEFAULT 0,
  `vState` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vID`, `vOwner`, `vOwnerType`, `vModel`, `Color1`, `Color2`, `vPlate`, `vPosX`, `vPosY`, `vPosZ`, `vPosA`, `vRegDate`, `vOil`, `vRange`, `vRangeKM`, `vFuel`, `vFuelType`, `vAlarm`, `vXenon`, `vLock`, `vNitro`, `vState`) VALUES
(1, 4, 0, 587, 16, 16, 'MD-0001', 951.399, -1709.91, 13.2718, 90.511, '2025-02-27 18:10:31', 100, 0, 0, 100, 0, 0, 1, 1, 0, 1),
(2, 4, 0, 562, 211, 211, 'Vostic', 958.192, -1760.97, 13.2719, 347.76, '2025-02-26 10:59:57', 100, 0, 0, 100, 0, 0, 1, 0, 0, 1),
(3, 4, 0, 429, 7, 7, 'MD-0003', 943.3, -1757.44, 13.2715, 349.36, '2025-02-27 18:28:17', 100, 0, 0, 100, 0, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vip_vehicles`
--

CREATE TABLE `vip_vehicles` (
  `vip_vID` int(11) NOT NULL,
  `vip_vModel` int(11) NOT NULL,
  `vip_vPosX` float NOT NULL,
  `vip_vPosY` float NOT NULL,
  `vip_vPosZ` float NOT NULL,
  `vip_vPosA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warns`
--

CREATE TABLE `warns` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `warn_date` datetime NOT NULL,
  `warn_reason` varchar(255) NOT NULL DEFAULT 'Nema',
  `warn_expire` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `winter_settings`
--

CREATE TABLE `winter_settings` (
  `username` varchar(24) NOT NULL DEFAULT 'Maryland',
  `map` tinyint(4) NOT NULL DEFAULT 0,
  `breath` tinyint(4) NOT NULL DEFAULT 0,
  `fallsnow` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winter_settings`
--

INSERT INTO `winter_settings` (`username`, `map`, `breath`, `fallsnow`) VALUES
('Frosty_Saints', 0, 0, 0),
('Frosty', 0, 0, 0),
('Frosty2', 0, 0, 0),
('Silent', 0, 0, 0),
('Frostyslav', 0, 0, 0),
('Silent_Maryland', 0, 0, 0),
('Frostyslav2', 0, 0, 0),
('Nodislav_Aleksienko', 0, 0, 0),
('Silentus', 0, 0, 0),
('Ogi', 0, 0, 0),
('Capital_Camora', 0, 0, 0),
('Capital_Camoras', 0, 0, 0),
('djasa', 0, 0, 0),
('Klaus', 0, 0, 0),
('Dickey_Corleone', 0, 0, 0),
('Stojke_Castello', 0, 0, 0),
('Vostic', 0, 0, 0),
('Nodislav_Alksienko', 0, 0, 0),
('Casey_Skendy', 0, 0, 0),
('Darko_Jovanovic', 0, 0, 0),
('Vostic_Dev', 0, 0, 0),
('Nodislav', 0, 0, 0),
('Daco_Delahunt', 1, 0, 1),
('Eros_Bosandzeros', 0, 0, 0),
('Silva', 0, 0, 0),
('Silva_Rose', 1, 1, 1),
('Casey', 0, 0, 0),
('Leon_Skandy', 0, 0, 0),
('Midori_Smith', 0, 0, 0),
('Midori_Test', 0, 0, 0),
('Frenkie_Deep', 0, 0, 0),
('Filip_Panic', 0, 0, 0),
('Gobejla_West', 0, 0, 0),
('Pinky_Test', 0, 0, 0),
('Frostyslav_Saints', 0, 0, 0),
('Fjerit_Olsun', 0, 0, 0),
('Djura_Ajradinovski', 0, 0, 0),
('Vostica1', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benches`
--
ALTER TABLE `benches`
  ADD PRIMARY KEY (`seat_ID`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`registerID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_id`);

--
-- Indexes for table `character_disarms`
--
ALTER TABLE `character_disarms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_locks`
--
ALTER TABLE `character_locks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_quests`
--
ALTER TABLE `character_quests`
  ADD UNIQUE KEY `cahracterid` (`characterid`);

--
-- Indexes for table `character_spawns`
--
ALTER TABLE `character_spawns`
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `character_vip`
--
ALTER TABLE `character_vip`
  ADD PRIMARY KEY (`character_id`);

--
-- Indexes for table `containers`
--
ALTER TABLE `containers`
  ADD PRIMARY KEY (`conID`);

--
-- Indexes for table `crypto_wallets`
--
ALTER TABLE `crypto_wallets`
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `daily_records`
--
ALTER TABLE `daily_records`
  ADD PRIMARY KEY (`record_date`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexes for table `faction_members`
--
ALTER TABLE `faction_members`
  ADD UNIQUE KEY `member_id` (`member_id`);

--
-- Indexes for table `faction_police`
--
ALTER TABLE `faction_police`
  ADD PRIMARY KEY (`fPoliceID`);

--
-- Indexes for table `faction_vehicles`
--
ALTER TABLE `faction_vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `hCharacterID` (`hOwner`);

--
-- Indexes for table `inv_containers`
--
ALTER TABLE `inv_containers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `life_insurance`
--
ALTER TABLE `life_insurance`
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `metro_stations`
--
ALTER TABLE `metro_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_crypto`
--
ALTER TABLE `player_crypto`
  ADD UNIQUE KEY `crypto_id` (`character_id`);

--
-- Indexes for table `player_documents`
--
ALTER TABLE `player_documents`
  ADD UNIQUE KEY `player_id` (`character_document`);

--
-- Indexes for table `player_electronic`
--
ALTER TABLE `player_electronic`
  ADD UNIQUE KEY `player_id` (`character_electronics`);

--
-- Indexes for table `player_jails`
--
ALTER TABLE `player_jails`
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `player_jewlery`
--
ALTER TABLE `player_jewlery`
  ADD UNIQUE KEY `character_id` (`character_id`);

--
-- Indexes for table `player_plants`
--
ALTER TABLE `player_plants`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `player_property`
--
ALTER TABLE `player_property`
  ADD UNIQUE KEY `player_id` (`pOwner`);

--
-- Indexes for table `player_robbery_stats`
--
ALTER TABLE `player_robbery_stats`
  ADD PRIMARY KEY (`character_id`);

--
-- Indexes for table `player_settings`
--
ALTER TABLE `player_settings`
  ADD PRIMARY KEY (`character_id`);

--
-- Indexes for table `police_members`
--
ALTER TABLE `police_members`
  ADD UNIQUE KEY `character_id` (`character_id`),
  ADD UNIQUE KEY `idx_badge_number` (`badge_number`);

--
-- Indexes for table `police_tickets`
--
ALTER TABLE `police_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rentID`);

--
-- Indexes for table `re_business`
--
ALTER TABLE `re_business`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `re_centar`
--
ALTER TABLE `re_centar`
  ADD PRIMARY KEY (`re_BCenterID`),
  ADD KEY `BCenterCharacter` (`re_BCenterOwner`);

--
-- Indexes for table `robbery_history`
--
ALTER TABLE `robbery_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leader_id` (`leader_id`);

--
-- Indexes for table `safezones`
--
ALTER TABLE `safezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_reports`
--
ALTER TABLE `staff_reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `streets`
--
ALTER TABLE `streets`
  ADD PRIMARY KEY (`street_id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`turf_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vID`),
  ADD KEY `vCharacterID` (`vOwner`);

--
-- Indexes for table `vip_vehicles`
--
ALTER TABLE `vip_vehicles`
  ADD PRIMARY KEY (`vip_vID`);

--
-- Indexes for table `warns`
--
ALTER TABLE `warns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `benches`
--
ALTER TABLE `benches`
  MODIFY `seat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `registerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `character_disarms`
--
ALTER TABLE `character_disarms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_locks`
--
ALTER TABLE `character_locks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `conID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faction_police`
--
ALTER TABLE `faction_police`
  MODIFY `fPoliceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faction_vehicles`
--
ALTER TABLE `faction_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_containers`
--
ALTER TABLE `inv_containers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metro_stations`
--
ALTER TABLE `metro_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_plants`
--
ALTER TABLE `player_plants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_settings`
--
ALTER TABLE `player_settings`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `police_tickets`
--
ALTER TABLE `police_tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ports`
--
ALTER TABLE `ports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `re_business`
--
ALTER TABLE `re_business`
  MODIFY `bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `re_centar`
--
ALTER TABLE `re_centar`
  MODIFY `re_BCenterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `robbery_history`
--
ALTER TABLE `robbery_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `safezones`
--
ALTER TABLE `safezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_reports`
--
ALTER TABLE `staff_reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `streets`
--
ALTER TABLE `streets`
  MODIFY `street_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `turfs`
--
ALTER TABLE `turfs`
  MODIFY `turf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vip_vehicles`
--
ALTER TABLE `vip_vehicles`
  MODIFY `vip_vID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warns`
--
ALTER TABLE `warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `player_documents`
--
ALTER TABLE `player_documents`
  ADD CONSTRAINT `dCharacterID` FOREIGN KEY (`character_document`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_electronic`
--
ALTER TABLE `player_electronic`
  ADD CONSTRAINT `eCharacterID` FOREIGN KEY (`character_electronics`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_property`
--
ALTER TABLE `player_property`
  ADD CONSTRAINT `pCharacterID` FOREIGN KEY (`pOwner`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_robbery_stats`
--
ALTER TABLE `player_robbery_stats`
  ADD CONSTRAINT `player_robbery_stats_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`);

--
-- Constraints for table `re_centar`
--
ALTER TABLE `re_centar`
  ADD CONSTRAINT `BCenterCharacter` FOREIGN KEY (`re_BCenterOwner`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `robbery_history`
--
ALTER TABLE `robbery_history`
  ADD CONSTRAINT `robbery_history_ibfk_1` FOREIGN KEY (`leader_id`) REFERENCES `characters` (`character_id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vCharacterID` FOREIGN KEY (`vOwner`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
