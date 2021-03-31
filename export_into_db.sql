-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2021 at 10:14 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `beautyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
                           `id` int(11) NOT NULL,
                           `user_id` int(11) NOT NULL,
                           `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(1, 8, 'New house', 'Jamal', 'Saidi', 'new', 'rue du couvent, 168', '4020', 'JUPILLE-S-MEUSE', 'BE', '+32487556570'),
(2, 8, 'Last home', 'Jamal', 'Saidi', 'new', 'rue de la liberté 18', '4020', 'JUPILLE-S-MEUSE', 'BE', '+32487556570'),
(5, 8, 'At my parent\'s house', 'Haddouch', 'Hayet', NULL, 'cour jacquet 9', '4020', 'Bressoux', 'BE', '+32499322906'),
(6, 10, 'Home sweet home', 'Rachida', 'Haddouch', NULL, 'rue du couvent, 168', '4020', 'Jupille-sur-Meuse', 'BE', '0499322906');

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

CREATE TABLE `carrier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Bpost', 'Vous recevez votre colis en 48 heures', 990),
(2, 'DHL', 'Livraison sous 72h', 700);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Skincare'),
(2, 'Bath & Body'),
(3, 'Makeup'),
(4, 'Hair'),
(5, 'Gifts');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210322082622', '2021-03-22 08:32:42', 61),
('DoctrineMigrations\\Version20210322104210', '2021-03-22 10:53:47', 159),
('DoctrineMigrations\\Version20210323135521', '2021-03-23 13:56:27', 119),
('DoctrineMigrations\\Version20210323142211', '2021-03-23 14:22:39', 147),
('DoctrineMigrations\\Version20210325095402', '2021-03-25 09:54:35', 305),
('DoctrineMigrations\\Version20210325132417', '2021-03-25 13:24:44', 97),
('DoctrineMigrations\\Version20210325140721', '2021-03-25 14:07:55', 201),
('DoctrineMigrations\\Version20210326081910', '2021-03-26 08:19:35', 128),
('DoctrineMigrations\\Version20210327105258', '2021-03-27 10:53:55', 214),
('DoctrineMigrations\\Version20210327122524', '2021-03-27 12:26:05', 132),
('DoctrineMigrations\\Version20210329101723', '2021-03-29 10:18:05', 180),
('DoctrineMigrations\\Version20210329135653', '2021-03-29 13:57:20', 230),
('DoctrineMigrations\\Version20210329140845', '2021-03-29 14:08:56', 132),
('DoctrineMigrations\\Version20210329144925', '2021-03-29 14:49:35', 181),
('DoctrineMigrations\\Version20210329160927', '2021-03-29 16:09:37', 85);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `btn_title`, `btn_url`, `illustration`) VALUES
(1, 'Virtual Nature beauty', 'Here is the best of the nature', 'Discover', '#', '00f63e2ac95c898962a84bdca35bc0b76f97bc4c.jpg'),
(2, 'Do you want a natural skin care', 'You can test our virtual demo product', 'Discover', '/products', '016a71226a1ae6c7a271e834647795f030fa0f8a.jpg'),
(3, 'All beauty', 'We share with you our recipes about natural beauty', 'Discover', '#', '93350895a9ff013c9253996218f3f84c7410ff92.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(1, 8, '2021-03-26 10:19:44', 'Bpost', 9.9, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '', NULL, 0),
(2, 8, '2021-03-27 11:10:18', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f129a2c8e5', NULL, 0),
(3, 8, '2021-03-27 11:18:32', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f14882239f', NULL, 0),
(4, 8, '2021-03-27 11:20:08', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f14e8b9f71', NULL, 0),
(5, 8, '2021-03-27 11:37:35', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f18ff5d88b', NULL, 0),
(6, 8, '2021-03-27 11:55:08', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f1d1ccebc4', NULL, 0),
(7, 8, '2021-03-27 11:56:12', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f1d5c2a617', NULL, 0),
(8, 8, '2021-03-27 12:01:35', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f1e9f3b074', NULL, 0),
(9, 8, '2021-03-27 12:02:59', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f1ef32aeec', NULL, 0),
(10, 8, '2021-03-27 12:04:06', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f1f3683502', NULL, 0),
(11, 8, '2021-03-27 12:07:44', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f201013ad0', NULL, 0),
(12, 8, '2021-03-27 12:28:42', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f24fa9d3c9', 'cs_test_b1praWQFZt7Ejl7R4X9IuO6UUjpoG2adV9nR8lB6glQRNICu8F0HzeczTH', 0),
(13, 8, '2021-03-27 14:06:21', 'Bpost', 9.9, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f3bddc3894', 'cs_test_b1m3Ste79lbHYWWhvZkMVJViHYgunuqru6VH1C1DCG1ztg8H6bUvHtW7zZ', 0),
(14, 8, '2021-03-27 14:08:33', 'Bpost', 9.9, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '27032021-605f3c615390a', 'cs_test_b1HHBlR00NY6eZU10M1gD5lmf6LKcnixOOgJRLhbwSo2iU3veAW9mgT2cu', 0),
(15, 8, '2021-03-27 14:15:22', 'DHL', 7, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue de la liberté 18<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f3dfa2ad41', 'cs_test_b11KMEoJmmdG4sLbWjexdGpshFhwFMjkngakrcCaBa3zBLkXczLBVH27uG', 0),
(16, 8, '2021-03-27 14:41:18', 'Bpost', 990, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '27032021-605f440ee23e8', NULL, 0),
(17, 8, '2021-03-27 14:43:22', 'Bpost', 990, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '27032021-605f448aec581', NULL, 0),
(18, 8, '2021-03-27 14:45:02', 'Bpost', 990, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '27032021-605f44eebfa76', NULL, 0),
(19, 8, '2021-03-27 14:46:12', 'Bpost', 990, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '27032021-605f4534d3a61', 'cs_test_b10NdKvZQz9yacfs2AulwaylxIVHibmhMOk3iAr3mNcHcgXYKuJCpxXhMf', 0),
(20, 8, '2021-03-27 17:43:59', 'Bpost', 990, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f6edf91610', NULL, 0),
(21, 8, '2021-03-27 17:44:55', 'Bpost', 990, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f6f17e7461', 'cs_test_b1tMhQHa4TsWOiKVVKV7d46YFOOWAWfdaXHqPj01oFPhj8Egbudjmlps2C', 0),
(22, 8, '2021-03-27 17:48:18', 'DHL', 700, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue de la liberté 18<br/>4020 JUPILLE-S-MEUSE<br/>BE', '27032021-605f6fe24d60a', 'cs_test_b1AbbFdze9NAhNEUqrGMfQcg6pHbcsZyBeZ0e28hqrcm5SDhY72D0Q7p5o', 0),
(23, 10, '2021-03-29 09:08:28', 'Bpost', 990, 'Rachida Haddouch<br/>0499322906<br/>rue du couvent, 168<br/>4020 Jupille-sur-Meuse<br/>BE', '29032021-6061990cc2d2d', 'cs_test_b1F8lFLE3l5aCBb8t8i9bglGx9uY2KQvjDxiqMdIjYut9ttGslVJqGTXrj', 0),
(24, 10, '2021-03-29 10:31:23', 'Bpost', 990, 'Rachida Haddouch<br/>0499322906<br/>rue du couvent, 168<br/>4020 Jupille-sur-Meuse<br/>BE', '29032021-6061ac7b3a396', 'cs_test_b164tOZ2m3p0e9yN346L2gRlVOVyX5adoHwwHerpisYPDyH1RajqZKt7cz', 2),
(25, 10, '2021-03-29 13:15:56', 'Bpost', 990, 'Rachida Haddouch<br/>0499322906<br/>rue du couvent, 168<br/>4020 Jupille-sur-Meuse<br/>BE', '29032021-6061d30ceb6aa', 'cs_test_b1kfBna8dTD2mV5RNCcg6idHlj1jwQm71m7M2WyyWUnXC7Mn20S0RH2Ect', 3),
(26, 8, '2021-03-29 14:12:34', 'Bpost', 990, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '29032021-6061e052a0c5e', 'cs_test_b1sGoqYBHWC1mbKVEDD0ytqGNEFXnDp8Yxl2Dtld7vcDdDcyvQ11vAuaJ0', 3),
(27, 8, '2021-03-30 07:53:12', 'Bpost', 990, 'Haddouch Hayet<br/>+32499322906<br/>cour jacquet 9<br/>4020 Bressoux<br/>BE', '30032021-6062d8e8e3187', 'cs_test_b1WStw9gHFcCxYuPRGzZWNPx8KGWNIoqN1nKx7Cv5yVTplEf9QBIFMyi4c', 0),
(28, 8, '2021-03-30 08:13:21', 'Bpost', 990, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue du couvent, 168<br/>4020 JUPILLE-S-MEUSE<br/>BE', '30032021-6062dda157ce1', 'cs_test_b1G85Ii7p8qgGMsaHhMekQj6yQfLC6AOQCg0GUtPbKewyDJWIs2UvoUDlE', 1),
(29, 8, '2021-03-31 07:56:03', 'Bpost', 990, 'Jamal Saidi<br/>+32487556570<br/>new<br/>rue de la liberté 18<br/>4020 JUPILLE-S-MEUSE<br/>BE', '31032021-60642b1362952', 'cs_test_b1VybX4RdpPCwPXnEe9qP3wwoBAYwWzs4JHd4vyOvHwcdeZIfcMen46NUP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `my_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 1, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(2, 1, 'Lip balm minted rose', 1, 700, 700),
(3, 2, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(4, 2, 'Lip balm minted rose', 1, 700, 700),
(5, 2, 'Lipstick colorful natural', 1, 1200, 1200),
(6, 3, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(7, 3, 'Lip balm minted rose', 1, 700, 700),
(8, 3, 'Lipstick colorful natural', 1, 1200, 1200),
(9, 4, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(10, 4, 'Lip balm minted rose', 1, 700, 700),
(11, 4, 'Lipstick colorful natural', 1, 1200, 1200),
(12, 5, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(13, 5, 'Lip balm minted rose', 1, 700, 700),
(14, 5, 'Lipstick colorful natural', 1, 1200, 1200),
(15, 6, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(16, 6, 'Lip balm minted rose', 1, 700, 700),
(17, 6, 'Lipstick colorful natural', 1, 1200, 1200),
(18, 7, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(19, 7, 'Lip balm minted rose', 1, 700, 700),
(20, 7, 'Lipstick colorful natural', 1, 1200, 1200),
(21, 8, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(22, 8, 'Lip balm minted rose', 1, 700, 700),
(23, 8, 'Lipstick colorful natural', 1, 1200, 1200),
(24, 9, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(25, 9, 'Lip balm minted rose', 1, 700, 700),
(26, 9, 'Lipstick colorful natural', 1, 1200, 1200),
(27, 10, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(28, 10, 'Lip balm minted rose', 1, 700, 700),
(29, 10, 'Lipstick colorful natural', 1, 1200, 1200),
(30, 11, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(31, 11, 'Lip balm minted rose', 1, 700, 700),
(32, 11, 'Lipstick colorful natural', 1, 1200, 1200),
(33, 12, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(34, 12, 'Lip balm minted rose', 1, 700, 700),
(35, 12, 'Lipstick colorful natural', 1, 1200, 1200),
(36, 13, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(37, 13, 'Lip balm minted rose', 1, 700, 700),
(38, 13, 'Lipstick colorful natural', 1, 1200, 1200),
(39, 14, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(40, 14, 'Lip balm minted rose', 1, 700, 700),
(41, 14, 'Lipstick colorful natural', 1, 1200, 1200),
(42, 15, 'Ultra Hydrating Face Cream', 2, 1900, 3800),
(43, 15, 'Lip balm minted rose', 1, 700, 700),
(44, 15, 'Lipstick colorful natural', 1, 1200, 1200),
(45, 16, 'Serum beauty face', 1, 4500, 4500),
(46, 17, 'Serum beauty face', 1, 4500, 4500),
(47, 18, 'Serum beauty face', 1, 4500, 4500),
(48, 19, 'Serum beauty face', 1, 4500, 4500),
(49, 20, 'Soap natural cocoa', 1, 800, 800),
(50, 20, 'Lip balm minted rose', 1, 700, 700),
(51, 21, 'Soap natural cocoa', 1, 800, 800),
(52, 21, 'Lip balm minted rose', 1, 700, 700),
(53, 22, 'Soap natural cocoa', 1, 800, 800),
(54, 22, 'Lip balm minted rose', 1, 700, 700),
(55, 23, 'Body oil coco', 1, 1900, 1900),
(56, 24, 'Lip balm minted rose', 1, 700, 700),
(57, 24, 'Lipstick colorful natural', 1, 1200, 1200),
(58, 25, 'Serum beauty face', 1, 4500, 4500),
(59, 26, 'Serum beauty face', 1, 4500, 4500),
(60, 27, 'Body oil coco', 1, 1900, 1900),
(61, 28, 'Body oil coco', 1, 1900, 1900),
(62, 29, 'Serum beauty face', 1, 4500, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(3, 1, 'Serum beauty face', 'serum-beauty-face', 'e8c150b2439f2ef11173deb4cefb4337eb39faf8.jpg', 'An ultra-soothing plant-based serum virtual', 'This is a eshop demo so it\'s virtual  .\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4500, 1),
(4, 1, 'Ultra Hydrating Face Cream', 'ultra-hydrating-face-cream', 'fb73a303b782605d18ca96843262b82a92a92c81.jpg', 'Daily Face Moisturizer virtual.', 'This is a eshop demo so it\'s virtual  .This face cream uses plant-based chemistry to deliver hydration from moroccan argan oil and improved in skin elasticity from shea butter.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3900, 0),
(5, 3, 'Lip balm minted rose virtual', 'lip-balm-minted-rose', 'fbd66ab937ad4418a22d31a0965d9fb5579149c9.jpg', 'Lip balm minty to soothe dry lips virtual', 'This is a eshop demo so it\'s virtual  .This must-have lip balm calms and heals irritation, and soothes the sting of minor burns. Easy-to-use and versatile, dab it on chapped lips, elbows, or knees to condition and relieve dryness.', 1700, 1),
(6, 2, 'Soap natural cocoa virtual', 'soap-natural-cocoa', '7b85b1cf98cabb2abdb836e8991fa468114d11d1.jpg', 'Handmade Cold Process Soap virtual', 'This is a eshop demo so it\'s virtual  .This soap is made with moisturizing cocoa butter, coconut milk and almond oil. This soap is lightly scented with an all natural blend of essential oils. , All Natural, lightly scented soap.', 2800, 1),
(7, 2, 'Body oil coco virtual', 'body-oil-coco', 'e12c731529157d3e2135415100db7ceea878e71b.jpg', 'The natural elixir moisturises', 'This is a eshop demo so it\'s virtual  . Body oil based on natural oils to help keep skin firm, smooth and perfectly hydrated..\r\nRoyal blend of avocado, coconut, jojoba, sweet almond and rose hip seed oils\r\nLong-lasting smell of coconut.', 3900, 0),
(8, 4, 'Pack  Princess Hair virtual', 'shampoo-and-serum-bio-princess-hair', 'd708fe130c7a0c50f9f55e95a4e2de7dfbbf13a0.jpg', 'Thickening & Growth Collection', 'This is a eshop demo so it\'s virtual  .The THICKENING AND GROWTH FORMULA was specifically created to promote healthy scalp and follicles; allowing healthy hair to grow longer and thicker. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 7900, 1),
(9, 5, 'Pack gift bio virtual', 'pack-gift-bio', 'e2c44832a5f26ec67ecc4e229eeeb84ac96c8adf.jpg', 'An awesome surprise gift', 'This is a eshop demo so it\'s virtual  .In this pack you will receive 3 of the best product bio.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5900, 1),
(10, 3, 'Lipstick colorful natural virtual', 'lipstick-colorful-natural', '6b1ed475b03e005f1f8a05d88d26161ee0d108d2.jpg', 'Lipstick balm', 'This is a eshop demo so it\'s virtual  .You can have this lipstick with natural color. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2200, 1),
(11, 1, 'Skin perfect virtual', 'skin-perfect', '46366bd70b821a8d8047a51e9a28b6e8f5332227.jpg', 'A daily routine for your skin', 'This is a eshop demo so it\'s virtual  . You can test this lorem ipsum dolor ,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 3800, 1),
(12, 2, 'Shower gel bio virtual', 'shower-gel-bio', 'bd29c72d0286490589dc85c0c7c262ff7cfff6e1.jpg', 'Organic Shower gel soap-free', 'This is a eshop demo so it\'s virtual  . Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.', 2500, 0),
(13, 3, 'Lipstick berries virtual', 'lipstick-berries', '48fad1a9d53082f8af4d7a5ab95679e8732e2b47.jpg', 'Vegetal', 'This is a eshop demo so it\'s virtual  . Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 2400, 0),
(14, 3, 'Palette nature Beauty virtual', 'palette-nature-beauty', 'c87ad96625b8ba626e8b309ecd4bd2d21f0182c3.jpg', 'colorful and vegan', 'This is a eshop demo so it\'s virtual  . Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 3500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'sanamanel@hotmail.com', '[]', 'Haddouch81', 'Sana', 'Manel'),
(6, 'manel@mail.com', '[]', '$2y$13$Qt0WtRvLZ3HlSWziyl0ka.WUFcgt32dX43skWd2DTegwAYOJv.eUG', 'Manel', 'Saidi'),
(8, 'rachida.haddouch.webdev@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$8BDHZIouieGd8AcLNrTXluWjGLoRPHyB/T8kV0onYsEPVxwX0liwG', 'Sanamanel', 'Saidi'),
(10, 'rachidahaddouch@live.be', '[]', '$2y$13$b3.HilyeYi.jKTZH02ALLepkBHL6wyQhA4tJ7FRFiSluOGk6HIHtK', 'Rachida', 'Haddouch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4E6F81A76ED395` (`user_id`);

--
-- Indexes for table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_845CA2C1BFCDF877` (`my_order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
