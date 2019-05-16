-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 07:25 PM
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
  `pages` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookid`, `name`, `edition`, `publisher`, `price`, `pages`) VALUES
(1, 1, 'Physics', 1, 'NameCheap', '400', 150),
(2, 2, 'Chemister', 1, 'GoDaddy', '500', 200);

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
(2, 2, 'Chemister', 1, '5/11/19', 'Muhammad Talha Waseem', 'BSE', 1);

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
(3, 1, 1, 'Physics', 'Muhammad Talha Waseem', '5/1/19', '5/11/19');

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
(4, 4, 'admin', 'admin', 'BSE', 'Islamabad', 2019, 4, 'admin', 'admin');

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
(3, 'Administrator', 'admin', 'admin', 'What Your Mother Tongue?', 'urdu'),
(4, 'Sheryar Hassan Khan', 'sheri', '12345', 'What Your Childhood Name?', 'sheri');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `returnbooks`
--
ALTER TABLE `returnbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
