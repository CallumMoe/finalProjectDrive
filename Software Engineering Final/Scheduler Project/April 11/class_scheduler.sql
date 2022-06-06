-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 04:06 AM
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
  `Course_Num` int(11) NOT NULL,
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

INSERT INTO `course` (`Course_ID`, `Course_Num`, `Subject`, `Course_Name`, `Room_Num`, `Prof_LName`, `Days`, `Time_Start`, `Time_End`, `Date_Start`, `Date_End`, `Credits`) VALUES
(2, 212, 'MATH', 'Calculus', 'Online', '', 'Monday', '8:00', '9:50', '1/19/2021', '5/3/2021', 4),
(3, 213, 'MATH', 'Calculus II', 'Online', 'Teixeira', 'Monday-Wednesday', '10:00', '11:50', '1/19/2021', '5/3/2022', 3),
(100, 100, 'BIO', 'Fundamental Concepts of Biology', 'Online', 'Blum', 'Tuesday', '9:00', '11:50', '12/24/2021', '5/3/2021', 4),
(108, 108, 'BIO', 'Basic Principles of Biology', 'Online', 'Roberts', 'Monday-Wednesday', '10:00', '11:20', '12/24/2021', '5/3/2021', 4),
(116, 116, 'FILM', 'Intro to Film', 'Online', 'Cate', 'Monday', '4:00', '5:50', '1/19/2021', '5/3/2021', 4),
(157, 157, 'CSCI', 'Introduction to Algorithmic Thinking in Python', 'Online', 'Sarawagi', 'Wednesday', '16:00', '17:50', '1/19/2021', '5/3/2021', 4),
(209, 209, 'MATH', 'Precalculus Mathematics', 'Online', 'Burke', 'Monday-Wednesday', '10:00', '11:50', '1/19/2021', '5/3/2021', 4),
(211, 211, 'CSCI', 'Computer Programming and Design', 'Online', 'Liu', 'Async', '', '', '1/19/2021', '5/3/2021', 4),
(212, 212, 'CSCI', 'Data Structures', 'Online', 'Sarawagi', 'Tuesday', '12:00', '13:50', '1/19/2021', '5/3/2021', 4),
(219, 219, 'FILM', 'Methods of Film Analysis', 'Online', 'Kalinak', 'Monday', '10:00', '11:50', '1/19/2021', '5/3/2021', 3),
(309, 309, 'CSCI', 'Object Oriented Design', 'Online', 'Sarawagi', 'Friday', '2:00', '3:50', '1/19/2021', '5/3/2021', 4),
(312, 312, 'CSCI', 'Computer Org & Arch I', 'Online', 'Ravenscroft', 'Monday', '14:00', '15:50', '1/19/2021', '5/3/2021', 4),
(313, 313, 'CSCI', 'Computer Org & Arch II', 'Online', 'Ravenscroft', 'Tuesday', '10:00', '12:30', '1/19/2021', '5/3/2021', 4),
(325, 325, 'CSCI', 'Organization of Programming Languages', 'Online', 'Port', 'Async', '', '', '1/19/2021', '5/3/2021', 3),
(351, 351, 'FILM', 'Major Directors', 'Online', 'Kalinak', 'Monday', '14:00', '15:50', '1/19/2021', '5/3/2021', 3),
(401, 401, 'CSCI', 'Software Engineering', 'Online', 'Elfouly', 'Async', '', '', '1/19/2021', '5/3/2021', 3),
(402, 402, 'CSCI', 'Introduction to Cyber Security', 'Online', 'Mello-Stark', 'Thursday', '10:00', '11:50', '1/19/2021', '5/3/2021', 4),
(423, 423, 'CSCI', 'Analysis of Algorithms', 'Online', 'Liu', 'Async', '', '', '1/19/2021', '5/3/2021', 4),
(428, 428, 'CSCI', 'Machine Learning', 'Online', 'Elfouly', 'Async', '', '', '1/19/2021', '5/3/2021', 4),
(435, 435, 'CSCI', 'Operating Systems', 'Online', 'Elfouly', 'Async', '', '', '1/19/2021', '5/3/2021', 3);

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
(4, 4, 2, NULL, 'SPRING 2021'),
(438, 4, 157, 0.999, 'SPRING 2021'),
(470, 3, 100, NULL, ''),
(471, 3, 209, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `Prereq_ID` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Prev_Course_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`Prereq_ID`, `Subject`, `Course_ID`, `Prev_Course_ID`) VALUES
(1, 'CSCI', 313, 312),
(2, 'CSCI', 401, 212),
(3, 'FILM', 351, 219),
(4, 'FILM', 351, 219),
(5, 'FILM', 219, 116),
(6, 'MATH', 423, 2),
(7, 'CSCI', 325, 212),
(8, 'CSCI', 309, 212),
(9, 'CSCI', 312, 211),
(10, 'MATH', 3, 2),
(11, 'CSCI', 428, 212),
(12, 'CSCI', 435, 212);

