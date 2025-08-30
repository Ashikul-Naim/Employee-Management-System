-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 04:46 PM
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
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `ainfo`
--

CREATE TABLE `ainfo` (
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ainfo`
--

INSERT INTO `ainfo` (`email`, `password`) VALUES
('jerin@gmail.com', '2002aBc/'),
('e@gmail.com', '2002aBc/'),
('admin@example.com', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date DEFAULT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `attendance_date`, `status`) VALUES
(1, 2, '2025-05-08', 'Present'),
(2, 7, '2025-05-09', 'Present'),
(3, 4, '2025-05-12', 'Pending'),
(4, 7, '2025-05-12', 'Present'),
(5, 7, '2025-05-13', 'Present'),
(6, 1, '2025-05-13', 'Pending'),
(7, 1, '2025-05-24', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `einfo`
--

CREATE TABLE `einfo` (
  `username` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `einfo`
--

INSERT INTO `einfo` (`username`, `phone`, `email`, `password`) VALUES
('mumu', 1775975854, 'mumu@gmail.com', '2002aBc/');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `username`, `phone`, `email`, `password`, `profile_image`, `address`, `designation`, `joining_date`, `department`) VALUES
(1, 'Eka', 1718162584, 'k@example.com', '2002aBc/', 'uploads/1746728496_eka.jpg', 'House 10, Road 10\r\nSector 12, Uttara 1230\r\nDhaka, Bangladesh', 'Software Engineering', '2025-05-01', 'IT'),
(2, 'Era', 1674204352, 'e@example.com', '2002aBc/', NULL, 'House 113, Road 4\r\nMohakhali, Dhaka 1212\r\nBangladesh', 'Software Enginnering', '2025-04-01', 'IT'),
(5, 'Awishy', 1741953408, 'a@example.com', '2002aBc/', NULL, 'Mirpur 01, Dhaka, Bangladesh', 'Software Engineer', '2025-05-12', 'IT'),
(6, 'Mahbuba', 1741953407, 'z@example.com', '2002aBc/', NULL, 'Mirpur 01, Dhaka, Bangladesh', 'Software Engineer', '2025-05-13', 'IT'),
(7, 'Mumu', 1741953407, 'm@example.com', '2002aBc/', NULL, 'Mirpur 01, Dhaka, Bangladesh', 'Software Engineer', '2025-05-01', 'IT'),
(8, 'Sumaya', 1772046134, 'n@example.com', '2002aBc/', NULL, 'South Banasree, Dhaka', 'Software Engineer', '2025-05-14', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `employee_id`, `subject`, `message`, `status`, `submitted_at`) VALUES
(6, 7, 'Request for One-Day Personal Leave', 'Apologies for the inconvenience this may occur', 'Approved', '2025-05-09 17:39:16'),
(7, 2, 'Sick Leave', 'koiuygfdxvcbnm', 'Rejected', '2025-05-12 13:52:56'),
(8, 2, 'Request for One-Day Personal Leave', 'lkikhjgbcv', 'Approved', '2025-05-12 14:04:07'),
(9, 2, 'Request for One-Day Personal Leave', 'lkikhjgbcv', 'Approved', '2025-05-12 14:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `message`, `created_at`) VALUES
(1, 'Eid_Ul_Adha', 'The office will remain close from 05.06.2025 to 11.06.2025 and reopen from 12.06.2025', '2025-05-08 19:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `feedback` text NOT NULL,
  `report_date` date NOT NULL,
  `task_description` varchar(255) DEFAULT NULL,
  `response_time` varchar(50) DEFAULT NULL,
  `communication_clarity` varchar(50) DEFAULT NULL,
  `service_quality` varchar(50) DEFAULT NULL,
  `flexibility` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `employee_id`, `feedback`, `report_date`, `task_description`, `response_time`, `communication_clarity`, `service_quality`, `flexibility`) VALUES
(0, 7, 'Fair Enough!', '2025-05-12', 'Design the latest software', 'Average', 'Average', 'Average', 'Average');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `yearly_bonus` decimal(10,2) DEFAULT 0.00,
  `salary_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `salary_date` date DEFAULT NULL,
  `fine_fee` decimal(10,2) DEFAULT NULL,
  `medical_fee` decimal(10,2) DEFAULT NULL,
  `house_rent` decimal(10,2) DEFAULT NULL,
  `other_costs` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `employee_id`, `amount`, `yearly_bonus`, `salary_updated_at`, `salary_date`, `fine_fee`, `medical_fee`, `house_rent`, `other_costs`) VALUES
(0, 0, 0, 0.00, '2025-04-27 08:21:46', NULL, NULL, NULL, NULL, NULL),
(2, 2, 740, 4.31, '2025-05-08 12:34:58', '2025-05-08', 0.00, 20.00, 15.00, 0.50),
(4, 1, 501, 0.00, '2025-04-27 08:15:00', NULL, NULL, NULL, NULL, NULL),
(5, 1, 501, 0.00, '2025-04-27 08:15:00', NULL, NULL, NULL, NULL, NULL),
(7, 7, 702, 0.50, '2025-05-12 16:21:35', '2025-05-07', 0.00, 0.00, 20.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `task_description` text NOT NULL,
  `task_status` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `assign_date` date NOT NULL DEFAULT curdate(),
  `due_date` date DEFAULT NULL,
  `status` enum('pending','completed') DEFAULT 'pending'
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `employee_id`, `task_description`, `task_status`, `description`, `assign_date`, `due_date`, `status`) VALUES
(15, 3, '', '', 'Design the latest software', '2025-05-12', '2025-05-11', 'pending'),
(16, 7, '', '', 'Design the latest software', '2025-05-12', '2025-05-12', 'completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
