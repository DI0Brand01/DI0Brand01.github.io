-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 05:31 AM
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
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `row_index` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `course_section` int(11) NOT NULL,
  `course_registered_hours` int(11) NOT NULL,
  `course_start_time` varchar(10) NOT NULL,
  `course_end_time` varchar(10) NOT NULL,
  `course_days` varchar(10) NOT NULL,
  `course_teacher` varchar(150) NOT NULL,
  `course_hall` varchar(100) NOT NULL,
  `course_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`row_index`, `course_id`, `course_name`, `course_section`, `course_registered_hours`, `course_start_time`, `course_end_time`, `course_days`, `course_teacher`, `course_hall`, `course_type`) VALUES
(1, 901110, 'Computer 2 for IT students', 6, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Akram Arif Nayef Mustafa', '104 IT', 'attendance'),
(2, 901110, 'Computer 2 for IT students', 7, 3, '2.30 PM', '4.00 PM', 'Sun Tue', 'Akram Arif Nayef Mustafa', '104 IT', 'attendance'),
(3, 901111, 'Lab Computer 2 for IT students', 12, 1, '2.30 PM', '4.30 PM', 'Sun', 'Ahmed Abdel Muti Mustafa Al-Turk', '1 L/IT', 'attendance'),
(4, 901111, 'Lab Computer 2 for IT students', 14, 1, '2.30 PM', '4.30 PM', 'Tue', 'Ahmed Abdel Muti Mustafa Al-Turk', '3 L/IT', 'attendance'),
(5, 901131, 'Computer 2 for scientific majors', 1, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Rami Issa Abdel Latif Jaradat', '101 IT', 'both'),
(6, 901131, 'Computer 2 for scientific majors', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Akram Arif Nayef Mustafa', '104 IT', 'both'),
(7, 901200, 'Discrete mathematics', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Omar Ali Odeh Shatnawi', '203 IT', 'attendance'),
(8, 901200, 'Discrete mathematics', 3, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Muhammad Nasser Mahmoud Alimat', '3 L/IT', 'attendance'),
(9, 901200, 'Discrete mathematics', 4, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Mazen Salem Hamad Al-Zyoud', '104 IT', 'attendance'),
(10, 901200, 'Discrete mathematics', 5, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Najah Mithqal Ali Al-Shanableh', '103 IT', 'attendance'),
(11, 901200, 'Discrete mathematics', 6, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Muhammad Nasser Mahmoud Alimat', '202 IT', 'attendance'),
(12, 901210, 'Object-oriented programming', 1, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Muhammad Nasser Mahmoud Alimat', '103 IT', 'attendance'),
(13, 901210, 'Object-oriented programming', 2, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Rami Issa Abdel Latif Jaradat', '101 IT', 'attendance'),
(14, 901210, 'Object-oriented programming', 5, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Laith Muhammad Qasim Abu Aleqa', '101 IT', 'attendance'),
(15, 901210, 'Object-oriented programming', 9, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Muhammad Nasser Mahmoud Alimat', '101 IT', 'attendance'),
(16, 901210, 'Object-oriented programming', 11, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Rami Issa Abdel Latif Jaradat', '310Eco', 'attendance'),
(17, 901210, 'Object-oriented programming', 12, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Muhammad Saeed Mansour Al-Bashir', '309Eco', 'attendance'),
(18, 901210, 'Object-oriented programming', 13, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Ashraf Muhammad Salman Al-Aoun', '310Eco', 'attendance'),
(19, 901210, 'Object-oriented programming', 14, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Muhammad Nasser Mahmoud Alimat', '310Eco', 'attendance'),
(20, 901210, 'Object-oriented programming', 16, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Laith Muhammad Qasim Abu Aleqa', '102 IT', 'attendance'),
(21, 901210, 'Object-oriented programming', 17, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Ashraf Muhammad Salman Al-Aoun', '204 IT', 'attendance'),
(22, 901211, 'Programming in Java language', 1, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Laith Muhammad Qasim Abu Aleqa', '204 IT', 'both'),
(23, 901211, 'Programming in Java language', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Laith Muhammad Qasim Abu Aleqa', '105 IT', 'both'),
(24, 901212, 'Programming in Python language', 1, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Jehad Qubail Oodeh Al-Nhoud', '104 IT', 'both'),
(25, 901212, 'Programming in Python language', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Jehad Qubail Oodeh Al-Nhoud', '203 IT', 'both'),
(26, 901212, 'Programming in Python language', 3, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Faisal Suleiman Saleh Al-Saqqar', 'Postgraduate Hall', 'both'),
(27, 901214, 'Lab Object-oriented programming', 1, 1, '9.30 AM', '11.30 AM', 'Thu', 'Raed Riad Bashir Abdel-Al', '2 IT', 'attendance'),
(28, 901214, 'Lab Object-oriented programming', 2, 1, '11.30 AM', '1.30 PM', 'Thu', 'Raed Riad Bashir Abdel-Al', '2 IT', 'attendance'),
(29, 901214, 'Lab Object-oriented programming', 3, 1, '2.30 PM', '4.30 PM', 'Tue', 'Raed Riad Bashir Abdel-Al', '1 L/IT', 'attendance'),
(30, 901214, 'Lab Object-oriented programming', 4, 1, '2.30 PM', '4.30 PM', 'Wed', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(31, 901214, 'Lab Object-oriented programming', 5, 1, '2.30 PM', '4.30 PM', 'Sun', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(32, 901214, 'Lab Object-oriented programming', 6, 1, '2.30 PM', '4.30 PM', 'Mon', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(33, 901214, 'Lab Object-oriented programming', 7, 1, '10.30 AM', '12.30 AM', 'Wed', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(34, 901214, 'Lab Object-oriented programming', 8, 1, '8.30 AM', '10.30 AM', 'Sun', 'Raed Riad Bashir Abdel-Al', '1 L/IT', 'attendance'),
(35, 901214, 'Lab Object-oriented programming', 12, 1, '10.30 AM', '12.30 AM', 'Mon', 'Islam Mahmoud Alyan Al-Dalabih', '10 IT', 'attendance'),
(36, 901214, 'Lab Object-oriented programming', 13, 1, '12.30 AM', '2.30 PM', 'Mon', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(37, 901214, 'Lab Object-oriented programming', 14, 1, '8.30 AM', '10.30 AM', 'Tue', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(38, 901214, 'Lab Object-oriented programming', 15, 1, '10.30 AM', '12.30 AM', 'Tue', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(39, 901214, 'Lab Object-oriented programming', 16, 1, '12.30 AM', '2.30 PM', 'Tue', 'Ahmed Abdel Muti Mustafa Al-Turk', '3 L/IT', 'attendance'),
(40, 901214, 'Lab Object-oriented programming', 17, 1, '2.30 PM', '4.30 PM', 'Tue', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(41, 901214, 'Lab Object-oriented programming', 18, 1, '8.30 AM', '10.30 AM', 'Wed', 'Raed Riad Bashir Abdel-Al', '1 L/IT', 'attendance'),
(42, 901214, 'Lab Object-oriented programming', 19, 1, '12.30 AM', '2.30 PM', 'Wed', 'Ahmed Abdel Muti Mustafa Al-Turk', '1 L/IT', 'attendance'),
(43, 901214, 'Lab Object-oriented programming', 20, 1, '2.30 PM', '4.30 PM', 'Sun', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(44, 901214, 'Lab Object-oriented programming', 22, 1, '2.30 PM', '4.30 PM', 'Tue', 'Sahar Muhammad Fadi Al-Hassan', '1 IT', 'attendance'),
(45, 901214, 'Lab Object-oriented programming', 23, 1, '2.30 PM', '4.30 PM', 'Wed', 'Ahmed Abdel Muti Mustafa Al-Turk', '2 L/IT', 'attendance'),
(46, 901214, 'Lab Object-oriented programming', 24, 1, '2.30 PM', '4.30 PM', 'Mon', 'Ahmed Abdel Muti Mustafa Al-Turk', '2 L/IT', 'attendance'),
(47, 901214, 'Lab Object-oriented programming', 25, 1, '2.30 PM', '4.30 PM', 'Sun', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(48, 901214, 'Lab Object-oriented programming', 26, 1, '2.30 PM', '4.30 PM', 'Wed', 'Islam Mahmoud Alyan Al-Dalabih', '9 IT', 'attendance'),
(49, 901220, 'Computer logic design', 1, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Wael Waheed Ali Al-Qassas', '101 IT', 'both'),
(50, 901220, 'Computer logic design', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Wael Waheed Ali Al-Qassas', '102 IT', 'both'),
(51, 901220, 'Computer logic design', 3, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Wael Waheed Ali Al-Qassas', '103 IT', 'both '),
(52, 901240, 'Data Structure', 1, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Suhair Ahmed Muhammad Bani Atta', '103 IT', 'both'),
(53, 901240, 'Data Structure', 2, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Suhair Ahmed Muhammad Bani Atta', '202 IT', 'both'),
(54, 901240, 'Data Structure', 3, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Suhair Ahmed Muhammad Bani Atta', '102 IT', 'both '),
(55, 901240, 'Data Structure', 4, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Rami Issa Abdel Latif Jaradat', '310Eco', 'both'),
(56, 901300, 'Computation theory', 1, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Faisal Suleiman Saleh Al-Saqqar', '109 IT', 'both '),
(57, 901300, 'Computation theory', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Faisal Suleiman Saleh Al-Saqqar', '102 IT', 'both'),
(58, 901320, 'Computer architecture', 1, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Ismail Muhammad Ali Ababna', '204 IT', 'attendance'),
(59, 901320, 'Computer architecture', 2, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Ismail Muhammad Ali Ababna', '204 IT', 'attendance'),
(60, 901325, 'Computer networks', 2, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Rabah Muhammad Ahmad Al-Shaboul', '204 IT', 'attendance'),
(61, 901325, 'Computer networks', 3, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Rabah Muhammad Ahmad Al-Shaboul', '203 IT', 'attendance'),
(62, 901325, 'Computer networks', 4, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Rabah Muhammad Ahmad Al-Shaboul', '201 IT', 'attendance'),
(63, 901327, 'Wireless and mobile computing', 1, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Khaled Muhammad Abd al-Rahman Buttiha', '104 IT', 'attendance'),
(64, 901330, 'Databases', 4, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Mufleh Muhammad Mufleh Al-Dhiabat', '103 IT', 'attendance'),
(65, 901330, 'Databases', 5, 3, '2.30 PM', '4.00 PM', 'Sun Tue', 'Mufleh Muhammad Mufleh Al-Dhiabat', '103 IT', 'attendance'),
(66, 901330, 'Databases', 6, 3, '2.30 PM', '4.00 PM', 'Mon Wed', 'Mufleh Muhammad Mufleh Al-Dhiabat', '103 IT', 'attendance'),
(67, 901330, 'Databases', 7, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Muhammad Saeed Mansour Al-Bashir', '309Eco', 'attendance'),
(68, 901332, 'OS', 1, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Ashraf Muhammad Salman Al-Aoun', '101 IT', 'attendance'),
(69, 901332, 'OS', 2, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Ashraf Muhammad Salman Al-Aoun', '103 IT', 'attendance'),
(70, 901340, 'Analysis and design of algorithms', 1, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Mazen Salem Hamad Al-Zyoud', '104 IT', 'attendance'),
(71, 901341, 'Software Engineering', 2, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Omar Ali Odeh Shatnawi', '106 IT', 'attendance'),
(72, 901341, 'Software Engineering', 3, 3, '2.30 PM', '4.00 PM', 'Mon Wed', 'Omar Ali Odeh Shatnawi', '102 IT', 'attendance'),
(73, 901411, 'PHP', 2, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Jehad Qubail Oodeh Al-Nhoud', 'Postgraduate Hall', 'both'),
(74, 901440, 'Compilers', 1, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Faisal Suleiman Saleh Al-Saqqar', 'Postgraduate Hall', 'attendance'),
(75, 901460, 'CyberSecurity and Order', 1, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Khaled Muhammad Abd al-Rahman Buttiha', '105 IT', 'attendance'),
(76, 901470, 'Artificial intelligence and expert systems', 1, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Muhammad Saeed Mansour Al-Bashir', '309Eco', 'attendance'),
(77, 901470, 'Artificial intelligence and expert systems', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Muhammad Saeed Mansour Al-Bashir', '309Eco', 'attendance'),
(78, 901770, 'Advanced AI', 1, 3, '2.30 PM', '5.30 PM', 'Sun', 'Najah Mithqal Ali Al-Shanableh', '101 IT', 'attendance'),
(79, 901780, 'Advanced computer architecture', 1, 3, '2.30 PM', '5.30 PM', 'Mon', 'Ismail Muhammad Ali Ababna', '101 IT', 'attendance'),
(102, 902130, 'Basics of programming for businesses', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Khaled Mahmoud Salim Faqih', '101 IT', 'attendance'),
(103, 902201, 'Applied numerical methods', 3, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Fatima Taha Muhammad Al-Khawalda', '109 IT', 'attendance'),
(104, 902201, 'Applied numerical methods', 4, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Fatima Taha Muhammad Al-Khawalda', '109 IT', 'attendance'),
(105, 902210, 'Programming in Visual BASIC', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Saif Al-Din Ahmed Ali Al-Rababaa', '188QB', 'both'),
(106, 902210, 'Programming in Visual BASIC', 3, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Saif Al-Din Ahmed Ali Al-Rababaa', '183QB', '*both '),
(107, 902210, 'Programming in Visual BASIC', 4, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Saif Al-Din Ahmed Ali Al-Rababaa', '1 mus', 'both'),
(108, 902333, 'Information retrieval', 2, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Saif Al-Din Ahmed Ali Al-Rababaa', '3 mus', 'attendance'),
(109, 902350, 'HTML', 2, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Fayez Salim Suleiman Al-Khazala', '203 IT', 'both '),
(110, 902350, 'HTML', 5, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Fayez Salim Suleiman Al-Khazala', '201 IT', 'both'),
(111, 902350, 'HTML', 7, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Khaled Mahmoud Salim Faqih', '102 IT', 'both'),
(112, 902350, 'HTML', 8, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Fayez Salim Suleiman Al-Khazala', '201 IT', 'both'),
(113, 902352, 'Internet Application Development(1)', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Fayez Salim Suleiman Al-Khazala', '201 IT', 'attendance'),
(114, 902353, 'management Databases', 2, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Baraa Ahmed Irshid Shdeifat', '1 mus', 'attendance'),
(115, 902354, 'Lab HTML', 1, 1, '2.30 PM', '4.30 PM', 'Sun', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '3 L/IT', 'attendance'),
(116, 902354, 'Lab HTML', 2, 1, '2.30 PM', '4.30 PM', 'Mon', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '3 L/IT', 'attendance'),
(117, 902354, 'Lab HTML', 4, 1, '12.30 AM', '2.30 PM', 'Sun', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '3 L/IT', 'attendance'),
(118, 902354, 'Lab HTML', 5, 1, '12.30 AM', '2.30 PM', 'Mon', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '2 L/IT', 'attendance'),
(119, 902354, 'Lab HTML', 6, 1, '2.30 PM', '4.30 PM', 'Tue', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '2 L/IT', 'attendance'),
(120, 902354, 'Lab HTML', 7, 1, '2.30 PM', '4.30 PM', 'Wed', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '3 L/IT', 'attendance'),
(121, 902354, 'Lab HTML', 8, 1, '12.30 AM', '2.30 PM', 'Sun', 'Raed Dhiyab Awad Al-Harafsheh', '2 L/IT', 'attendance'),
(122, 902354, 'Lab HTML', 9, 1, '2.30 PM', '4.30 PM', 'Sun', 'Raed Dhiyab Awad Al-Harafsheh', '2 L/IT', 'attendance'),
(123, 902354, 'Lab HTML', 10, 1, '2.30 PM', '4.30 PM', 'Wed', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '6 IT', 'attendance'),
(124, 902355, 'Human-computer interaction', 5, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Jihad Muhammad Suleiman Amlawi', '187QB', 'both'),
(125, 902356, 'management of computer networks', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Atallah Mahmoud Awad Al-Shatnawi', 'Postgraduate Hall', 'both'),
(126, 902371, 'Basics of smart systems', 3, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Anas Jibreen Atiya Hussein', '11 IT', 'both'),
(127, 902431, 'Data warehouses', 1, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Muhammad Khaled Ahmed Al-Sharaa', '3 L/IT', 'attendance'),
(128, 902450, 'E-Commerce And E-government', 4, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Badr Mithqal Saud Al-Fawaz', '183QB', '*both '),
(129, 902450, 'E-Commerce And E-government', 5, 3, '2.30 PM', '4.00 PM', 'Sun Tue', 'Badr Mithqal Saud Al-Fawaz', '183QB', '*both '),
(130, 902451, 'Database application development', 3, 3, '2.30 PM', '4.00 PM', 'Sun Tue', 'Anas Jibreen Atiya Hussein', '203 IT', 'both'),
(131, 902451, 'Database application development', 4, 3, '2.30 PM', '4.00 PM', 'Mon Wed', 'Anas Jibreen Atiya Hussein', '202 IT', 'both'),
(132, 904221, 'Computer networks for businesses', 2, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Wafa Salibi Ghamar Al-Sharafat', '201 IT', 'both'),
(133, 904233, 'Principles of information systems', 3, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Wafa Salibi Ghamar Al-Sharafat', '202 IT', 'mus'),
(134, 904233, 'Principles of information systems', 7, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Wafa Salibi Ghamar Al-Sharafat', '202 IT', 'attendance'),
(135, 904233, 'Principles of information systems', 8, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Wafa Salibi Ghamar Al-Sharafat', '202 IT', 'attendance'),
(136, 904251, 'HR management systems', 2, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Jihad Muhammad Suleiman Amlawi', '105 IT', 'both'),
(137, 904251, 'HR management systems', 3, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Fatima Taha Muhammad Al-Khawalda', '109 IT', 'both'),
(138, 904332, 'basics OS', 2, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Anas Jibreen Atiya Hussein', '11 IT', 'attendance'),
(139, 904341, 'Systems analysis and design', 4, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Muhammad Khaled Ahmed Al-Sharaa', '201 IT', 'both'),
(140, 904341, 'Systems analysis and design', 5, 3, '1.00 PM', '2.30 PM', 'Mon Wed', 'Muhammad Khaled Ahmed Al-Sharaa', '202 IT', 'both'),
(141, 904341, 'Systems analysis and design', 6, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Muhammad Ahmed Raji Al-Kufahi', '201 IT', 'both '),
(142, 904341, 'Systems analysis and design', 7, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Muhammad Ahmed Raji Al-Kufahi', '203 IT', 'both'),
(143, 904351, 'Operations research for business', 2, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Khaled Mahmoud Salim Faqih', '105 IT', 'attendance'),
(144, 904351, 'Operations research for business', 3, 3, '1.00 PM', '2.30 PM', 'Sun Tue', 'Khaled Mahmoud Salim Faqih', '202 IT', 'attendance'),
(145, 904354, 'Computerized accounting information systems', 1, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Muhammad Ahmed Raji Al-Kufahi', '102 IT', 'attendance'),
(146, 904356, 'management of IT projects', 3, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Muhammad Hamed Mahasen Al-Sharia', '105 IT', 'attendance'),
(147, 904370, 'knowledge management', 4, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Baraa Ahmed Irshid Shdeifat', '204 IT', 'attendance'),
(148, 904370, 'knowledge management', 5, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Baraa Ahmed Irshid Shdeifat', '203 IT', 'attendance'),
(149, 904380, 'Ethical, legal, and professional issues in computing', 3, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Fatima Taha Muhammad Al-Khawalda', '109 IT', 'attendance'),
(150, 904457, 'E-Marketing', 2, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Baraa Ahmed Irshid Shdeifat', '201 IT', 'both'),
(151, 904459, 'Computerized purchasing and warehouse information systems', 1, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Muhammad Hamed Mahasen Al-Sharia', '105 IT', 'both'),
(152, 904471, 'Decision support systems', 2, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Muhammad Hamed Mahasen Al-Sharia', '105 IT', 'both'),
(153, 904481, 'Information systems protection', 3, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Muhammad Hamed Mahasen Al-Sharia', '105 IT', 'attendance'),
(154, 905700, 'IT technology in education', 1, 3, '2.30 PM', '5.30 PM', 'Tue', 'Jihad Muhammad Suleiman Amlawi', '102 IT', 'attendance'),
(155, 905741, 'Educational graphic design', 1, 3, '2.30 PM', '5.30 PM', 'Sun', 'Atallah Mahmoud Awad Al-Shatnawi', 'Postgraduate Hall', 'attendance'),
(156, 905742, 'Production of electronic educational resources', 1, 3, '2.30 PM', '5.30 PM', 'Wed', 'Badr Mithqal Saud Al-Fawaz', '201 IT', 'attendance'),
(157, 905750, 'Multimedia in education', 1, 3, '2.30 PM', '5.30 PM', 'Mon', 'Atallah Mahmoud Awad Al-Shatnawi', 'Postgraduate Hall', 'attendance'),
(80, 906311, 'security OS', 1, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Areej Rateb Mohammed Al-Sharman', '6 IT', 'attendance'),
(81, 906312, 'Lab security OS', 2, 1, '2.30 PM', '4.30 PM', 'Mon', 'Raed Dhiyab Awad Al-Harafsheh', '1 L/IT', 'attendance'),
(82, 906312, 'Lab security OS', 3, 1, '2.30 PM', '4.30 PM', 'Tue', 'Raed Dhiyab Awad Al-Harafsheh', '9 IT', 'attendance'),
(83, 906313, 'Information security and Databases', 1, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Areej Rateb Mohammed Al-Sharman', '103 IT', 'attendance'),
(84, 906313, 'Information security and Databases', 2, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Areej Rateb Mohammed Al-Sharman', '102 IT', 'attendance'),
(85, 906314, 'Lab Information security and Databases', 2, 1, '2.30 PM', '4.30 PM', 'Wed', 'Raed Dhiyab Awad Al-Harafsheh', '1 L/IT', 'attendance'),
(86, 906314, 'Lab Information security and Databases', 3, 1, '8.00 AM', '10.00 AM', 'Tue', 'Raed Dhiyab Awad Al-Harafsheh', '2 L/IT', 'attendance'),
(87, 906414, 'Network monitoring and documentation', 1, 3, '10.00 AM', '11.30 AM', 'Sun Tue', 'Areej Rateb Mohammed Al-Sharman', '10 IT', 'attendance'),
(88, 908100, 'Data science basics', 1, 3, '8.30 AM', '10.00 AM', 'Sun Tue', 'Suhair Ahmed Muhammad Bani Atta', '102 IT', 'both'),
(89, 908100, 'Data science basics', 2, 3, '8.30 AM', '10.00 AM', 'Mon Wed', 'Suhair Ahmed Muhammad Bani Atta', '104 IT', 'both'),
(90, 908101, 'Statistics for data science', 2, 3, '11.30 AM', '1.00 PM', 'Mon Wed', 'Aayat Tayseer Rashid Al-Munizel', '310Eco', 'attendance'),
(91, 908302, 'Programming for data science in R', 2, 3, '10.00 AM', '11.30 AM', 'Mon Wed', 'Najah Mithqal Ali Al-Shanableh', '183QB', '*both'),
(92, 908303, 'Machine learning', 1, 3, '11.30 AM', '1.00 PM', 'Sun Tue', 'Najah Mithqal Ali Al-Shanableh', '204 IT', 'both'),
(158, 90113100, 'Lab Computer-2 (for scientific majors)', 1, 0, '1.00 PM', '2.30 PM', 'Sun', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(159, 90113100, 'Lab Computer-2 (for scientific majors)', 2, 0, '8.30 AM', '10.00 AM', 'Mon', 'Areej Suleiman Ibrahim Abu Farhan', '1 IT', 'attendance'),
(160, 90113100, 'Lab Computer-2 (for scientific majors)', 3, 0, '2.30 PM', '4.00 PM', 'Mon', 'Asmaa Awad Ali Al-Gizawi', '1 IT', 'attendance'),
(161, 90113100, 'Lab Computer-2 (for scientific majors)', 4, 0, '8.30 AM', '10.00 AM', 'Wed', 'Ahmed Tawfiq Ahmed Al-Asmar', '7 IT', 'attendance'),
(162, 90113100, 'Lab Computer-2 (for scientific majors)', 5, 0, '10.00 AM', '11.30 AM', 'Wed', 'Asmaa Awad Ali Al-Gizawi', '10 IT', 'attendance'),
(163, 90113100, 'Lab Computer-2 (for scientific majors)', 6, 0, '2.30 PM', '4.00 PM', 'Wed', 'Asmaa Awad Ali Al-Gizawi', '10 IT', 'attendance'),
(164, 90121100, 'Lab Programming in Java language', 1, 0, '2.30 PM', '4.00 PM', 'Sun', 'Wojdan Talaq Raddad Al-Salama', '4 IT', 'attendance'),
(165, 90121100, 'Lab Programming in Java language', 3, 0, '8.30 AM', '10.00 AM', 'Wed', 'Wojdan Talaq Raddad Al-Salama', '1 IT', 'attendance'),
(166, 90121100, 'Lab Programming in Java language', 4, 0, '10.00 AM', '11.30 AM', 'Wed', 'Areej Suleiman Ibrahim Abu Farhan', '1 IT', 'attendance'),
(167, 90121100, 'Lab Programming in Java language', 5, 0, '11.30 AM', '1.00 PM', 'Sun', 'Wojdan Talaq Raddad Al-Salama', '1 IT', 'attendance'),
(168, 90121100, 'Lab Programming in Java language', 6, 0, '1.00 PM', '2.30 PM', 'Wed', 'Wojdan Talaq Raddad Al-Salama', '9 IT', 'attendance'),
(169, 90121200, 'Lab Programming in Python language', 1, 0, '8.30 AM', '10.00 AM', 'Sun', 'Ahmed Tawfiq Ahmed Al-Asmar', '7 IT', 'attendance'),
(170, 90121200, 'Lab Programming in Python language', 2, 0, '2.30 PM', '4.00 PM', 'Sun', 'Ahmed Tawfiq Ahmed Al-Asmar', '7 IT', 'attendance'),
(171, 90121200, 'Lab Programming in Python language', 3, 0, '8.30 AM', '10.00 AM', 'Mon', 'Ahmed Tawfiq Ahmed Al-Asmar', '7 IT', 'attendance'),
(172, 90121200, 'Lab Programming in Python language', 4, 0, '2.30 PM', '4.00 PM', 'Mon', 'Areej Youssef Issa diaspora', '10 IT', 'attendance'),
(173, 90121200, 'Lab Programming in Python language', 5, 0, '8.30 AM', '10.00 AM', 'Tue', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '1 L/IT', 'attendance'),
(174, 90121200, 'Lab Programming in Python language', 6, 0, '1.00 PM', '2.30 PM', 'Tue', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', '1 IT', 'attendance'),
(175, 90121200, 'Lab Programming in Python language', 7, 0, '2.30 PM', '4.00 PM', 'Tue', 'Areej Youssef Issa diaspora', '6 IT', 'attendance'),
(176, 90121200, 'Lab Programming in Python language', 9, 0, '1.00 PM', '2.30 PM', 'Wed', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(177, 90122000, 'Lab Computer logic design', 1, 0, '8.30 AM', '10.00 AM', 'Sun', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', 'Logic Lab', 'attendance'),
(178, 90122000, 'Lab Computer logic design', 2, 0, '11.30 AM', '1.00 PM', 'Sun', 'Samah Suleiman Awad Al Suleiman', 'Logic Lab', 'attendance'),
(179, 90122000, 'Lab Computer logic design', 3, 0, '2.30 PM', '4.00 PM', 'Sun', 'Samah Suleiman Awad Al Suleiman', 'Logic Lab', 'attendance'),
(180, 90122000, 'Lab Computer logic design', 4, 0, '8.30 AM', '10.00 AM', 'Mon', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', 'Logic Lab', 'attendance'),
(181, 90122000, 'Lab Computer logic design', 5, 0, '2.30 PM', '4.00 PM', 'Mon', 'Samah Suleiman Awad Al Suleiman', 'Logic Lab', 'attendance'),
(182, 90122000, 'Lab Computer logic design', 6, 0, '8.30 AM', '10.00 AM', 'Tue', 'Samah Suleiman Awad Al Suleiman', 'Logic Lab', 'attendance'),
(183, 90122000, 'Lab Computer logic design', 7, 0, '2.30 PM', '4.00 PM', 'Tue', 'Samah Suleiman Awad Al Suleiman', 'Logic Lab', 'attendance'),
(184, 90122000, 'Lab Computer logic design', 8, 0, '10.00 AM', '11.30 AM', 'Wed', 'Muhammad Ibrahim Abdul Qadir Al-Hassan', 'Logic Lab', 'attendance'),
(185, 90124000, 'Lab Data Structure', 1, 0, '2.30 PM', '4.00 PM', 'Mon', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(186, 90124000, 'Lab Data Structure', 2, 0, '2.30 PM', '4.00 PM', 'Tue', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(187, 90124000, 'Lab Data Structure', 3, 0, '2.30 PM', '4.00 PM', 'Wed', 'Ahmed Tawfiq Ahmed Al-Asmar', '7 IT', 'attendance'),
(188, 90124000, 'Lab Data Structure', 4, 0, '2.30 PM', '4.00 PM', 'Sun', 'Raed Riad Bashir Abdel-Al', '1 IT', 'attendance'),
(189, 90124000, 'Lab Data Structure', 5, 0, '10.00 AM', '11.30 AM', 'Tue', 'Raed Riad Bashir Abdel-Al', '1 IT', 'attendance'),
(190, 90124000, 'Lab Data Structure', 6, 0, '2.30 PM', '4.00 PM', 'Wed', 'Raed Riad Bashir Abdel-Al', '12 IT', 'attendance'),
(191, 90124000, 'Lab Data Structure', 7, 0, '1.00 PM', '2.30 PM', 'Tue', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(192, 90124000, 'Lab Data Structure', 8, 0, '8.30 AM', '10.00 AM', 'Sun', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(193, 90124000, 'Lab Data Structure', 9, 0, '1.00 PM', '2.30 PM', 'Sun', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(194, 90124000, 'Lab Data Structure', 10, 0, '8.30 AM', '10.00 AM', 'Mon', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(195, 90124000, 'Lab Data Structure', 11, 0, '8.30 AM', '10.00 AM', 'Tue', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(196, 90124000, 'Lab Data Structure', 12, 0, '8.30 AM', '10.00 AM', 'Wed', 'Dhaif Allah Saleh Abdullah Al-Sardiya', '12 IT', 'attendance'),
(197, 90132500, 'Lab Computer networks', 1, 0, '8.30 AM', '10.00 AM', 'Sun', 'Lamis Youssef Shalish Al-Harahsha', '6 IT', 'attendance'),
(198, 90132500, 'Lab Computer networks', 2, 0, '11.30 AM', '1.00 PM', 'Sun', 'Raed Riad Bashir Abdel-Al', '1 L/IT', 'attendance'),
(199, 90132500, 'Lab Computer networks', 3, 0, '8.30 AM', '10.00 AM', 'Mon', 'Wojdan Talaq Raddad Al-Salama', '9 IT', 'attendance'),
(200, 90132500, 'Lab Computer networks', 4, 0, '2.30 PM', '4.00 PM', 'Mon', 'Wojdan Talaq Raddad Al-Salama', '9 IT', 'attendance'),
(201, 90132500, 'Lab Computer networks', 5, 0, '2.30 PM', '4.00 PM', 'Tue', 'Asmaa Awad Ali Al-Gizawi', '10 IT', 'attendance'),
(202, 90132500, 'Lab Computer networks', 6, 0, '8.30 AM', '10.00 AM', 'Wed', 'Lamis Youssef Shalish Al-Harahsha', '6 IT', 'attendance'),
(203, 90132500, 'Lab Computer networks', 7, 0, '1.00 PM', '2.30 PM', 'Wed', 'Asmaa Awad Ali Al-Gizawi', '10 IT', 'attendance'),
(93, 90133000, 'Lab Databases', 1, 0, '1.00 PM', '2.30 PM', 'Mon', 'Raed Dhiyab Awad Al-Harafsheh', '1 L/IT', 'attendance'),
(94, 90133000, 'Lab Databases', 2, 0, '8.30 AM', '10.00 AM', 'Sun', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(95, 90133000, 'Lab Databases', 3, 0, '8.30 AM', '10.00 AM', 'Mon', 'Lamis Youssef Shalish Al-Harahsha', '1 L/IT', 'attendance'),
(96, 90133000, 'Lab Databases', 4, 0, '8.30 AM', '10.00 AM', 'Tue', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(97, 90133000, 'Lab Databases', 5, 0, '11.30 AM', '1.00 PM', 'Tue', 'Raed Riad Bashir Abdel-Al', '1 L/IT', 'attendance'),
(98, 90133000, 'Lab Databases', 6, 0, '2.30 PM', '4.00 PM', 'Tue', 'Hoda Ismail Mustafa Ab', '2 mus', 'attendance'),
(99, 90133000, 'Lab Databases', 7, 0, '10.00 AM', '11.30 AM', 'Wed', 'Raed Dhiyab Awad Al-Harafsheh', '2 L/IT', 'attendance'),
(100, 90133000, 'Lab Databases', 8, 0, '11.30 AM', '1.00 PM', 'Wed', 'Islam Mahmoud Alyan Al-Dalabih', '8 IT', 'attendance'),
(101, 90133000, 'Lab Databases', 9, 0, '11.30 AM', '1.00 PM', 'Tue', 'Raed Dhiyab Awad Al-Harafsheh', '2 L/IT', 'attendance'),
(204, 90141100, 'Lab Advanced programming tools', 1, 0, '11.30 AM', '1.00 PM', 'Mon', 'Raed Dhiyab Awad Al-Harafsheh', '1 L/IT', 'attendance'),
(205, 90141100, 'Lab Advanced programming tools', 2, 0, '8.30 AM', '10.00 AM', 'Mon', 'Raed Dhiyab Awad Al-Harafsheh', '3 L/IT', 'attendance'),
(206, 90221000, 'Lab Programming in BASIC language', 1, 0, '2.30 PM', '4.00 PM', 'Sun', 'Areej Youssef Issa diaspora', '10 IT', 'attendance'),
(207, 90221000, 'Lab Programming in BASIC language', 2, 0, '10.00 AM', '11.30 AM', 'Mon', 'Areej Suleiman Ibrahim Abu Farhan', '1 IT', 'attendance'),
(208, 90221000, 'Lab Programming in BASIC language', 3, 0, '8.30 AM', '10.00 AM', 'Tue', 'Areej Youssef Issa diaspora', '10 IT', 'attendance'),
(209, 90221000, 'Lab Programming in BASIC language', 4, 0, '11.30 AM', '1.00 PM', 'Tue', 'Areej Suleiman Ibrahim Abu Farhan', '1 IT', 'attendance'),
(210, 90221000, 'Lab Programming in BASIC language', 5, 0, '2.30 PM', '4.00 PM', 'Tue', 'Areej Suleiman Ibrahim Abu Farhan', '2 IT', 'attendance'),
(211, 90221000, 'Lab Programming in BASIC language', 6, 0, '8.30 AM', '10.00 AM', 'Wed', 'Areej Youssef Issa diaspora', '10 IT', 'attendance'),
(212, 90221000, 'Lab Programming in BASIC language', 7, 0, '2.30 PM', '4.00 PM', 'Wed', 'Areej Suleiman Ibrahim Abu Farhan', '1 IT', 'attendance'),
(213, 90245000, 'Lab E-Commerce', 1, 0, '8.30 AM', '10.00 AM', 'Sun', 'Mona Anwar Mutlaq Owais', '2 L/IT', 'attendance'),
(214, 90245000, 'Lab E-Commerce', 4, 0, '11.30 AM', '1.00 PM', 'Tue', 'Mona Anwar Mutlaq Owais', '8 IT', 'attendance'),
(215, 90245000, 'Lab E-Commerce', 5, 0, '1.00 PM', '2.30 PM', 'Wed', 'Mona Anwar Mutlaq Owais', '2 L/IT', 'attendance'),
(216, 90245000, 'Lab E-Commerce', 6, 0, '2.30 PM', '4.00 PM', 'Wed', 'Mona Anwar Mutlaq Owais', '8 IT', 'attendance'),
(217, 90245000, 'Lab E-Commerce', 7, 0, '1.00 PM', '2.30 PM', 'Mon', 'Mona Anwar Mutlaq Owais', '8 IT', 'attendance'),
(218, 90245100, 'Lab Developing database applications', 1, 0, '10.00 AM', '11.30 AM', 'Sun', 'Muhammad Nasser Ahmed Al-Mashaqba', '8 IT', 'attendance'),
(219, 90245100, 'Lab Developing database applications', 2, 0, '10.00 AM', '11.30 AM', 'Mon', 'Muhammad Nasser Ahmed Al-Mashaqba', '8 IT', 'attendance'),
(220, 90245100, 'Lab Developing database applications', 3, 0, '8.30 AM', '10.00 AM', 'Tue', 'Muhammad Nasser Ahmed Al-Mashaqba', '1 IT', 'attendance'),
(221, 90245100, 'Lab Developing database applications', 4, 0, '8.30 AM', '10.00 AM', 'Wed', 'Muhammad Nasser Ahmed Al-Mashaqba', '8 IT', 'attendance'),
(222, 90245100, 'Lab Developing database applications', 5, 0, '11.30 AM', '1.00 PM', 'Mon', 'Muhammad Nasser Ahmed Al-Mashaqba', '8 IT', 'attendance'),
(223, 90245100, 'Lab Developing database applications', 6, 0, '10.00 AM', '11.30 AM', 'Wed', 'Muhammad Nasser Ahmed Al-Mashaqba', '8 IT', 'attendance'),
(224, 90422100, 'Lab Computer Networks for Business', 1, 0, '2.30 PM', '4.00 PM', 'Sun', 'Lamis Youssef Shalish Al-Harahsha', '6 IT', 'attendance'),
(225, 90422100, 'Lab Computer Networks for Business', 2, 0, '8.30 AM', '10.00 AM', 'Tue', 'Lamis Youssef Shalish Al-Harahsha', '3 L/IT', 'attendance'),
(226, 90422100, 'Lab Computer Networks for Business', 3, 0, '1.00 PM', '2.30 PM', 'Mon', 'Lamis Youssef Shalish Al-Harahsha', '6 IT', 'attendance');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `row_index` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`row_index`, `student_id`, `username`, `pwd`, `email`, `created_at`) VALUES
(1, 1000908100, 'Mohammed', 'Mohammed1234', '1000908100@aabu.edu.jo', '2024-05-06 18:51:04'),
(4, 1000908103, 'Zainab', 'Zainab1234', '1000908103@aabu.edu.jo', '2024-05-06 18:51:04'),
(24, 1100902115, 'Salman', 'Salman1234', '1100902115@aabu.edu.jo', '2024-05-06 18:54:59'),
(3, 1100908102, 'Ali', 'Ali1234', '1100908102@aabu.edu.jo', '2024-05-06 18:51:04'),
(26, 1100908117, 'Tariq', 'Tariq1234', '1100908117@aabu.edu.jo', '2024-05-06 18:54:59'),
(22, 1200901113, 'Mustafa', 'Mustafa1234', '1200901113@aabu.edu.jo', '2024-05-06 18:54:59'),
(28, 1200906119, 'Jamila', 'Jamila1234', '1200906119@aabu.edu.jo', '2024-05-06 18:54:59'),
(2, 1200908101, 'Fatima', 'Fatima1234', '1200908101@aabu.edu.jo', '2024-05-06 18:51:04'),
(27, 1300908118, 'Razan', 'Razan1234', '1300908118@aabu.edu.jo', '2024-05-06 18:54:59'),
(25, 1400901116, 'Nadia', 'Nadia1234', '1400901116@aabu.edu.jo', '2024-05-06 18:54:59'),
(50, 1400901848, 'Afeef', 'Afeef1234', 'Afeef@gmail.com', '2024-05-09 21:15:55'),
(23, 1500902114, 'Fayez', 'Fayez1234', '1500902114@aabu.edu.jo', '2024-05-06 18:54:59'),
(19, 1900901110, 'Omar', 'Omar1234', '1900901110@aabu.edu.jo', '2024-05-06 18:54:59'),
(5, 1900902104, 'Ahmed', 'Ahmed1234', '1900902104@aabu.edu.jo', '2024-05-06 18:51:04'),
(6, 1900908105, 'Khadija', 'Khadija1234', '1900908105@aabu.edu.jo', '2024-05-06 18:51:04'),
(9, 2000901108, 'Abdullah', 'Abdullah1234', '2000901108@aabu.edu.jo', '2024-05-06 18:51:04'),
(8, 2000902107, 'Maryam', 'Maryam1234', '2000902107@aabu.edu.jo', '2024-05-06 18:51:04'),
(17, 2000902111, 'Noor', 'Noor1234', '2000902111@aabu.edu.jo', '2024-05-06 18:54:37'),
(21, 2000908112, 'Sara', 'Sara1234', '2000908112@aabu.edu.jo', '2024-05-06 18:54:59'),
(10, 2100906109, 'Layla', 'Layla1234', '2100906109@aabu.edu.jo', '2024-05-06 18:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_id`, `course_id`, `course_section`) VALUES
(1000908100, 901110, 6),
(1000908100, 901110, 7),
(1000908103, 901300, 2),
(1000908103, 902451, 3),
(1100908102, 901110, 6),
(1100908102, 901110, 7),
(1100908102, 901214, 17),
(1400901848, 901110, 6),
(1400901848, 901110, 7),
(1400901848, 901131, 1),
(1400901848, 901200, 3),
(1400901848, 901210, 1),
(1500902114, 901220, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`,`course_section`),
  ADD UNIQUE KEY `row_index` (`row_index`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `row_index` (`row_index`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_id`,`course_id`,`course_section`),
  ADD KEY `course_id` (`course_id`,`course_section`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `row_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `row_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_courses_ibfk_2` FOREIGN KEY (`course_id`,`course_section`) REFERENCES `courses` (`course_id`, `course_section`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
