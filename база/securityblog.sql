-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 08:02 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `securityblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ID` bigint(20) NOT NULL,
  `CARCONDITION` varchar(255) DEFAULT NULL,
  `CARBODY` varchar(255) DEFAULT NULL,
  `CHECKTIME` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `DOORS` int(11) DEFAULT NULL,
  `DRIVEUNIT` varchar(255) DEFAULT NULL,
  `DRYMASS` bigint(20) DEFAULT NULL,
  `ENGINEPOWER` bigint(20) DEFAULT NULL,
  `ENGINETYPE` varchar(255) DEFAULT NULL,
  `ENGINEVOLUME` float DEFAULT NULL,
  `FIRSTREG` varchar(255) DEFAULT NULL,
  `FUELRATE` float DEFAULT NULL,
  `FULLMASS` bigint(20) DEFAULT NULL,
  `GEAR` varchar(255) DEFAULT NULL,
  `GRIP` varchar(255) DEFAULT NULL,
  `IMAGES` longblob,
  `MARK` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `MOREINFO` varchar(255) DEFAULT NULL,
  `PASSPORT` varchar(255) DEFAULT NULL,
  `PRICE` float DEFAULT NULL,
  `PURCHASEDATE` varchar(255) DEFAULT NULL,
  `REGNUMBER` varchar(255) DEFAULT NULL,
  `RUN` bigint(20) DEFAULT NULL,
  `SEATS` int(11) DEFAULT NULL,
  `TANK` bigint(20) DEFAULT NULL,
  `USERADDRESS` varchar(255) DEFAULT NULL,
  `USEREMAIL` varchar(255) DEFAULT NULL,
  `USERID` bigint(20) DEFAULT NULL,
  `USERLASTNAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `USERPHONE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ID`, `CARCONDITION`, `CARBODY`, `CHECKTIME`, `COLOR`, `DATE`, `DOORS`, `DRIVEUNIT`, `DRYMASS`, `ENGINEPOWER`, `ENGINETYPE`, `ENGINEVOLUME`, `FIRSTREG`, `FUELRATE`, `FULLMASS`, `GEAR`, `GRIP`, `IMAGES`, `MARK`, `MODEL`, `MOREINFO`, `PASSPORT`, `PRICE`, `PURCHASEDATE`, `REGNUMBER`, `RUN`, `SEATS`, `TANK`, `USERADDRESS`, `USEREMAIL`, `USERID`, `USERLASTNAME`, `USERNAME`, `USERPHONE`) VALUES
(2, 'Битый / не на ходу', 'Хэтчбэк', '2018-01-01', 'серебристый', '2017-06-13 08:40:57', 5, 'Передний', 1215, 105, 'Бензин', 1.6, '2006-01-01', 12, 1640, 'Механическая', 'Левый', 0xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000477040000000474000873757a312e6a706774000873757a322e6a706774000873757a332e6a706774000873757a342e6a706778, 'Suzuki', 'Liana', '', 'Оригинал', 350, '2006-06-01', '123QWE', 250000, 5, 50, 'Kohtla-Jarve', 'usr@adm.com', 2, 'Userlastname', 'Username', '65432'),
(4, 'Не требует ремонта', 'Седан', '2016-06-01', 'синий', '2017-06-13 08:46:56', 4, 'Передний', 1160, 100, 'Бензин', 1.8, '1990-01-01', 10, 1710, 'Механическая', 'Левый', 0xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000377040000000374000961756469312e6a706774000961756469322e6a706774000961756469332e6a706778, 'Audi', '100 1.8 74kW', '', 'Оригинал', 190, '1999-06-01', '123QWE', 198000, 5, 60, 'Kohtla-Jarve', 'usr@adm.com', 2, 'Userlastname', 'Username', '65432'),
(5, 'Не требует ремонта', 'Хэтчбэк', '2018-01-01', 'серебристый', '2017-06-13 08:52:51', 5, 'Передний', 885, 75, 'Бензин', 1.6, '1991-09-01', 8, 1405, 'Механическая', 'Левый', 0xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a657870000000067704000000067400096f70656c312e6a70677400096f70656c322e6a70677400096f70656c332e6a70677400096f70656c342e6a70677400096f70656c352e6a70677400096f70656c362e6a706778, 'Opel', 'Kadett', '', 'Оригинал', 300, '2014-02-05', '132QSDA', 275000, 5, 42, 'Kohtla-Jarve', 'usr@adm.com', 2, 'Userlastname', 'Username', '65432'),
(6, 'Не требует ремонта', 'Хэтчбэк', '2018-01-01', 'красный', '2017-06-13 08:58:29', 5, 'Передний', 1070, 90, 'Бензин', 1.6, '1996-01-01', 6, 1520, 'Механическая', 'Левый', 0xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000677040000000674000c70657567656f74312e6a706774000c70657567656f74322e6a706774000c70657567656f74332e6a706774000c70657567656f74342e6a706774000c70657567656f74352e6a706774000c70657567656f74362e6a706778, 'Peugeot', '306 1.6 65kW', '', 'Оригинал', 400, '1997-01-01', '456RET', 170000, 5, 60, 'Kohtla-Jarve', 'usr@adm.com', 2, 'Userlastname', 'Username', '65432');

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

CREATE TABLE `article_comment` (
  `Article_ID` bigint(20) NOT NULL,
  `comments_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_comment`
--

INSERT INTO `article_comment` (`Article_ID`, `comments_ID`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` bigint(20) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `TEXT` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `USERLOGIN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `DATE`, `TEXT`, `TITLE`, `USERLOGIN`) VALUES
(1, '2017-06-13 09:02:30', '1231', '123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `ID` bigint(20) NOT NULL,
  `GROUPNAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`ID`, `GROUPNAME`) VALUES
