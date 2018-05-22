-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2018 at 05:57 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iit`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actorid` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `dob` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actorid`, `full_name`, `dob`) VALUES
(1, 'Robert Downey Jr', '1965'),
(2, 'Samuel L. Jackson', '1948'),
(3, 'Chris Evans', '1981'),
(4, 'Chris Hemsworth', '1983'),
(5, 'Tom Hiddleston', '1981'),
(6, 'Scarlett Johanson', '1984'),
(7, 'Mark Ruffalo', '1967'),
(8, 'Chris Pratt', '1979'),
(9, 'Vin Diesel', '1967'),
(10, 'Zoe Saldana', '1978'),
(11, 'Benedict Cumberbatch', '1976');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `year`) VALUES
(1, 'Iron Man', '2008'),
(2, 'Thor', '2011'),
(3, 'Captain America: The First Avenger', '2011'),
(4, 'The Avengers', '2012'),
(5, 'Captain America: The Winter Soldier', '2014'),
(6, 'Guardians of the Galaxy', '2014'),
(7, 'Avengers: Age of Ultron', '2015'),
(8, 'Doctor Strange', '2016'),
(9, 'Guardians of the Galaxy: Volume 2', '2017'),
(10, 'Thor: Ragnarok', '2017'),
(11, 'Avengers: Infinity War', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_actorID` int(10) UNSIGNED NOT NULL,
  `movieID` int(10) UNSIGNED NOT NULL,
  `actorID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`movie_actorID`, `movieID`, `actorID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 4),
(4, 2, 5),
(5, 3, 3),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 4, 3),
(10, 4, 4),
(11, 4, 5),
(12, 4, 6),
(13, 4, 7),
(14, 5, 3),
(15, 5, 2),
(16, 5, 6),
(17, 6, 8),
(18, 6, 9),
(19, 6, 10),
(20, 7, 1),
(21, 7, 2),
(22, 7, 3),
(23, 7, 4),
(24, 7, 5),
(25, 7, 6),
(26, 7, 7),
(27, 8, 11),
(28, 9, 8),
(29, 9, 9),
(30, 9, 10),
(31, 10, 4),
(32, 10, 5),
(33, 10, 6),
(34, 10, 7),
(35, 11, 1),
(36, 11, 2),
(37, 11, 3),
(38, 11, 4),
(39, 11, 5),
(40, 11, 6),
(41, 11, 7),
(42, 11, 8),
(43, 11, 9),
(44, 11, 10),
(45, 11, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`movie_actorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `movie_actorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
