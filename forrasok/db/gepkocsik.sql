-- Adatbázis létrehozása
CREATE DATABASE IF NOT EXISTS `gepkocsik` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `gepkocsik`;

-- 1. Tábla: regiok
-- A régiók nevét és azonosítóját tárolja.
CREATE TABLE IF NOT EXISTS `regiok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- 2. Tábla: megyek
-- A megyék nevét tárolja, és összeköti őket a régiókkal.
CREATE TABLE IF NOT EXISTS `megyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regio_id` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regio_id` (`regio_id`),
  CONSTRAINT `megyek_ibfk_1` FOREIGN KEY (`regio_id`) REFERENCES `regiok` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- 3. Tábla: gepkocsik
-- A gépkocsik számát tárolja megyénként és évenként.
CREATE TABLE IF NOT EXISTS `gepkocsik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `megye_id` int(11) NOT NULL,
  `ev` int(11) NOT NULL,
  `darab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `megye_id` (`megye_id`),
  CONSTRAINT `gepkocsik_ibfk_1` FOREIGN KEY (`megye_id`) REFERENCES `megyek` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- Megjegyzés: Az adatokat a feladatban biztosított forrásfájlokból kell importálni ebbe a struktúrába.

-- Adatok feltöltése

-- 1. Régiók (8 tervezési-statisztikai régió)
INSERT INTO `regiok` (`id`, `nev`) VALUES
(1, 'Budapest'),
(2, 'Pest'),
(3, 'Közép-Dunántúl'),
(4, 'Nyugat-Dunántúl'),
(5, 'Dél-Dunántúl'),
(6, 'Észak-Magyarország'),
(7, 'Észak-Alföld'),
(8, 'Dél-Alföld');

-- 2. Megyék
INSERT INTO `megyek` (`id`, `regio_id`, `nev`) VALUES
(1, 1, 'Budapest'),
(2, 2, 'Pest'),
(3, 3, 'Fejér'),
(4, 3, 'Komárom-Esztergom'),
(5, 3, 'Veszprém'),
(6, 4, 'Győr-Moson-Sopron'),
(7, 4, 'Vas'),
(8, 4, 'Zala'),
(9, 5, 'Baranya'),
(10, 5, 'Somogy'),
(11, 5, 'Tolna'),
(12, 6, 'Borsod-Abaúj-Zemplén'),
(13, 6, 'Heves'),
(14, 6, 'Nógrád'),
(15, 7, 'Hajdú-Bihar'),
(16, 7, 'Jász-Nagykun-Szolnok'),
(17, 7, 'Szabolcs-Szatmár-Bereg'),
(18, 8, 'Bács-Kiskun'),
(19, 8, 'Békés'),
(20, 8, 'Csongrád-Csanád');

-- 3. Gépkocsik (Mintaadatok a PDF alapján)
INSERT INTO `gepkocsik` (`megye_id`, `ev`, `darab`) VALUES
-- Közép-Dunántúl részletes adatok (3. feladat mintája)
(3, 2017, 154561), (3, 2018, 163587), (3, 2019, 172645), (3, 2020, 178500), (3, 2021, 184531), -- Fejér
(4, 2017, 111761), (4, 2018, 117786), (4, 2019, 124522), (4, 2020, 127536), (4, 2021, 130100), -- Komárom-Esztergom
(5, 2017, 133609), (5, 2018, 140036), (5, 2019, 146743), (5, 2020, 149666), (5, 2021, 153114), -- Veszprém

-- Egyéb megyék adatai (2. feladat táblázata alapján becsült értékek 2020-ra)
(1, 2020, 674137), -- Budapest
(2, 2020, 520000), -- Pest (becsült)
(6, 2020, 196670), -- Győr-Moson-Sopron
(7, 2020, 110000), -- Vas (becsült)
(8, 2020, 120000), -- Zala (becsült)
(9, 2020, 135512), -- Baranya
(10, 2020, 115000), -- Somogy (becsült)
(11, 2020, 85000),  -- Tolna (becsült)
(12, 2020, 207228), -- Borsod-Abaúj-Zemplén
(13, 2020, 107490), -- Heves
(14, 2020, 68640),  -- Nógrád
(15, 2020, 178022), -- Hajdú-Bihar
(16, 2020, 123198), -- Jász-Nagykun-Szolnok
(17, 2020, 180000), -- Szabolcs-Szatmár-Bereg (becsült)
(18, 2020, 209785), -- Bács-Kiskun
(19, 2020, 115091), -- Békés
(20, 2020, 143596); -- Csongrád-Csanád