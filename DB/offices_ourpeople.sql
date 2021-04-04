-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2021 at 01:34 PM
-- Server version: 8.0.22
-- PHP Version: 7.3.24-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nature_design`
--

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `offices_id` int NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offices_translations`
--

CREATE TABLE `offices_translations` (
  `offices_translations_id` int NOT NULL,
  `offices_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `locale` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `our_people`
--

CREATE TABLE `our_people` (
  `our_people_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `our_people_translations`
--

CREATE TABLE `our_people_translations` (
  `our_people_translations_id` int NOT NULL,
  `our_people_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`offices_id`);

--
-- Indexes for table `offices_translations`
--
ALTER TABLE `offices_translations`
  ADD PRIMARY KEY (`offices_translations_id`);

--
-- Indexes for table `our_people`
--
ALTER TABLE `our_people`
  ADD PRIMARY KEY (`our_people_id`);

--
-- Indexes for table `our_people_translations`
--
ALTER TABLE `our_people_translations`
  ADD PRIMARY KEY (`our_people_translations_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `offices_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offices_translations`
--
ALTER TABLE `offices_translations`
  MODIFY `offices_translations_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_people`
--
ALTER TABLE `our_people`
  MODIFY `our_people_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_people_translations`
--
ALTER TABLE `our_people_translations`
  MODIFY `our_people_translations_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
