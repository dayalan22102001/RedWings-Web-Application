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
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2022-07-28 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodbanks`
--

CREATE TABLE `tblbloodbanks` (
  `district` text NOT NULL,
  `bloodbanks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbloodbanks`
--

INSERT INTO `tblbloodbanks` (`district`, `bloodbanks`) VALUES
('Ariyalur', 'Government Headquarters Hospital, Ariyalur'),
('Chennai', 'Government Rajiv Gandhi Medical College Hospital'),
('Chennai', 'Government Stanley Medical College Hospital'),
('Chennai', 'Institute of Child Health & Hospital for Children'),
('Chennai', 'Government Kilpauk Medical College Hospital'),
('Chennai', 'Government Royapettah Hospital'),
('Chennai', 'Institute Of Obstetrics And Gynaecology & Govt. Hospital For Women & Children'),
('Chennai', 'Government Kasturba Gandhi Hospital For Women & Children'),
('Chennai', 'Government Peripheral Hospital, Anna Nagar'),
('Chennai', 'ESI Hospital,Ayanavaram'),
('Chennai', 'Government RSRM Hospital'),
('Chennai', 'MGR University Blood Bank'),
('Coimbatore', 'Government Medical College Hospital Coimbatore'),
('Coimbatore', 'Government Hospital, Pollachi'),
('Coimbatore', 'Government Hospital, Mettupalayam'),
('Coimbatore', 'ESI Hospital Coimbatore'),
('Cuddalore', 'Government Headquarters Hospital, Cuddalore'),
('Cuddalore', 'Government Hospital, Chidambaram'),
('Cuddalore', 'Government Hospital, Virudhachalam'),
('Dharmapuri', 'Government Medical College Hospital Dharmapuri'),
('Dindigul', 'Government Headquarters Hospital, Dindigul'),
('Dindigul', 'Government Hospital, Palani'),
('Erode', 'Government Headquarters Hospital, Erode'),
('Erode', 'Government Hospital, Gobichettipalayam'),
('Kancheepuram', 'Government Medical College Hospital Chengalpattu'),
('Kancheepuram', 'Government Arignar Anna Memorial Cancer Hospital, Karapettai'),
('Kancheepuram', 'Government Headquarters Hospital, Kancheepuram'),
('Kancheepuram', 'Government Hospital, Maduranthagam'),
('Kancheepuram', 'Government Hospital, Tambaram at Chrompet'),
('Kanyakumari', 'Government Medical College Hospital Kanyakumari'),
('Kanyakumari', 'Government Headquarters Hospital, Padmanabhapuram'),
('Karur', 'Government Medical College Hospital Karur'),
('Krishnagiri', 'Government Headquarters Hospital, Krishnagiri'),
('Krishnagiri', 'Government Hospital, Hosur'),
('Madurai', 'Government Rajaji Hospital'),
('Madurai', 'Government Headquarters Hospital, Usilampatti'),
('Nagapattinam', 'Government Headquarters Hospital, Nagapattinam'),
('Nagapattinam', 'Government Hospital, Mayiladuthurai'),
('Namakkal', 'Government Hospital, Tiruchengode'),
('Namakkal', 'Government Headquarters Hospital, Namakkal'),
('Namakkal', 'Government Hospital, Rasipuram'),
('Nilgiris', 'Government Headquarters Hospital, Ooty'),
('Nilgiris', 'Government Hospital, Coonoor'),
('Nilgiris', 'Government Hospital, Gudalur'),
('Perambalur', 'Government Headquarters Hospital, Perambalur'),
('Pudukkottai', 'Government Headquarters Hospital, Pudukottai'),
('Pudukkottai', 'Government Hospital, Aranthangi'),
('Ramnad', 'Government Headquarters Hospital, Ramanathapuram'),
('Salem', 'Government Mohan Kumaramangalam Medical College Hospital'),
('Salem', 'Government Headquarters Hospital, Mettur Dam'),
('Salem', 'Government Hospital, Athoor'),
('Sivagangai', 'Government Headquarters Hospital, Karaikudi'),
('Sivagangai', 'Government Medical College Hospital,Sivagangai'),
('Thanjavur', 'Government Medical College Hospital Thanjavur'),
('Thanjavur', 'Government Raja Mirasdar Hospital,Thanjavur'),
('Thanjavur', 'Government Headquarters Hospital, Kumbakonam'),
('Thanjavur', 'Government Hospital, Pattukottai'),
('Theni', 'Government Medical College Hospital Theni'),
('Theni', 'Government Headquarters Hospital,Periyakulam'),
('Thiruvallur', 'Government Headquarters Hospital,Thiruvallur'),
('Tiruvannamalai', 'Government Medical College Hospital Tiruvannamalai'),
('Tirunelveli', 'Government Medical College Hospital Tirunelveli'),
('Tirunelveli', 'Government Headquarters Hospital,Tenkasi'),
('Tirunelveli', 'Government Hospital, Sankarankovil'),
('Tirunelveli', 'Government Hospital, Ambasamudram'),
('Tirupur', 'Government Headquarters Hospital, Tirupur'),
('Tirupur', 'Government Hospital, Udumalpet'),
('Tirupur', 'Government Hospital, Dharapuram'),
('Thiruvarur', 'Government Medical College Hospital Thiruvarur'),
('Trichy', 'Annal Gandhi Memorial Govt. Hospital,Trichy'),
('Trichy', 'Government Headquarters Hospital, Manapparai'),
('Tuticorin', 'Government Medical College Hospital Tuticorin'),
('Tuticorin', 'Government Headquarters Hospital, Kovilpatti'),
('Tiruchendur', 'Government Hospital, Blood Bank'),
('Vellore', 'Government Medical College Hospital Vellore'),
('Vellore', 'Government Headquarters Hospital, Wallajah'),
('Vellore', 'Government Hospital, Tirupathur'),
('Vellore', 'Government Hospital, Gudiyatham'),
('Vellore', 'Government Hospital, Ambur'),
('Vellore', 'Government Hospital, Arakkonam'),
('Vellore', 'Government Hospital, Vaniyambadi'),
('Villupuram', 'Government Medical College Hospital Villupuram'),
('Villupuram', 'Government Hospital, Tindivanam'),
('Villupuram', 'Government Headquarters Hospital, Kallakurichi'),
('Virudhunagar', 'Government Hospital, Sivakasi'),
('Virudhunagar', 'Government Hospital, Rajapalayam'),
('Virudhunagar', 'Government Headquarters Hospital, Virudhunagar'),
('Virudhunagar', 'Government Hospital, Aruppukottai');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Password`) VALUES
(14, 'snegal', '1234556789', 'snegal@email.com', 'Male', 45, 'A+', 'coimbatore', ' ', '2023-03-14 04:42:59', 1, '098f6bcd4621d373cade4e832627b4f6'),
(15, 'Dayalan', '8110992529', 'dayalan@email.com', 'Male', 25, 'B+', 'trichy', ' ', '2023-03-17 06:11:12', 1, '098f6bcd4621d373cade4e832627b4f6'),
(16, 'Dharaniesh', '9632587410', 'dharaniesh@email.com', 'Male', 24, 'AB+', 'Salem', ' ', '2023-03-17 06:13:57', 1, '098f6bcd4621d373cade4e832627b4f6'),
(17, 'Sharan', '7708860068', 'sharan@email.com', 'Male', 21, 'O+', 'Pollachi', ' At emergencies only', '2023-03-18 07:30:48', 1, '098f6bcd4621d373cade4e832627b4f6'),
(18, 'Bala', '7538853414', 'bala@email.com', 'Male', 22, 'A1+', 'Coimbatore', ' ', '2023-03-18 07:32:12', 1, '098f6bcd4621d373cade4e832627b4f6'),
(19, 'Arjun', '9360836971', 'arjun@email.com', 'Male', 23, 'A-', 'Pollachi', ' ', '2023-03-18 07:33:05', 1, '098f6bcd4621d373cade4e832627b4f6'),
(20, 'Sanjay', '9597590867', 'sanjay@email.com', 'Male', 30, 'B-', 'Erode', ' ', '2023-03-18 07:34:39', 1, '098f6bcd4621d373cade4e832627b4f6'),
(21, 'Darshan', '9159982229', 'darshan@email.com', 'Male', 33, 'AB-', 'Ooty', ' ', '2023-03-18 07:41:53', 1, '098f6bcd4621d373cade4e832627b4f6'),
(22, 'Shrihari', '8220067645', 'shrihari@email.com', 'Male', 27, 'O-', 'Chennai', ' ', '2023-03-18 07:43:34', 1, '098f6bcd4621d373cade4e832627b4f6'),
(23, 'ABIRAMI M', '2223718850', 'abirami m@email.com', 'Male', 31, 'B-', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(24, 'ABISHEK L M', '4066497345', 'abisheklm@email.com', 'Male', 22, 'AB-', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(25, 'ARUNACHALAM S', '8022100201', 'arunachalams@email.com', 'Male', 26, 'AB-', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(26, 'BALA PRANAV.V.S', '4027671178', 'balapranavvs@email.com', 'Male', 41, 'O+', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(27, 'DEEPAK KUMARAN S R', '4023415590', 'deepakkumaransr@email.com', 'Male', 19, 'AB-', 'Dindigul', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(28, 'GOWTHAM P', '2228621046', 'gowthamp@email.com', 'Male', 31, 'O+', 'Tuticorin', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(29, 'HARIHARAN G', '4222596360', 'hariharang@email.com', 'Male', 24, 'B+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(30, 'HARISH G S', '2227781528', 'harishgs@email.com', 'Male', 43, 'O+', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(31, 'HARISMITA K', '8022256246', 'harismitak@email.com', 'Female', 30, 'B-', 'Avadi', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(32, 'JEEVIKA M', '2228898618', 'jeevikam@email.com', 'Female', 35, 'AB-', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(33, 'K RAHUL RAAJ', '2225144508', 'krahulraaj@email.com', 'Male', 27, 'B-', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(34, 'KEERTHIRAM B', '2225808024', 'keerthiramb@email.com', 'Male', 24, 'AB+', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(35, 'MADHANRAJ P', '2266364593', 'madhanrajp@email.com', 'Female', 34, 'AB-', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(36, 'MEGAVARNAN T', '2228962358', 'megavarnant@email.com', 'Male', 28, 'O+', 'Chennai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(37, 'NARAYANAN K', '2228014799', 'narayanank@email.com', 'Male', 40, 'O+', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(38, 'NEKIL PRASATH S', '2228893744', 'nekilprasaths@email.com', 'Male', 37, 'A-', 'Tiruppur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(39, 'NIPUN JOSH NAIR', '2223463899', 'nipunjoshnair@email.com', 'Female', 23, 'A-', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(40, 'NITHIN P', '2227572790', 'nithinp@email.com', 'Female', 38, 'O+', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(41, 'NIVETHASRI R V', '2228072706', 'nivethasrirv@email.com', 'Female', 24, 'AB-', 'Dindigul', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(42, 'PAVITH P', '2225221680', 'pavithp@email.com', 'Male', 40, 'B+', 'Thanjavur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(43, 'PRAVEENA S', '2224017973', 'praveenas@email.com', 'Female', 44, 'A+', 'Thanjavur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(44, 'RAHUL S', '2226182273', 'rahuls@email.com', 'Male', 26, 'B-', 'Tuticorin', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(45, 'ROSAN KARTHIK R M', '1123310339', 'rosankarthikrm@email.com', 'Male', 32, 'AB+', 'Tiruppur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(46, 'ROSARI VASHIKA A', '1127219418', 'rosarivashikaa@email.com', 'Male', 18, 'B-', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(47, 'SELVA GANESAN T', '2224369463', 'selvaganesant@email.com', 'Male', 38, 'AB+', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(48, 'SHRIKANTH P', '1126566977', 'shrikanthp@email.com', 'Male', 31, 'A-', 'Tuticorin', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(49, 'SNEHA P S', '2027124919', 'snehaps@email.com', 'Female', 41, 'B+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(50, 'SOUNDARIYA M', '1126942321', 'soundariyam@email.com', 'Female', 22, 'O+', 'Madurai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(51, 'SUGIRTHA S M', '8023468937', 'sugirthasm@email.com', 'Female', 41, 'A-', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(52, 'SUJITH D', '2226047302', 'sujithd@email.com', 'Male', 37, 'B-', 'Avadi', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(53, 'SUJITHA R', '2228348074', 'sujithar@email.com', 'Female', 29, 'AB+', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(54, 'SUJITHA V', '2226496866', 'sujithav@email.com', 'Female', 35, 'O+', 'Chennai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(55, 'SUTHARSHAN S', '7922745345', 'sutharshans@email.com', 'Male', 40, 'AB-', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(56, 'SWETHA R', '112651575', 'swethar@email.com', 'Female', 18, 'A-', 'Nagercoil', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(57, 'VISHNU PRIYA E', '1292284626', 'vishnupriyae@email.com', 'Female', 26, 'B+', 'Dindigul', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(58, 'YAZHINI S', '3323214250', 'yazhinis@email.com', 'Female', 20, 'B+', 'Chennai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(59, 'YOGITHA S', '2228949993', 'yogithas@email.com', 'Female', 24, 'O+', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(60, 'KEVIN MICHAEL A', '2228743733', 'kevinmichaela@email.com', 'Male', 23, 'B-', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(61, 'SANJESH V A', '7922814535', 'sanjeshva@email.com', 'Male', 28, 'A-', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(62, 'PRANAVI S J', '2026348519', 'pranavisj@email.com', 'Female', 37, 'AB+', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(63, 'ABIRAMI AATHI T', '2223718850', 'abiramiaathit@email.com', 'Female', 21, 'A-', 'Nagercoil', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(64, 'HARISH R', '4066497345', 'harishr@email.com', 'Male', 39, 'A-', 'Avadi', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(65, 'SARAVANAN K', '8022100201', 'saravanank@email.com', 'Male', 35, 'AB-', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(66, 'DHARANEESH S R', '4027671178', 'dharaneeshsr@email.com', 'Male', 45, 'B+', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(67, 'PRATOSH C', '4023415590', 'pratoshc@email.com', 'Male', 28, 'A-', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(68, 'VISHUVA R V', '2228621046', 'vishuvarv@email.com', 'Male', 34, 'AB+', 'Dindigul', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(69, 'ANUDEEP S', '4222596360', 'anudeeps@email.com', 'Male', 20, 'A+', 'Madurai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(70, 'ATHISH CLEMENTS T', '2227781528', 'athishclementst@email.com', 'Male', 35, 'B+', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(71, 'HARINI SHRI V', '8022256246', 'harinishriv@email.com', 'Female', 28, 'O+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(72, 'RITHIKA S', '2228898618', 'rithikas@email.com', 'Female', 24, 'B+', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(73, 'AKALYA P', '2225144508', 'akalyap@email.com', 'Female', 42, 'B+', 'Thanjavur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(74, 'MOHAMED IBRAHIM AHAMED BABU', '2225808024', 'mohamedibrahimahamedbabu@email.com', 'Male', 24, 'A+', 'Vellore', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(75, 'KAVYA P', '2266364593', 'kavyap@email.com', 'Female', 21, 'B+', 'Tuticorin', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(76, 'FELIX MATTHEW J', '2228962358', 'felixmatthewj@email.com', 'Male', 36, 'AB-', 'Avadi', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(77, 'JAYAMANIKANDAN S', '2228014799', 'jayamanikandans@email.com', 'Male', 22, 'A+', 'Tiruppur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(78, 'HARIPRASATH M P', '2228893744', 'hariprasathmp@email.com', 'Male', 23, 'B-', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(79, 'SWATHIKA', '2223463899', 'swathika@email.com', 'Female', 35, 'AB+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(80, 'GIRIPRASATH R', '2227572790', 'giriprasathr@email.com', 'Male', 27, 'B-', 'Nagercoil', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(81, 'ANUSHREE N', '2228072706', 'anushreen@email.com', 'Female', 38, 'B-', 'Tuticorin', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(82, 'AMBI R', '2225221680', 'ambir@email.com', 'Male', 30, 'B+', 'Thanjavur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(83, 'SUNANTHA JEYASURYA G', '2224017973', 'sunanthajeyasuryag@email.com', 'Male', 42, 'O+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(84, 'AAKASH M', '2226182273', 'aakashm@email.com', 'Male', 44, 'B-', 'Nagercoil', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(85, 'BALAMURALI R', '1123310339', 'balamuralir@email.com', 'Female', 18, 'B-', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(86, 'YOKHABALAN R B', '1127219418', 'yokhabalanrb@email.com', 'Male', 35, 'AB-', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(87, 'ANNESHA MERLINE.N', '2224369463', 'anneshamerlinen@email.com', 'Male', 18, 'AB+', 'Hosur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(88, 'SANTHOSHKUMAR K', '1126566977', 'santhoshkumark@email.com', 'Male', 42, 'A+', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(89, 'SANTOSH KUMAR K', '2027124919', 'santoshkumark@email.com', 'Male', 19, 'B-', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(90, 'THIRUVAZHAGI E', '1126942321', 'thiruvazhagie@email.com', 'Female', 29, 'B-', 'Tirunelvelli', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(91, 'JANISHASHREE.M', '8023468937', 'janishashreem@email.com', 'Female', 32, 'B+', 'Tiruppur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(92, 'VIGNESHRAJA K S', '2226047302', 'vigneshrajaks@email.com', 'Male', 33, 'B+', 'Trichy', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(93, 'DHANUSH KUMAR S', '2228348074', 'dhanushkumars@email.com', 'Male', 35, 'A+', 'Erode', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(94, 'ABINAYA S', '2226496866', 'abinayas@email.com', 'Female', 23, 'O+', 'Thanjavur', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(95, 'KAVISHREE', '7922745345', 'kavishree@email.com', 'Female', 45, 'A+', 'Madurai', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6'),
(96, 'DINESH S', '112651575', 'dineshs@email.com', 'Male', 38, 'O+', 'Salem', 'NA', '0000-00-00 00:00:00', 1, '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(5, 'A+', '2022-04-30 20:34:00'),
(8, 'B+', '2023-03-14 07:18:36'),
(11, 'AB+', '2023-03-18 07:26:38'),
(12, 'O+', '2023-03-18 07:26:44'),
(13, 'A1+', '2023-03-18 07:26:56'),
(14, 'A-', '2023-03-18 07:27:09'),
(15, 'B-', '2023-03-18 07:27:12'),
(16, 'AB-', '2023-03-18 07:27:15'),
(17, 'O-', '2023-03-18 07:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodrequirer`
--

CREATE TABLE `tblbloodrequirer` (
  `ID` int(10) NOT NULL,
  `BloodDonarID` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodrequirer`
--

INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(1, 6, 'Rakesh', 'rak@gmail.com', 7894561236, 'Father', 'Please help', '2022-05-17 11:57:24'),
(2, 3, 'Mukesh', 'muk@gmail.com', 5896231478, 'Others', 'Please help', '2022-05-17 11:58:48'),
(3, 6, 'Hitesh', 'hit@gmail.com', 1236547896, 'Brother', 'do the needful', '2022-05-17 12:02:12'),
(4, 10, 'Rahul Singh', 'rahk@gmail.com', 2536251425, 'Mother', 'Please help me', '2022-07-29 01:51:52'),
(5, 11, 'Anuj Kumar', 'ak@gmail.com', 8525232102, 'Others', 'Need blood on urgent basis', '2022-08-02 01:24:18'),
(6, 13, 'snegal', 'snegal@email.com', 1234567890, 'Father', '', '2023-03-14 04:43:56'),
(7, 14, 'Dayalan', 'dayalands2210@gmail.com', 8110992529, 'Brother', 'need at this colony', '2023-03-17 06:44:02'),
(8, 70, 'Dayalan', 'dayalandayalan700@gmail.com', 8110992529, 'Brother', '.....', '2023-03-18 16:19:23'),
(9, 69, 'Dayalan', 'dayalan@email.com', 8110992529, 'Brother', 'Use my google location : https://maps.app.goo.gl/8m7ibi8Y3rfBKPuX6 ', '2023-03-20 04:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Chinnavedampatti, Coimbatore, Tamil Nadu 641049																							', 'redwings@rwg.com', '8110992529');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(8, 'snegal', 'snegal@email.com', '1234567890', 'Blood Donation Successful', '2023-03-14 05:19:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '																														<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana; font-size: large; font-weight: 700;\">RedWings is a Blood Bank and Donor Management System is a web-based application. The persons who like to donate blood register in the Blood Bank application.&nbsp; The persons in need of blood search for the persons having the same blood group and within the city.&nbsp; If he found a donor in his city then he gets the total details of the donor, if he doesn’t find any donor then he is given the contact numbers and addresses of the Life-Saving Contact Persons for major cities.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana; font-size: large; font-weight: 700;\">Our Android application can be used to create mobile applications like the GPS-based Blood-based bank System. The GPS information provided by the user\'s location and the query input are used by this programme to determine the position in the beginning.&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: verdana; font-size: large; font-weight: 700;\">Scan the Below the QR code to Download to the .apk of our RedWings Android Application.</span></p>\r\n										\r\n										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bgroup` (`BloodGroup`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BloodGroup` (`BloodGroup`),
  ADD KEY `BloodGroup_2` (`BloodGroup`);

--
-- Indexes for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `donorid` (`BloodDonarID`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