-- --------------------------------------------------------

--
-- Table structure for table `previous_course`
--

CREATE TABLE `previous_course` (
  `Pre_Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `GPA` float DEFAULT NULL,
  `Term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previous_course`
--

INSERT INTO `previous_course` (`Pre_Course_ID`, `Student_ID`, `Subject`, `Course_ID`, `GPA`, `Term`) VALUES
(1, 3, 'CSCI', 157, 3, 'Spring 2020'),
(3, 3, 'FILM', 116, 3.7, 'Spring 2017'),
(4, 3, 'CSCI', 108, 3.7, 'Spring 2017'),
(160, 3, 'CSCI', 209, 2.7, 'SUMMER 2019');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `Prof_ID` int(11) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_Num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`Prof_ID`, `FName`, `LName`, `Email`, `Phone_Num`) VALUES
(2, 'Robert', 'Ravenscroft', 'rravenscroft@ric.edu', '6887733443'),
(3, 'Lisa', 'Humphreys', 'lhumphreys@ric.edu', '7404675403'),
(4, 'Qian', 'Liu', 'qliu@ric.edu', '7329129113'),
(5, 'Namita', 'Sarawagi', 'nsarawagi@ric.edu', '4639556924'),
(6, 'Raafat', 'Elfouly', 'relfouly@ric.edu', '2675515656'),
(7, 'Suzanne', 'Mello-Stark', 'smello-stark@ric.edu', '4959516156'),
(8, 'Andrew', 'Cate', 'acate@ric.edu', '2316593917'),
(9, 'Justin', 'Port', 'jport@ric.edu', '2226907057'),
(10, 'Kathryn', 'Kalinak', 'kkalinak@ric.edu', '3884871108'),
(11, 'Chris', 'Teixeira', 'ctexeira@ric.edu', '4015557890'),
(12, 'John', 'Burke', 'jburke@ric.edu', '8614388446'),
(13, 'Eric', 'Roberts', 'eroberts@ric.edu', '4013778976'),
(14, 'Carolyn', 'Blumb', 'cblum@ric.edu', '401-373-9999');

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
(3, 'Michael', 'Goldberger', 'Mgoldberger_3285@email.ric.edu', '4015164628', 0.0, 0.000),
(4, 'Brooke', 'Gannon', 'Bgannon_1337@email.ric.edu', '4011572340', 0.0, 0.000),
(5, 'Brennan', 'Gannon', 'Bgannon_1336@email.ric.edu', '4011579995', 0.0, 0.000),
(6, 'Kerrin', 'Field', 'Kfield_3333@email.ric.edu', '4015164628', 0.0, 0.000),
(7, 'Xavier', 'Greene', 'Xgreene_0717@email.ric.edu', '4018980099', 0.0, 0.000),
(8, 'Darol', 'Groeneveld', 'DGroeneveld_1111@email.ric.edu', '4018853464', 0.0, 0.000),
(9, 'Alex', 'Julian', 'Ajulian_8823@ric.email.edu', '4017822324', 0.0, 0.000),
(12, 'Reggie', 'Wayne', 'Rwayne_3220@email.ric.edu', '40175467821', 0.0, 0.000),
(13, 'Shawn', 'Carter', 'Scarter_4831@email.ric.edu', '4915483661', 0.0, 0.000),
(14, 'Kyle', 'Short', 'Kshort_0921@email.ric.edu', '4011231455', 0.0, 0.000),
(15, 'Derek', 'Delsesto', 'Ddelsesto_7777@email.ric.edu', '4016417777', 0.0, 0.000),
(16, 'Diego', 'Gomez', 'dgomez_7216@email.ric.edu', '4015551234', 30.0, 0.000);

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
(6, 'kfield_3333', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(7, 'Xgreene_0717', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(8, 'DGroeneveld_1111', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(9, 'Ajulian_8823', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(12, 'Rwayne_3220', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(13, 'Scarter_4831', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(14, 'Kshort_0921', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(15, 'Ddelsesto_7777', '5f4dcc3b5aa765d61d8327deb882cf99', 'S'),
(16, 'Diego_7216', 'd4705b9f42c96eeb0b9fb53266013516', 'S');

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
  MODIFY `Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `current_course`
--
ALTER TABLE `current_course`
  MODIFY `Cur_Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `prereq`
--
ALTER TABLE `prereq`
  MODIFY `Prereq_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `previous_course`
--
ALTER TABLE `previous_course`
  MODIFY `Pre_Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Prof_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
