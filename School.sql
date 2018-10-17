-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 17 okt 2018 om 15:51
-- Serverversie: 10.1.35-MariaDB
-- PHP-versie: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `School`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Klassen`
--

CREATE TABLE `Klassen` (
  `Klas` varchar(255) NOT NULL,
  `Achternaam` varchar(255) NOT NULL,
  `Voornaam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Klassen`
--

INSERT INTO `Klassen` (`Klas`, `Achternaam`, `Voornaam`) VALUES
('1a', 'De Vries', 'Jan'),
('1a', 'Piet', 'De Jong'),
('1a', 'Henk', 'Smit'),
('1a', 'Edwin', 'Dijkstra'),
('1a', 'Jasper', 'Dewes'),
('1b', 'Jasper', 'Dewes'),
('1b', 'Johan', 'Jansen'),
('1b', 'Sven', 'Wilpstra'),
('1b', 'Dara', 'Al-Ali'),
('1b', 'Anna', 'Blauw');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Leerlingen`
--

CREATE TABLE `Leerlingen` (
  `ID` int(11) NOT NULL,
  `Achternaam` varchar(255) NOT NULL,
  `Voornaam` varchar(255) NOT NULL,
  `Geb_Datum` date NOT NULL,
  `Klas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Leerlingen`
--

INSERT INTO `Leerlingen` (`ID`, `Achternaam`, `Voornaam`, `Geb_Datum`, `Klas`) VALUES
(1, 'De Vries', 'Jan', '1976-05-06', '1a'),
(2, 'Piet', 'De Jong', '1980-02-04', '1a'),
(3, 'Henk', 'Smit', '1970-03-04', '1a'),
(4, 'Edwin', 'Dijkstra', '1970-01-15', '1a'),
(5, 'Jasper', 'Dewes', '1976-11-06', '1a'),
(6, 'Jasper', 'Dewes', '1976-11-06', '1b'),
(7, 'Johan', 'Jansen', '1976-11-06', '1b'),
(8, 'Sven', 'Wilpstra', '1986-09-18', '1b'),
(9, 'Dara', 'Al-Ali', '1980-05-08', '1b'),
(10, 'Anna', 'Blauw', '1988-08-08', '1b');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Leraren`
--

CREATE TABLE `Leraren` (
  `ID` int(11) NOT NULL,
  `Achternaam` varchar(255) NOT NULL,
  `Voornaam` varchar(255) NOT NULL,
  `Geb_Datum` date NOT NULL,
  `Vakken` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Leraren`
--

INSERT INTO `Leraren` (`ID`, `Achternaam`, `Voornaam`, `Geb_Datum`, `Vakken`) VALUES
(1, 'Klaas', 'de Vries', '1975-07-09', 'html, css, javascript'),
(2, 'Pieterse', 'Hans', '1990-05-02', 'php, mysql, laravel');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Lokalen`
--

CREATE TABLE `Lokalen` (
  `ID` int(11) NOT NULL,
  `Lokaal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Lokalen`
--

INSERT INTO `Lokalen` (`ID`, `Lokaal`) VALUES
(1, '305'),
(2, '306');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Rooster`
--

CREATE TABLE `Rooster` (
  `ID` int(11) NOT NULL,
  `Tijd` datetime NOT NULL,
  `Vak` varchar(255) NOT NULL,
  `Leraar` varchar(255) NOT NULL,
  `Leerling` varchar(255) NOT NULL,
  `Lokaal` varchar(255) NOT NULL,
  `Klas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Rooster`
--

INSERT INTO `Rooster` (`ID`, `Tijd`, `Vak`, `Leraar`, `Leerling`, `Lokaal`, `Klas`) VALUES
(1, '2018-10-21 09:00:00', '', '', '', '', NULL),
(2, '2018-10-21 10:00:00', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Vakken`
--

CREATE TABLE `Vakken` (
  `Vakken` varchar(255) NOT NULL,
  `Achternaam` varchar(255) NOT NULL,
  `Voornaam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Vakken`
--

INSERT INTO `Vakken` (`Vakken`, `Achternaam`, `Voornaam`) VALUES
('html, css, javascript', 'Klaas', 'de Vries'),
('php, mysql, laravel', 'Pieterse', 'Hans');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `Leerlingen`
--
ALTER TABLE `Leerlingen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `Leraren`
--
ALTER TABLE `Leraren`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `Lokalen`
--
ALTER TABLE `Lokalen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `Rooster`
--
ALTER TABLE `Rooster`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `Leerlingen`
--
ALTER TABLE `Leerlingen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `Leraren`
--
ALTER TABLE `Leraren`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `Lokalen`
--
ALTER TABLE `Lokalen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `Rooster`
--
ALTER TABLE `Rooster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
