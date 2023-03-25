-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 11:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `from_id`, `to_id`, `message`, `opened`, `created_at`) VALUES
(1, 4, 1, 'hey bro', 1, '2023-03-20 15:22:21'),
(2, 4, 4, 'yes bro\n', 1, '2023-03-20 15:23:41'),
(3, 4, 1, 'yes bro', 1, '2023-03-20 15:24:07'),
(4, 1, 2, 'hii', 1, '2023-03-20 15:24:46'),
(5, 2, 1, 'hey wat a surprise\n', 1, '2023-03-20 15:25:37'),
(6, 1, 2, 'yes', 1, '2023-03-20 15:43:29'),
(7, 2, 1, 'so what next', 1, '2023-03-20 15:48:41'),
(8, 2, 1, '\nso what next', 1, '2023-03-20 15:48:59'),
(9, 2, 1, '\nso what next\n', 1, '2023-03-20 15:49:06'),
(10, 2, 1, '\nso what next', 1, '2023-03-20 15:49:09'),
(11, 2, 1, '\nso what next', 1, '2023-03-20 15:49:12'),
(12, 2, 1, '\nso what next', 1, '2023-03-20 15:49:16'),
(13, 2, 1, '\nso what next', 1, '2023-03-20 15:49:20'),
(14, 2, 1, '\nso what next', 1, '2023-03-20 15:49:23'),
(15, 2, 1, '\nso what next', 1, '2023-03-20 15:49:27'),
(16, 2, 1, '\nso what next', 1, '2023-03-20 15:49:30'),
(17, 2, 1, '\nso what next', 1, '2023-03-20 15:49:36'),
(18, 2, 1, '\nso what next', 1, '2023-03-20 15:49:40'),
(19, 4, 1, 'hello', 1, '2023-03-20 16:04:26'),
(20, 1, 4, 'solu da', 1, '2023-03-20 16:05:39'),
(21, 4, 1, '.............................', 1, '2023-03-20 16:16:35'),
(22, 4, 1, '2023-03-20 15:22:21\nyes bro', 1, '2023-03-20 16:18:31'),
(23, 4, 1, '2023-03-20 15:22:21\nyes bro', 1, '2023-03-20 16:18:36'),
(24, 4, 1, '2023-03-20 15:22:21\nyes bro', 1, '2023-03-20 16:18:39'),
(25, 4, 1, '2023-03-20 15:22:21\nyes bro', 1, '2023-03-20 16:18:49'),
(26, 1, 2, 'don\'t know', 1, '2023-03-20 16:22:38'),
(27, 4, 20, 'hii', 1, '2023-03-25 13:24:01'),
(28, 4, 20, 'helo\n', 0, '2023-03-25 13:59:16'),
(29, 4, 20, 'jim', 0, '2023-03-25 14:07:01'),
(30, 4, 20, 'no\n', 0, '2023-03-25 14:12:41'),
(31, 4, 1, 'no bro', 0, '2023-03-25 14:20:32'),
(32, 4, 20, 'ok', 0, '2023-03-25 14:22:59'),
(33, 4, 20, 'ok', 0, '2023-03-25 15:22:19'),
(34, 4, 20, 'ok', 0, '2023-03-25 15:22:28'),
(35, 4, 20, 'ok\n', 0, '2023-03-25 15:22:33'),
(36, 4, 20, 'ok', 0, '2023-03-25 15:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`) VALUES
(1, 4, 1),
(2, 4, 4),
(3, 1, 2),
(4, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `p_p` varchar(255) DEFAULT 'user-default.png',
  `last_seen` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `p_p`, `last_seen`) VALUES
(1, 'Dayalan', 'dayalan10', '$2y$10$fdjtEMMW6kXIyFgHGJ8Uw.86F1KiY/SOGM1Fj8u2UWD74hxdDsjQO', 'user-default.png', '2023-03-25 15:19:38'),
(2, 'Snegalvarsan', 'snegal23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '2023-03-25 15:30:26'),
(3, 'Dharaniesh', 'dharanish23', '$2y$10$niq964e1JFmO4exohei.c.UAQYebiNBislgS3qstSqRkbKFFjuJ5e', 'user-default.png', '2023-03-20 15:16:06'),
(4, 'Sharan', 'sharan23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '2023-03-25 15:25:05'),
(5, 'Bala', 'bala23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(6, 'Arjun', 'arjun23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(7, 'Sanjay', 'sanjay23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '2023-03-25 15:33:07'),
(8, 'Darshan', 'darshan23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(9, 'Shrihari', 'shrihari23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(10, 'ABIRAMI M', 'abiramim23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(11, 'ABISHEK L M', 'abisheklm23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(12, 'ARUNACHALAM S', 'arunachalams23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(13, 'BALA PRANAV.V.S', 'balapranavvs23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(14, 'DEEPAK KUMARAN S R', 'deepakkumaransr23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(15, 'GOWTHAM P', 'gowthamp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(16, 'HARIHARAN G', 'hariharang23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(17, 'HARISH G S', 'harishgs23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(18, 'HARISMITA K', 'harismitak23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(19, 'JEEVIKA M', 'jeevikam23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(20, 'K RAHUL RAAJ', 'krahulraaj23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '2023-03-25 13:27:28'),
(21, 'KEERTHIRAM B', 'keerthiramb23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(22, 'MADHANRAJ P', 'madhanrajp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(23, 'MEGAVARNAN T', 'megavarnant23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(24, 'NARAYANAN K', 'narayanank23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(25, 'NEKIL PRASATH S', 'nekilprasaths23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(26, 'NIPUN JOSH NAIR', 'nipunjoshnair23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(27, 'NITHIN P', 'nithinp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(28, 'NIVETHASRI R V', 'nivethasrirv23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(29, 'PAVITH P', 'pavithp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(30, 'PRAVEENA S', 'praveenas23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(31, 'RAHUL S', 'rahuls23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '2023-03-25 13:25:09'),
(32, 'ROSAN KARTHIK R M', 'rosankarthikrm23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(33, 'ROSARI VASHIKA A', 'rosarivashikaa23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(34, 'SELVA GANESAN T', 'selvaganesant23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(35, 'SHRIKANTH P', 'shrikanthp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(36, 'SNEHA P S', 'snehaps23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(37, 'SOUNDARIYA M', 'soundariyam23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(38, 'SUGIRTHA S M', 'sugirthasm23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(39, 'SUJITH D', 'sujithd23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(40, 'SUJITHA R', 'sujithar23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(41, 'SUJITHA V', 'sujithav23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(42, 'SUTHARSHAN S', 'sutharshans23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(43, 'SWETHA R', 'swethar23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(44, 'VISHNU PRIYA E', 'vishnupriyae23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(45, 'YAZHINI S', 'yazhinis23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(46, 'YOGITHA S', 'yogithas23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(47, 'KEVIN MICHAEL A', 'kevinmichaela23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(48, 'SANJESH V A', 'sanjeshva23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(49, 'PRANAVI S J', 'pranavisj23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(50, 'ABIRAMI AATHI T', 'abiramiaathit23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(51, 'HARISH R', 'harishr23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(52, 'SARAVANAN K', 'saravanank23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(53, 'DHARANEESH S R', 'dharaneeshsr23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(54, 'PRATOSH C', 'pratoshc23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(55, 'VISHUVA R V', 'vishuvarv23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(56, 'ANUDEEP S', 'anudeeps23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(57, 'ATHISH CLEMENTS T', 'athishclementst23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(58, 'HARINI SHRI V', 'harinishriv23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(59, 'RITHIKA S', 'rithikas23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(60, 'AKALYA P', 'akalyap23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(61, 'MOHAMED IBRAHIM AHAMED BABU', 'mohamedibrahimahamedbabu23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(62, 'KAVYA P', 'kavyap23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(63, 'FELIX MATTHEW J', 'felixmatthewj23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(64, 'JAYAMANIKANDAN S', 'jayamanikandans23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(65, 'HARIPRASATH M P', 'hariprasathmp23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(66, 'SWATHIKA', 'swathika23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(67, 'GIRIPRASATH R', 'giriprasathr23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(68, 'ANUSHREE N', 'anushreen23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(69, 'AMBI R', 'ambir23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(70, 'SUNANTHA JEYASURYA G', 'sunanthajeyasuryag23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(71, 'AAKASH M', 'aakashm23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(72, 'BALAMURALI R', 'balamuralir23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(73, 'YOKHABALAN R B', 'yokhabalanrb23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(74, 'ANNESHA MERLINE.N', 'anneshamerlinen23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(75, 'SANTHOSHKUMAR K', 'santhoshkumark23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(76, 'SANTOSH KUMAR K', 'santoshkumark23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(77, 'THIRUVAZHAGI E', 'thiruvazhagie23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(78, 'JANISHASHREE.M', 'janishashreem23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(79, 'VIGNESHRAJA K S', 'vigneshrajaks23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(80, 'DHANUSH KUMAR S', 'dhanushkumars23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(81, 'ABINAYA S', 'abinayas23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(82, 'KAVISHREE', 'kavishree23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00'),
(83, 'DINESH S', 'dineshs23', '$2y$10$r03X6aySf1KpAsooGpyJ1.atD6VLMGMO2VYhjjjndQoDJzSTeTYye', 'user-default.png', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
