-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 08:06 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `edition` int(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `pages` int(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookid`, `name`, `edition`, `publisher`, `price`, `pages`, `author`, `category`) VALUES
(1, 1, 'Physics', 1, 'NameCheap', '400', 150, 'Tim Paine', 'Novel'),
(2, 2, 'Chemistry', 1, 'GoDaddy', '500', 200, 'Jake', 'Drama'),
(3, 3, 'Biology', 4, 'Urdu Books', '1000', 430, 'Dr Tariq', 'Education'),
(4, 4, 'The C++ Programming Language, 4th Edition (Editor’s Choice)', 7, 'The Creator of C', '700', 500, 'The C++ Programming Language, 4th Edition (Editor’s Choice)', 'Computers & Tech'),
(5, 5, 'Java: A Beginner’s Guide', 2, 'Oracle', '7500', 865, 'Oracle Community', 'Computers & Tech'),
(6, 6, 'Steve Jobs', 1, 'GoodReads', '10000', 400, 'Walter Isaacson', 'Biographies'),
(7, 7, 'The Art of War', 1, 'GoodReads', '700', 850, 'Sun Tzu', 'History'),
(8, 8, 'A Contract with God', 4, 'Chery Jason Book Center', '800', 825, 'Will Eisner', 'Novel'),
(9, 9, 'The Lean Startup', 5, 'Nap Book', '8000', 2500, 'Eric Ries', 'Business'),
(10, 10, 'The Science and Lore of the Kitchen', 4, 'Reference work', '500', 700, 'Harold McGee', 'Cooking'),
(11, 11, 'The Joy of Cooking', 1, 'Charles Scribner\'s Sons', '650', 800, 'Irma S. Rombauer', 'Cooking'),
(12, 12, 'Power Generation and Operational', 4, 'Electronics Department', '700', 958, 'JK Thomes', 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `id` int(11) NOT NULL,
  `bookid` int(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `edition` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `studentid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebooks`
--

INSERT INTO `issuebooks` (`id`, `bookid`, `bname`, `edition`, `date`, `sname`, `course`, `studentid`) VALUES
(3, 7, 'The Art of War', 1, '6/1/19', 'Syed Faheem Shah', 'BSE', 3),
(5, 9, 'The Lean Startup', 5, '6/1/19', 'Sheryar Hassan Khan', 'BSE', 2),
(7, 5, 'Java: A Beginner’s Guide', 2, '6/1/19', 'admin', 'BSE', 4),
(8, 9, 'The Lean Startup', 5, '6/1/19', 'Muhammad Usman Amjad', 'BSE', 5),
(9, 11, 'The Joy of Cooking', 1, '6/1/19', 'Syed Faheem Shah', 'BSE', 3),
(10, 2, 'Chemistry', 1, '6/1/19', 'Muhammad Talha Waseem', 'BSE', 1),
(11, 11, 'The Joy of Cooking', 1, '6/1/19', 'Sheryar Hassan Khan', 'BSE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `returnbooks`
--

CREATE TABLE `returnbooks` (
  `id` int(11) NOT NULL,
  `bookid` int(255) NOT NULL,
  `studentid` int(255) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `issuedate` varchar(255) NOT NULL,
  `returndate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbooks`
--

INSERT INTO `returnbooks` (`id`, `bookid`, `studentid`, `bookname`, `studentname`, `issuedate`, `returndate`) VALUES
(4, 5, 2, 'Java: A Beginner’s Guide', 'Sheryar Hassan Khan', '6/1/19', '6/1/19'),
(5, 8, 1, 'A Contract with God', 'Muhammad Talha Waseem', '6/1/19', '6/1/19');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `studentid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `semester` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentid`, `name`, `fathername`, `course`, `branch`, `year`, `semester`, `password`, `email`) VALUES
(1, 1, 'Muhammad Talha Waseem', 'Tahir Waseem Raza', 'BSE', 'Islamabad', 2018, 3, 'comsats', 'mtw@gmail.com'),
(2, 2, 'Sheryar Hassan Khan', 'Pta nh', 'BSE', 'Islamabad', 2018, 3, 'comsats', 'sheryarhassankhan@gmail.com'),
(3, 3, 'Syed Faheem Shah', 'Pta nh', 'BSE', 'Islamabad', 2018, 3, 'comsats', 'syedfaheemshah@gmail.com'),
(4, 4, 'admin', 'admin', 'BSE', 'Islamabad', 2019, 4, 'admin', 'admin@gmail.com'),
(5, 5, 'Muhammad Usman Amjad', 'Amjad Hussain', 'BSE', 'Islamabad', 2018, 3, 'comsats', 'usman@gmail.com'),
(6, 6, 'Ihtesham Mansoor', 'Mansoor Ahmed', 'BSE', 'Islamabad', 2019, 4, 'comsats', 'ihtesham@gmail.com'),
(7, 7, 'Noor ul Ain', 'Pta nh', 'BSE', 'Islamabad', 2018, 4, 'comsats', 'noor@gmail.com'),
(8, 8, 'Ibrahim', 'Pta nh', 'BSE', 'Vehari', 2018, 6, 'comsats', 'ibrahim@gmail.com'),
(9, 9, 'Tariq Brohi', 'Pta nh', 'BSE', 'Abbotabad', 2017, 4, 'comsats', 'tariq@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sec_q` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `sec_q`, `answer`) VALUES
(2, 'Muhammad Talha Waseem', 'mtwabbaxi', '03485583125', 'What Your Childhood Name?', 'mtw'),
(3, 'Administrator', 'admin', 'admin', 'What Your Mother Tongue?', 'urdu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returnbooks`
--
ALTER TABLE `returnbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `returnbooks`
--
ALTER TABLE `returnbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