(1, 'ADMINS'),
(2, 'USERS');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ID` bigint(20) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `SURNAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID`, `DTYPE`, `ADDRESS`, `EMAIL`, `NAME`, `PHONE`, `SURNAME`) VALUES
(1, 'User', 'Johvi', 'admin@adm.com', 'Adminname', '54321', 'Adminlastname'),
(2, 'User', 'Kohtla-Jarve', 'usr@adm.com', 'Username', '65432', 'Userlastname');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL,
  `LOGIN` varchar(50) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  `SALTS` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `LOGIN`, `PASSWORD`, `SALTS`) VALUES
(1, 'admin', '87995f932a127c1f7fae7fa0a0220be9ebd6d433fe5ee24d950f262773012250', '3c7c3106fb325cc82a58fd2b1521c6c6'),
(2, 'user', '6fcf4a6b8cc2aef721a8d076ecd40829f56e29647308f100e43dea75639fdfb9', '1f2eb29ce9cafd8cb10c125a9e47111b');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `User_ID` bigint(20) NOT NULL,
  `groups_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`User_ID`, `groups_ID`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD PRIMARY KEY (`Article_ID`,`comments_ID`),
  ADD KEY `FK_ARTICLE_COMMENT_comments_ID` (`comments_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `LOGIN` (`LOGIN`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`User_ID`,`groups_ID`),
  ADD KEY `FK_USER_GROUPS_groups_ID` (`groups_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD CONSTRAINT `FK_ARTICLE_COMMENT_Article_ID` FOREIGN KEY (`Article_ID`) REFERENCES `article` (`ID`),
  ADD CONSTRAINT `FK_ARTICLE_COMMENT_comments_ID` FOREIGN KEY (`comments_ID`) REFERENCES `comment` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USER_ID` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `FK_USER_GROUPS_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `person` (`ID`),
  ADD CONSTRAINT `FK_USER_GROUPS_groups_ID` FOREIGN KEY (`groups_ID`) REFERENCES `groups` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
