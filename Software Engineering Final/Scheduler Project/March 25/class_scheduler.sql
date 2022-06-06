-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 01:50 AM
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
  `Course_ID` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Room_Num` varchar(50) NOT NULL,
  `Prof_LName` varchar(50) NOT NULL,
  `Days` varchar(50) NOT NULL,
  `Time_Start` varchar(50) NOT NULL,
  `Time_End` varchar(50) NOT NULL,
  `Date_Start` varchar(50) NOT NULL,
  `Date_End` varchar(50) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Subject`, `Course_Name`, `Room_Num`, `Prof_LName`, `Days`, `Time_Start`, `Time_End`, `Date_Start`, `Date_End`, `Credits`) VALUES
(1, 'MATH', 'Alegbra', '', '', '', '123', '123', '123', '123', 123),
(2, 'MATH', 'Calculus', '', '', '', '8:00', '9:50', '12/24/2021', '5/3/2021', 4),
(157, 'CSCI', 'Introduction to Algorithmic Thinking in Python', '', '', '', '16:00', '17:50', '12/24/2021', '5/3/2021', 4),
(212, 'CSCI', 'Data Structures', '', '', '', '12:00', '13:50', '12/24/2021', '5/3/2021', 4),
(309, 'CSCI', 'Object Oriented Design', '', '', '', '2:00', '3:50', '12/24/2021', '5/3/2021', 4),
(312, 'CSCI', 'Computer Org & Arch I', '', '', '', '14:00', '15:50', '12/24/2021', '5/3/2021', 4),
(313, 'CSCI', 'Computer Org & Arch II', '', '', '', '10', '12:30', '12/24/2021', '1/24/2021', 4),
(325, 'CSCI', 'Organization of Programming Languages', '', '', '', '', '', '12/24/2021', '5/3/2021', 3),
(401, 'CSCI', 'Software Engineering', '', '', '', '', '', '12/24/2021', '5/3/2021', 3),
(402, 'CSCI', 'Introduction to Cyber Security', '', '', '', '10:00', '11:50', '12/24/2021', '5/3/2021', 4),
(423, 'CSCI', 'Analysis of Algorithms', '', '', '', '', '', '12/24/2021', '5/3/2021', 4),
(428, 'CSCI', 'Machine Learning', '', '', '', '', '', '12/24/2021', '5/3/2021', 4),
(435, 'CSCI', 'Operating Systems', '', '', '', '', '', '12/24/2021', '5/3/2021', 3);

-- --------------------------------------------------------

--
-- Table structure for table `current_course`
--

CREATE TABLE `current_course` (
  `Cur_Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `GPA` double(3,3) DEFAULT NULL,
  `Term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_course`
--

INSERT INTO `current_course` (`Cur_Course_ID`, `Student_ID`, `Course_ID`, `GPA`, `Term`) VALUES
(7, 3, 2, NULL, 'Fall 2021'),
(8, 3, 435, NULL, ''),
(9, 6, 435, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `Prereq_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Prev_Course_ID` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`Prereq_ID`, `Course_ID`, `Prev_Course_ID`, `Subject`) VALUES
(1, 313, 312, 'CSCI'),
(2, 401, 212, 'CSCI');

-- --------------------------------------------------------

--
-- Table structure for table `previous_course`
--

CREATE TABLE `previous_course` (
  `Pre_Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `GPA` float DEFAULT NULL,
  `Term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previous_course`
--

INSERT INTO `previous_course` (`Pre_Course_ID`, `Student_ID`, `Course_ID`, `GPA`, `Term`) VALUES
(1, 3, 157, 3, 'Spring 2020');

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
  `Lname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_Num` varchar(50) NOT NULL,
  `Credits` double(4,1) NOT NULL,
  `Sum_GPA` double(3,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Fname`, `Lname`, `Email`, `Phone_Num`, `Credits`, `Sum_GPA`) VALUES
(0, 'Admin', '', '', '', 0.0, 0.000),
(3, 'Michael', 'Goldberger', '', '', 0.0, 0.000),
(4, 'Brooke', 'Gannon', '', '', 0.0, 0.000),
(5, 'Brennan', 'Gannon', '', '', 0.0, 0.000),
(6, 'Kerrin', 'Field', '', '', 0.0, 0.000),
(7, 'Xavier', 'Greene', '', '', 0.0, 0.000),
(8, 'Darol', 'Groeneveldt', '', '', 0.0, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `Student_ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Account_Type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`Student_ID`, `Username`, `Password`, `Account_Type`) VALUES
(0, 'Admin', 'dc647eb65e6711e155375218212b3964', 'A'),
(3, 'Micheal_3', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(4, 'Brooke_4', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(6, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `current_course`
--
ALTER TABLE `current_course`
  ADD PRIMARY KEY (`Cur_Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`Prereq_ID`),
  ADD KEY `Course_ID` (`Course_ID`,`Prev_Course_ID`),
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
  ADD PRIMARY KEY (`Prof_ID`),
  ADD UNIQUE KEY `LName` (`LName`);

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
  MODIFY `Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `current_course`
--
ALTER TABLE `current_course`
  MODIFY `Cur_Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prereq`
--
ALTER TABLE `prereq`
  MODIFY `Prereq_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `previous_course`
--
ALTER TABLE `previous_course`
  MODIFY `Pre_Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Prof_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `current_course`
--
ALTER TABLE `current_course`
  ADD CONSTRAINT `current_course_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `current_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`Prev_Course_ID`) REFERENCES `course` (`Course_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `previous_course`
--
ALTER TABLE `previous_course`
  ADD CONSTRAINT `previous_course_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `previous_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
