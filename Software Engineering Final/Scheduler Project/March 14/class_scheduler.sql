-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 01:22 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `class_scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Couse_ID` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Prof_ID` int(11) NOT NULL,
  `Time_Start` varchar(50) NOT NULL,
  `Time_End` varchar(50) NOT NULL,
  `Date_Start` varchar(50) NOT NULL,
  `Date_End` varchar(50) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Couse_ID`, `Subject`, `Course_Name`, `Prof_ID`, `Time_Start`, `Time_End`, `Date_Start`, `Date_End`, `Credits`) VALUES
(2, '', 'Calculus', 3, '8:00', '9:50', '12/24/2021', '5/3/2021', 4),
(157, 'CSCI', 'Introduction to Algorithmic Thinking in Python', 5, '16:00', '17:50', '12/24/2021', '5/3/2021', 4),
(212, 'CSCI', 'Data Structures', 5, '12:00', '13:50', '12/24/2021', '5/3/2021', 4),
(309, 'CSCI', 'Object Oriented Design', 5, '2:00', '3:50', '12/24/2021', '5/3/2021', 4),
(312, 'CSCI', 'Computer Org & Arch I', 2, '14:00', '15:50', '12/24/2021', '5/3/2021', 4),
(313, 'CSCI', 'Computer Org & Arch II', 2, '10', '12:30', '12/24/2021', '1/24/2021', 4),
(325, 'CSCI', 'Organization of Programming Languages', 4, '', '', '12/24/2021', '5/3/2021', 3),
(401, 'CSCI', 'Software Engineering', 6, '', '', '12/24/2021', '5/3/2021', 3),
(402, 'CSCI', 'Introduction to Cyber Security', 7, '10:00', '11:50', '12/24/2021', '5/3/2021', 4),
(423, 'CSCI', 'Analysis of Algorithms', 4, '', '', '12/24/2021', '5/3/2021', 4),
(428, 'CSCI', 'Machine Learning', 6, '', '', '12/24/2021', '5/3/2021', 4),
(435, 'CSCI', 'Operating Systems', 6, '', '', '12/24/2021', '5/3/2021', 3);

-- --------------------------------------------------------

--
-- Table structure for table `current_course`
--

CREATE TABLE `current_course` (
  `Student_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `Prereq_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Prev_Course_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`Prereq_ID`, `Course_ID`, `Prev_Course_ID`) VALUES
(1, 313, 312),
(2, 401, 212);

-- --------------------------------------------------------

--
-- Table structure for table `previous_course`
--

CREATE TABLE `previous_course` (
  `Pre_Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `Prof_ID` int(11) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`Prof_ID`, `FName`, `LName`) VALUES
(2, 'Robert', 'Ravenscroft'),
(3, 'Lisa', 'Humphreys'),
(4, 'Qian', 'Liu'),
(5, 'Namita', 'Sarawagi'),
(6, 'Raafat', 'Elfouly'),
(7, 'Suzanne', 'Mello-Stark');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Fname`, `Lname`) VALUES
(3, 'Michael', 'Goldberger'),
(4, 'Brooke', 'Gannon'),
(5, 'Brennan', 'Gannon'),
(6, 'Kerrin', 'Field'),
(7, 'Xavier', 'Greene'),
(8, 'Darol', 'Groeneveldt');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `Student_ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`Student_ID`, `Username`, `Password`) VALUES
(3, 'Micheal_3', '5f4dcc3b5aa765d61d8327deb882cf99'),
(4, 'Brooke_4', '5f4dcc3b5aa765d61d8327deb882cf99'),
(5, 'test', ''),
(6, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Couse_ID`),
  ADD KEY `Prof_ID` (`Prof_ID`);

--
-- Indexes for table `current_course`
--
ALTER TABLE `current_course`
  ADD KEY `Student_ID` (`Student_ID`,`Course_ID`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`Prereq_ID`),
  ADD KEY `Course` (`Course_ID`,`Prev_Course_ID`),
  ADD KEY `Prev_Course_ID` (`Prev_Course_ID`);

--
-- Indexes for table `previous_course`
--
ALTER TABLE `previous_course`
  ADD PRIMARY KEY (`Pre_Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Prof_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD UNIQUE KEY `Student_ID_2` (`Student_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Couse_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `prereq`
--
ALTER TABLE `prereq`
  MODIFY `Prereq_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `previous_course`
--
ALTER TABLE `previous_course`
  MODIFY `Pre_Course_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Prof_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Prof_ID`) REFERENCES `professor` (`Prof_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Couse_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`Prev_Course_ID`) REFERENCES `course` (`Couse_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `previous_course`
--
ALTER TABLE `previous_course`
  ADD CONSTRAINT `previous_course_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `previous_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Couse_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
