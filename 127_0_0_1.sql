-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 01:04 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpbaza`
--
CREATE DATABASE IF NOT EXISTS `wpbaza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wpbaza`;

-- --------------------------------------------------------

--
-- Table structure for table `ebpp`
--

CREATE TABLE `ebpp` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etrg`
--

CREATE TABLE `etrg` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pis`
--

CREATE TABLE `pis` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin', 'admin@wpprojekat.com'),
(11, 'Nihad', 'Buljubašić', 'BNihad', '123', 'nihad.buljubasic@wpprojekat.com'),
(12, 'Amir', 'Havić', 'HAmir', '123', 'amir.havic@wpprojekat.com'),
(13, 'Dženana', 'Junuzović', 'JDzenana', '123', 'dzenana.junuzovic@wpprojekat.com'),
(14, 'Davud', 'Karavdić', 'KDavud', '123', 'davud.karavdic@wpprojekat.com'),
(15, 'Amina', 'Paščanović', 'PAmina', '123', 'amina.pascanovic@wpprojekat.com'),
(16, 'Katarina', 'Andrejaš', 'AKatarina', '123', 'katarina.andrejas@wpprojekat.com'),
(17, 'Kenan', 'Begičić', 'BKenan', '123', 'kenan.begicic@wpprojekat.com'),
(18, 'Ćamil', 'Karić', 'KCamil', '123', 'camil.karic@wpprojekat.com'),
(19, 'Eldin', 'Hadžić', 'HEldin', '123', 'eldin.hadzic@wpprojekat.com'),
(20, 'Maid', 'Ramadanović', 'RMaid', '123', 'maid.ramadanovic@wpprojekat.com'),
(21, 'Izet', 'Mujezinović', 'MIzet', '123', 'izet.mujezinovic@wpprojekat.com'),
(22, 'Edin', 'Mukinović', 'MEdin', '123', 'edin.mukinovic@wpprojekat.com'),
(23, 'Elnur', 'Mukinovic', 'MElnur', '123', 'elnur.mukinovic@wpprojekat.com'),
(24, 'Amina', 'Mustafić', 'MAmina', '123', 'amina.mustafic@wpprojekat.com'),
(25, 'Bekir', 'Okić', 'OBekir', '123', 'bekir.okic@wpprojekat.com'),
(26, 'Emina', 'Omerović', 'OEmina', '123', 'emina.omerovic@wpprojekat.com'),
(27, 'Emir', 'Osmanović', 'OEmir', '123', 'emir.osmanovic@wpprojekat.com'),
(28, 'Sanjin', 'Rahmanović', 'RSanjin', '123', 'sanjin.rahmanovic@wpprojekat.com'),
(29, 'Vedad', 'Sahanić', 'SVedad', '123', 'vedad.sahanic@wpprojekat.com'),
(30, 'Ahmed', 'Sakić', 'SAhmed', '123', 'ahmed.sakic@wpprojekat.com'),
(31, 'Sanel', 'Šečić', 'SSanel', '123', 'sanel.secic@wpprojekat.com'),
(32, 'Eldin', 'Šerifović', 'SEldin', '123', 'eldin.serifovic@wpprojekat.com'),
(33, 'Edina', 'Šišić', 'SEdina', '123', 'edina.sisic@wpprojekat.com'),
(34, 'Irma', 'Tufekčić', 'TIrma', '123', 'irma.tufekcic@wpprojekat.com'),
(35, 'Anaid', 'Vejzović', 'VAnaid', '123', 'anaid.vejzovic@wpprojekat.com'),
(36, 'Safer', 'Zildžić', 'ZSafer', '123', 'safer.zildzic@wpprojekat.com'),
(37, 'Adnan', 'Babajić', 'BAdnan', '123', 'adnan.babajic@wpprojekat.com'),
(38, 'Ramiz', 'Delić', 'DRamiz', '123', 'ramiz.delic@wpprojekat.com'),
(39, 'Ćamil', 'Omerovic', 'OCamil', '123', 'camil.omerovic@wpprojekat.com'),
(40, 'Ahmed', 'Jukić', 'JAhmed', '123', 'ahmed.jukic@wpprojekat.com'),
(41, 'Nedim', 'Mujačić', 'MNedim', '123', 'nedim.mujacic@wpprojekat.com'),
(42, 'Robert', 'Divković', 'DRobert', '123', 'robert.divkovic@wpprojekat.com'),
(43, 'Aldin', 'Malkić', 'MAldin', '123', 'aldin.malkic@wpprojekat.com'),
(44, 'Asmir', 'Šabanović', 'SAsmir', '123', 'asmir.sabanovic@wpprojekat.com'),
(45, 'Mirza', 'Čičkušić', 'CMirza', '123', 'mirza.cickusic@wpprojekat.com'),
(46, 'Edin', 'Ademović', 'AEdin', '123', 'edin.ademovic@wpprojekat.com'),
(47, 'Omar', 'Čorbić', 'COmar', '123', 'omar.corbic@wpprojekat.com'),
(48, 'Muamer', 'Fajić', 'FMuamer', '123', 'muamer.fajic@wpprojekat.com'),
(49, 'Ibrahim', 'Kamenjaković', 'KIbrahim', '123', 'ibrahim.kamenjakovic@wpprojekat.com'),
(50, 'Ermin', 'Kukić', 'KErmin', '123', 'ermin.kukic@wpprojekat.com'),
(51, 'Dželil', 'Muhamedbegović', 'MDzelil', '123', 'dzelil.muhamedbegovic@wpprojekat.com'),
(52, 'Mirza', 'Aščić', 'AMirza', '123', 'mirza.ascic@wpprojekat.com'),
(53, 'Haris', 'Zonić', 'ZHaris', '123', 'haris.zonic@wpprojekat.com'),
(54, 'Nedim', 'Udvinčić', 'UNedim', '123', 'nedim.udvincic@wpprojekat.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp`
--

CREATE TABLE `wp` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ebpp`
--
ALTER TABLE `ebpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etrg`
--
ALTER TABLE `etrg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pis`
--
ALTER TABLE `pis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wp`
--
ALTER TABLE `wp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ebpp`
--
ALTER TABLE `ebpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `etrg`
--
ALTER TABLE `etrg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pm`
--
ALTER TABLE `pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `wp`
--
ALTER TABLE `wp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
