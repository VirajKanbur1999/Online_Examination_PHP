-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2015 at 06:33 AM
-- Server version: 5.6.19
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('viraj.k@hotmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'vkanbur4@gmail.com', 'testing', 'testing begins', '2019-02-23', '09:19:15pm'),
('5589858b6c43b', 'nik', 'dudesandler1999@gmail.com', 'good', 'good site', '2019-02-23', '08:42:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('vkanbur4@gmail.com', '558920ff906b8', 2, 2, 2, 0, '2019-02-23 09:41:46'),
('dudesandler1999@gmail.com', '5589741f9ed52', 1, 2, 1, 1, '2019-02-23 09:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', '53.86', '55892169d2efc'),
('55892169bf6a7', '52', '55892169d2f05'),
('55892169bf6a7', '53.36', '55892169d2f09'),
('55892169bf6a7', '57.90', '55892169d2f0c'),

('5589216a3646e', 'West Indies', '5589216a48713'),
('5589216a3646e', 'Australia', '5589216a4871a'),
('5589216a3646e', 'West Indies', '5589216a4871f'),
('5589216a3646e', 'India', '5589216a48722'),

('5589751a63091', 'Peter Drury', '5589751a81bd6'),
('5589751a63091', 'Lionel Messi', '5589751a81be8'),
('5589751a63091', ' Peter Crouch', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),

('5589751ad32b8', '5', '5589751adbdbd'),
('5589751ad32b8', '4', '5589751adbdce'),
('5589751ad32b8', '7', '5589751adbdd8'),
('5589751ad32b8', '6', '5589751adbde2'),

('5589751b304ef', '1998', '5589751b3b04d'),
('5589751b304ef', '2002', '5589751b3b05e'),
('5589751b304ef', '1996', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),

('5589751b749c9', '2003', '5589751b9a98c'),
('5589751b749c9', '2002', '5589751b9a9a5'),
('5589751b749c9', '2003', '5589751b9a9b7'),
('5589751b749c9', '2005', '5589751b9a9c9');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is the test average of sachin tendulkar?', 4, 1),
('558920ff906b8', '5589216a3646e', 'who won the 2011 cricket world cup?', 4, 2),
('5589741f9ed52', '5589751a63091', 'Who is the tallest footballer ever?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' How many world cups has brazil won?', 4, 2),
('5589741f9ed52', '5589751b304ef', 'Which year did France win its first FIFA world cup?', 4, 3),
('5589741f9ed52', '5589751b749c9', 'Which year did Cristiano Ronaldo join Manchester United', 4, 4),


-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Cricket', 2, 1, 2, 5, '', 'linux', '2019-02-23 09:03:59'),
('5589741f9ed52', 'Football', 2, 1, 5, 10, '', 'linux', '2019-02-23 14:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('vkanbur4@gmail.com', 1, '2019-02-23 12:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Nikhil', 'M', 'VIT Vellore','nikhil123@gmail.com', 8082523899, 'babynikhil');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
