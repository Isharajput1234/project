-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 02:30 PM
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
-- Database: `smartrooms`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(50) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `program` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses_converted__1_`
--

CREATE TABLE `courses_converted__1_` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(61) DEFAULT NULL,
  `COL 3` varchar(7) DEFAULT NULL,
  `COL 4` varchar(4) DEFAULT NULL,
  `COL 5` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses_converted__1_`
--

INSERT INTO `courses_converted__1_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('Course_ID', 'Course_Name', 'Program', 'Year', 'Semester'),
('TBC101', 'Computational Thinking and Fundamentals of IT', 'BCA', '1', '1.0'),
('TBC102 ', 'Foundations of Computer Programming', 'BCA', '1', '1.0'),
('TBC103', 'Mathematical Foundation of Computer \nScience ', 'BCA', '1', '1.0'),
('TBC104', 'Professional English Skills ', 'BCA', '1', '1.0'),
('TBC111', 'M(Principles and Practices of \nManagement) ', 'BCA', '1', '1.0'),
('PBC101', 'Digital Productivity Tools for Modern \nWorkplaces Lab ', 'BCA', '1', '1.0'),
('PBC102', 'Computer Programming Laboratory ', 'BCA', '1', '1.0'),
('BBC111', 'Basic Mathematics -I', 'BCA', '1', '1.0'),
('TBD101 ', 'Computational Thinking and Fundamentals \nof IT   ', 'BCA', '1', '1.0'),
('TBD102 ', 'Fundamentals of Python Programming', 'BCA', '1', '1.0'),
('TBD103', 'Mathematical Foundation for AI ', 'BCA', '1', '1.0'),
('TBD104', 'Professional English Skills ', 'BCA', '1', '1.0'),
('TBD111', 'PPM(Principles and Practices of \nManagement)', 'BCA', '1', '1.0'),
('PBD101', 'Digital Productivity Tools for Modern \nWorkplaces Lab ', 'BCA', '1', '1.0'),
('PBD102', 'Fundamentals Python Programming \nLaboratory ', 'BCA', '1', '1.0'),
('TBL101', 'Computational Thinking and \nFundamentals of IT   ', 'BCA', '1', ''),
('TBL102', 'Fundamentals of Python Programming', 'BCA', '1', ''),
('TBL103', 'Mathematical Foundation of Computer Science', 'BCA', '1', ''),
('TBL104', 'Professional English Skills', 'BCA', '1', ''),
('TBL111', 'PPM(Principles and Practices of \nManagement) ', 'BCA', '1', ''),
('PBL101', 'Digital Productivity Tools for Modern \nWorkplaces Laboratory ', 'BCA', '1', ''),
('PBL102', 'Computer Programming Laboratory ', 'BCA', '1', ''),
('TBI101', '', 'BCA', '1', ''),
('TBI102', '', 'BCA', '1', ''),
('CAD101', '', 'BCA', '1', ''),
('TBI104', '', 'BCA', '1', ''),
('TBI111', '', 'BCA', '1', ''),
('PBI101', '', '', '1', ''),
('PBI102', '', '', '1', ''),
('', '', '', '1', ''),
('', '', '', '1', ''),
('', '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `serial_no` int(11) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_clean_final`
--

