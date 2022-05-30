-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 11:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propsal_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hod_record`
--

CREATE TABLE `hod_record` (
  `hod_ID` int(11) NOT NULL,
  `hod_FIRST_NAME` varchar(50) NOT NULL,
  `hod_LAST_NAME` varchar(50) NOT NULL,
  `hod_EMAIL` varchar(50) NOT NULL,
  `hod_DEPT` varchar(30) NOT NULL,
  `hod_PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hod_record`
--

INSERT INTO `hod_record` (`hod_ID`, `hod_FIRST_NAME`, `hod_LAST_NAME`, `hod_EMAIL`, `hod_DEPT`, `hod_PASSWORD`) VALUES
(1, 'vikas', 'maral', 'vk@hod.com', 'Computer Science', 'vk22');

-- --------------------------------------------------------

--
-- Table structure for table `project_notification`
--

CREATE TABLE `project_notification` (
  `notification_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `hod_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_notification`
--

INSERT INTO `project_notification` (`notification_id`, `project_id`, `student_id`, `hod_id`, `seen`) VALUES
(7, 1, 1, 1, 1),
(8, 3, 1, 1, 1),
(9, 3, 1, 1, 1),
(10, 1, 1, 1, 1),
(11, 3, 1, 1, 1),
(12, 5, 1, 1, 1),
(13, 3, 1, 1, 0),
(14, 6, 4, 1, 0),
(15, 8, 5, 1, 0),
(16, 8, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_record`
--

CREATE TABLE `project_record` (
  `project_ID` int(11) NOT NULL,
  `student_ID` int(11) NOT NULL,
  `hod_ID` int(11) NOT NULL,
  `project_TITLE` varchar(50) NOT NULL,
  `project_YEAR` int(11) NOT NULL,
  `project_PROFESSOR` varchar(50) DEFAULT NULL,
  `project_BATCH` int(11) NOT NULL,
  `project_COURSE` varchar(50) NOT NULL,
  `project_COMMENT` varchar(500) DEFAULT NULL,
  `project_STATUS` tinyint(1) NOT NULL DEFAULT 0,
  `project_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_record`
--

INSERT INTO `project_record` (`project_ID`, `student_ID`, `hod_ID`, `project_TITLE`, `project_YEAR`, `project_PROFESSOR`, `project_BATCH`, `project_COURSE`, `project_COMMENT`, `project_STATUS`, `project_file`) VALUES
(1, 1, 1, 'Schliderz', 2008, 'Zakir Afridi', 2, 'UX/UI', 'Start Working ASAP!', 1, '../server/uploads/5ef49bef588fb4.50332890.pdf'),
(2, 2, 1, 'Schliderz', 2004, NULL, 4, 'WEB Designing', NULL, 0, '../server/uploads/5ef4aaeb05b1d8.50883162.pdf'),
(3, 1, 1, 'Cats and Canine Rental', 2020, ' Shahab Haidar', 2, 'WEB Designing', 'Please Consult with the teacher', 1, '../server/uploads/5ef72c15cc6421.72974177.pdf'),
(4, 1, 1, 'GSoC Mentee', 2020, NULL, 4, 'Computer Science', NULL, 0, '../server/uploads/5ef72e0b67da38.00680014.pdf'),
(5, 1, 1, 'Online Project Proposal', 2020, ' ', 3, 'Computer Science', ' ', 2, '../server/uploads/5ef73832382d16.62240900.pdf'),
(6, 4, 1, 'project approval system', 2020, 'prof.sushama akhade', 4, 'computer science', 'start working on project', 1, '../server/uploads/6293633586b313.51660171.pdf'),
(7, 4, 1, 'project approval system', 2020, NULL, 4, 'computer science', NULL, 0, '../server/uploads/629366131c41a9.18260891.pdf'),
(8, 5, 1, 'pa_system', 2020, 'prof K.K.Thoke', 4, 'computer science', 'please consult with the teacher', 1, '../server/uploads/6294828a55c529.22099571.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student_hod_chat`
--

CREATE TABLE `student_hod_chat` (
  `message_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `hod_id` int(11) NOT NULL,
  `message_body` varchar(400) NOT NULL,
  `message_sender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_hod_chat`
--

INSERT INTO `student_hod_chat` (`message_id`, `student_id`, `hod_id`, `message_body`, `message_sender`) VALUES
(1, 1, 1, 'Hello Sir!', 's'),
(2, 1, 1, 'Yes, How can I help you?', 'h'),
(3, 1, 1, 'Can You Please Guide me about The Project?', 's'),
(4, 1, 1, 'What Do you need my Help With?', 'h'),
(5, 1, 1, 'Can You please Tell me how do I do such things?', 's'),
(6, 2, 1, 'Can You please Enlighten me about your project?', 'h'),
(7, 2, 1, 'Hi Sir, how do you like my project?', 's'),
(8, 4, 1, 'good afternoon sir. ', 's'),
(9, 4, 1, 'Thank you sir.', 's');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `student_ID` int(11) NOT NULL,
  `student_EMAIL` varchar(50) NOT NULL,
  `student_FIRST_NAME` varchar(50) NOT NULL,
  `student_LAST_NAME` varchar(50) NOT NULL,
  `student_PASSWORD` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`student_ID`, `student_EMAIL`, `student_FIRST_NAME`, `student_LAST_NAME`, `student_PASSWORD`, `status`) VALUES
(1, 'umairjibran7@gmail.com', 'Umair', 'Jibran', '123456', 1),
(2, 'umairjibran@gmail.com', 'Umair', 'Jibran', '123456', 1),
(4, 'skp@gmail.com', 'sanjivani', 'poriwade', '11112222', 1),
(5, 'slp@gmail.com', 'sulekha', 'pednekar', '0000', 1),
(6, 'sa@gmail.com', 'sandhana', 'naik', 'sa@123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hod_record`
--
ALTER TABLE `hod_record`
  ADD PRIMARY KEY (`hod_ID`),
  ADD UNIQUE KEY `hod_EMAIL` (`hod_EMAIL`);

--
-- Indexes for table `project_notification`
--
ALTER TABLE `project_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `project_record`
--
ALTER TABLE `project_record`
  ADD PRIMARY KEY (`project_ID`);

--
-- Indexes for table `student_hod_chat`
--
ALTER TABLE `student_hod_chat`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`student_ID`),
  ADD UNIQUE KEY `student_EMAIL` (`student_EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hod_record`
--
ALTER TABLE `hod_record`
  MODIFY `hod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_notification`
--
ALTER TABLE `project_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project_record`
--
ALTER TABLE `project_record`
  MODIFY `project_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_hod_chat`
--
ALTER TABLE `student_hod_chat`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
