-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 09:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `img` text DEFAULT NULL,
  `genere` varchar(30) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `img`, `genere`, `language`, `author`, `rate`, `price`, `pages`) VALUES
(1, 'WATER I WON\'T TOUCH', 'upload/1.jpeg', 'Poetry', 'English', 'KAYLEB RAE CANDRILLI', 4.5, 50, 200),
(2, 'SPARE', 'upload/2.jpeg', 'Poetry', 'English', 'PRINCE HARRY', 4, 50, 200),
(3, 'GREANT', 'upload/3.jpeg', 'Poetry', 'English', 'RON CHERNOW', 3.7, 70, 150),
(4, 'Infinity\'s Edge', 'upload/4.jpeg', 'Poetry', 'English', 'Kevin Emerson', 4.8, 100, 300),
(6, 'UGLY LOVE', 'upload/6.jpeg', 'Novels', 'English', 'COLLEEN HOOVER', 3, 60, 350),
(7, 'THE HAPPY BRAIN', 'upload/7.jpeg', 'Science', 'English', 'DEAN BURNETT', 2.5, 40, 250),
(8, 'STARRY MESSENGER', 'upload/8.jpeg', 'Science', 'English', 'Neil De Grassetyson', 4.9, 110, 200),
(9, 'To Be a Machine', 'upload/9.jpeg', 'Science', 'English', 'Mark O\'Connell', 4, 60, 200),
(11, 'الفرسان الثلاثة', 'upload/11.jpeg', 'Horror', 'Arabic', 'اسكندر دوماس الكبير', 4.5, 30, 80),
(12, 'Clean Code', 'upload/12.jpeg', 'Computer Science', 'English', 'Robert C.Martin', 4.9, 60, 200),
(13, 'hackers', 'upload/13.jpeg', 'Computer Science', 'English', 'steven levy', 4.5, 90, 160),
(14, 'Life 3.0', 'upload/14.jpeg', 'Computer Science', 'English', 'Max Tegmark', 3.5, 65, 170),
(16, 'Other Minds', 'upload/16.jpeg', 'Science', 'English', 'Peter Joseph', 3.9, 90, 180);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `favBooks` text DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `username`, `name`, `password`, `email`, `role`, `favBooks`, `gender`, `phone`, `img`) VALUES
(6, 'adminzedan', 'zedan', '013', 'ad@admin.com', 'Admin123', '2,', 'M', '01556188801', 'upload/profileImgs/default.png'),
(2, 'cr7', 'Ronaldo', '123', 'cris@gmail.com', 'Admin', '1,2,3,14,', 'M', '011', 'upload/profileImgs/default.png'),
(9, 'memoelprince', 'Mostafa Elsharawy', '123', 'memo123@gmail.com', 'Admin', '1,', 'M', '01229115312', 'upload/profileImgs/9.jpg'),
(8, 'tahajr', 'Tahaaa', '123', 'taha@gmail.com', 'Admin', '7,14,', 'M', '01275252682', 'upload/profileImgs/8.jpg'),
(1, 'torkijr', 'Torkish', '321', 'torkijr@gmail.com', 'Admin', NULL, 'M', '01211036617', 'upload/profileImgs/default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
