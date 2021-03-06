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
(11, 'Nihad', 'Buljuba??i??', 'BNihad', '123', 'nihad.buljubasic@wpprojekat.com'),
(12, 'Amir', 'Havi??', 'HAmir', '123', 'amir.havic@wpprojekat.com'),
(13, 'D??enana', 'Junuzovi??', 'JDzenana', '123', 'dzenana.junuzovic@wpprojekat.com'),
(14, 'Davud', 'Karavdi??', 'KDavud', '123', 'davud.karavdic@wpprojekat.com'),
(15, 'Amina', 'Pa????anovi??', 'PAmina', '123', 'amina.pascanovic@wpprojekat.com'),
(16, 'Katarina', 'Andreja??', 'AKatarina', '123', 'katarina.andrejas@wpprojekat.com'),
(17, 'Kenan', 'Begi??i??', 'BKenan', '123', 'kenan.begicic@wpprojekat.com'),
(18, '??amil', 'Kari??', 'KCamil', '123', 'camil.karic@wpprojekat.com'),
(19, 'Eldin', 'Had??i??', 'HEldin', '123', 'eldin.hadzic@wpprojekat.com'),
(20, 'Maid', 'Ramadanovi??', 'RMaid', '123', 'maid.ramadanovic@wpprojekat.com'),
(21, 'Izet', 'Mujezinovi??', 'MIzet', '123', 'izet.mujezinovic@wpprojekat.com'),
(22, 'Edin', 'Mukinovi??', 'MEdin', '123', 'edin.mukinovic@wpprojekat.com'),
(23, 'Elnur', 'Mukinovic', 'MElnur', '123', 'elnur.mukinovic@wpprojekat.com'),
(24, 'Amina', 'Mustafi??', 'MAmina', '123', 'amina.mustafic@wpprojekat.com'),
(25, 'Bekir', 'Oki??', 'OBekir', '123', 'bekir.okic@wpprojekat.com'),
(26, 'Emina', 'Omerovi??', 'OEmina', '123', 'emina.omerovic@wpprojekat.com'),
(27, 'Emir', 'Osmanovi??', 'OEmir', '123', 'emir.osmanovic@wpprojekat.com'),
(28, 'Sanjin', 'Rahmanovi??', 'RSanjin', '123', 'sanjin.rahmanovic@wpprojekat.com'),
(29, 'Vedad', 'Sahani??', 'SVedad', '123', 'vedad.sahanic@wpprojekat.com'),
(30, 'Ahmed', 'Saki??', 'SAhmed', '123', 'ahmed.sakic@wpprojekat.com'),
(31, 'Sanel', '??e??i??', 'SSanel', '123', 'sanel.secic@wpprojekat.com'),
(32, 'Eldin', '??erifovi??', 'SEldin', '123', 'eldin.serifovic@wpprojekat.com'),
(33, 'Edina', '??i??i??', 'SEdina', '123', 'edina.sisic@wpprojekat.com'),
(34, 'Irma', 'Tufek??i??', 'TIrma', '123', 'irma.tufekcic@wpprojekat.com'),
(35, 'Anaid', 'Vejzovi??', 'VAnaid', '123', 'anaid.vejzovic@wpprojekat.com'),
(36, 'Safer', 'Zild??i??', 'ZSafer', '123', 'safer.zildzic@wpprojekat.com'),
(37, 'Adnan', 'Babaji??', 'BAdnan', '123', 'adnan.babajic@wpprojekat.com'),
(38, 'Ramiz', 'Deli??', 'DRamiz', '123', 'ramiz.delic@wpprojekat.com'),
(39, '??amil', 'Omerovic', 'OCamil', '123', 'camil.omerovic@wpprojekat.com'),
(40, 'Ahmed', 'Juki??', 'JAhmed', '123', 'ahmed.jukic@wpprojekat.com'),
(41, 'Nedim', 'Muja??i??', 'MNedim', '123', 'nedim.mujacic@wpprojekat.com'),
(42, 'Robert', 'Divkovi??', 'DRobert', '123', 'robert.divkovic@wpprojekat.com'),
(43, 'Aldin', 'Malki??', 'MAldin', '123', 'aldin.malkic@wpprojekat.com'),
(44, 'Asmir', '??abanovi??', 'SAsmir', '123', 'asmir.sabanovic@wpprojekat.com'),
(45, 'Mirza', '??i??ku??i??', 'CMirza', '123', 'mirza.cickusic@wpprojekat.com'),
(46, 'Edin', 'Ademovi??', 'AEdin', '123', 'edin.ademovic@wpprojekat.com'),
(47, 'Omar', '??orbi??', 'COmar', '123', 'omar.corbic@wpprojekat.com'),
(48, 'Muamer', 'Faji??', 'FMuamer', '123', 'muamer.fajic@wpprojekat.com'),
(49, 'Ibrahim', 'Kamenjakovi??', 'KIbrahim', '123', 'ibrahim.kamenjakovic@wpprojekat.com'),
(50, 'Ermin', 'Kuki??', 'KErmin', '123', 'ermin.kukic@wpprojekat.com'),
(51, 'D??elil', 'Muhamedbegovi??', 'MDzelil', '123', 'dzelil.muhamedbegovic@wpprojekat.com'),
(52, 'Mirza', 'A????i??', 'AMirza', '123', 'mirza.ascic@wpprojekat.com'),
(53, 'Haris', 'Zoni??', 'ZHaris', '123', 'haris.zonic@wpprojekat.com'),
(54, 'Nedim', 'Udvin??i??', 'UNedim', '123', 'nedim.udvincic@wpprojekat.com');

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
