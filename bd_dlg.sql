-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 27, 2021 at 01:17 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bd_dlg`
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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `address`, `postal`, `city`, `country`, `phone`, `company`) VALUES
(3, 3, 'abbis', 'nico', 'mrc', '8 Résidence Verdun Leclerc', '94450', 'Limeil Brevannes', 'FR', '0642864504', NULL),
(6, 7, 'maison', 'gerard', 'dupont', '78 rue du maréchal', '43000', 'biloute', 'FR', '0656578909', 'bidule'),
(7, 7, 'maison', 'gerard', 'dupont', '78 rue du maréchal', '43000', 'biloute', 'FR', '0656578909', 'bidule'),
(12, 6, 'Maison', 'nicolas', 'mercier', '8 Résidence Verdun Leclerc', '94450', 'Limeil Brevannes', 'FR', '0642864504', 'Dodoleguide'),
(13, 8, 'Maison', 'gerard', 'dupont', '78 rue du maréchal', '43000', 'valence', 'FR', '0607080909', 'bidule');

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
(1, 'colissimo', 'Livraison en 48h', 1499),
(2, 'chronopost', 'Livraison en 24h', 1999);

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
(2, 'panoramiques'),
(3, 'T-shirts'),
(4, 'Plans et Cartes'),
(5, 'Pâte de piments'),
(6, 'Magnets'),
(7, 'Porte clés');

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
('DoctrineMigrations\\Version20210309171406', '2021-03-09 17:14:59', 31),
('DoctrineMigrations\\Version20210309185436', '2021-03-09 18:54:55', 34),
('DoctrineMigrations\\Version20210310154933', '2021-03-10 15:49:55', 43),
('DoctrineMigrations\\Version20210315101433', '2021-03-15 10:15:57', 40),
('DoctrineMigrations\\Version20210315105736', '2021-03-15 10:57:46', 57),
('DoctrineMigrations\\Version20210317164054', '2021-03-17 16:41:12', 55),
('DoctrineMigrations\\Version20210326084419', '2021-03-26 08:44:30', 41),
('DoctrineMigrations\\Version20210326090433', '2021-03-26 09:04:49', 72),
('DoctrineMigrations\\Version20210327172259', '2021-03-27 17:23:10', 47),
('DoctrineMigrations\\Version20210328100843', '2021-03-28 10:08:53', 68),
('DoctrineMigrations\\Version20210328150750', '2021-03-28 15:08:02', 83),
('DoctrineMigrations\\Version20210329080745', '2021-03-29 08:07:55', 74),
('DoctrineMigrations\\Version20210329104955', '2021-03-29 10:50:09', 40),
('DoctrineMigrations\\Version20210330080904', '2021-03-30 08:09:16', 77),
('DoctrineMigrations\\Version20210331064731', '2021-03-31 06:47:40', 67),
('DoctrineMigrations\\Version20210411080447', '2021-04-11 08:04:58', 75),
('DoctrineMigrations\\Version20210412122908', '2021-04-12 12:29:22', 69),
('DoctrineMigrations\\Version20210413090616', '2021-04-13 09:06:29', 42);

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
(2, 'DoDo Le Guide', '.', 'Découvrez notre boutique', 'https://127.0.0.1:8000/nos-produits', '3e0ef570ae77729af143b7d28f42767ff93a9531.png'),
(3, 'DoDo Le Guide', '.', 'Découvrez notre boutique', 'https://127.0.0.1:8000/nos-produits', 'e4e16b85e8ff0f004d78d4ee041396cfd0579e10.jpg'),
(4, 'DoDo Le Guide', '.', 'Découvrez notre boutique', 'https://127.0.0.1:8000/nos-produits', 'ec3db3e6f76390a5273822d321c222f8252f197d.jpg'),
(5, 'DoDo Le Guide', '.', 'Découvrez notre boutique', 'https://127.0.0.1:8000/nos-produits', '29fd3eb09b5997df8b91e5b81bf0790d0211f3c9.jpg');

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
(1, 6, '2021-03-29 12:53:47', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '', NULL, 0),
(2, 6, '2021-03-29 12:58:40', 'chronopost', 20.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '', NULL, 0),
(3, 6, '2021-03-29 15:37:32', 'chronopost', 20.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '', NULL, 0),
(4, 6, '2021-03-30 15:29:16', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '30032021-606343cc22eaa', NULL, 0),
(5, 6, '2021-03-30 15:43:39', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '30032021-6063472bdea93', NULL, 0),
(6, 6, '2021-03-30 15:44:41', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '30032021-60634769ef792', NULL, 0),
(7, 6, '2021-03-30 15:50:37', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '30032021-606348cda5db5', NULL, 0),
(8, 6, '2021-03-31 07:18:42', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60642252511b0', NULL, 0),
(9, 6, '2021-03-31 07:43:23', 'colissimo', 15.99, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-6064281b85e88', 'cs_test_b10i06EtXTqIIidCmmmGHYOm8DpOOBfSCNsbkP7zzceNZClFM53rGtCaXn', 0),
(10, 6, '2021-03-31 12:15:07', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-606467cb90b85', NULL, 0),
(11, 6, '2021-03-31 12:15:48', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-606467f445958', 'cs_test_b1Fqnllj5yq2cw60XSTuziYMINO2Dx0uY11oxHEFGIUDGDSCLUthHqavlD', 0),
(12, 6, '2021-03-31 12:18:46', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-606468a6ce422', NULL, 0),
(13, 6, '2021-03-31 12:19:11', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-606468bf88ebd', NULL, 0),
(14, 6, '2021-03-31 12:25:08', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60646a240708c', NULL, 0),
(15, 6, '2021-03-31 12:28:04', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60646ad40ffb6', NULL, 0),
(16, 6, '2021-03-31 12:28:29', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60646aeda3027', NULL, 0),
(17, 6, '2021-03-31 12:28:43', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60646afbc43d5', 'cs_test_b1TWFNhMhmjfDMUtGTsUtRPdRDslyL7kBt8m8Cz6psGgxfGUJMx0uyLu4O', 0),
(18, 6, '2021-03-31 12:32:31', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-60646bdfe7903', 'cs_test_b1k3uYyq5SSwzs5obFJpYhE2V9XuKxEbHpBcwQBm56yXRVCMoZecdynUZ0', 0),
(19, 6, '2021-03-31 14:10:39', 'chronopost', 1999, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '31032021-606482df57cdb', 'cs_test_b1BPXwb9KoyMZlRSSGEc2sae4wFBVm7VVJNMiJY9MuGiS4BIGAJnxRQ4Wn', 0),
(20, 6, '2021-04-06 07:55:40', 'colissimo', 1499, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR<br/>78 rue du maréchal', '06042021-606c13fc90ff0', NULL, 0),
(21, 6, '2021-04-06 07:55:47', 'colissimo', 1499, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR<br/>78 rue du maréchal', '06042021-606c14036d587', NULL, 0),
(22, 6, '2021-04-06 07:58:31', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c14a73c5bb', NULL, 0),
(23, 6, '2021-04-06 08:03:16', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c15c4a1a19', NULL, 0),
(24, 6, '2021-04-06 08:04:27', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c160b96ee6', NULL, 0),
(25, 6, '2021-04-06 08:04:56', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c162806c19', NULL, 0),
(26, 6, '2021-04-06 08:05:20', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c1640e88a9', NULL, 0),
(27, 6, '2021-04-06 08:05:40', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c1654f3216', NULL, 0),
(28, 6, '2021-04-06 08:05:53', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c1661321f4', NULL, 0),
(29, 6, '2021-04-06 08:06:13', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c1675dd99a', NULL, 0),
(30, 6, '2021-04-06 08:07:12', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c16b0350b0', NULL, 0),
(31, 6, '2021-04-06 08:07:23', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c16bba44b3', NULL, 0),
(32, 6, '2021-04-06 08:07:44', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c16d0f0e1f', NULL, 0),
(33, 6, '2021-04-06 08:08:07', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c16e7a6707', NULL, 0),
(34, 6, '2021-04-06 08:08:28', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c16fc1a7f2', NULL, 0),
(35, 6, '2021-04-06 08:11:16', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c17a467f9e', NULL, 0),
(36, 6, '2021-04-06 08:12:09', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c17d903a56', NULL, 0),
(37, 6, '2021-04-06 08:13:57', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c1845ec0ce', NULL, 0),
(38, 6, '2021-04-06 08:14:19', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c185b5cc9a', NULL, 0),
(39, 6, '2021-04-06 08:14:43', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c187332fb9', NULL, 0),
(40, 6, '2021-04-06 08:15:02', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c18861b748', NULL, 0),
(41, 6, '2021-04-06 08:15:19', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c189725de5', NULL, 0),
(42, 6, '2021-04-06 08:15:51', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c18b734de1', NULL, 0),
(43, 6, '2021-04-06 09:44:34', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2d82e0ce4', NULL, 0),
(44, 6, '2021-04-06 09:45:34', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2dbea445a', NULL, 0),
(45, 6, '2021-04-06 09:46:15', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2de73cf41', NULL, 0),
(46, 6, '2021-04-06 09:46:38', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2dfe39633', NULL, 0),
(47, 6, '2021-04-06 09:46:56', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2e10ea7ed', NULL, 0),
(48, 6, '2021-04-06 09:47:44', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2e40f3688', NULL, 0),
(49, 6, '2021-04-06 09:47:58', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2e4e6ff20', NULL, 0),
(50, 6, '2021-04-06 09:48:47', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2e7fa0b4a', NULL, 0),
(51, 6, '2021-04-06 09:48:58', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2e8a092ba', NULL, 0),
(52, 6, '2021-04-06 09:51:28', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2f206f8a7', NULL, 0),
(53, 6, '2021-04-06 09:52:45', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2f6d73359', NULL, 0),
(54, 6, '2021-04-06 09:53:52', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c2fb02470a', NULL, 0),
(55, 6, '2021-04-06 13:00:44', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c5b7c4d72c', NULL, 0),
(56, 6, '2021-04-06 13:04:47', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c5c6f02d0d', NULL, 0),
(57, 6, '2021-04-06 13:04:57', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c5c79b7b56', NULL, 0),
(58, 6, '2021-04-06 13:05:27', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c5c978591d', NULL, 0),
(59, 6, '2021-04-06 13:06:49', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c5ce9017d5', NULL, 0),
(60, 6, '2021-04-06 13:26:28', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c61840d33c', NULL, 0),
(61, 6, '2021-04-06 13:27:10', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c61aed746c', NULL, 0),
(62, 6, '2021-04-06 13:27:26', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR<br/>3 rue charle', '06042021-606c61be70476', NULL, 0),
(63, 6, '2021-04-06 14:33:29', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR<br/>8 Résidence Verdun Leclerc', '06042021-606c7139662ec', NULL, 0),
(64, 6, '2021-04-06 14:39:39', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c72ab18513', NULL, 0),
(65, 6, '2021-04-06 14:41:54', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c7332aa07c', NULL, 0),
(66, 6, '2021-04-06 14:42:14', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c7346f2348', NULL, 0),
(67, 6, '2021-04-06 14:42:26', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c7352642e7', NULL, 0),
(68, 6, '2021-04-06 14:42:39', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c735f72fb6', NULL, 0),
(69, 6, '2021-04-06 14:42:48', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c736869308', NULL, 0),
(70, 6, '2021-04-06 14:43:24', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c738c44294', NULL, 0),
(71, 6, '2021-04-06 14:43:43', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c739f7bcc2', NULL, 0),
(72, 6, '2021-04-06 14:44:30', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c73cea022c', NULL, 0),
(73, 6, '2021-04-06 14:44:43', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c73db4658f', NULL, 0),
(74, 6, '2021-04-06 14:45:30', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c740ae4669', NULL, 0),
(75, 6, '2021-04-06 14:45:45', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c741971a03', NULL, 0),
(76, 6, '2021-04-06 14:46:01', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c742915354', NULL, 0),
(77, 6, '2021-04-06 14:46:11', 'colissimo', 1499, 'nicolas mercier<br/>0606060606<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '06042021-606c743342912', NULL, 0),
(78, 6, '2021-04-07 08:24:39', 'colissimo', 1499, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR', '07042021-606d6c479fc03', NULL, 0),
(79, 6, '2021-04-07 08:36:02', 'chronopost', 1999, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR', '07042021-606d6ef24daa2', NULL, 0),
(80, 6, '2021-04-07 08:37:04', 'chronopost', 1999, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR', '07042021-606d6f3031ffc', NULL, 0),
(81, 6, '2021-04-07 08:47:40', 'chronopost', 1999, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR', '07042021-606d71ac704cf', NULL, 0),
(82, 6, '2021-04-07 09:12:54', 'colissimo', 1499, 'gerard dupont<br/>0642864503<br/>bidule<br/>78 rue du maréchal<br/>43000noisy<br/>FR', '07042021-606d779601f79', 'cs_test_b1VD9ogx1ocEEnTo9KAsQwHpMT8MDs6doEW6E6RTlp3mGWNeAWk9xSsRBh', 0),
(83, 6, '2021-04-07 09:44:12', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR', '07042021-606d7eec5a648', NULL, 0),
(84, 6, '2021-04-07 09:45:25', 'chronopost', 1999, 'Thomas Morto<br/>0654457867<br/>Diaporama<br/>3 rue charle<br/>13009Marseille<br/>FR', '07042021-606d7f356404c', NULL, 0),
(85, 6, '2021-04-09 14:14:32', 'colissimo', 1499, 'nicolas mercier<br/>0642864503<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil-Brevannes<br/>FR', '09042021-607061488029b', NULL, 0),
(86, 6, '2021-04-11 08:17:02', 'chronopost', 1999, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '11042021-6072b07ef0369', 'cs_test_b15cl7ZJFrSGe7D315Bcd2lG3jJVfU98PsCK14M7Sp61wuCJCx8pUtc0ek', 0),
(87, 6, '2021-04-11 08:20:11', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '11042021-6072b13b19d8d', 'cs_test_b1Y9QpwKyAObTah4KMQz3leAiHuYtZL3w2cRxh3XIdnkKNNzhEslMJZDAM', 0),
(88, 6, '2021-04-11 08:47:37', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '11042021-6072b7a912bf2', 'cs_test_b1FYSAr8b3fiXzoM3EGjnE5EIKITLZCFa3ovCBJQtHpO9trCQyJChFgBWR', 0),
(89, 6, '2021-04-11 08:48:05', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '11042021-6072b7c56083d', 'cs_test_b1xJlFY55aZlonrw7nT90C99UyzOljpSHppblDZtV5Xn8iWqyBRtlm25AK', 0),
(90, 8, '2021-04-11 08:53:27', 'colissimo', 1499, 'gerard dupont<br/>0607080909<br/>bidule<br/>78 rue du maréchal<br/>43000valence<br/>FR', '11042021-6072b9075c8b8', 'cs_test_b1pLsP5RvobgHrmp4IKKnJ5ZJ9va4ZByxc4daYmmDyBielsDAlIyxh5Xtb', 0),
(91, 6, '2021-04-11 09:35:51', 'chronopost', 1999, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '11042021-6072c2f78c6f8', 'cs_test_b1YmdIRUJ5brToCqV7u5E4XCha32oeON7zUUnZYBhrRMnsVafR5DPo6nAQ', 2),
(92, 6, '2021-04-14 14:07:20', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '14042021-6076f7185db72', 'cs_test_b1bMZupvcTxxB5QZMy5RkfH2nN8DHhfGsDnXUVczAe2htvuct0ujarwPli', 1),
(93, 6, '2021-04-14 15:12:32', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '14042021-60770660c794e', NULL, 0),
(94, 6, '2021-04-14 15:13:02', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '14042021-6077067e34f71', 'cs_test_b1nTJj3qQgx40YARQjVI6iBEJRVxzqKJ9mfwnKWASAkBYa0liEyFFVuiNH', 1),
(95, 6, '2021-05-04 10:39:41', 'chronopost', 1999, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '04052021-6091246d98396', NULL, 0),
(96, 6, '2021-05-05 08:50:29', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '05052021-60925c556e18e', NULL, 0),
(97, 6, '2021-05-05 12:07:14', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '05052021-60928a72b4e3c', NULL, 0),
(98, 6, '2021-05-31 09:28:53', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '31052021-60b4ac556923e', 'cs_test_b1gfwZmu9jV6VpslwyO4H9JJc49AuGP51FkrAuHLz9zR1FAtSwWjroqtKT', 0),
(99, 6, '2021-06-07 15:51:55', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '07062021-60be409bc96d5', 'cs_test_b1Me1VkFXWmvLyDrY4Ksd3e0YCTnM4UegKXA7hZHZkTNzzfOv6eCquFwBi', 0),
(100, 6, '2021-06-09 08:23:05', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '09062021-60c07a6921c0c', 'cs_test_b1BMFil1NG4moK56NgjM4T4QBpHP998HeGWpGaGJaSOGPJ2Rnx86SNg10f', 1),
(101, 8, '2021-07-06 12:29:55', 'chronopost', 1999, 'gerard dupont<br/>0607080909<br/>bidule<br/>78 rue du maréchal<br/>43000valence<br/>FR', '06072021-60e44cc39b78e', 'cs_test_b1ZQceb3wrWwP6dbznjzgU5YpYlAiWEZkoz79RSoxOrqkmJbiKHIeKS17d', 1),
(102, 6, '2021-07-08 15:53:33', 'colissimo', 1499, 'nicolas mercier<br/>0642864504<br/>Dodoleguide<br/>8 Résidence Verdun Leclerc<br/>94450Limeil Brevannes<br/>FR', '08072021-60e71f7d7d620', 'cs_test_b1J1QXAeqod3BEyiktM6Imi0bIyEZYMcCcDJMd7N1bAZ0B9ZsAdHdtHcfT', 1);

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
(1, 1, 'Plan Ile de la Réunion', 1, 700, 700),
(2, 1, 'Porte clés Ile de la réunion', 1, 999, 999),
(3, 1, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(4, 2, 'Magnet 974', 2, 500, 1000),
(5, 3, 'Magnet 974', 3, 500, 1500),
(6, 3, 'Plan Ile de la Réunion', 1, 700, 700),
(7, 3, 'Porte clés Ile de la réunion', 1, 999, 999),
(8, 4, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(9, 5, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(10, 6, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(11, 7, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(12, 8, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(13, 8, 'Magnet 974', 1, 500, 500),
(14, 9, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(15, 9, 'Magnet 974', 1, 500, 500),
(16, 9, 'Porte clés Ile de la réunion', 1, 999, 999),
(17, 10, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(18, 10, 'Magnet 974', 2, 500, 1000),
(19, 10, 'Porte clés Ile de la réunion', 2, 999, 1998),
(20, 11, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(21, 11, 'Magnet 974', 2, 500, 1000),
(22, 11, 'Porte clés Ile de la réunion', 2, 999, 1998),
(23, 12, 'Magnet 974', 1, 500, 500),
(24, 12, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(25, 12, 'Pâte de Piments', 1, 599, 599),
(26, 13, 'Magnet 974', 1, 500, 500),
(27, 13, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(28, 13, 'Pâte de Piments', 1, 599, 599),
(29, 14, 'Magnet 974', 1, 500, 500),
(30, 14, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(31, 14, 'Pâte de Piments', 1, 599, 599),
(32, 15, 'Magnet 974', 1, 500, 500),
(33, 15, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(34, 15, 'Pâte de Piments', 1, 599, 599),
(35, 16, 'Magnet 974', 1, 500, 500),
(36, 16, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(37, 16, 'Pâte de Piments', 1, 599, 599),
(38, 17, 'Magnet 974', 1, 500, 500),
(39, 17, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(40, 17, 'Pâte de Piments', 1, 599, 599),
(41, 18, 'Magnet 974', 1, 500, 500),
(42, 19, 'Pâte de Piments', 2, 599, 1198),
(43, 19, 'Porte clés Ile de la réunion', 1, 999, 999),
(44, 20, 'Plan Ile de la Réunion', 2, 700, 1400),
(45, 20, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(46, 20, 'Panoramique de l\'île', 1, 3999, 3999),
(47, 21, 'Plan Ile de la Réunion', 2, 700, 1400),
(48, 21, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(49, 21, 'Panoramique de l\'île', 1, 3999, 3999),
(50, 22, 'Plan Ile de la Réunion', 3, 700, 2100),
(51, 22, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(52, 22, 'Panoramique de l\'île', 1, 3999, 3999),
(53, 23, 'Plan Ile de la Réunion', 3, 700, 2100),
(54, 23, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(55, 23, 'Panoramique de l\'île', 1, 3999, 3999),
(56, 24, 'Plan Ile de la Réunion', 3, 700, 2100),
(57, 24, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(58, 24, 'Panoramique de l\'île', 1, 3999, 3999),
(59, 25, 'Plan Ile de la Réunion', 3, 700, 2100),
(60, 25, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(61, 25, 'Panoramique de l\'île', 1, 3999, 3999),
(62, 26, 'Plan Ile de la Réunion', 3, 700, 2100),
(63, 26, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(64, 26, 'Panoramique de l\'île', 1, 3999, 3999),
(65, 27, 'Plan Ile de la Réunion', 3, 700, 2100),
(66, 27, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(67, 27, 'Panoramique de l\'île', 1, 3999, 3999),
(68, 28, 'Plan Ile de la Réunion', 3, 700, 2100),
(69, 28, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(70, 28, 'Panoramique de l\'île', 1, 3999, 3999),
(71, 29, 'Plan Ile de la Réunion', 3, 700, 2100),
(72, 29, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(73, 29, 'Panoramique de l\'île', 1, 3999, 3999),
(74, 30, 'Plan Ile de la Réunion', 3, 700, 2100),
(75, 30, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(76, 30, 'Panoramique de l\'île', 1, 3999, 3999),
(77, 31, 'Plan Ile de la Réunion', 3, 700, 2100),
(78, 31, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(79, 31, 'Panoramique de l\'île', 1, 3999, 3999),
(80, 32, 'Plan Ile de la Réunion', 3, 700, 2100),
(81, 32, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(82, 32, 'Panoramique de l\'île', 1, 3999, 3999),
(83, 33, 'Plan Ile de la Réunion', 3, 700, 2100),
(84, 33, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(85, 33, 'Panoramique de l\'île', 1, 3999, 3999),
(86, 34, 'Plan Ile de la Réunion', 3, 700, 2100),
(87, 34, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(88, 34, 'Panoramique de l\'île', 1, 3999, 3999),
(89, 35, 'Plan Ile de la Réunion', 3, 700, 2100),
(90, 35, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(91, 35, 'Panoramique de l\'île', 1, 3999, 3999),
(92, 36, 'Plan Ile de la Réunion', 4, 700, 2800),
(93, 36, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(94, 36, 'Panoramique de l\'île', 1, 3999, 3999),
(95, 37, 'Plan Ile de la Réunion', 4, 700, 2800),
(96, 37, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(97, 37, 'Panoramique de l\'île', 1, 3999, 3999),
(98, 38, 'Plan Ile de la Réunion', 4, 700, 2800),
(99, 38, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(100, 38, 'Panoramique de l\'île', 1, 3999, 3999),
(101, 39, 'Plan Ile de la Réunion', 4, 700, 2800),
(102, 39, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(103, 39, 'Panoramique de l\'île', 1, 3999, 3999),
(104, 40, 'Plan Ile de la Réunion', 4, 700, 2800),
(105, 40, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(106, 40, 'Panoramique de l\'île', 1, 3999, 3999),
(107, 41, 'Plan Ile de la Réunion', 4, 700, 2800),
(108, 41, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(109, 41, 'Panoramique de l\'île', 1, 3999, 3999),
(110, 42, 'Plan Ile de la Réunion', 4, 700, 2800),
(111, 42, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(112, 42, 'Panoramique de l\'île', 1, 3999, 3999),
(113, 43, 'Plan Ile de la Réunion', 4, 700, 2800),
(114, 43, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(115, 43, 'Panoramique de l\'île', 1, 3999, 3999),
(116, 43, 'Magnet 974', 1, 500, 500),
(117, 44, 'Plan Ile de la Réunion', 4, 700, 2800),
(118, 44, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(119, 44, 'Panoramique de l\'île', 1, 3999, 3999),
(120, 44, 'Magnet 974', 1, 500, 500),
(121, 45, 'Plan Ile de la Réunion', 4, 700, 2800),
(122, 45, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(123, 45, 'Panoramique de l\'île', 1, 3999, 3999),
(124, 45, 'Magnet 974', 1, 500, 500),
(125, 46, 'Plan Ile de la Réunion', 4, 700, 2800),
(126, 46, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(127, 46, 'Panoramique de l\'île', 1, 3999, 3999),
(128, 46, 'Magnet 974', 1, 500, 500),
(129, 47, 'Plan Ile de la Réunion', 4, 700, 2800),
(130, 47, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(131, 47, 'Panoramique de l\'île', 1, 3999, 3999),
(132, 47, 'Magnet 974', 1, 500, 500),
(133, 48, 'Plan Ile de la Réunion', 4, 700, 2800),
(134, 48, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(135, 48, 'Panoramique de l\'île', 1, 3999, 3999),
(136, 48, 'Magnet 974', 1, 500, 500),
(137, 49, 'Plan Ile de la Réunion', 4, 700, 2800),
(138, 49, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(139, 49, 'Panoramique de l\'île', 1, 3999, 3999),
(140, 49, 'Magnet 974', 1, 500, 500),
(141, 50, 'Plan Ile de la Réunion', 4, 700, 2800),
(142, 50, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(143, 50, 'Panoramique de l\'île', 1, 3999, 3999),
(144, 50, 'Magnet 974', 1, 500, 500),
(145, 51, 'Plan Ile de la Réunion', 4, 700, 2800),
(146, 51, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(147, 51, 'Panoramique de l\'île', 1, 3999, 3999),
(148, 51, 'Magnet 974', 1, 500, 500),
(149, 52, 'Plan Ile de la Réunion', 4, 700, 2800),
(150, 52, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(151, 52, 'Panoramique de l\'île', 1, 3999, 3999),
(152, 52, 'Magnet 974', 1, 500, 500),
(153, 53, 'Plan Ile de la Réunion', 4, 700, 2800),
(154, 53, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(155, 53, 'Panoramique de l\'île', 1, 3999, 3999),
(156, 53, 'Magnet 974', 1, 500, 500),
(157, 54, 'Plan Ile de la Réunion', 4, 700, 2800),
(158, 54, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(159, 54, 'Panoramique de l\'île', 1, 3999, 3999),
(160, 54, 'Magnet 974', 1, 500, 500),
(161, 55, 'Plan Ile de la Réunion', 4, 700, 2800),
(162, 55, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(163, 55, 'Panoramique de l\'île', 1, 3999, 3999),
(164, 55, 'Magnet 974', 1, 500, 500),
(165, 56, 'Plan Ile de la Réunion', 4, 700, 2800),
(166, 56, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(167, 56, 'Panoramique de l\'île', 1, 3999, 3999),
(168, 56, 'Magnet 974', 1, 500, 500),
(169, 57, 'Plan Ile de la Réunion', 4, 700, 2800),
(170, 57, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(171, 57, 'Panoramique de l\'île', 1, 3999, 3999),
(172, 57, 'Magnet 974', 1, 500, 500),
(173, 58, 'Plan Ile de la Réunion', 4, 700, 2800),
(174, 58, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(175, 58, 'Panoramique de l\'île', 1, 3999, 3999),
(176, 58, 'Magnet 974', 1, 500, 500),
(177, 59, 'Plan Ile de la Réunion', 4, 700, 2800),
(178, 59, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(179, 59, 'Panoramique de l\'île', 1, 3999, 3999),
(180, 59, 'Magnet 974', 1, 500, 500),
(181, 60, 'Plan Ile de la Réunion', 4, 700, 2800),
(182, 60, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(183, 60, 'Panoramique de l\'île', 1, 3999, 3999),
(184, 60, 'Magnet 974', 1, 500, 500),
(185, 61, 'Plan Ile de la Réunion', 4, 700, 2800),
(186, 61, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(187, 61, 'Panoramique de l\'île', 1, 3999, 3999),
(188, 61, 'Magnet 974', 1, 500, 500),
(189, 62, 'Plan Ile de la Réunion', 4, 700, 2800),
(190, 62, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(191, 62, 'Panoramique de l\'île', 1, 3999, 3999),
(192, 62, 'Magnet 974', 1, 500, 500),
(193, 63, 'Plan Ile de la Réunion', 4, 700, 2800),
(194, 63, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(195, 63, 'Panoramique de l\'île', 1, 3999, 3999),
(196, 63, 'Magnet 974', 2, 500, 1000),
(197, 64, 'Plan Ile de la Réunion', 4, 700, 2800),
(198, 64, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(199, 64, 'Panoramique de l\'île', 1, 3999, 3999),
(200, 64, 'Magnet 974', 2, 500, 1000),
(201, 65, 'Plan Ile de la Réunion', 4, 700, 2800),
(202, 65, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(203, 65, 'Panoramique de l\'île', 1, 3999, 3999),
(204, 65, 'Magnet 974', 2, 500, 1000),
(205, 66, 'Plan Ile de la Réunion', 4, 700, 2800),
(206, 66, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(207, 66, 'Panoramique de l\'île', 1, 3999, 3999),
(208, 66, 'Magnet 974', 2, 500, 1000),
(209, 67, 'Plan Ile de la Réunion', 4, 700, 2800),
(210, 67, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(211, 67, 'Panoramique de l\'île', 1, 3999, 3999),
(212, 67, 'Magnet 974', 2, 500, 1000),
(213, 68, 'Plan Ile de la Réunion', 4, 700, 2800),
(214, 68, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(215, 68, 'Panoramique de l\'île', 1, 3999, 3999),
(216, 68, 'Magnet 974', 2, 500, 1000),
(217, 69, 'Plan Ile de la Réunion', 4, 700, 2800),
(218, 69, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(219, 69, 'Panoramique de l\'île', 1, 3999, 3999),
(220, 69, 'Magnet 974', 2, 500, 1000),
(221, 70, 'Plan Ile de la Réunion', 4, 700, 2800),
(222, 70, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(223, 70, 'Panoramique de l\'île', 1, 3999, 3999),
(224, 70, 'Magnet 974', 2, 500, 1000),
(225, 71, 'Plan Ile de la Réunion', 4, 700, 2800),
(226, 71, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(227, 71, 'Panoramique de l\'île', 1, 3999, 3999),
(228, 71, 'Magnet 974', 2, 500, 1000),
(229, 72, 'Plan Ile de la Réunion', 4, 700, 2800),
(230, 72, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(231, 72, 'Panoramique de l\'île', 1, 3999, 3999),
(232, 72, 'Magnet 974', 2, 500, 1000),
(233, 73, 'Plan Ile de la Réunion', 4, 700, 2800),
(234, 73, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(235, 73, 'Panoramique de l\'île', 1, 3999, 3999),
(236, 73, 'Magnet 974', 2, 500, 1000),
(237, 74, 'Plan Ile de la Réunion', 4, 700, 2800),
(238, 74, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(239, 74, 'Panoramique de l\'île', 1, 3999, 3999),
(240, 74, 'Magnet 974', 2, 500, 1000),
(241, 75, 'Plan Ile de la Réunion', 4, 700, 2800),
(242, 75, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(243, 75, 'Panoramique de l\'île', 1, 3999, 3999),
(244, 75, 'Magnet 974', 2, 500, 1000),
(245, 76, 'Plan Ile de la Réunion', 4, 700, 2800),
(246, 76, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(247, 76, 'Panoramique de l\'île', 1, 3999, 3999),
(248, 76, 'Magnet 974', 2, 500, 1000),
(249, 77, 'Plan Ile de la Réunion', 4, 700, 2800),
(250, 77, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(251, 77, 'Panoramique de l\'île', 1, 3999, 3999),
(252, 77, 'Magnet 974', 2, 500, 1000),
(253, 78, 'Plan Ile de la Réunion', 4, 700, 2800),
(254, 78, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(255, 78, 'Panoramique de l\'île', 1, 3999, 3999),
(256, 78, 'Magnet 974', 3, 500, 1500),
(257, 79, 'Plan Ile de la Réunion', 4, 700, 2800),
(258, 79, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(259, 79, 'Panoramique de l\'île', 1, 3999, 3999),
(260, 79, 'Magnet 974', 3, 500, 1500),
(261, 79, 'Porte clés Ile de la réunion', 1, 999, 999),
(262, 80, 'Plan Ile de la Réunion', 4, 700, 2800),
(263, 80, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(264, 80, 'Panoramique de l\'île', 1, 3999, 3999),
(265, 80, 'Magnet 974', 3, 500, 1500),
(266, 80, 'Porte clés Ile de la réunion', 1, 999, 999),
(267, 81, 'Plan Ile de la Réunion', 4, 700, 2800),
(268, 81, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(269, 81, 'Panoramique de l\'île', 1, 3999, 3999),
(270, 81, 'Magnet 974', 3, 500, 1500),
(271, 81, 'Porte clés Ile de la réunion', 1, 999, 999),
(272, 82, 'Plan Ile de la Réunion', 4, 700, 2800),
(273, 82, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(274, 82, 'Panoramique de l\'île', 1, 3999, 3999),
(275, 82, 'Magnet 974', 3, 500, 1500),
(276, 82, 'Porte clés Ile de la réunion', 1, 999, 999),
(277, 83, 'Plan Ile de la Réunion', 5, 700, 3500),
(278, 83, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(279, 83, 'Panoramique de l\'île', 1, 3999, 3999),
(280, 83, 'Magnet 974', 3, 500, 1500),
(281, 83, 'Porte clés Ile de la réunion', 1, 999, 999),
(282, 84, 'Plan Ile de la Réunion', 5, 700, 3500),
(283, 84, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(284, 84, 'Panoramique de l\'île', 1, 3999, 3999),
(285, 84, 'Magnet 974', 3, 500, 1500),
(286, 84, 'Porte clés Ile de la réunion', 1, 999, 999),
(287, 85, 'Plan Ile de la Réunion', 2, 700, 1400),
(288, 85, 'Porte clés Ile de la réunion', 2, 999, 1998),
(289, 86, 'Porte clés Ile de la réunion', 2, 999, 1998),
(290, 87, 'Porte clés Ile de la réunion', 2, 999, 1998),
(291, 87, 'Magnet 974', 1, 500, 500),
(292, 88, 'Porte clés Ile de la réunion', 2, 999, 1998),
(293, 88, 'Magnet 974', 1, 500, 500),
(294, 88, 'Plan Ile de la Réunion', 1, 700, 700),
(295, 89, 'Porte clés Ile de la réunion', 2, 999, 1998),
(296, 89, 'Magnet 974', 1, 500, 500),
(297, 89, 'Plan Ile de la Réunion', 1, 700, 700),
(298, 90, 'Magnet 974', 1, 500, 500),
(299, 91, 'Magnet 974', 1, 500, 500),
(300, 92, 'Pâte de Piments', 1, 599, 599),
(301, 93, 'Plan Ile de la Réunion', 1, 700, 700),
(302, 94, 'Plan Ile de la Réunion', 1, 700, 700),
(303, 95, 'Plan Ile de la Réunion', 3, 700, 2100),
(304, 95, 'Magnet 974', 11, 500, 5500),
(305, 95, 'Porte clés l\'effet péi', 4, 999, 3996),
(306, 95, 'T-shirt flag l\'effet péi', 3, 2000, 6000),
(307, 96, 'Plan Ile de la Réunion', 3, 700, 2100),
(308, 96, 'Magnet 974', 9, 500, 4500),
(309, 96, 'Porte clés l\'effet péi', 4, 999, 3996),
(310, 96, 'T-shirt flag l\'effet péi', 3, 2000, 6000),
(311, 97, 'Plan Ile de la Réunion', 4, 700, 2800),
(312, 97, 'Magnet 974', 11, 500, 5500),
(313, 97, 'Porte clés l\'effet péi', 5, 999, 4995),
(314, 97, 'T-shirt flag l\'effet péi', 3, 2000, 6000),
(315, 97, 'Panoramique de l\'île', 2, 3999, 7998),
(316, 98, 'T-shirt flag l\'effet péi', 2, 2000, 4000),
(317, 99, 'Magnet 974', 2, 500, 1000),
(318, 100, 'Magnet 974', 3, 500, 1500),
(319, 100, 'T-shirt flag l\'effet péi', 1, 2000, 2000),
(320, 101, 'Magnet 974', 1, 500, 500),
(321, 102, 'Magnet 974', 1, 500, 500);

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
(9, 4, 'Plan Ile de la Réunion', 'plan-ile-de-la-reunion', '0c24b4d2894e04bcb4f00892c22c1930b048994b.jpg', 'Idéal pour les randonnées', 'Avec une carte en main c\'est plus facile', 700, 0),
(10, 6, 'Magnet 974', 'magnet-974', '13b56972aeceb692836d107ab01bbd168f5daf8d.jpg', 'à coller ou vous voulez', 'Un souvenir qui ne prend pas de place', 500, 1),
(11, 7, 'Porte clés l\'effet péi', 'porte-cles-l\'effet-péi', 'c21f6500fccad33c99df421f2cb5854c7b22fcc2.jpg', 'Pour y accrocher vos clés', 'Un porte clés aux couleurs de la Réunion', 999, 1),
(12, 5, 'Pâte de Piments', 'pâte-de-piments', '3931c3c49a4bf3a8b6c6bb9b8fe3d85faa320b02.jpg', 'pâte de piments', 'Pour donner du piquant à vos plats', 599, 1),
(13, 3, 'T-shirt flag l\'effet péi', 't-shirt-flag-leffet-pei', '275596d1739ee0218a5a02743bffd2620c7baf5f.jpg', 'T-shirt', 'Un super T-shirt au couleur du pays', 2000, 1),
(14, 2, 'Panoramique de l\'île', 'panoramique-de-lile', '20541639668e77e7791586ebbc5ab7358757f863.jpg', 'Panoramique vue du ciel', 'Magnifique panoramique', 3999, 0);

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
(6, 'nicolas.mercier00@orange.fr', '{\"0\": \"ROLE_USER\", \"2\": \"ROLE_SUPER_ADMIN\"}', '$argon2i$v=19$m=65536,t=4,p=1$dWFLQ2k1WUFlN1NxbGpXMA$IyJ+fVOV35UqulixJEV028Nx2/sUlY0QmmZ5eQQpSu0', 'Nicolas', 'Mercier'),
(7, 'bouga911@hotmail.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$S0ZpWlVMcXVkbzc0SVBLMw$yaGeQE9hXsyqv/zCCqwwXK7uUkmqq+D/aWRXwlWxXfQ', 'gérard', 'dupont'),
(8, 'george@gmail.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$ZWJoOVhUYU5mV3gxbFpTVA$Y12pwbYYYmkcHk3hfMUlDUQdC1S+nuZa3J7Q8InUkhg', 'LOTO', 'George'),
(13, 'Dupont.Jean@gmail.com', '[]', '$argon2i$v=19$m=65536,t=4,p=1$VHJmRjJkVWNrdy9nYkhzUQ$rimXEM9SYA3rZjOI4oAhry3Glw410Wd3GYUlCdAE7QU', 'Jean', 'Dupont'),
(15, 'michel.qopo@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aaxKALzJmiRW3emH9VD3bg$ouQ2Do3uBW8vxh4OJoEagiCWKpHUgUqhloioDKLhjOo', 'michel', 'Qopo'),
(16, 'joute.guillaume@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$LdcEC3YGSoqOmPsm51uMmA$pJCufPNcmFV1I8IDba84xVuc6gmABA2SXdUalSsoqUQ', 'guillaume', 'joute');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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