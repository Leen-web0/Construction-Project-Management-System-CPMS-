-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 30, 2024 at 05:27 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpms`
--
CREATE DATABASE IF NOT EXISTS `cpms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cpms`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_ID` int(11) NOT NULL,
  `Client_name` varchar(15) DEFAULT NULL,
  `Client_tel_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_ID`, `Client_name`, `Client_tel_no`) VALUES
(111111111, 'Sarah Johnson', '0198567382'),
(222222222, 'Daniel Anderson', '0183471384'),
(333333333, 'Olivia Brown', '0148254345'),
(444444444, 'William Taylor', '0144772298'),
(555555555, 'Sophia Martinez', '0145322768');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts` (
  `contracts_NUM` int(11) NOT NULL,
  `contracts_info` varchar(255) DEFAULT NULL,
  `Cont_start_date` date DEFAULT NULL,
  `Cont_end_date` date DEFAULT NULL,
  `client_ID` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`contracts_NUM`, `contracts_info`, `Cont_start_date`, `Cont_end_date`, `client_ID`, `project_id`) VALUES
(135792489, 'Contract for interior design', '2022-04-10', '2022-11-10', 444444444, 104),
(246813792, 'Contract for electrical works', '2022-03-30', '2022-09-30', 333333333, 103),
(789457897, 'Contract for construction materials', '2022-01-01', '2022-12-31', 111111111, 101),
(864297532, 'Contract for landscaping', '2022-05-20', '2022-10-20', 555555555, 105),
(987657216, 'Contract for plumbing services', '2022-02-15', '2022-12-15', 222222222, 102);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `Dnumber` int(11) NOT NULL,
  `Dname` varchar(15) NOT NULL,
  `Contract_info` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dnumber`, `Dname`, `Contract_info`) VALUES
