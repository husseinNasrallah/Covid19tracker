-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 10:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coronatracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesspoint`
--

CREATE TABLE `accesspoint` (
  `AcessPointID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accesspoint`
--

INSERT INTO `accesspoint` (`AcessPointID`, `Name`, `Location`) VALUES
(1, 'AP1', 'HAZMIEH'),
(2, 'AP2', 'ACHRAFIEH'),
(3, 'AP3', 'HARET HUREIK'),
(4, 'AP4', 'GOBEIRI'),
(5, 'AP5', 'HAMRA'),
(6, 'AP6', 'BYBLOS'),
(7, 'AP7', 'TRIPOLI'),
(8, 'AP8', 'SAIDA');

-- --------------------------------------------------------

--
-- Table structure for table `connectedmac`
--

CREATE TABLE `connectedmac` (
  `ConnectedMACID` int(11) NOT NULL,
  `accessPointID` int(11) NOT NULL,
  `MAC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connectedmac`
--

INSERT INTO `connectedmac` (`ConnectedMACID`, `accessPointID`, `MAC`) VALUES
(1, 1, 'a0:5b:bb:e3:46:c0\r\n'),
(2, 1, 'f5:20:83:f0:b8:20\r\n'),
(3, 1, '54:ae:e1:9c:5e:34\r\n'),
(4, 1, '19:68:16:e7:7d:9b\r\n'),
(5, 1, 'e3:52:3a:94:22:07\r\n'),
(6, 1, 'd1:84:3e:a2:3f:cd\r\n'),
(7, 1, 'b1:1a:0a:51:2b:71\r\n'),
(8, 1, '0d:68:f4:5f:7b:1b\r\n'),
(9, 1, '69:c3:f1:08:c7:01\r\n'),
(10, 1, 'ab:25:33:37:b5:69\r\n'),
(11, 1, 'e9:9b:b3:2c:ac:6a\r\n'),
(12, 1, 'e3:b7:ad:17:8c:24\r\n'),
(13, 1, '54:b7:ef:96:91:96\r\n'),
(14, 1, 'bd:40:72:32:f7:46\r\n'),
(15, 1, '63:b4:98:5b:ea:e3\r\n'),
(16, 2, 'dc:e0:bc:5c:84:fc\r\n'),
(17, 2, '3f:b1:5a:31:cb:56\r\n'),
(18, 2, 'ac:28:0d:27:f0:1a\r\n'),
(19, 2, 'ab:e4:c8:02:8a:23\r\n'),
(20, 2, '6b:cd:a3:c5:b3:da\r\n'),
(21, 2, 'dd:91:70:49:de:8a\r\n'),
(22, 2, '13:97:87:75:78:7c\r\n'),
(23, 2, 'b7:86:04:bc:f7:a5\r\n'),
(24, 2, '24:51:78:f3:8f:b9\r\n'),
(25, 2, '8a:73:67:6a:37:88\r\n'),
(26, 3, '56:f9:9a:cf:22:fb\r\n'),
(27, 3, '50:ee:bd:91:22:86\r\n'),
(28, 3, 'a8:7c:0f:8a:4b:1a\r\n'),
(29, 3, '40:39:38:c5:55:35\r\n'),
(30, 3, 'c6:d5:c3:a1:bc:41\r\n'),
(31, 3, 'b5:8b:ef:ad:3e:c9\r\n'),
(32, 3, '93:14:55:e3:2c:49\r\n'),
(33, 3, '84:c1:df:72:18:ac\r\n'),
(34, 4, '45:af:38:9b:bf:cf\r\n'),
(35, 4, '63:bd:c9:5a:80:05\r\n'),
(36, 4, '3f:d0:78:5b:68:63\r\n'),
(37, 4, '5f:b0:60:98:96:68\r\n'),
(38, 4, 'c5:ca:0f:08:5f:9d\r\n'),
(39, 4, '4d:04:d1:97:14:88\r\n'),
(40, 4, 'd2:d6:3b:78:d5:09\r\n'),
(41, 4, '3f:d7:28:69:7f:49\r\n'),
(42, 5, '70:52:9f:03:01:90\r\n'),
(43, 5, '45:4d:df:e7:17:00\r\n'),
(44, 5, '87:fb:bb:c9:12:31\r\n'),
(45, 5, '4d:25:45:9d:cd:b4\r\n'),
(46, 5, 'cd:13:f3:5e:e7:9d\r\n'),
(47, 5, '6d:17:6a:12:85:3b\r\n'),
(48, 5, 'ea:2d:d4:ed:c1:27\r\n'),
(49, 5, '99:0b:de:82:b9:b1\r\n'),
(50, 6, 'fc:6c:5d:a8:d3:32\r\n'),
(51, 6, 'a4:15:c4:b6:08:03\r\n'),
(52, 6, '55:be:25:94:63:9a\r\n'),
(53, 6, 'b1:fe:27:95:75:27\r\n'),
(54, 6, '83:a2:52:1f:64:85\r\n'),
(55, 6, '48:da:46:ca:57:fc\r\n'),
(56, 6, 'a8:98:44:83:c5:3d\r\n'),
(57, 6, 'de:4b:e4:e8:ca:6e\r\n'),
(58, 7, '04:0f:66:b4:00:c8\r\n'),
(59, 7, 'a8:d7:08:ba:52:f9\r\n'),
(60, 7, '2e:8b:d7:d5:57:cc\r\n'),
(61, 7, 'da:ce:c9:29:36:f5\r\n'),
(62, 7, 'a9:5e:27:0b:bd:08\r\n'),
(63, 7, '07:57:30:48:14:ee\r\n'),
(64, 7, 'd9:18:14:7b:0c:a9\r\n'),
(65, 7, 'ce:65:3f:11:cd:5b\r\n'),
(66, 8, '6c:35:98:d2:c3:ed\r\n'),
(67, 8, 'd4:70:0a:b6:e5:f3\r\n'),
(68, 8, '6c:e6:03:29:51:d3\r\n'),
(69, 8, 'a1:23:e7:c7:07:36\r\n'),
(70, 8, '60:64:5c:0e:7c:74');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` int(255) NOT NULL,
  `MAC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `Name`, `Phone`, `MAC`) VALUES
(1, 'Tyla Lowrey', 3333527, 'f5:20:83:f0:b8:20\r\n'),
(2, 'Vanesa Puckett\r\n', 71154672, '54:ae:e1:9c:5e:34\r\n'),
(3, 'Renesmae Burnett\r\n', 76654677, '19:68:16:e7:7d:9b\r\n'),
(4, 'Lauryn Finley\r\n', 71665445, 'e3:52:3a:94:22:07\r\n'),
(5, 'Hamza Whitehouse\r\n', 78886655, 'd1:84:3e:a2:3f:cd\r\n'),
(6, 'Sheridan Estrada\r\n', 81887665, 'b1:1a:0a:51:2b:71\r\n'),
(7, 'Eboni Orr\r\n', 76555345, '0d:68:f4:5f:7b:1b\r\n'),
(8, 'Nel Padilla\r\n', 78865456, '69:c3:f1:08:c7:01\r\n'),
(9, 'Mariyah Mcbride\r\n', 71124453, 'ab:25:33:37:b5:69\r\n'),
(10, 'Beau Blanchard\r\n', 3456233, 'e9:9b:b3:2c:ac:6a\r\n'),
(11, 'Zohaib Nicholls\r\n', 78776567, 'dc:e0:bc:5c:84:fc\r\n'),
(12, 'Willie Castro\r\n', 3987789, '3f:b1:5a:31:cb:56\r\n'),
(13, 'Izaac Stewart\r\n', 78876789, 'ac:28:0d:27:f0:1a\r\n'),
(14, 'Khushi Kelley\r\n', 71256654, 'ab:e4:c8:02:8a:23\r\n'),
(15, 'Radhika Kramer\r\n', 3409809, '6b:cd:a3:c5:b3:da\r\n'),
(16, 'Annaliese Hudson\r\n', 70987789, 'dd:91:70:49:de:8a\r\n'),
(17, 'Prince Lopez\r\n', 70980004, '13:97:87:75:78:7c\r\n'),
(18, 'Aniyah Galvan\r\n', 3098789, '56:f9:9a:cf:22:fb\r\n'),
(19, 'Lena Fisher\r\n', 71509987, '50:ee:bd:91:22:86\r\n'),
(20, 'Haleema Hull\r\n', 3243609, 'a8:7c:0f:8a:4b:1a\r\n'),
(21, 'Shakir Ramsey\r\n', 3489765, '40:39:38:c5:55:35\r\n'),
(22, 'Warren French\r\n', 70635749, 'c6:d5:c3:a1:bc:41\r\n'),
(23, 'Mylah Key\r\n', 70860789, 'b5:8b:ef:ad:3e:c9\r\n'),
(24, 'Mariah Wells\r\n', 76564362, '45:af:38:9b:bf:cf\r\n'),
(25, 'Layla Bannister\r\n', 3456142, '63:bd:c9:5a:80:05\r\n'),
(26, 'Cian Maldonado\r\n', 70854976, '3f:d0:78:5b:68:63\r\n'),
(27, 'Samah Cornish\r\n', 3544366, '5f:b0:60:98:96:68\r\n'),
(28, 'Kelsi Esquivel\r\n', 78544788, '70:52:9f:03:01:90\r\n'),
(29, 'Safiyah Morris\r\n', 3888676, '45:4d:df:e7:17:00\r\n'),
(30, 'Herbert Frederick\r\n', 3897888, '87:fb:bb:c9:12:31\r\n'),
(31, 'Daisy-May Vazquez\r\n', 76112470, '4d:25:45:9d:cd:b4\r\n'),
(32, 'Greyson Andersen\r\n', 81688465, 'fc:6c:5d:a8:d3:32\r\n'),
(33, 'Maaria Storey\r\n', 81777435, 'a4:15:c4:b6:08:03\r\n'),
(34, 'Affan Gardiner\r\n', 3988576, '55:be:25:94:63:9a\r\n'),
(35, 'Maci Winter\r\n', 3147348, '04:0f:66:b4:00:c8\r\n'),
(36, 'Akshay Lowe\r\n', 70467542, 'a8:d7:08:ba:52:f9\r\n'),
(37, 'Zion Eastwood\r\n', 81879645, '2e:8b:d7:d5:57:cc\r\n'),
(38, 'Daanyaal Rowley\r\n', 3678432, '6c:e6:03:29:51:d3\r\n'),
(39, 'Eshaal Bauer\r\n', 76326976, 'a1:23:e7:c7:07:36\r\n'),
(40, 'Maxwell Galindo', 70980565, '60:64:5c:0e:7c:74');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesspoint`
--
ALTER TABLE `accesspoint`
  ADD PRIMARY KEY (`AcessPointID`);

--
-- Indexes for table `connectedmac`
--
ALTER TABLE `connectedmac`
  ADD PRIMARY KEY (`ConnectedMACID`),
  ADD KEY `fk1` (`accessPointID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesspoint`
--
ALTER TABLE `accesspoint`
  MODIFY `AcessPointID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `connectedmac`
--
ALTER TABLE `connectedmac`
  MODIFY `ConnectedMACID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connectedmac`
--
ALTER TABLE `connectedmac`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`accessPointID`) REFERENCES `accesspoint` (`AcessPointID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
