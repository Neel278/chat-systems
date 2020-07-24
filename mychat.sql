-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 09:23 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `msg` varchar(216) NOT NULL,
  `name` varchar(64) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `msg`, `name`, `date`) VALUES
(4, 'hello', 'neel', '2019-11-02 07:33:18'),
(5, 'hi', 'neel', '2019-11-02 08:07:39'),
(6, 'hello neel\r\n', 'neel', '2019-11-02 08:13:08'),
(7, 'hi keyur', 'neel', '2019-11-02 08:13:20'),
(10, 'fine', 'neel', '2019-11-03 12:53:35'),
(11, 'hello ', 'neel', '2019-11-07 13:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts1`
--

CREATE TABLE `posts1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `msg` varchar(216) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts1`
--

INSERT INTO `posts1` (`id`, `name`, `msg`, `date`) VALUES
(4, 'keyur', 'how', '2019-11-03 12:48:11.230293'),
(5, 'keyur', 'me too', '2019-11-03 12:54:21.711482'),
(9, 'keyur', 'i am', '2019-11-07 13:07:42.809322'),
(10, 'keyur', 'fine', '2019-11-07 13:07:47.881599'),
(11, 'keyur', 'how', '2019-11-07 13:44:00.642569');

-- --------------------------------------------------------

--
-- Table structure for table `posts2`
--

CREATE TABLE `posts2` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `msg` varchar(256) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts2`
--

INSERT INTO `posts2` (`id`, `name`, `receiver`, `msg`, `date`) VALUES
(1, 'neel', 'keyur', 'hello', '2019-11-07 14:33:09.304825'),
(2, 'keyur', 'neel', 'hi', '2019-11-07 14:33:09.381829'),
(3, 'neel', 'keyur', 'keyur', '2019-11-07 14:33:09.417831'),
(4, 'keyur', 'neel', 'how', '2019-11-07 14:34:06.846913'),
(5, 'keyur', 'neel', 'are', '2019-11-07 14:34:06.978920'),
(6, 'keyur', 'neel', 'you', '2019-11-07 14:34:07.078926'),
(7, 'neel', 'keyur', 'i', '2019-11-07 14:34:07.156931'),
(8, 'neel', 'keyur', 'am', '2019-11-07 14:34:07.253936'),
(9, 'neel', 'keyur', 'fine', '2019-11-07 14:34:07.286939'),
(10, 'keyur', 'neel', 'what', '2019-11-07 14:34:07.356942'),
(11, 'neel', 'parth', '???', '2019-11-07 14:35:25.468036'),
(12, 'keyur', 'parth', 'how are You??', '2019-11-07 14:35:25.577043'),
(13, 'keyur', 'parth', 'i am fine whats about you', '2019-11-07 14:35:25.607044'),
(14, 'neel', 'parth', 'tell', '2019-11-07 14:35:25.665048'),
(15, 'neel', 'parth', 'sorry', '2019-11-07 14:35:25.696050'),
(16, 'neel', 'keyur', 'also fine', '2019-11-07 14:35:25.787056'),
(17, 'keyur', 'neel', 'what', '2019-11-07 14:35:25.818057'),
(18, 'keyur', 'neel', 'are', '2019-11-07 14:35:25.865059'),
(19, 'keyur', 'parth', 'you doing', '2019-11-07 14:35:25.901061'),
(21, 'parth', 'keyur', 'i am fine', '2019-11-08 04:00:58.074284'),
(22, 'parth', 'keyur', 'what', '2019-11-08 04:01:59.603802'),
(23, 'parth', 'keyur', 'are', '2019-11-08 04:02:02.821987'),
(24, 'parth', 'keyur', 'you', '2019-11-08 04:02:06.498198'),
(25, 'parth', 'keyur', 'doing??', '2019-11-08 04:02:12.692552'),
(26, 'parth', 'neel', 'hello', '2019-11-08 04:04:25.560944'),
(27, 'parth', 'neel', 'neel', '2019-11-08 04:04:28.983140'),
(28, 'parth', 'neel', 'what are you doing??  can we meet so we can talk about our project.', '2019-11-08 04:05:57.716215'),
(29, 'neel', 'parth', 'hii keyur', '2019-11-08 04:07:20.385917'),
(30, 'neel', 'parth', 'i am not doing anything', '2019-11-08 04:07:36.341830'),
(31, 'neel', 'parth', 'come to my home so we can talk about our project.', '2019-11-08 04:07:59.737168'),
(32, 'keyur', 'neel', 'you doing??', '2019-11-08 04:15:26.371774'),
(33, 'neel', 'keyur', 'nothing', '2019-11-08 04:31:57.869485'),
(34, 'neel', 'keyur', 'what', '2019-11-08 05:02:46.992248'),
(35, 'neel', 'keyur', 'about', '2019-11-08 05:03:10.099569'),
(36, 'neel', 'keyur', 'you', '2019-11-08 05:03:29.805697'),
(37, 'keyur', 'neel', 'nothing', '2019-11-08 05:04:29.089088'),
(38, 'keyur', 'neel', 'how is the project?', '2019-11-08 05:05:03.764070'),
(39, 'neel', 'keyur', 'fine', '2019-11-08 05:09:44.512129'),
(40, 'neel', 'keyur', 'are you coming or not', '2019-11-08 05:10:09.014530'),
(41, 'ami', 'neel', 'hii', '2019-11-08 05:11:58.595787'),
(42, 'ami', 'neel', 'hii', '2019-11-08 05:12:08.038327'),
(43, 'neel', 'ami', 'hello', '2019-11-08 05:12:23.705224'),
(44, 'ami', 'neel', 'how are you', '2019-11-08 05:13:31.122080'),
(45, 'neel', 'ami', 'fine', '2019-11-08 05:14:01.506818'),
(46, 'ami', 'neel', 'what', '2019-11-08 05:19:31.781774'),
(47, 'ami', 'neel', 'are', '2019-11-08 05:29:05.942722'),
(48, 'neel', 'ami', 'you', '2019-11-08 05:33:06.830573'),
(49, 'neel', 'ami', 'doing', '2019-11-08 05:35:44.957617'),
(50, 'ami', 'neel', 'fine', '2019-11-08 05:36:39.324727'),
(51, 'ami', 'neel', 'what', '2019-11-08 05:43:34.706311'),
(52, 'ami', 'neel', 'are', '2019-11-08 05:51:21.845031'),
(53, 'ami', 'neel', 'you', '2019-11-08 05:52:05.530530'),
(54, 'ami', 'neel', 'doing', '2019-11-08 06:02:43.629026'),
(55, 'neel', 'ami', 'nothing', '2019-11-08 06:02:56.664773'),
(56, 'neel', 'ami', 'what about you?', '2019-11-08 06:17:10.039366'),
(59, 'keyur', 'parth', 'and', '2019-11-08 12:55:40.277643'),
(60, 'keyur', 'parth', 'what is going on?', '2019-11-08 13:00:08.721071'),
(61, 'neel', 'keyur', 'hi', '2019-11-21 17:04:50.299821'),
(62, 'neel', 'keyur', 'hiw', '2019-11-21 17:04:59.235331'),
(63, 'neel', 'keyur', 'go', '2019-11-22 15:07:19.660666'),
(64, 'neel', 'keyur', 'sac', '2019-11-22 15:07:30.620193'),
(65, 'neel', 'keyur', 'go', '2019-11-22 15:09:57.513553'),
(66, 'neel', 'keyur', 'go', '2019-11-22 15:10:05.063114'),
(67, 'neel', 'keyur', '', '2019-11-22 15:10:07.228227'),
(68, 'neel', 'keyur', '', '2019-11-22 15:10:07.520731'),
(69, 'neel', 'keyur', 'go', '2019-11-22 15:10:18.476063');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `uid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`uid`, `username`, `email`, `password`) VALUES
(1, 'neel', 'neel12@gmail.com', '111'),
(2, 'keyur', 'keyur123@gmail.com', '123'),
(3, 'parth', 'example@gmail.com', '159'),
(4, 'ami', 'ami123@gmail.com', '357');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts1`
--
ALTER TABLE `posts1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts2`
--
ALTER TABLE `posts2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts1`
--
ALTER TABLE `posts1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts2`
--
ALTER TABLE `posts2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
