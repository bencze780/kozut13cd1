-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2023 at 12:07 PM
-- Server version: 5.7.39
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gepjarmuvek`
--

-- --------------------------------------------------------

--
-- Table structure for table `megyek`
--

CREATE TABLE `megyek` (
  `Mid` int(11) NOT NULL,
  `megyenev` varchar(100) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regiok`
--

CREATE TABLE `regiok` (
  `Rid` int(11) NOT NULL,
  `regionev` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `regio_tipusa` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `szg_szama`
--

CREATE TABLE `szg_szama` (
  `datum` year(4) DEFAULT NULL,
  `darabszam` int(11) DEFAULT NULL,
  `Mid` int(11) DEFAULT NULL,
  `Rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `megyek`
--
ALTER TABLE `megyek`
  ADD PRIMARY KEY (`Mid`);

--
-- Indexes for table `regiok`
--
ALTER TABLE `regiok`
  ADD PRIMARY KEY (`Rid`);

--
-- Indexes for table `szg_szama`
--
ALTER TABLE `szg_szama`
  ADD KEY `szg_szama_regiok_Rid_fk` (`Rid`),
  ADD KEY `szg_szama_megyek_Mid_fk` (`Mid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `szg_szama`
--
ALTER TABLE `szg_szama`
  ADD CONSTRAINT `szg_szama_megyek_Mid_fk` FOREIGN KEY (`Mid`) REFERENCES `megyek` (`Mid`),
  ADD CONSTRAINT `szg_szama_regiok_Rid_fk` FOREIGN KEY (`Rid`) REFERENCES `regiok` (`Rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
