-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 06:14 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh'),
(39, 'Motivator'),
(40, '2023-001983');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Book_photo` varchar(255) NOT NULL,
  `Book` varchar(255) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Book_photo`, `Book`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, '', '', 'OS', 'PEARSON', '2006', 0),
(2, '', '', 'DBMS', 'TARGET67', '2010', 0),
(3, '', '', 'TOC', 'NITC', '2018', 4),
(4, '', '', 'TOC', 'NITC', '2018', 1),
(5, '', '', 'DAA', 'y', '2014', 0),
(6, '', '', 'DSA', 'X', '2010', 10),
(7, '', '', 'Discrete Structures', 'Pearson', '2010', 10),
(8, '', '', 'Database Processing', 'Prentice Hall', '2013', 12),
(9, '', '', 'Computer System Architecture', 'Prentice Hall', '2015', 5),
(10, '', '', 'C: How to program', 'Prentice Hall', '2009', 3),
(11, '', '', 'Atomic and Nuclear Systems', 'Pearson India ', '2017', 13),
(12, '', '', 'The PlayBook', 'Stinson', '2010', 12),
(13, '', '', 'General Theory of Relativity', 'Pearson India ', '2012', 6),
(14, '', '', 'Heat and Thermodynamics', 'Pearson', '2013', 9),
(15, '', '', 'Machine Design', 'Pearson India ', '2012', 5),
(16, '', '', 'Nuclear Physics', 'Pearson India ', '1998', 7),
(17, '', '', 'Operating System', 'Pearson India ', '1990', 7),
(18, '', '', 'Theory of Machines', 'Pearson', '1992', 12),
(39, '100_ways_to_motivate_yourself_photo.PNG', '1._100_ways_to_motivate_yourself.pdf', '100 ways to motivate yourself', 'Eddy Corps', '2023', 100),
(40, '', '', 'Teddy', 'teddy@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('ADMIN', 'admin', 'Admin', NULL, 'admin@gmail.com', 123456789, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
