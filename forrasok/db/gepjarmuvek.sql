-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2023 at 12:05 PM
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
CREATE DATABASE IF NOT EXISTS `gepjarmuvek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `gepjarmuvek`;

-- --------------------------------------------------------

--
-- Table structure for table `megyek`
--

CREATE TABLE `megyek` (
  `Mid` int(11) NOT NULL,
  `megyenev` varchar(100) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `megyek`
--

INSERT INTO `megyek` (`Mid`, `megyenev`, `Rid`) VALUES
(1, 'Fejér', 4),
(2, 'Komárom-Esztergom', 4),
(3, 'Veszprém', 4),
(4, 'Győr-Moson-Sopron', 5),
(5, 'Vas', 5),
(6, 'Zala', 5),
(7, 'Baranya', 6),
(8, 'Somogy', 6),
(9, 'Tolna', 6),
(10, 'Borsod-Abaúj-Zemplén', 7),
(11, 'Heves', 7),
(12, 'Nógrád', 7),
(13, 'Hajdú-Bihar', 8),
(14, 'Jász-Nagykun-Szolnok', 8),
(15, 'Szabolcs-Szatmár-Bereg', 8),
(16, 'Bács-Kiskun', 9),
(17, 'Békés', 9),
(18, 'Csongrád-Csanád', 9),
(19, 'Budapest', 2),
(20, 'Pest', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `megyek_datum_avg`
-- (See below for the actual view)
--
CREATE TABLE `megyek_datum_avg` (
`osszesen` varchar(54)
,`megyenev` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `regiok`
--

CREATE TABLE `regiok` (
  `Rid` int(11) NOT NULL,
  `regionev` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `regio_tipusa` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `regiok`
--

INSERT INTO `regiok` (`Rid`, `regionev`, `regio_tipusa`) VALUES
(1, 'Pest', 'vármegye'),
(2, 'Budapest', 'főváros'),
(3, 'Közép-Magyarország', 'nagyrégió'),
(4, 'Közép-Dunántúl', 'régió'),
(5, 'Nyugat-Dunántúl', 'régió'),
(6, 'Dél-Dunántúl', 'régió'),
(7, 'Észak-Magyarország', 'régió'),
(8, 'Észak-Alfőld', 'régió'),
(9, 'Dél-Alföld', 'régió');

-- --------------------------------------------------------

--
-- Stand-in structure for view `regiok_osszesen`
-- (See below for the actual view)
--
CREATE TABLE `regiok_osszesen` (
`osszesen` int(1)
,`datum` int(1)
);

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
-- Dumping data for table `szg_szama`
--

INSERT INTO `szg_szama` (`datum`, `darabszam`, `Mid`, `Rid`) VALUES
(2017, 154561, 1, 4),
(2018, 163587, 1, 4),
(2019, 172645, 1, 4),
(2020, 178500, 1, 4),
(2021, 184531, 1, 4),
(2017, 111761, 2, 4),
(2018, 117786, 2, 4),
(2019, 124522, 2, 4),
(2020, 127536, 2, 4),
(2017, 133609, 3, 4),
(2018, 140036, 3, 4),
(2019, 146743, 3, 4),
(2020, 149666, 3, 4),
(2021, 153114, 3, 4),
(2017, 180765, 4, 5),
(2018, 189364, 4, 5),
(2019, 197983, 4, 5),
(2021, 210777, 4, 5),
(2017, 102046, 5, 5),
(2018, 106369, 5, 5),
(2019, 110852, 5, 5),
(2020, 113975, 5, 5),
(2021, 116623, 5, 5),
(2017, 105844, 6, 5),
(2018, 110524, 6, 5),
(2019, 114743, 6, 5),
(2020, 118153, 6, 5),
(2021, 121056, 6, 5),
(2017, 125785, 7, 6),
(2018, 131166, 7, 6),
(2019, 136356, 7, 6),
(2020, 140380, 7, 6),
(2021, 143876, 7, 6),
(2017, 108183, 8, 6),
(2018, 113919, 8, 6),
(2019, 119244, 8, 6),
(2020, 123253, 8, 6),
(2021, 126962, 8, 6),
(2017, 79714, 9, 6),
(2018, 83297, 9, 6),
(2019, 86663, 9, 6),
(2020, 89027, 9, 6),
(2021, 90996, 9, 6),
(2017, 189017, 10, 7),
(2018, 199748, 10, 7),
(2019, 209275, 10, 7),
(2020, 216369, 10, 7),
(2021, 221731, 10, 7),
(2017, 98093, 11, 7),
(2018, 103431, 11, 7),
(2019, 108853, 11, 7),
(2020, 112323, 11, 7),
(2021, 114750, 11, 7),
(2017, 62200, 12, 7),
(2018, 65969, 12, 7),
(2019, 69400, 12, 7),
(2020, 71992, 12, 7),
(2021, 73642, 12, 7),
(2017, 162555, 13, 8),
(2018, 170542, 13, 8),
(2019, 179259, 13, 8),
(2020, 186493, 13, 8),
(2021, 191261, 13, 8),
(2017, 110991, 14, 8),
(2018, 117886, 14, 8),
(2019, 123790, 14, 8),
(2020, 129084, 14, 8),
(2021, 134239, 14, 8),
(2017, 170859, 15, 8),
(2018, 179545, 15, 8),
(2019, 187797, 15, 8),
(2020, 194835, 15, 8),
(2021, 197721, 15, 8),
(2017, 192080, 16, 9),
(2018, 201924, 16, 9),
(2019, 211020, 16, 9),
(2020, 218563, 16, 9),
(2021, 225339, 16, 9),
(2017, 105779, 17, 9),
(2018, 110915, 17, 9),
(2019, 115686, 17, 9),
(2020, 119935, 17, 9),
(2021, 123140, 17, 9),
(2017, 131470, 18, 9),
(2018, 138015, 18, 9),
(2019, 144658, 18, 9),
(2020, 149708, 18, 9),
(2021, 154129, 18, 9),
(2017, 633554, 19, 2),
(2018, 659513, 19, 2),
(2019, 684197, 19, 2),
(2020, 690560, 19, 2),
(2021, 702865, 19, 2),
(2021, 131351, 2, 4),
(2020, 204464, 4, 5);

-- --------------------------------------------------------

--
-- Structure for view `megyek_datum_avg`
--
DROP TABLE IF EXISTS `megyek_datum_avg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `megyek_datum_avg`  AS SELECT format(avg(`szg_szama`.`darabszam`),2) AS `osszesen`, `megyek`.`megyenev` AS `megyenev` FROM ((`megyek` join `szg_szama` on((`megyek`.`Mid` = `szg_szama`.`Mid`))) join `regiok` on((`regiok`.`Rid` = `szg_szama`.`Rid`))) GROUP BY `szg_szama`.`Mid` ORDER BY `megyek`.`megyenev` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `regiok_osszesen`
--
DROP TABLE IF EXISTS `regiok_osszesen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regiok_osszesen`  AS SELECT 1 AS `osszesen`, 1 AS `datum``datum`  ;

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