CREATE TABLE `faculty_clean_final` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(27) DEFAULT NULL,
  `COL 3` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faculty_clean_final`
--

INSERT INTO `faculty_clean_final` (`COL 1`, `COL 2`, `COL 3`) VALUES
('serial_no', 'faculty_name', 'department'),
('1', 'Ms. Geetika Sharma', 'BCA'),
('2', 'Dr. Vandana Rawat', 'BCA'),
('3', 'Dr. Digvijay Tanwar', 'BCA'),
('4', 'Mr. Ankit Tripathi', 'BCA'),
('5', 'Ms. Kanika Thapliyal', 'BCA'),
('6', 'Ms. Aayushi', 'BCA'),
('7', 'Mr. Ravi Raushan', 'BCA'),
('8', 'Ms. Shivani Sharma', 'BCA'),
('9', 'Ms. Jaya Choudhary', 'BCA'),
('10', 'Ms. Tanya Rawal', 'BCA'),
('11', 'Ms. Rashmi Kanyal', 'BCA'),
('12', 'Mr. Krishna Kumar', 'BCA'),
('13', 'Mr. Pratik kumar', 'BCA'),
('14', 'Mr. Abhishek Thapa', 'BCA'),
('15', 'Dr. Ganga', 'BCA'),
('16', 'Ms. Pooja', 'BCA'),
('17', 'Mr. JS Bhatt', 'BCA'),
('18', 'Mr. Raunak kumar', 'BCA'),
('19', 'Ms. Aakriti Singh', 'BCA'),
('20', 'Ms. Afsar Jahan', 'BCA'),
('21', 'Ms. Shikha Thakur', 'BCA'),
('22', 'Mr. Mohd Shuaib', 'BCA'),
('23', 'Mr. Mohit Amoli', 'BCA'),
('24', 'Ms. Swati Pant', 'BCA'),
('25', 'Ms. Ruby Bisht', 'BCA'),
('26', 'Ms. Shruti Saini', 'BCA'),
('27', 'Ms. Juhi', 'BCA'),
('28', 'Ms. Priya', 'BCA'),
('29', 'Ms. Shiwani Bhaskar', 'BCA'),
('30', 'Ms. Ayushi Dwivedi', 'BCA'),
('31', 'Dr. Neeraj Dhiman', 'BCA'),
('32', 'Ms. Alisha', 'BCA'),
('33', 'Mr. Upendra Aswal', 'BCA'),
('34', 'Dr. Varsha Mittal', 'BCA'),
('35', 'Ms. Neha Belwal', 'BCA'),
('36', 'Ms. Gunjan Mehra', 'BCA'),
('37', 'Mr. Abhinav', 'BCA'),
('38', 'Mr. Utsav Kumar', 'BCA'),
('39', 'Gautam Badoni', 'BCA'),
('40', 'Mr. Priyansh Kumar', 'BCA'),
('41', 'Ms. Divya', 'BCA'),
('42', 'Dr. Vartika Agarwal', 'BCA'),
('43', 'Dr. Deepak Gaur', 'BCA'),
('44', 'Ms. Shiwani', 'BCA'),
('45', 'Ms. Shruti Bahuguna', 'BCA'),
('46', 'Ms. Meenakshi', 'BCA'),
('47', 'Mr. Viplaw', 'BCA'),
('48', 'Mr. Raunak Kumar', 'BCA'),
('49', 'Mr. J. Bhatt', 'BCA'),
('50', 'Dr. Sanjay Roka', 'BCA'),
('51', 'Mr. Shobhit Garg', 'BCA'),
('52', 'Ms. Swati', 'BCA'),
('53', 'Mr. Prajjwal Kumar', 'BCA'),
('54', 'Mr. Sidhant Thapliyal', 'BCA'),
('55', 'Dr. Ankur Choudhary', 'BCA'),
('56', 'Dr. Rishi Kumar', 'BCA'),
('57', 'Mr. Nikhil Bisht', 'BCA'),
('58', 'Mr. O. P. Pal', 'BCA'),
('59', 'Ms. Payal Karki', 'BCA'),
('60', 'Ms. Ayushi', 'BCA'),
('61', 'Dr. K. C. Purohit', 'BCA'),
('62', 'Dr. Vivek Tomar (CSE)', 'BCA'),
('63', 'Ms. Jyoti Joshi', 'BCA'),
('64', 'With BSc CS III', 'BCA'),
('65', 'Ms. Rashmi', 'BCA'),
('66', 'Dr. Bhawnesh Kumar', 'BCA'),
('67', 'Dr. Ankit Tomar', 'BCA'),
('68', 'Ms. Alankrita Joshi', 'BCA'),
('69', 'Mr. Yuvraj Joshi', 'BCA'),
('70', 'Mr. Viplaw Sinha', 'BCA'),
('71', 'Mr. Purnendu Agarwal', 'BCA'),
('72', 'Mr. Shubham Kumar', 'BCA'),
('73', 'Through Swayan/NPTEL/iLearn', 'BCA'),
('74', 'Mr. H. S. Negi', 'BCA'),
('75', 'Mr. Kamlesh Kukreti', 'BCA'),
('76', 'Dr. Abhishek CSE', 'BCA'),
('77', 'Mr. Aditya Joshi', 'BCA'),
('78', 'Mr. Yogesh Lohumi', 'BCA'),
('79', 'Dr. Anita Saroj', 'BCA'),
('80', 'Mr. O. P. Pal', 'BCA'),
('81', 'Dr. Jai Bhatnagar', 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` varchar(50) NOT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_type`, `capacity`) VALUES
('AB FF', 'Computer', 130),
('CAD Lab', 'Computer', 130),
('CR 1', 'Classroom', 70),
('CR 11', 'Classroom', 70),
('CR 24', 'Classroom', 70),
('CR 3', 'Classroom', 70),
('CR 4', 'Classroom', 70),
('CR 5', 'Classroom', 70),
('CR 8', 'Classroom', 70),
('CR 9', 'Classroom', 70),
('DL 1', 'Computer', 130),
('DL 2', 'Computer', 130),
('LAB 3', 'Computer', 130),
('LAB 6', 'Computer', 130),
('LT 10', 'Lecture Hall', 100),
('LT 13', 'Lecture Hall', 100),
('LT 14', 'Lecture Hall', 100),
('LT 15', 'Lecture Hall', 100),
('LT 3', 'Lecture Hall', 100),
('LT 4', 'Lecture Hall', 100),
('New Lab 1', 'Computer', 130),
('Param SF', 'Computer', 130),
('Seminar H1', 'Seminar Hall', 120);

-- --------------------------------------------------------

--
-- Table structure for table `room_requests`
--

CREATE TABLE `room_requests` (
  `request_id` int(11) NOT NULL,
  `requester_id` varchar(50) DEFAULT NULL,
  `requester_role` varchar(20) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` varchar(50) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_requests`
--

INSERT INTO `room_requests` (`request_id`, `requester_id`, `requester_role`, `room`, `date`, `time_slot`, `purpose`, `status`, `created_at`) VALUES
(1, 'isharajput9411@gmail.com', 'student', 'CR 24', '0000-00-00', '2025-11-19T14:23 - 2025-11-19T16:23', 'Lecture', 'approved', '2025-11-18 20:53:48'),
(2, 'dakshrajput8433@gmail.com', 'faculty', 'C-101', '2025-11-19', '2025-11-19 17:28 - 2025-11-19 18:01', 'Lecture', 'approved', '2025-11-18 20:59:03'),
(3, 'isharajput9411@gmail.com', 'student', 'CR 3', '0000-00-00', '2025-11-19T15:01 - 2025-11-19T16:00', 'Lecture', 'approved', '2025-11-19 08:44:10'),
(4, 'dakshrajput8433@gmail.com', 'faculty', 'CR 8', '2025-11-19', '2025-11-19 15:01 - 2025-11-19 16:01', 'Lecture', 'approved', '2025-11-19 08:46:03'),
(5, 'isharajput9411@gmail.com', 'student', 'CR 3', '0000-00-00', '2025-11-19T15:01 - 2025-11-19T16:01', 'Lecture', 'approved', '2025-11-19 08:52:59'),
(6, 'isharajput9411@gmail.com', 'student', 'AB FF', '0000-00-00', '2025-11-19T15:01 - 2025-11-19T16:59', 'Practical', 'approved', '2025-11-19 09:13:10'),
(7, 'isharajput9411@gmail.com', 'student', 'LT 13', '0000-00-00', '2025-11-19T16:00 - 2025-11-19T17:01', 'Lecture', 'approved', '2025-11-19 09:55:09'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', '2025-11-19 10:38:19'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 'rejected', '2025-11-19 10:38:23'),
(10, 'isharajput9411@gmail.com', 'student', 'CR 3', '0000-00-00', '2025-11-20T08:09 - 2025-11-20T09:09', 'Lecture', 'approved', '2025-11-19 10:39:50'),
(11, 'dakshrajput8433@gmail.com', 'faculty', 'DL 1', '2025-11-20', '2025-11-20 09:12 - 2025-11-20 10:10', 'Practical', 'approved', '2025-11-19 10:40:42'),
(12, 'isharajput9411@gmail.com', 'student', 'LAB 6', '0000-00-00', '2025-11-20T13:15 - 2025-11-20T15:15', 'Practical', 'approved', '2025-11-19 10:45:55'),
(13, 'dakshrajput8433@gmail.com', 'faculty', 'LT 14', '2025-11-20', '2025-11-20 16:20 - 2025-11-20 18:16', 'Lecture', 'approved', '2025-11-19 10:46:35'),
(14, 'isharajput9411@gmail.com', 'student', 'CR 4', '0000-00-00', '2025-11-20T13:42 - 2025-11-20T15:42', 'Lecture', 'approved', '2025-11-19 13:13:09'),
(15, 'isharajput9411@gmail.com', 'student', 'DL 1', '0000-00-00', '2025-11-20T08:52 - 2025-11-20T09:55', 'Practical', 'rejected', '2025-11-19 13:22:57'),
(16, 'dakshrajput8433@gmail.com', 'faculty', 'CR 9', '2025-11-20', '2025-11-20 09:55 - 2025-11-20 10:55', 'Lecture', 'approved', '2025-11-19 13:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time_slot` varchar(50) DEFAULT NULL,
  `room` varchar(20) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_clean_final`
--

CREATE TABLE `timetable_clean_final` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(8) DEFAULT NULL,
  `COL 4` varchar(12) DEFAULT NULL,
  `COL 5` varchar(33) DEFAULT NULL,
  `COL 6` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timetable_clean_final`