(10, 'HR', 'hr@gmail.com'),
(20, 'Finance', 'finance@gmail.com'),
(30, 'Marketing', 'marketing@gmail.com'),
(40, 'IT', 'it@gmail.com'),
(50, 'Operations', 'operations@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `fname`, `lname`, `position`, `contacts`, `p_id`) VALUES
(123456789, 'Gorge', 'Molten', 'Anstasia', 'gorge@gmail.com', 104),
(276543219, 'Jane', 'Smith', 'Developer', 'jane.smith@gmail.com', 102),
(345678912, 'Sami', 'ahmed', 'Ibrahim', 'sam3@gmail.com', 105),
(987654312, 'Davi', 'Johnson', 'Analyst', 'david.johnson@gmail.com', 103),
(987654321, 'John', 'Doe', 'Manager', 'john.doe@gmail.com', 101);

-- --------------------------------------------------------

--
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
CREATE TABLE `factory` (
  `factory_no` int(11) NOT NULL,
  `factory_name` varchar(255) DEFAULT NULL,
  `factory_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factory`
--

INSERT INTO `factory` (`factory_no`, `factory_name`, `factory_info`) VALUES
(1005, 'Cement factory', 'This factory produces high-quality cement using advanced techniques.'),
(1010, 'steel factory', 'This factory supplies reliable steel products and components for construction projects.'),
(1015, 'Processed glass factory', 'This factory provides insulated glass for building facades and windows.'),
(1020, 'Tile and ceramic factory', 'This factory offers high-quality tiles and ceramics for building finishes.'),
(1025, 'Gin wood factoryE', 'This factory provides environmentally protected wood for building structures.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `f_location`
--

DROP TABLE IF EXISTS `f_location`;
CREATE TABLE `f_location` (
  `Factory_no` int(11) NOT NULL,
  `Flocation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `f_location`
--

INSERT INTO `f_location` (`Factory_no`, `Flocation`) VALUES
(1005, 'JAZAN'),
(1010, 'MAKKAH'),
(1015, 'JEDDAH'),
(1020, 'ABHA'),
(1025, 'RIYADH');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `P_number` int(11) NOT NULL,
  `pname` varchar(15) DEFAULT NULL,
  `Pdescription` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `Depart_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`P_number`, `pname`, `Pdescription`, `start_date`, `end_date`, `Depart_no`) VALUES
(101, 'projectM', 'Cooperative Task Management System', '2023-01-01', '2023-04-10', 50),
(102, 'projectQ', 'Online Foreign Language Learning Platform', '2023-02-15', '2023-07-20', 40),
(103, 'projectZ', 'Digital Library Management System', '2023-03-05', '0023-06-15', 30),
(104, 'projectX', 'Corporate Social Networking Application', '2023-07-20', '0023-09-19', 20),
(105, 'projectK', 'ommercial and Entertainment Complex', '2023-08-12', '2023-11-23', 20);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `Rep_number` int(11) NOT NULL,
  `Rep_description` varchar(255) DEFAULT NULL,
  `Rep_creation_date` date DEFAULT NULL,
  `TL_NO` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`Rep_number`, `Rep_description`, `Rep_creation_date`, `TL_NO`, `p_id`) VALUES
(3232, 'Construction progress update', '2022-02-20', 21, 102),
(3344, 'Initial project assessment', '2022-01-10', 20, 101),
(5432, 'Quality inspection report', '2022-03-15', 23, 103),
(6789, 'Post-construction evaluation', '2022-05-25', 25, 105),
(7766, 'Project completion report', '2022-04-30', 24, 104);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `Resource_no` int(11) NOT NULL,
  `Resource_name` varchar(20) DEFAULT NULL,
  `Resource_type` varchar(20) DEFAULT NULL,
  `Resource_info` varchar(150) DEFAULT NULL,
  `factory_number` int(11) NOT NULL,
  `project_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`Resource_no`, `Resource_name`, `Resource_type`, `Resource_info`, `factory_number`, `project_ID`) VALUES
(5557, 'Wood metal', 'Metal', 'a high quality', 1005, 101),
(8766, 'iron metal', 'Metal', 'Used for specific tasks', 1010, 102),
(3255, 'Oil', 'Energy resources', 'it is used for electricity', 1015, 103),
(4499, 'Gas', 'Natural resource', 'the item is natural', 1020, 104),
(8822, 'Coal', 'Natural resource', 'the item is natural', 1025, 105);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `Task_id` int(11) NOT NULL,
  `T_description` varchar(60) DEFAULT NULL,
  `T_start_date` date NOT NULL,
  `T_end_date` date NOT NULL,
  `T_status` varchar(20) NOT NULL,
  `Dno` int(11) NOT NULL,
  `Emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`Task_id`, `T_description`, `T_start_date`, `T_end_date`, `T_status`, `Dno`, `Emp_id`) VALUES
(213, 'Develop new feature', '2022-04-15', '2022-04-30', 'Pending', 40, 123456789),
(232, 'Research market trends', '2022-03-01', '2022-03-10', 'In progress', 30, 987654312),
(234, 'Review code quality', '2022-05-20', '2022-05-25', 'Completed', 50, 345678912),
(324, 'Complete report', '2022-01-10', '2022-01-15', 'In progress', 10, 987654321),
(334, 'Prepare presentation', '2022-02-05', '2022-02-10', 'Completed', 20, 276543219);

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
CREATE TABLE `timeline` (
  `TL_number` int(11) NOT NULL,
  `timeline_date` date DEFAULT NULL,
  `timeline_description` varchar(255) DEFAULT NULL,
  `timeline_end_date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`TL_number`, `timeline_date`, `timeline_description`, `timeline_end_date`, `project_id`) VALUES
(20, '2023-04-10', 'Installation of plumbing and electrical systems', '2023-07-20', 104),
(21, '2023-05-20', 'Final inspection and handover', '2023-09-20', 105),
(23, '2023-03-30', 'Completion of foundation work', '2023-08-15', 103),
(24, '2023-02-15', 'Commencement of construction work', '2023-04-20', 102),
(25, '2023-01-01', 'Preparation of project proposal', '2023-02-20', 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_ID`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`contracts_NUM`),
  ADD KEY `client_ID` (`client_ID`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dnumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`factory_no`);

--
-- Indexes for table `f_location`
--
ALTER TABLE `f_location`
  ADD PRIMARY KEY (`Factory_no`,`Flocation`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`P_number`),
  ADD KEY `Depart_no` (`Depart_no`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Rep_number`),
  ADD KEY `TL_NO` (`TL_NO`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD KEY `factory_number` (`factory_number`),
  ADD KEY `project_ID` (`project_ID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`Task_id`),
  ADD KEY `Dno` (`Dno`),
  ADD KEY `Emp_id` (`Emp_id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`TL_number`),
  ADD KEY `project_id` (`project_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`client_ID`) REFERENCES `client` (`client_ID`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`P_number`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `projects` (`P_number`);

--
-- Constraints for table `f_location`
--
ALTER TABLE `f_location`
  ADD CONSTRAINT `f_location_ibfk_1` FOREIGN KEY (`Factory_no`) REFERENCES `factory` (`factory_no`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`Depart_no`) REFERENCES `department` (`Dnumber`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`TL_NO`) REFERENCES `timeline` (`TL_number`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `projects` (`P_number`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`factory_number`) REFERENCES `factory` (`factory_no`),
  ADD CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`project_ID`) REFERENCES `projects` (`P_number`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `department` (`Dnumber`),
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `timeline`
--
ALTER TABLE `timeline`
  ADD CONSTRAINT `timeline_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`P_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
