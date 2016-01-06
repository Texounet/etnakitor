-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 06, 2016 at 10:30 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `etnakitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `personnes`
--

CREATE TABLE `personnes` (
  `id` int(11) NOT NULL,
  `result` varchar(255) NOT NULL,
  `sexe` varchar(2) NOT NULL,
  `cheveux` varchar(20) NOT NULL,
  `yeux` varchar(20) NOT NULL,
  `promo` varchar(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `lunette` varchar(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnes`
--

INSERT INTO `personnes` (`id`, `result`, `sexe`, `cheveux`, `yeux`, `promo`, `service`, `lunette`) VALUES
(1, 'Robin', 'M', 'brun', 'marron', 'prep etna', 'pédago', 'N'),
(2, 'Stéphanie GUBERN', 'F', 'blonde', 'marron', 'etna', 'pedago', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`) VALUES
(1, 'question 1'),
(2, 'question 2'),
(3, 'question 3'),
(4, 'question 4'),
(5, 'question 5'),
(6, 'question 6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;