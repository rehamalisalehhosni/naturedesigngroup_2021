-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 09:00 PM
-- Server version: 8.0.23
-- PHP Version: 7.4.9

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
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `aboutus_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`aboutus_id`, `title`, `description`, `image`, `sort`, `updated_at`, `video`) VALUES
(1, 'Who are we?	', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Firm NATURE Design Group (NDG) is a full-service professional firm that provides Architecture<br />service, Strategic &amp; regional planning, Urban planning, urban design, landscape architecture, and<br />infrastructure planning/ Engineering service in all key engineering disciplines: mechanical, electrical,<br />structural, civil, sanitary, and fire protection. Known as a leader in Smart Growth and sustainable<br />planning and building practices, the firm designs redevelopment and revitalization plans for cities and<br />towns that have all the elements needed to create vibrant and economically vital urban environments.<br />As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake<br />a wide variety of projects. NDG was started in 1999 and serves a local and national client base.<br />Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized<br />professional services through our highly qualified staff and the use of an extensive professional<br />network of service companies. We offer expertise in all aspects of statutory planning including site<br />analysis, planning applications and scheme amendments, appeals representation and evidence and<br />landscape design. The firm&rsquo;s statutory planning expertise is complemented by its urban design and<br />landscape design skills, enabling a comprehensive approach to the resolution of planning issues.<br />The key to our approach is the understanding of our clients&rsquo; current needs and future requirements.<br />We appreciate that every client is unique and each project requires an individually tailored strategy<br />to enable suitable solutions, NATURE Design Group (NDG).</p>\r\n</body>\r\n</html>', '21555091179.png', 0, '2019-04-12 17:27:49', NULL),
(2, 'Motivations', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Motivations</p>\r\n</body>\r\n</html>', 'download(1)1555285302.png', 0, '2019-04-16 14:24:02', 'https://player.vimeo.com/video/330797573?color=f7f7f7&title=0&byline=0&portrait=0');

-- --------------------------------------------------------

--
-- Table structure for table `aboutus_translations`
--

CREATE TABLE `aboutus_translations` (
  `aboutus_translations_id` int NOT NULL,
  `aboutus_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `locale` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aboutus_translations`
--

INSERT INTO `aboutus_translations` (`aboutus_translations_id`, `aboutus_id`, `title`, `description`, `image`, `sort`, `locale`, `updated_at`, `video`) VALUES
(1, 1, 'Who are we?	', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Firm NATURE Design Group (NDG) is a full-service professional firm that provides Architecture<br />service, Strategic &amp; regional planning, Urban planning, urban design, landscape architecture, and<br />infrastructure planning/ Engineering service in all key engineering disciplines: mechanical, electrical,<br />structural, civil, sanitary, and fire protection. Known as a leader in Smart Growth and sustainable<br />planning and building practices, the firm designs redevelopment and revitalization plans for cities and<br />towns that have all the elements needed to create vibrant and economically vital urban environments.<br />As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake<br />a wide variety of projects. NDG was started in 1999 and serves a local and national client base.<br />Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized<br />professional services through our highly qualified staff and the use of an extensive professional<br />network of service companies. We offer expertise in all aspects of statutory planning including site<br />analysis, planning applications and scheme amendments, appeals representation and evidence and<br />landscape design. The firm&rsquo;s statutory planning expertise is complemented by its urban design and<br />landscape design skills, enabling a comprehensive approach to the resolution of planning issues.<br />The key to our approach is the understanding of our clients&rsquo; current needs and future requirements.<br />We appreciate that every client is unique and each project requires an individually tailored strategy<br />to enable suitable solutions, NATURE Design Group (NDG).</p>\r\n</body>\r\n</html>', '21555091179.png', 0, 'en', '2019-04-12 15:46:27', NULL),
(2, 1, 'من نحن؟', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"page\" title=\"Page 3\">\r\n<div class=\"section\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p>مؤسسة متخصصة في أعمال الصيانة والتشغيل للمنشآت، ونعتمد على أفضل ا ساليب ا حترافية، كما نعتمد على تقنيات حديثة وفريق عمل مدرب لتنفيذ كل ا عمال بأعلى مستويات الجودة. نقدم مجموعة شاملة ومتكاملة في أعمال الصيانة والتشغيل والخدمات الداعمة في مجا ت:</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', '21555091187.png', 0, 'ar', '2019-04-12 15:46:27', NULL),
(7, 1, 'aaa', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>aa</p>\r\n</body>\r\n</html>', '21555091218.png', 0, 'fr', '2019-04-12 15:35:49', NULL),
(8, 2, 'Motivations', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Motivations</p>\r\n</body>\r\n</html>', 'download(1)1555285302.png', 0, 'en', '2019-04-14 21:41:43', 'https://player.vimeo.com/video/330797573?color=f7f7f7&title=0&byline=0&portrait=0'),
(9, 2, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 0, 'ar', '2019-04-14 21:41:43', ''),
(10, 2, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 0, 'fr', '2019-04-14 21:41:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_us_id` int NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_us_id`, `name`, `email`, `phone`, `message`, `updated_at`) VALUES
(1, 'reham ali', 'engreham.ali2011@gmail.com', '01112062406', 'send data', '2018-08-17 22:00:00'),
(2, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-17 22:00:00'),
(3, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-17 22:00:00'),
(4, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-17 22:00:00'),
(5, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-17 22:00:00'),
(6, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-18 21:23:37'),
(7, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test tes', '2018-08-17 22:00:00'),
(8, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-17 22:00:00'),
(9, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-18 21:28:27'),
(10, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-18 21:29:21'),
(11, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-18 21:31:50'),
(12, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-18 21:33:27'),
(13, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'test mesgga', '2018-08-18 21:34:13'),
(14, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:13:56'),
(15, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:14:29'),
(16, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:14:51'),
(17, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:15:07'),
(18, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:15:29'),
(19, 'reham ali', 'rory_fcih@gmail.com', '01112063406', 'testeeee', '2018-08-19 16:22:16'),
(20, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406', 'tsess', '2018-08-19 16:28:19'),
(21, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406', 'tsess', '2018-08-19 16:29:18'),
(22, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406', 'tsess', '2018-08-19 16:29:28'),
(23, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406', 'فثسففس', '2018-08-21 00:06:49'),
(24, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406a', 'aaaaaaaaaaaaaaa', '2018-08-21 00:21:43'),
(25, 'reham ali', 'engreham.ali2011@gmail.com', '01112063406', 'jjjjj', '2018-08-21 00:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `title`, `code`, `sort`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2019-04-05 22:00:00'),
(12, 'Arabic', 'ar', 0, '2019-04-15 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `email`) VALUES
(1, 'engreham.ali2011@gmail.com'),
(2, 'rory_fcih@gmail.com'),
(3, 'admin@alnasser.com'),
(4, 'engreham.ali201@gmail.com'),
(5, 'amoryy@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pages_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pages_id`, `title`, `image`, `page`, `description`, `updated_at`, `sort`, `video`) VALUES
(1, 'Home ', '171555132430.jpg', 'Home Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test&nbsp;</p>\r\n</body>\r\n</html>', '2019-04-12 22:00:00', 0, NULL),
(2, 'ContactUs', '171555132651.jpg', 'Contact us', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', '2019-04-12 22:00:00', 0, NULL),
(3, 'About US', '171555132902.jpg', 'About Us', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', '2019-04-16 14:10:52', 0, 'https://vimeo.com/330797573'),
(4, 'Our Services', '171555132951.jpg', 'Services', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</p>\r\n</body>\r\n</html>', '2019-04-13 01:24:16', 0, NULL),
(5, 'Portfolio', '171555139939.jpg', 'Portfolio', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Portfolio</p>\r\n</body>\r\n</html>', '2019-04-13 03:18:59', 0, NULL),
(6, 'statistic', '17(1)1555153577.jpg', 'Statistic', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<p>Our team takes over everything, from an idea and concept development to realization. We believe in traditions and incorporate them within our innovations. All our projects incorporate a unique artistic image and functional solutions. Client is the soul of the project. Our main goal is to illustrate his/hers values and individuality through design.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">&nbsp;</div>\r\n</body>\r\n</html>', '2019-04-13 07:07:43', 0, NULL),
(7, 'Footer', '17(1)1555153718.jpg', 'Footer', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"col-md-6\">\r\n<div class=\"footer-item footer-logo\">\r\n<p>Our team takes over everything, from an idea and concept development to realization. We believe in traditions and incorporate them within our innovations.Client is the soul of the project.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-2\">\r\n<div class=\"footer-item\">&nbsp;</div>\r\n</div>\r\n</body>\r\n</html>', '2019-04-13 07:08:38', 0, NULL),
(8, '404', '21555155605.jpg', '404', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Back to home page</p>\r\n</body>\r\n</html>', '2019-04-13 07:43:19', 0, NULL),
(9, 'Project details', '11555436537.jpg', 'Project details', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Project details</p>\r\n</body>\r\n</html>', '2019-04-16 14:01:43', 0, 'https://player.vimeo.com/video/76979871?background=1&muted=0');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `pages_translations_id` int NOT NULL,
  `pages_id` int DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `page` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`pages_translations_id`, `pages_id`, `title`, `image`, `locale`, `description`, `page`, `video`, `updated_at`, `sort`) VALUES
(1, 1, 'Home ', '171555132430.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test&nbsp;</p>\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 01:22:14', NULL),
(2, 1, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 00:58:04', NULL),
(3, 1, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 00:58:04', NULL),
(4, 2, 'Contact Us', '171555132651.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', 'Contact us', NULL, '2019-04-13 18:24:33', NULL),
(5, 2, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 00:58:26', NULL),
(6, 2, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 00:58:26', NULL),
(7, 3, 'About US', '171555132902.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', 'About Us', 'https://vimeo.com/330797573', '2019-04-16 14:10:52', NULL),
(8, 3, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', '', '2019-04-16 14:10:52', NULL),
(9, 3, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', '', '2019-04-16 14:10:52', NULL),
(10, 4, 'Our Services', '171555132951.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</p>\r\n</body>\r\n</html>', 'Services', NULL, '2019-04-13 01:24:17', NULL),
(11, 4, 'test3', 'download(1)1555131624.png', 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test&nbsp; test</p>\r\n</body>\r\n</html>', 'About Us', NULL, '2019-04-13 01:00:24', NULL),
(12, 4, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 00:59:23', NULL),
(13, 5, 'Portfolio', '171555139939.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Portfolio</p>\r\n</body>\r\n</html>', 'Portfolio', NULL, '2019-04-13 03:19:00', NULL),
(14, 5, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 03:19:00', NULL),
(15, 5, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 03:19:00', NULL),
(16, 6, 'statistic', '17(1)1555153577.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<p>Our team takes over everything, from an idea and concept development to realization. We believe in traditions and incorporate them within our innovations. All our projects incorporate a unique artistic image and functional solutions. Client is the soul of the project. Our main goal is to illustrate his/hers values and individuality through design.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">&nbsp;</div>\r\n</body>\r\n</html>', 'Statistic', NULL, '2019-04-13 07:07:43', NULL),
(17, 6, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:06:18', NULL),
(18, 6, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:06:18', NULL),
(19, 7, 'Footer', '17(1)1555153718.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"col-md-6\">\r\n<div class=\"footer-item footer-logo\">\r\n<p>Our team takes over everything, from an idea and concept development to realization. We believe in traditions and incorporate them within our innovations.Client is the soul of the project.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-2\">\r\n<div class=\"footer-item\">&nbsp;</div>\r\n</div>\r\n</body>\r\n</html>', 'Footer', NULL, '2019-04-13 07:08:38', NULL),
(20, 7, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:08:38', NULL),
(21, 7, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:08:38', NULL),
(22, 8, '404', '21555155605.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Back to home page</p>\r\n</body>\r\n</html>', '404', NULL, '2019-04-13 07:43:19', NULL),
(23, 8, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:40:05', NULL),
(24, 8, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', NULL, '2019-04-13 07:40:05', NULL),
(25, 9, 'Project details', '11555436537.jpg', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Project details</p>\r\n</body>\r\n</html>', 'Project details', 'https://player.vimeo.com/video/76979871?background=1&muted=0', '2019-04-16 14:01:44', NULL),
(26, 9, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', '', '2019-04-16 13:42:17', NULL),
(27, 9, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'Home Page', '', '2019-04-16 13:42:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projects_id` int NOT NULL,
  `projects_category_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `main_image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `publish` int DEFAULT '0',
  `show_home` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `presentation` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `clients` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projects_id`, `projects_category_id`, `title`, `description`, `main_image`, `sort`, `publish`, `show_home`, `updated_at`, `presentation`, `video`, `clients`, `status`, `location`, `gallary`) VALUES
(2, 6, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n</body>\r\n</html>', '171555147648.jpg', 0, 1, NULL, '2019-04-13 05:39:49', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 6, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n</body>\r\n</html>', '171555147615.jpg', 0, 1, NULL, '2019-04-13 05:39:17', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 9, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', '171555147634.jpg', 1, 1, NULL, '2019-04-13 05:27:14', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 8, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147606.jpg', 1, 1, 1, '2019-04-17 14:46:00', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(7, 4, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147593.jpg', 1, 1, NULL, '2019-04-13 05:26:33', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147584.jpg', 1, 1, NULL, '2019-04-13 05:26:24', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147573.jpg', 1, 1, NULL, '2019-04-13 05:26:13', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147561.jpg', 1, 1, NULL, '2019-04-13 05:26:01', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 7, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', '171555147548.jpg', 1, 1, NULL, '2019-04-13 05:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'test', '1', '171555116332.jpg', 0, 1, 0, '2019-04-12 21:03:51', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'test', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Tests</p>\r\n</body>\r\n</html>', '171555116332.jpg', 0, 1, 1, '2019-04-12 21:22:20', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 7, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', '171555147517.jpg', 0, 1, 1, '2019-04-17 14:15:54', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(16, 6, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', '171555147529.jpg', 0, 1, NULL, '2019-04-17 14:15:46', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(17, 4, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ulu</p>\r\n</body>\r\n</html>', '17(2)1555367868.jpg', 0, 1, NULL, '2019-04-17 14:15:28', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ssulu</p>\r\n</body>\r\n</html>', 'https://vimeo.com/34741214', '88', '22', '22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects_category`
--

CREATE TABLE `projects_category` (
  `projects_category_id` int NOT NULL,
  `parent` int DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL,
  `theme` int DEFAULT NULL,
  `description` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_category`
--

INSERT INTO `projects_category` (`projects_category_id`, `parent`, `title`, `updated_at`, `sort`, `theme`, `description`) VALUES
(1, 0, 'urban Design', '2019-04-12 22:43:04', 1, 1, NULL),
(2, 0, 'Master Plan', '2019-04-17 15:16:21', 0, 2, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 an'),
(3, 0, 'Architecture', '2019-04-12 22:42:37', 0, 3, NULL),
(4, 1, 'Urban Design', '2019-04-12 18:22:12', 0, NULL, NULL),
(5, 1, 'Landscape', '2019-04-12 18:22:31', 0, NULL, NULL),
(6, 2, 'urban Planning ', '2019-04-17 15:13:34', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 an'),
(7, 2, 'Housing', '2019-04-17 15:13:41', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 an'),
(8, 3, 'Architecture', '2019-04-17 14:18:03', 1, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 an'),
(9, 3, 'Interior Design', '2019-04-17 14:17:49', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 an');

-- --------------------------------------------------------

--
-- Table structure for table `projects_category_translations`
--

CREATE TABLE `projects_category_translations` (
  `projects_category_translations_id` int NOT NULL,
  `projects_category_id` int NOT NULL,
  `parent` int DEFAULT NULL,
  `locale` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL,
  `theme` int DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_category_translations`
--

INSERT INTO `projects_category_translations` (`projects_category_translations_id`, `projects_category_id`, `parent`, `locale`, `title`, `updated_at`, `sort`, `theme`, `description`) VALUES
(1, 1, 0, 'en', 'urban Design', '2019-04-12 22:43:04', 1, 1, NULL),
(2, 1, 0, 'ar', '', '2019-04-12 22:43:04', 0, 0, NULL),
(3, 1, 0, 'fr', '', '2019-04-12 22:43:04', 0, 0, NULL),
(4, 2, 0, 'en', 'Master Plan', '2019-04-17 15:16:21', 0, 2, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 and serves a local and national client base. Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized professional services through our highly qualified staff and the use of an extensive professional</div>\r\n</body>\r\n</html>'),
(5, 2, 0, 'ar', '', '2019-04-17 15:16:21', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(6, 2, 0, 'fr', '', '2019-04-12 22:42:44', 0, 0, NULL),
(7, 3, 0, 'en', 'Architecture', '2019-04-12 22:42:37', 0, 3, NULL),
(8, 3, 0, 'ar', '', '2019-04-12 22:42:37', 0, 0, NULL),
(9, 3, 0, 'fr', '', '2019-04-12 22:42:37', 0, 0, NULL),
(10, 4, 1, 'en', 'Urban Design', '2019-04-12 18:22:12', 0, NULL, NULL),
(11, 4, 0, 'ar', '', '2019-04-12 18:22:12', 0, NULL, NULL),
(12, 4, 0, 'fr', '', '2019-04-12 18:22:12', 0, NULL, NULL),
(13, 5, 1, 'en', 'Landscape', '2019-04-12 18:22:31', 0, NULL, NULL),
(14, 5, 0, 'ar', '', '2019-04-12 18:22:31', 0, NULL, NULL),
(15, 5, 0, 'fr', '', '2019-04-12 18:22:31', 0, NULL, NULL),
(16, 6, 2, 'en', 'urban Planning ', '2019-04-17 15:13:34', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 and serves a local and national client base. Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized professional services through our highly qualified staff and the use of an extensive professional</div>\r\n</body>\r\n</html>'),
(17, 6, 0, 'ar', '', '2019-04-17 15:13:34', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(18, 6, 0, 'fr', '', '2019-04-12 18:23:02', 0, NULL, NULL),
(19, 7, 2, 'en', 'Housing', '2019-04-17 15:13:41', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 and serves a local and national client base. Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized professional services through our highly qualified staff and the use of an extensive professional</div>\r\n</body>\r\n</html>'),
(20, 7, 0, 'ar', '', '2019-04-17 15:13:41', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(21, 7, 0, 'fr', '', '2019-04-12 18:23:19', 0, NULL, NULL),
(22, 8, 3, 'en', 'Architecture', '2019-04-17 14:18:03', 1, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 and serves a local and national client base. Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized professional services through our highly qualified staff and the use of an extensive professional</div>\r\n</body>\r\n</html>'),
(23, 8, 0, 'ar', '', '2019-04-17 14:18:03', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(24, 8, 0, 'fr', '', '2019-04-13 03:22:11', 0, 0, NULL),
(25, 9, 3, 'en', 'Interior Design', '2019-04-17 14:17:49', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"details\">As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake a wide variety of projects. NDG was started in 1999 and serves a local and national client base. Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized professional services through our highly qualified staff and the use of an extensive professional</div>\r\n</body>\r\n</html>'),
(26, 9, 0, 'ar', '', '2019-04-17 14:17:49', 0, 0, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(27, 9, 0, 'fr', '', '2019-04-13 03:22:26', 0, 0, NULL),
(28, 10, 5, 'en', 'wwwww', '2019-04-12 18:59:11', 2, NULL, NULL),
(29, 10, 3, 'ar', '3333', '2019-04-12 19:02:18', 2, NULL, NULL),
(30, 10, 0, 'fr', '', '2019-04-12 19:02:18', 0, NULL, NULL),
(31, 11, 9, 'en', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '2019-04-12 22:43:24', 0, 2, NULL),
(32, 11, 0, 'ar', '', '2019-04-12 22:43:24', 0, 0, NULL),
(33, 11, 0, 'fr', '', '2019-04-12 22:43:24', 0, 0, NULL),
(35, 12, 0, 'ar', '', '2019-04-12 22:44:23', 0, 0, NULL),
(36, 12, 0, 'fr', '', '2019-04-12 22:44:23', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_images`
--

CREATE TABLE `projects_images` (
  `projects_images_id` int NOT NULL,
  `projects_translation_id` int NOT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_images`
--

INSERT INTO `projects_images` (`projects_images_id`, `projects_translation_id`, `image`, `updated_at`) VALUES
(1, 1, 'logo-ex-4_1555112881.png', '2019-04-12 19:48:01'),
(2, 2, 'download (1)_1555113193.png', '2019-04-12 19:53:13'),
(3, 2, '17_1555113193.jpg', '2019-04-12 19:53:13'),
(4, 3, 'download (1)_1555113420.png', '2019-04-12 19:57:00'),
(5, 3, '17_1555113420.jpg', '2019-04-12 19:57:00'),
(6, 4, 'download(1)1555113724.png', '2019-04-12 20:02:04'),
(7, 4, '171555113724.jpg', '2019-04-12 20:02:04'),
(8, 9, 'download(1)1555113828.png', '2019-04-12 20:03:48'),
(9, 10, 'download(1)1555113865.png', '2019-04-12 20:04:25'),
(10, 10, '171555113865.jpg', '2019-04-12 20:04:25'),
(11, 11, 'download(1)1555114025.png', '2019-04-12 20:07:05'),
(14, 11, '171555115390.jpg', '2019-04-12 20:29:50'),
(15, 11, 'download(1)1555115553.png', '2019-04-12 20:32:33'),
(16, 11, '171555115553.jpg', '2019-04-12 20:32:33'),
(17, 11, 'download(1)1555115583.png', '2019-04-12 20:33:03'),
(18, 11, '171555115583.jpg', '2019-04-12 20:33:03'),
(19, 11, 'download(1)1555115796.png', '2019-04-12 20:36:36'),
(20, 11, '171555115796.jpg', '2019-04-12 20:36:36'),
(21, 14, 'download(1)1555116244.png', '2019-04-12 20:44:04'),
(22, 14, '171555116244.jpg', '2019-04-12 20:44:04'),
(23, 15, '171555116245.jpg', '2019-04-12 20:44:05'),
(24, 17, 'download(1)1555116332.png', '2019-04-12 20:45:32'),
(26, 17, '21555116332.png', '2019-04-12 20:45:32'),
(27, 18, 'download(1)1555116332.png', '2019-04-12 20:45:32'),
(28, 18, '171555116333.jpg', '2019-04-12 20:45:33'),
(29, 19, '171555116333.jpg', '2019-04-12 20:45:33'),
(30, 18, '21555116333.png', '2019-04-12 20:45:33'),
(31, 21, '171555116333.jpg', '2019-04-12 20:45:33'),
(32, 23, 'download(1)1555118567.png', '2019-04-12 21:22:47'),
(33, 23, '171555118567.jpg', '2019-04-12 21:22:47'),
(34, 24, 'download(1)1555118641.png', '2019-04-12 21:24:01'),
(35, 24, '171555118642.jpg', '2019-04-12 21:24:02'),
(36, 5, '171555147634.jpg', '2019-04-13 05:27:14'),
(37, 45, '11555367869.jpg', '2019-04-15 18:37:49'),
(38, 45, '17(2)1555367869.jpg', '2019-04-15 18:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `projects_plans`
--

CREATE TABLE `projects_plans` (
  `projects_plans_id` int NOT NULL,
  `projects_translation_id` int NOT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_translations`
--

CREATE TABLE `projects_translations` (
  `projects_translations_id` int NOT NULL,
  `projects_id` int NOT NULL,
  `projects_category_id` int NOT NULL,
  `main_image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `publish` int DEFAULT '0',
  `show_home` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `presentation` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `video` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `clients` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_translations`
--

INSERT INTO `projects_translations` (`projects_translations_id`, `projects_id`, `projects_category_id`, `main_image`, `title`, `description`, `locale`, `sort`, `publish`, `show_home`, `updated_at`, `presentation`, `video`, `clients`, `status`, `location`, `gallary`) VALUES
(2, 2, 6, '171555147648.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n</body>\r\n</html>', 'en', 0, 1, NULL, '2019-04-13 05:39:49', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 6, '171555147615.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett&nbsp;</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n<p>Tsett</p>\r\n</body>\r\n</html>', 'en', 0, 1, NULL, '2019-04-13 05:39:17', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 9, '171555147634.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:27:14', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 8, '171555147606.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, 1, '2019-04-17 14:46:01', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(7, 7, 4, '171555147593.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:26:33', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 4, '171555147584.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:26:24', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 5, '171555147573.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:26:13', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 5, '171555147561.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:26:01', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 12, 7, '171555147548.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'en', 1, 1, NULL, '2019-04-13 05:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 12, 4, '171555116244.jpg', 'test3', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-13 05:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 12, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 13, 1, '171555116332.jpg', 'test', '1', 'en', 0, 1, 0, '2019-04-12 21:03:51', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 14, 1, '171555116332.jpg', 'test', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Tests</p>\r\n</body>\r\n</html>', 'en', 0, 1, 1, '2019-04-12 21:22:20', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 13, 1, 'download(1)1555116332.png', 'test3', '1', 'ar', 0, 1, 0, '2019-04-12 21:03:51', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 13, 1, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, 0, '2019-04-12 21:03:51', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 14, 1, 'download(1)1555116333.png', 'test3', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>testst</p>\r\n</body>\r\n</html>', 'ar', 0, 1, 0, '2019-04-12 21:22:20', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 14, 1, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, 0, '2019-04-12 21:22:20', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 15, 7, '171555147517.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', 'en', 0, 1, 1, '2019-04-17 14:15:54', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(24, 16, 6, '171555147529.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test</p>\r\n</body>\r\n</html>', 'en', 0, 1, NULL, '2019-04-17 14:15:46', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', 1),
(25, 16, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-17 14:15:46', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', NULL),
(26, 16, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:25:29', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 6, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-17 14:46:01', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', NULL),
(28, 6, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:26:46', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 5, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-13 05:27:14', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 5, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:27:15', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 10, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-13 05:26:01', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 10, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:26:01', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 9, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, 1, NULL, '2019-04-13 05:26:13', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 9, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, 1, NULL, '2019-04-13 05:26:13', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 15, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-17 14:15:54', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', NULL),
(36, 15, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-13 06:20:12', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 8, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-13 05:26:24', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 8, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-13 05:26:24', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 7, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-13 05:26:33', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 7, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-13 05:26:33', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 3, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-13 05:39:18', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 3, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-13 05:39:18', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 2, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-13 05:39:49', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 2, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-13 05:39:50', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 17, 4, '17(2)1555367868.jpg', 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ulu</p>\r\n</body>\r\n</html>', 'en', 0, 1, NULL, '2019-04-17 14:15:28', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ssulu</p>\r\n</body>\r\n</html>', 'https://vimeo.com/34741214', '88', '22', '22', 1),
(46, 17, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', 0, NULL, NULL, '2019-04-17 14:15:28', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', NULL),
(47, 17, 4, '', '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', 0, NULL, NULL, '2019-04-15 19:23:53', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `title`, `image`, `description`, `updated_at`, `sort`) VALUES
(2, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', 'download(1)1555120022.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test3</p>\r\n</body>\r\n</html>', '2019-04-12 21:48:26', 1),
(3, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', 'download(1)1555120138.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>sort</p>\r\n</body>\r\n</html>', '2019-04-12 21:48:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_translations`
--

CREATE TABLE `services_translations` (
  `services_translations_id` int NOT NULL,
  `services_id` int DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services_translations`
--

INSERT INTO `services_translations` (`services_translations_id`, `services_id`, `title`, `image`, `locale`, `description`, `updated_at`, `sort`) VALUES
(1, 2, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', 'download(1)1555120022.png', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test3</p>\r\n</body>\r\n</html>', '2019-04-12 21:48:26', 1),
(2, 2, 'test3', '171555119976.jpg', 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test3</p>\r\n</body>\r\n</html>', '2019-04-12 21:48:27', 1),
(3, 2, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-04-12 21:48:27', 0),
(4, 3, 'STRATEGIC & TOURISM PLANNING FOR TANUMA - AL NAMAS - ASIR - KSA', 'download(1)1555120138.png', 'en', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>sort</p>\r\n</body>\r\n</html>', '2019-04-12 21:48:58', 1),
(5, 3, '', NULL, 'ar', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-04-12 21:48:58', 0),
(6, 3, '', NULL, 'fr', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-04-12 21:48:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int NOT NULL,
  `lat` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `long` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fav` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `active_theme` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `lat`, `long`, `updated_at`, `address`, `tel`, `email`, `company_name`, `logo`, `fav`, `description`, `active_theme`, `tel2`) VALUES
(1, '45.0792', '23.8859', '2019-04-14 18:04:57', 'naturedesigngroup - KSA P.O.Box : 21651 Riyadh : 11485', '+966 11208078', 'info@naturedesigngroup.com', 'Nature Ddesign Ggroup', 'logo134x501555104401.png', 'logo134x501555104401.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Firm NATURE Design Group (NDG) is a full-service professional firm that provides Architecture<br />service, Strategic &amp; regional planning, Urban planning, urban design, landscape architecture, and<br />infrastructure planning/ Engineering service in all key engineering disciplines: mechanical, electrical,<br />structural, civil, sanitary, and fire protection. Known as a leader in Smart Growth and sustainable<br />planning and building practices, the firm designs redevelopment and revitalization plans for cities and<br />towns that have all the elements needed to create vibrant and economically vital urban environments.<br />As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake<br />a wide variety of projects. NDG was started in 1999 and serves a local and national client base.<br />Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized<br />professional services through our highly qualified staff and the use of an extensive professional<br />network of service companies. We offer expertise in all aspects of statutory planning including site<br />analysis, planning applications and scheme amendments, appeals representation and evidence and<br />landscape design. The firm&rsquo;s statutory planning expertise is complemented by its urban design and<br />landscape design skills, enabling a comprehensive approach to the resolution of planning issues.<br />The key to our approach is the understanding of our clients&rsquo; current needs and future requirements.<br />We appreciate that every client is unique and each project requires an individually tailored strategy<br />to enable suitable solutions, NATURE Design Group (NDG).</p>\r\n</body>\r\n</html>', 'theside', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `setting_translations_id` int NOT NULL,
  `lat` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `long` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_id` int NOT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fav` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `active_theme` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`setting_translations_id`, `lat`, `long`, `updated_at`, `address`, `tel`, `email`, `company_name`, `logo`, `setting_id`, `locale`, `fav`, `description`, `active_theme`, `tel2`) VALUES
(1, '45.0792', '23.8859', '2019-04-14 18:04:57', 'naturedesigngroup - KSA P.O.Box : 21651 Riyadh : 11485', '+966 11208078', 'info@naturedesigngroup.com', 'Nature Ddesign Ggroup', 'logo134x501555104401.png', 1, 'en', 'logo134x501555104401.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Firm NATURE Design Group (NDG) is a full-service professional firm that provides Architecture<br />service, Strategic &amp; regional planning, Urban planning, urban design, landscape architecture, and<br />infrastructure planning/ Engineering service in all key engineering disciplines: mechanical, electrical,<br />structural, civil, sanitary, and fire protection. Known as a leader in Smart Growth and sustainable<br />planning and building practices, the firm designs redevelopment and revitalization plans for cities and<br />towns that have all the elements needed to create vibrant and economically vital urban environments.<br />As a multidisciplinary firm, we maintain considerable experience, skills and resources to undertake<br />a wide variety of projects. NDG was started in 1999 and serves a local and national client base.<br />Customers recognize the firm&rsquo;s ability to provide and coordinate a broad spectrum of specialized<br />professional services through our highly qualified staff and the use of an extensive professional<br />network of service companies. We offer expertise in all aspects of statutory planning including site<br />analysis, planning applications and scheme amendments, appeals representation and evidence and<br />landscape design. The firm&rsquo;s statutory planning expertise is complemented by its urban design and<br />landscape design skills, enabling a comprehensive approach to the resolution of planning issues.<br />The key to our approach is the understanding of our clients&rsquo; current needs and future requirements.<br />We appreciate that every client is unique and each project requires an individually tailored strategy<br />to enable suitable solutions, NATURE Design Group (NDG).</p>\r\n</body>\r\n</html>', 'theside', ''),
(2, '45.0792', '23.8859', '2019-04-14 17:45:40', 'الرياض - المملكة العربية السعودية P.O.Box : 21651 Riyadh : 11485', '+966 11208078', 'info@naturedesigngroup.com', 'Nature Ddesign Ggroup', '21555086713.png', 1, 'ar', '21555086713.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>naturedesigngroup - KSA P.O.Box : 21651 Riyadh : 11485</p>\r\n</body>\r\n</html>', 'theside', ''),
(3, '', '', '2019-04-14 17:45:40', '', '', '', '', NULL, 1, 'fr', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'theside', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `title`, `image`, `updated_at`, `sort`) VALUES
(8, 'test', '21555093139.png', '2019-04-12 14:18:59', 0),
(9, 'test4', 'logo-ex-41555093338.png', '2019-04-12 14:24:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `slider_translations_id` int NOT NULL,
  `slider_id` int DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`slider_translations_id`, `slider_id`, `title`, `image`, `locale`, `updated_at`, `sort`) VALUES
(20, 8, 'test', '21555093139.png', 'en', '2019-04-12 14:18:59', NULL),
(21, 8, 'test3', 'logo-ex-41555093139.png', 'ar', '2019-04-12 14:18:59', NULL),
(22, 8, '', NULL, 'fr', '2019-04-12 14:18:59', NULL),
(23, 9, 'test4', 'logo-ex-41555093338.png', 'en', '2019-04-12 14:24:48', NULL),
(24, 9, 'test3', '21555093338.png', 'ar', '2019-04-12 14:22:18', NULL),
(25, 9, '', NULL, 'fr', '2019-04-12 14:22:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `social_media_id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`social_media_id`, `title`, `link`, `icon`, `updated_at`, `sort`) VALUES
(2, 'instagram', 'instagram', 'instagram', '2019-04-12 22:28:52', 1),
(3, 'twitter', 'twitter.com', 'twitter', '2019-04-12 22:28:33', 0),
(4, 'pinterest', 'pinterest', 'pinterest', '2019-04-12 22:29:09', 2),
(5, 'tumblr', 'tumblr', 'tumblr', '2019-04-12 22:29:30', 4);

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `statistics_id` int NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL,
  `number` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statistics_id`, `title`, `description`, `updated_at`, `sort`, `number`) VALUES
(1, 'Millions BUA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Millions BUA</p>\r\n</body>\r\n</html>', '2019-04-13 07:15:53', 2, '260'),
(3, '90 + Projects ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-04-13 07:16:19', 0, '90'),
(4, '18 + Years', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-04-13 07:16:36', 0, '18');

-- --------------------------------------------------------

--
-- Table structure for table `statistics_translations`
--

CREATE TABLE `statistics_translations` (
  `statistics_translations_id` int NOT NULL,
  `statistics_id` int DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int DEFAULT NULL,
  `number` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistics_translations`
--

INSERT INTO `statistics_translations` (`statistics_translations_id`, `statistics_id`, `title`, `description`, `locale`, `updated_at`, `sort`, `number`) VALUES
(1, 1, 'Millions BUA', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Millions BUA</p>\r\n</body>\r\n</html>', 'en', '2019-04-13 07:15:53', 2, '260'),
(2, 1, '22', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>test3</p>\r\n</body>\r\n</html>', 'ar', '2019-04-12 15:22:59', 22, '1000'),
(3, 1, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', '2019-04-13 07:15:53', 0, ''),
(7, 3, '90 + Projects ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'en', '2019-04-13 07:16:19', 0, '90'),
(8, 3, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', '2019-04-13 07:16:19', 0, ''),
(9, 3, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', '2019-04-13 07:16:19', 0, ''),
(10, 4, '18 + Years', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'en', '2019-04-13 07:16:36', 0, '18'),
(11, 4, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'ar', '2019-04-13 07:16:36', 0, ''),
(12, 4, '', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'fr', '2019-04-13 07:16:36', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$dEBmiPl.u4GlZk6bwSjFmOjyKJX.N4hlCo5d2E0EkHIyb1qe4e1ry', 'iRx8oWhIrfIpUY7flRZ63qkHHaDxaD5hYIqE3IGQnFzK4WNlJXRF39cQNIHw', '2018-08-18 14:14:33', '2018-08-21 02:22:13'),
(2, 'user', 'user@gmail.com', '$2y$10$LR.fNteajJWOrKDs798HduAteV..Xim0JuQakPAJC6tp/vUxczWmq', NULL, '2018-08-18 18:21:39', '2018-08-18 18:21:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`aboutus_id`);

--
-- Indexes for table `aboutus_translations`
--
ALTER TABLE `aboutus_translations`
  ADD PRIMARY KEY (`aboutus_translations_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`pages_translations_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projects_id`);

--
-- Indexes for table `projects_category`
--
ALTER TABLE `projects_category`
  ADD PRIMARY KEY (`projects_category_id`);

--
-- Indexes for table `projects_category_translations`
--
ALTER TABLE `projects_category_translations`
  ADD PRIMARY KEY (`projects_category_translations_id`);

--
-- Indexes for table `projects_images`
--
ALTER TABLE `projects_images`
  ADD PRIMARY KEY (`projects_images_id`);

--
-- Indexes for table `projects_plans`
--
ALTER TABLE `projects_plans`
  ADD PRIMARY KEY (`projects_plans_id`);

--
-- Indexes for table `projects_translations`
--
ALTER TABLE `projects_translations`
  ADD PRIMARY KEY (`projects_translations_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `services_translations`
--
ALTER TABLE `services_translations`
  ADD PRIMARY KEY (`services_translations_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`setting_translations_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`slider_translations_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`social_media_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `statistics_translations`
--
ALTER TABLE `statistics_translations`
  ADD PRIMARY KEY (`statistics_translations_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `aboutus_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aboutus_translations`
--
ALTER TABLE `aboutus_translations`
  MODIFY `aboutus_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pages_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages_translations`
--
ALTER TABLE `pages_translations`
  MODIFY `pages_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projects_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `projects_category`
--
ALTER TABLE `projects_category`
  MODIFY `projects_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects_category_translations`
--
ALTER TABLE `projects_category_translations`
  MODIFY `projects_category_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `projects_images`
--
ALTER TABLE `projects_images`
  MODIFY `projects_images_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `projects_plans`
--
ALTER TABLE `projects_plans`
  MODIFY `projects_plans_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_translations`
--
ALTER TABLE `projects_translations`
  MODIFY `projects_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services_translations`
--
ALTER TABLE `services_translations`
  MODIFY `services_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `setting_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `slider_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `social_media_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `statistics_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statistics_translations`
--
ALTER TABLE `statistics_translations`
  MODIFY `statistics_translations_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
