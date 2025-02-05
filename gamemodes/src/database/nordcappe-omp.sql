-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 12:30 PM
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
-- Database: `nordcappe-omp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ground_items`
--

CREATE TABLE `ground_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `durability` float NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `world_id` int(11) NOT NULL,
  `interior_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ground_items`
--

INSERT INTO `ground_items` (`id`, `item_id`, `amount`, `durability`, `pos_x`, `pos_y`, `pos_z`, `world_id`, `interior_id`) VALUES
(3, 4, 1, 100, -1999.81, 876.856, 45.2969, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `password` char(61) NOT NULL,
  `age` tinyint(3) UNSIGNED NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `accent` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `register_date` datetime NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `password`, `age`, `gender`, `accent`, `ip`, `register_date`, `last_login`) VALUES
(1, 'Vostic_DeSanta', '$2b$12$EY66feJQaK366s/tdZNdZueouo3E6pprYExQpmD75nJAajLLslME6', 23, 'Male', 'Colombian', '127.0.0.1', '2025-02-03 20:20:46', '2025-02-05 12:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `player_backpacks`
--

CREATE TABLE `player_backpacks` (
  `player_id` int(11) NOT NULL,
  `backpack_type` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_backpacks`
--

INSERT INTO `player_backpacks` (`player_id`, `backpack_type`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `player_inventory`
--

CREATE TABLE `player_inventory` (
  `id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `durability` float DEFAULT NULL,
  `slot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_inventory`
--

INSERT INTO `player_inventory` (`id`, `player_id`, `item_id`, `amount`, `durability`, `slot`) VALUES
(5, 1, 3, 8, 100, 0),
(6, 1, 5, 1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 1,
  `promoted_by` varchar(24) NOT NULL,
  `promotion_date` datetime NOT NULL DEFAULT current_timestamp(),
  `total_actions` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `player_id`, `rank`, `promoted_by`, `promotion_date`, `total_actions`) VALUES
(1, 1, 4, 'System', '2025-02-03 21:59:59', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ground_items`
--
ALTER TABLE `ground_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_ip` (`ip`);

--
-- Indexes for table `player_backpacks`
--
ALTER TABLE `player_backpacks`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_inventory`
--
ALTER TABLE `player_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ground_items`
--
ALTER TABLE `ground_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `player_inventory`
--
ALTER TABLE `player_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `player_backpacks`
--
ALTER TABLE `player_backpacks`
  ADD CONSTRAINT `player_backpacks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`);

--
-- Constraints for table `player_inventory`
--
ALTER TABLE `player_inventory`
  ADD CONSTRAINT `player_inventory_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
