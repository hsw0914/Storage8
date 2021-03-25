-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 18-12-03 02:39
-- 서버 버전: 10.1.37-MariaDB
-- PHP 버전: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `20170401`
--
CREATE DATABASE IF NOT EXISTS `20170401` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `20170401`;

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `idx` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `m_idx` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `title`, `content`, `category`, `date`, `image`, `email`, `name`, `m_idx`) VALUES
(1, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(2, '123123', '123123123123123', 3, '2017-04-01 14:14:32', '', 'asdasd@naver.com', '강민우', 1),
(3, 'sdfsdfsdf', 'sdfsdfsfdsdfsdfsdf', 2, '2017-04-01 14:14:44', '', 'asdasd@naver.com', '강민우', 1),
(5, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(6, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(7, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(8, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(9, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(10, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(11, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(12, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(13, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(14, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(15, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(16, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(17, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(18, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(19, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(20, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(21, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(22, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(23, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(24, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(25, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(26, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(27, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(28, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(29, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(30, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(31, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(32, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(33, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(34, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(35, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(36, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(37, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(38, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(39, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(40, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(41, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(42, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(43, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(44, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(45, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(46, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(47, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(48, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(49, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(50, 'asdadasd', 'asdasdasdasd', 3, '2017-04-01 13:49:56', '58dfb0044f8dc.jpg', 'asdasd@naver.com', '강민우', 1),
(51, 'ㅁㄴㅇㅁㄴㅇ', 'ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ', 2, '2017-04-01 14:28:44', '58dfb91c48a80.jpg', 'kmw@designgj.com', '다른사람', 3),
(52, 'ㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴ', 'ㅁㄴㅇㅁㄴㅇ', 1, '2017-04-02 07:04:18', '58e0a272c32ba.jpg', 'kmw@designgj.com', '다른사람', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `category`
--

CREATE TABLE `category` (
  `idx` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `category`
--

INSERT INTO `category` (`idx`, `name`) VALUES
(1, '카테고리1'),
(2, '카테고리2'),
(3, '카테고리3'),
(4, '카테고리4'),
(5, '카테고리5');

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE `comment` (
  `idx` int(10) NOT NULL,
  `b_idx` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `m_idx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`idx`, `b_idx`, `name`, `email`, `date`, `content`, `m_idx`) VALUES
(2, 51, '다른사람', 'kmw@designgj.com', '2017-04-01 14:42:28', 'ㅁㄴㅇㅁㅇㅁㄴㅇ', 3),
(3, 51, '다른사람', 'kmw@designgj.com', '2017-04-01 14:42:31', '123123123123', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `idx` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`idx`, `email`, `password`, `name`) VALUES
(1, 'asdasd@naver.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '강민우'),
(2, 'asdasd2@naver.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '강민우'),
(3, 'kmw@designgj.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '다른사람');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idx`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `idx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 테이블의 AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `idx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `idx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `idx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 데이터베이스: `20180403`
--
CREATE DATABASE IF NOT EXISTS `20180403` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `20180403`;

-- --------------------------------------------------------

--
-- 테이블 구조 `inset`
--

CREATE TABLE `inset` (
  `idx` int(11) NOT NULL,
  `shape_idx` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `download` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `in_shape`
--

CREATE TABLE `in_shape` (
  `idx` int(11) NOT NULL,
  `user_idx` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_src` varchar(255) NOT NULL,
  `out_src` varchar(255) NOT NULL,
  `file_kinds` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_dir` enum('Y','N') NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `in_shape`
--

INSERT INTO `in_shape` (`idx`, `user_idx`, `file_name`, `file_size`, `file_src`, `out_src`, `file_kinds`, `parent`, `is_dir`, `c_date`, `u_date`) VALUES
(51, 1, 'a', 0, '', '', '', 0, 'Y', '2018-11-28 08:55:43', '2018-11-28 08:55:43'),
(52, 1, 'asa', 0, '', '', '', 0, 'Y', '2018-11-28 08:58:19', '2018-11-28 08:58:19'),
(53, 1, 'asd', 0, '', '', '', 1, 'Y', '2018-11-28 09:01:18', '2018-11-28 09:01:18'),
(54, 1, 'a', 0, '', '', '', 1, 'Y', '2018-11-28 09:02:03', '2018-11-28 09:02:03'),
(55, 1, 'sdf', 0, '', '', '', 51, 'Y', '2018-12-01 10:48:07', '2018-12-01 10:48:07');

-- --------------------------------------------------------

--
-- 테이블 구조 `outset`
--

CREATE TABLE `outset` (
  `idx` int(11) NOT NULL,
  `shape_idx` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `download` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `idx` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lv` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `id`, `pw`, `name`, `lv`) VALUES
(1, 'hsw0914@naver.com', 'ff2c2c683c66cc77736f8df9e94873e5111cc88b0e5f3ec6bb517fdb60458b4b', '한세운', 99);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `inset`
--
ALTER TABLE `inset`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `in_shape`
--
ALTER TABLE `in_shape`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `outset`
--
ALTER TABLE `outset`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `inset`
--
ALTER TABLE `inset`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `in_shape`
--
ALTER TABLE `in_shape`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- 테이블의 AUTO_INCREMENT `outset`
--
ALTER TABLE `outset`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 데이터베이스: `cloud`
--
CREATE DATABASE IF NOT EXISTS `cloud` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cloud`;

-- --------------------------------------------------------

--
-- 테이블 구조 `inset`
--

CREATE TABLE `inset` (
  `idx` int(11) NOT NULL,
  `shape_idx` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Download` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `inset`
--

INSERT INTO `inset` (`idx`, `shape_idx`, `Date`, `Download`) VALUES
(1, 57, '2018-12-02 03:34:42', 0),
(2, 57, '2018-12-02 04:27:58', 0),
(3, 57, '2018-12-02 04:28:02', 0),
(4, 57, '2018-12-02 04:28:02', 0),
(5, 57, '2018-12-02 04:28:03', 0),
(6, 57, '2018-12-02 04:28:03', 0),
(7, 57, '2018-12-02 04:28:03', 0),
(8, 57, '2018-12-02 04:28:03', 0),
(9, 57, '2018-12-02 04:28:03', 0),
(10, 57, '2018-12-02 04:28:03', 0),
(11, 57, '2018-12-02 04:28:03', 0),
(12, 57, '2018-12-02 04:28:03', 0),
(13, 57, '2018-12-02 04:28:03', 0),
(14, 57, '2018-12-02 04:28:03', 0),
(15, 57, '2018-12-02 04:28:03', 0),
(16, 57, '2018-12-02 04:28:03', 0),
(17, 57, '2018-12-02 04:28:03', 0),
(18, 57, '2018-12-02 04:28:03', 0),
(19, 57, '2018-12-02 04:28:03', 0),
(20, 57, '2018-12-02 04:28:03', 0),
(21, 191, '2018-12-03 00:05:11', 0),
(22, 192, '2018-12-03 00:05:11', 0),
(23, 191, '2018-12-03 00:05:15', 0),
(24, 192, '2018-12-03 00:05:15', 0),
(25, 191, '2018-12-03 00:05:41', 0),
(26, 191, '2018-12-03 00:05:45', 0),
(27, 191, '2018-12-03 00:05:45', 0),
(28, 191, '2018-12-03 00:05:45', 0),
(29, 191, '2018-12-03 00:05:45', 0),
(30, 191, '2018-12-03 00:05:45', 0),
(31, 191, '2018-12-03 00:05:45', 0),
(32, 191, '2018-12-03 00:05:45', 0),
(33, 191, '2018-12-03 00:05:45', 0),
(34, 191, '2018-12-03 00:05:45', 0),
(35, 191, '2018-12-03 00:05:45', 0),
(36, 191, '2018-12-03 00:05:45', 0),
(37, 191, '2018-12-03 00:05:45', 0),
(38, 191, '2018-12-03 00:05:45', 0),
(39, 191, '2018-12-03 00:05:45', 0),
(40, 191, '2018-12-03 00:05:45', 0),
(41, 191, '2018-12-03 00:05:45', 0),
(42, 191, '2018-12-03 00:05:45', 0),
(43, 191, '2018-12-03 00:05:45', 0),
(44, 192, '2018-12-03 00:05:50', 0),
(45, 192, '2018-12-03 00:05:54', 0),
(46, 192, '2018-12-03 00:05:54', 0),
(47, 192, '2018-12-03 00:05:54', 0),
(48, 192, '2018-12-03 00:05:54', 0),
(49, 192, '2018-12-03 00:05:54', 0),
(50, 192, '2018-12-03 00:05:54', 0),
(51, 192, '2018-12-03 00:05:54', 0),
(52, 192, '2018-12-03 00:05:54', 0),
(53, 192, '2018-12-03 00:05:54', 0),
(54, 192, '2018-12-03 00:05:54', 0),
(55, 192, '2018-12-03 00:05:54', 0),
(56, 192, '2018-12-03 00:05:54', 0),
(57, 192, '2018-12-03 00:05:54', 0),
(58, 192, '2018-12-03 00:05:54', 0),
(59, 192, '2018-12-03 00:05:54', 0),
(60, 192, '2018-12-03 00:05:54', 0),
(61, 192, '2018-12-03 00:05:54', 0),
(62, 192, '2018-12-03 00:05:54', 0),
(63, 192, '2018-12-03 00:05:54', 0),
(64, 192, '2018-12-03 00:05:54', 0),
(65, 192, '2018-12-03 00:05:54', 0),
(66, 192, '2018-12-03 00:05:54', 0),
(67, 192, '2018-12-03 00:05:54', 0),
(68, 192, '2018-12-03 00:05:54', 0),
(69, 194, '2018-12-03 00:46:16', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `in_shape`
--

CREATE TABLE `in_shape` (
  `idx` int(11) NOT NULL,
  `Useridx` int(11) NOT NULL,
  `Filename` varchar(255) NOT NULL,
  `Filesize` int(11) NOT NULL,
  `Filesrc` varchar(255) NOT NULL,
  `Outsrc` varchar(255) NOT NULL,
  `Filekinds` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_dir` enum('Y','N') NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `in_shape`
--

INSERT INTO `in_shape` (`idx`, `Useridx`, `Filename`, `Filesize`, `Filesrc`, `Outsrc`, `Filekinds`, `parent`, `is_dir`, `c_date`, `u_date`) VALUES
(193, 1, '이쁜이', 0, '', '', '', 0, 'Y', '2018-12-03 00:39:54', '2018-12-03 00:39:54'),
(194, 1, '127_0_0_1.sql', 22, '5c047ca3ad1f6.SQL', '353e', 'sql', 193, 'N', '2018-12-03 00:45:23', '2018-12-03 00:45:23');

-- --------------------------------------------------------

--
-- 테이블 구조 `outset`
--

CREATE TABLE `outset` (
  `idx` int(11) NOT NULL,
  `shape_idx` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Download` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `outset`
--

INSERT INTO `outset` (`idx`, `shape_idx`, `Date`, `Download`) VALUES
(170, 194, '2018-12-03 00:46:47', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `idx` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `lv` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `Email`, `Password`, `Username`, `lv`) VALUES
(1, 'hsw0914@naver.com', 'ff2c2c683c66cc77736f8df9e94873e5111cc88b0e5f3ec6bb517fdb60458b4b', '한세운', 99),
(2, 'kim0101@naver.com', '72af339bc2831abcf3aef043527529080bc707fd201daf8376f050afb905b175', '김영훈', 1);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `inset`
--
ALTER TABLE `inset`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `in_shape`
--
ALTER TABLE `in_shape`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `outset`
--
ALTER TABLE `outset`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `inset`
--
ALTER TABLE `inset`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 테이블의 AUTO_INCREMENT `in_shape`
--
ALTER TABLE `in_shape`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- 테이블의 AUTO_INCREMENT `outset`
--
ALTER TABLE `outset`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- 테이블의 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 데이터베이스: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 테이블의 덤프 데이터 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cloud\",\"table\":\"in_shape\"},{\"db\":\"cloud\",\"table\":\"outset\"},{\"db\":\"cloud\",\"table\":\"inset\"}]');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 테이블의 덤프 데이터 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-03 01:39:06', '{\"lang\":\"ko\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 테이블의 인덱스 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 테이블의 인덱스 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 테이블의 인덱스 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 테이블의 인덱스 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 테이블의 인덱스 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 테이블의 인덱스 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 테이블의 인덱스 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 테이블의 인덱스 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 테이블의 인덱스 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 테이블의 인덱스 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 데이터베이스: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
