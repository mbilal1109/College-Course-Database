-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2021 at 11:25 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS3152SP21_mbilal2`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `CompSciProfessors`
--
CREATE TABLE `CompSciProfessors` (
`courseName` varchar(30)
,`courseNo` int(11)
,`courseProf` varchar(20)
,`profEmail` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `ComputerScience`
--

CREATE TABLE `ComputerScience` (
  `courseNo` int(11) NOT NULL,
  `instructor` varchar(20) DEFAULT NULL,
  `coursePrice` decimal(5,2) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `profEmail` varchar(30) DEFAULT NULL,
  `courseName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ComputerScience`
--

INSERT INTO `ComputerScience` (`courseNo`, `instructor`, `coursePrice`, `location`, `profEmail`, `courseName`) VALUES
(205, 'Spencer Smith', '450.00', 'Online', 'ssmith34@dui.edu', 'Programming 2'),
(207, 'Spencer Smith', '450.00', 'In Person', 'ssmith34@dui.edu', 'Programming 2'),
(302, 'Robin Martin', '300.00', 'In Person', 'rmartin98@dui.edu', 'Intro to Computer'),
(303, 'TBA', '500.00', 'Online', 'TBA', 'Computer Theory'),
(310, 'John Samsung', '399.00', 'Online', 'jsamsung98@dui.edu', 'Intro to javascript'),
(314, 'Robin Martin', '750.00', 'In Person', 'rmartin98@dui.edu', 'Intro to Database'),
(315, 'John Smith', '750.00', 'Online', 'jsmith12@dui.edu', 'Intro to Database'),
(321, 'Jack Block', '900.00', 'In Person', 'jblock1@dui.edu', 'Web Development'),
(334, 'Maria Bullok', '775.00', 'In Person', 'mbullok23@dui.edu', 'Intro to Django'),
(370, 'Johnson Jackson', '575.00', 'In Person', 'jjackson23@dui.edu', 'Intro to ML'),
(390, 'Jack Block', '600.00', 'In Person', 'jblock1@dui.edu', 'Data Mining');

-- --------------------------------------------------------

--
-- Table structure for table `Math`
--

CREATE TABLE `Math` (
  `courseNo` int(11) NOT NULL,
  `instructor` varchar(20) DEFAULT NULL,
  `coursePrice` decimal(5,2) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `profEmail` varchar(20) DEFAULT NULL,
  `courseName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Math`
--

INSERT INTO `Math` (`courseNo`, `instructor`, `coursePrice`, `location`, `profEmail`, `courseName`) VALUES
(205, 'Paul Rivera', '700.00', 'In Person', 'privera78@dui.edu', 'Calculus 1'),
(207, 'Smith White', '450.00', 'In Person', 'swhite34@dui.edu', 'Discrete Structures'),
(302, 'Amber Martin', '700.00', 'In Person', 'amartin98@dui.edu', 'Calculus 3'),
(310, 'Jackson Mann', '499.00', 'In Person', 'jmann11@dui.edu', 'Intro to Trig'),
(314, 'Amber Martin', '700.00', 'In Person', 'amartin98@dui.edu', 'Calculus 2'),
(315, 'Maria Spencer', '550.00', 'In Person', 'mspencer90@dui.edu', 'College Algebra'),
(334, 'Maria Bullok', '623.00', 'In Person', 'mbullok23@dui.edu', 'Business Calculus');

-- --------------------------------------------------------

--
-- Stand-in structure for view `MathProfessors`
--
CREATE TABLE `MathProfessors` (
`courseName` varchar(30)
,`courseNo` int(11)
,`courseProf` varchar(20)
,`profEmail` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `Professor`
--

CREATE TABLE `Professor` (
  `room` int(11) NOT NULL,
  `courseProf` varchar(20) DEFAULT NULL,
  `profEmail` varchar(30) DEFAULT NULL,
  `phoneNo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professor`
--

INSERT INTO `Professor` (`room`, `courseProf`, `profEmail`, `phoneNo`) VALUES
(2054, 'Robin Martin', 'rmartin98@dui.edu', '773-934-2367'),
(2073, 'Spencer Smith', 'ssmith34@dui.edu', '773-989-7976'),
(3012, 'Amber Gladwell', 'agladwell98@dui.edu', '773-223-6987'),
(3023, 'Johnson Jackson', 'jjackson23@dui.edu', '773-113-6754'),
(3038, 'Malcolm Gladwell', 'mgladwell90@dui.edu', '773-989-8723'),
(3141, 'Jack Block', 'jblock1@dui.edu', '773-223-7656'),
(3152, 'John Smith', 'jsmith12@dui.edu', '773-989-7867'),
(3344, 'Maria Bullok', 'mbullok23@dui.edu', '773-223-0089'),
(3701, 'Maria Spencer', 'mspencer90@dui.edu', '773-556-4567'),
(3891, 'Martin Esther', 'mesther98@dui.edu', '773-123-6545'),
(3906, 'Smith White', 'swhite34@dui.edu', '773-889-6545'),
(3990, 'John Samsung', 'jsamsung98@dui.edu', '773-998-3456');

-- --------------------------------------------------------

--
-- Table structure for table `Science`
--

CREATE TABLE `Science` (
  `courseNo` int(11) NOT NULL,
  `instructor` varchar(20) DEFAULT NULL,
  `coursePrice` decimal(5,2) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `profEmail` varchar(20) DEFAULT NULL,
  `courseName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Science`
--

INSERT INTO `Science` (`courseNo`, `instructor`, `coursePrice`, `location`, `profEmail`, `courseName`) VALUES
(205, 'Paul Olga', '300.00', 'In Person', 'polga78@dui.edu', 'Chemistry 1'),
(207, 'Smith White', '450.00', 'In Person', 'swhite34@dui.edu', 'Biology 2'),
(302, 'Amber Gladwell', '100.00', 'In Person', 'agladwell98@dui.edu', 'Geology'),
(314, 'Martin Esther', '550.00', 'In Person', 'mesther98@dui.edu', 'Chemistry 2'),
(315, 'Malcolm Gladwell', '550.00', 'In Person', 'mgladwell90@dui.edu', 'Biology 1'),
(334, 'Maria Bullok', '623.00', 'In Person', 'mbullok23@dui.edu', 'Ecology');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ScienceProfessors`
--
CREATE TABLE `ScienceProfessors` (
`courseName` varchar(30)
,`courseNo` int(11)
,`courseProf` varchar(20)
,`profEmail` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `CompSciProfessors`
--
DROP TABLE IF EXISTS `CompSciProfessors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`CS3152SP21_mbilal2`@`%` SQL SECURITY DEFINER VIEW `CompSciProfessors`  AS  select `c`.`courseName` AS `courseName`,`c`.`courseNo` AS `courseNo`,`p`.`courseProf` AS `courseProf`,`p`.`profEmail` AS `profEmail` from (`ComputerScience` `c` join `Professor` `p` on((`c`.`profEmail` = `p`.`profEmail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `MathProfessors`
--
DROP TABLE IF EXISTS `MathProfessors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`CS3152SP21_mbilal2`@`%` SQL SECURITY DEFINER VIEW `MathProfessors`  AS  select `m`.`courseName` AS `courseName`,`m`.`courseNo` AS `courseNo`,`p`.`courseProf` AS `courseProf`,`p`.`profEmail` AS `profEmail` from (`Math` `m` join `Professor` `p` on((`m`.`profEmail` = `p`.`profEmail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `ScienceProfessors`
--
DROP TABLE IF EXISTS `ScienceProfessors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`CS3152SP21_mbilal2`@`%` SQL SECURITY DEFINER VIEW `ScienceProfessors`  AS  select `s`.`courseName` AS `courseName`,`s`.`courseNo` AS `courseNo`,`p`.`courseProf` AS `courseProf`,`p`.`profEmail` AS `profEmail` from (`Science` `s` join `Professor` `p` on((`s`.`profEmail` = `p`.`profEmail`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ComputerScience`
--
ALTER TABLE `ComputerScience`
  ADD PRIMARY KEY (`courseNo`);

--
-- Indexes for table `Math`
--
ALTER TABLE `Math`
  ADD PRIMARY KEY (`courseNo`);

--
-- Indexes for table `Professor`
--
ALTER TABLE `Professor`
  ADD PRIMARY KEY (`room`);

--
-- Indexes for table `Science`
--
ALTER TABLE `Science`
  ADD PRIMARY KEY (`courseNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Math`
--
ALTER TABLE `Math`
  ADD CONSTRAINT `Math_ibfk_1` FOREIGN KEY (`courseNo`) REFERENCES `ComputerScience` (`courseNo`);

--
-- Constraints for table `Science`
--
ALTER TABLE `Science`
  ADD CONSTRAINT `Science_ibfk_1` FOREIGN KEY (`courseNo`) REFERENCES `ComputerScience` (`courseNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