--

INSERT INTO `timetable_clean_final` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`) VALUES
('Day', 'Time', 'Room', 'Faculty', 'Subject', 'Semester'),
('Monday', '09:00-10:00', 'A101', 'Dr. Mehta', 'Programming Fundamentals', 'BCA-1'),
('Monday', '10:00-11:00', 'A102', 'Prof. Gupta', 'Discrete Mathematics', 'BCA-1'),
('Monday', '11:00-12:00', 'B201', 'Dr. Sharma', 'Data Structures', 'BCA-3'),
('Monday', '12:00-01:00', 'LT-13', 'Prof. Patel', 'Database Management Systems', 'BCA-3'),
('Monday', '01:00-02:00', 'LT-15', 'Dr. Khan', 'Operating Systems', 'BCA-5'),
('Monday', '02:00-03:00', 'Seminar1', 'Prof. Kaur', 'Software Engineering', 'BCA-5'),
('Tuesday', '09:00-10:00', 'A101', 'Dr. Iyer', 'Digital Logic Design', 'BCA-1'),
('Tuesday', '10:00-11:00', 'A102', 'Prof. Reddy', 'Computer Organization', 'BCA-1'),
('Tuesday', '11:00-12:00', 'B201', 'Prof. Nair', 'Python Programming', 'BCA-3'),
('Tuesday', '12:00-01:00', 'LT-13', 'Dr. Sharma', 'Data Communication', 'BCA-3'),
('Tuesday', '01:00-02:00', 'Lab1', 'Dr. Rao', 'Artificial Intelligence', 'BCA-5'),
('Tuesday', '02:00-03:00', 'LT-15', 'Prof. Kapoor', 'Computer Networks', 'BCA-5'),
('Wednesday', '09:00-10:00', 'A101', 'Dr. Mehta', 'Mathematics for Computing', 'BCA-1'),
('Wednesday', '10:00-11:00', 'B201', 'Prof. Kaur', 'English Communication Skills', 'BCA-1'),
('Wednesday', '11:00-12:00', 'LT-13', 'Dr. Sharma', 'Design and Analysis of Algorithms', 'BCA-3'),
('Wednesday', '12:00-01:00', 'LT-15', 'Prof. Nair', 'Web Development', 'BCA-3'),
('Wednesday', '01:00-02:00', 'Seminar1', 'Dr. Khan', 'Mobile Application Development', 'BCA-5'),
('Wednesday', '02:00-03:00', 'Lab1', 'Prof. Joshi', 'Compiler Design', 'BCA-5'),
('Thursday', '09:00-10:00', 'A102', 'Dr. Mehta', 'Environmental Studies', 'BCA-1'),
('Thursday', '10:00-11:00', 'B201', 'Prof. Gupta', 'C Language', 'BCA-1'),
('Thursday', '11:00-12:00', 'LT-13', 'Dr. Rao', 'Computer Graphics', 'BCA-3'),
('Thursday', '12:00-01:00', 'Seminar1', 'Prof. Kaur', 'Operating Systems Lab', 'BCA-3'),
('Thursday', '01:00-02:00', 'Lab1', 'Prof. Singh', 'Machine Learning', 'BCA-5'),
('Thursday', '02:00-03:00', 'LT-15', 'Prof. Kapoor', 'Cloud Computing', 'BCA-5'),
('Friday', '09:00-10:00', 'A101', 'Dr. Mehta', 'Introduction to IT', 'BCA-1'),
('Friday', '10:00-11:00', 'A102', 'Prof. Gupta', 'Statistics', 'BCA-1'),
('Friday', '11:00-12:00', 'B201', 'Dr. Sharma', 'Java Programming', 'BCA-3'),
('Friday', '12:00-01:00', 'LT-13', 'Prof. Patel', 'DBMS Lab', 'BCA-3'),
('Friday', '01:00-02:00', 'Lab1', 'Dr. Khan', 'Cyber Security', 'BCA-5'),
('Friday', '02:00-03:00', 'Seminar1', 'Prof. Kaur', 'Project Development', 'BCA-5'),
('Saturday', '09:00-10:00', 'A101', 'Prof. Joshi', 'Workshop on Excel', 'BCA-1'),
('Saturday', '10:00-11:00', 'B201', 'Dr. Iyer', 'Workshop on Python', 'BCA-3'),
('Saturday', '11:00-12:00', 'LT-13', 'Prof. Kapoor', 'Workshop on AI', 'BCA-5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','faculty','hod') NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`) VALUES
(1, 'isharajput9411@gmail.com', '1234', 'student', 'Isha'),
(2, 'dakshrajput8433@gmail.com', '1234', 'faculty', 'Daksh'),
(3, 'kanurajput4182@gmail.com', '1234', 'hod', 'Kanu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_requests`
--
ALTER TABLE `room_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `room_requests`
--
ALTER TABLE `room_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
