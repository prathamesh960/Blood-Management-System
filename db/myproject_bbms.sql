-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 08:40 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject_bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`) VALUES
(1, 'harshalagalande111@gmail.com', 'h1234567');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `bgroup` varchar(20) NOT NULL,
  `mon` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `fname`, `address`, `city`, `age`, `bgroup`, `mon`, `email`) VALUES
(1, 'pratiksha', 'pawar', 'kathi', 'indapur', 21, 'b+', '9887656754', 'pgirish123@gmail.com'),
(2, 'prita', 'shinde', 'sardewadi', 'indapur', 21, 'a+', '9987656754', 'prita3@gmail.com'),
(3, 'sushma', 'gadhve', 'sardewadi', 'indapur', 22, 'A+', '9021503765', 'sushma@gmail.com'),
(4, 'reshma', 'kadam', 'baramati', 'baramati', 31, 'AB+', '9026570376', 'reshma@gmail.com'),
(5, 'puja', 'jadhav', 'bramati', 'baramti', 22, 'O+', '9980776543', 'puja123@gmail.com'),
(6, 'mayuri', 'gaikwad', 'indapur', 'pune', 22, 'O+', '9975428472', 'mayurigaikwad123@gma'),
(7, 'anuja', 'gaikwad', 'anandnagr', 'akluj', 35, 'A-', '7274339006', 'anujagaikwad1234@gma'),
(8, 'prajakta', 'jagtap', 'kati', 'indapur', 23, 'B-', '9075443120', 'prajakta123@gmail.co'),
(9, 'sayali', 'borate', 'baramati', 'pune', 30, 'AB-', '9980712209', 'sayalitaware123@gmai'),
(10, 'madhav', 'gaikwad', 'indapur', 'pune', 32, 'O-', '8689709006', 'madhavgaikwad1213@gm');

-- --------------------------------------------------------

--
-- Table structure for table `dreg`
--

CREATE TABLE `dreg` (
  `id` int(2) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dreg`
--

INSERT INTO `dreg` (`id`, `name`, `lname`, `uname`, `pass`) VALUES
(1, 'arti', 'shinde', 'artishinde1112gmail.com', 'arti'),
(2, 'anuja', 'gaikwad', 'anujagaikwad111@gmail.com', 'anuja'),
(3, 'puja', 'shinde', 'pujashinde111@gmail.com', 'puja'),
(4, 'ankita', 'gaikwad', 'ankitagaikwad111@gmail.com', 'ankita'),
(5, 'tanuja', 'galande', 'tanujagalande111@gmail.com', 'tnuja'),
(6, 'mayuri', 'gaikwad', 'mayugaikwad123@gmail.com', 'mayuri'),
(7, 'ranjeet', 'gaikwad', 'ranjeetgaikwad111@gmail.com', 'ranjeet'),
(8, 'akash', 'divase', 'akashdivase111@gmail.com', 'akash'),
(9, '', '', '', ''),
(10, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `mon` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `fname`, `address`, `city`, `age`, `mon`, `email`) VALUES
(1, 'aarti', 'doke', 'akluj', 'indapur', 34, '9087656644', 'aartibharti@gmail.com'),
(2, 'kajal', 'kadam', 'magarpatta', 'pune', 31, '8976543209', 'kadam@gmail.com'),
(3, 'jagruti', 'shete', 'indapur', 'indapur', 21, '7789095545', 'jagruti123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `preg`
--

CREATE TABLE `preg` (
  `id` int(2) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preg`
--

INSERT INTO `preg` (`id`, `name`, `lname`, `uname`, `pass`) VALUES
(1, 'priti', 'devakde', 'pritidevkade111@gmail.com', 'priti'),
(2, 'manju', 'sarde', 'manjusarde111@gmail.com', 'manju'),
(3, 'mayuri', 'gaikwad', 'mayugaikwad123@gmail.com', 'mayuri'),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `uid` int(2) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `units` int(2) DEFAULT NULL,
  `othr` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`uid`, `name`, `date`, `units`, `othr`) VALUES
(1, 'arti', '2021-10-12', 2, 'none'),
(2, 'anuja', '2021-09-20', 2, 'not'),
(3, 'geeta', '2021-08-15', 1, 'nothing'),
(4, 'meera', '2021-09-11', 2, 'none'),
(5, 'shree', '2021-10-14', 1, 'nothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dreg`
--
ALTER TABLE `dreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preg`
--
ALTER TABLE `preg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dreg`
--
ALTER TABLE `dreg`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `preg`
--
ALTER TABLE `preg`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `uid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
