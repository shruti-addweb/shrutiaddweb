-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 26, 2022 at 07:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakeorder`
--

CREATE TABLE `cakeorder` (
  `oid` int(11) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `totalamount` int(11) DEFAULT NULL,
  `cakename` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakeorder`
--

INSERT INTO `cakeorder` (`oid`, `orderdate`, `totalamount`, `cakename`) VALUES
(91, '0002-07-22', 1000, 'black forest'),
(92, '0007-06-22', 1000, 'white forest'),
(92, '2022-07-22', 1000, 'truffle'),
(93, '2012-07-22', 900, 'chocolate nut'),
(94, '2012-07-22', 1200, 'truffle'),
(96, '2026-08-22', 400, 'fruity'),
(95, '2016-08-22', 400, 'blue berry');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `did` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `isdisplay` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`did`, `dname`, `ename`, `isdisplay`) VALUES
(201, 'chef', 'a', 0),
(202, 'chef', 'b', 1),
(203, 'chef', 'c', 0),
(204, 'decorater', 'd', 1),
(205, 'decorater', 'e', 0),
(206, 'manager', 'jay', 1),
(208, 'marketing', 'h', 1),
(209, 'hr', 'ka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) DEFAULT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `ephoneno` bigint(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `ephoneno`, `salary`) VALUES
(61, 'hemang', 9878967987, 3000),
(62, 'pintoo', 9747836533, 4000),
(63, 'pinay', 8945836533, 4800),
(64, 'seena', 8945836533, 6800),
(65, 'anu', 6785836533, 5000),
(66, 'annala', 6895836533, 5500),
(67, 'bina', 9995836533, 9500),
(68, 'nitu', 6845836533, 9500),
(69, 'danel', 8945673980, 5500),
(70, 'chintu', 9085673410, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) DEFAULT NULL,
  `event` varchar(20) DEFAULT NULL,
  `customisecake` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event`, `customisecake`) VALUES
(51, 'birthday', 'no'),
(52, 'anniversary', 'no'),
(53, 'engagement', 'yes'),
(54, 'welcome baby', 'yes'),
(55, 'mother day', 'no'),
(56, 'father day', 'no'),
(57, 'marriage cake', 'yes'),
(58, 'childern day', 'no'),
(59, 'bride to be cake', 'no'),
(60, 'festival cake', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `flavour`
--

CREATE TABLE `flavour` (
  `fid` int(11) DEFAULT NULL,
  `flavourName` varchar(20) DEFAULT NULL,
  `flavourprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flavour`
--

INSERT INTO `flavour` (`fid`, `flavourName`, `flavourprice`) VALUES
(1, 'chocolate', 300),
(2, 'chocolate chips', 400),
(3, 'fruit', 200),
(4, 'vanilla', 250),
(5, 'red velvet', 350),
(6, 'lemon', 450),
(7, 'banana', 450),
(8, 'apple nut', 550),
(9, 'dark chocolate', 550),
(10, 'white chocolate', 500);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `uname`, `pname`, `price`) VALUES
(10002, 'pintu', 'chocolate cake', 200),
(10003, 'b', 'butter cake', 800),
(1001, 'mintu', 'truffle', 600),
(10008, 'j', 'fruit cake ', 700),
(10007, 'mital', 'vanilla cake', 500),
(10006, 'jaimn', 'blue berry', 600),
(10005, 'ranu', 'cheese cake', 800),
(10004, 'hinu', 'chocolate roll', 900),
(10098, 'sanu', 'coffee cake', 600),
(100089, 'tinu', 'caramel cake', 900);

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape` (
  `sid` int(11) DEFAULT NULL,
  `shape` varchar(20) DEFAULT NULL,
  `randomshape` varchar(10) DEFAULT NULL,
  `shapeprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shape`
--

INSERT INTO `shape` (`sid`, `shape`, `randomshape`, `shapeprice`) VALUES
(11, 'bundt cake', 'no', 100),
(12, 'cake ball', 'no', 120),
(13, 'cake pops', 'no', 160),
(14, 'layer cake', 'no', 180),
(15, 'sheet cake', 'no', 130),
(16, 'swiss rolls', 'no', 100),
(17, 'kransekage', 'no', 130),
(18, 'springform', 'no', 130),
(19, 'round', 'no', 100),
(20, 'heart', 'no', 100);

-- --------------------------------------------------------

--
-- Table structure for table `varieties`
--

CREATE TABLE `varieties` (
  `vid` int(11) DEFAULT NULL,
  `varietiesname` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `recipe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `varieties`
--

INSERT INTO `varieties` (`vid`, `varietiesname`, `description`, `recipe`) VALUES
(102, 'butter cake', 'They rely on the combination of butter and sugar beaten for an extended time to incorporate air into the batter.', 'Butter cakes are made from creamed butter, sugar, eggs, and flour.'),
(103, 'sponge cake', 'Traditional sponge cakes are leavened only with eggs', 'Sponge cakes (or foam cakes) are made from whipped eggs, sugar, and flour'),
(104, 'chocolate cake', ' German chocolate cake is a variety of chocolate cake.', 'Chocolate cakes flavored with melted chocolate or cocoa powder.'),
(105, 'coffe cake', 'Coffee cake is generally thought of as a cake to serve with coffee or tea at breakfast or a coffee break.', 'Some types use yeast as a leavening agent while others use baking soda or baking powder'),
(101, 'flavourless cake', 'Baked flourless cakes include baked cheesecakes and flourless chocolate cakes.', 'Baked flourless cakes include baked cheesecakes and flourless chocolate cakes.'),
(107, 'layerd cake', 'Layer cakes are cakes made with layers of sponge or butter cake, filled with cream, jam or other filling to hold the layers together', ' layers of sponge or butter cake, filled with cream, jam filling to hold the layers together'),
(109, 'one egg cake', 'They can be made with butter or vegetable shortening.', 'made up of one egg ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
