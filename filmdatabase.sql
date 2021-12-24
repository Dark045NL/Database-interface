-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 dec 2021 om 10:46
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmdatabase`
--

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `3a`
-- (Zie onder voor de actuele view)
--
CREATE TABLE `3a` (
`Productiehuis_ID` int(50)
,`Naam` varchar(50)
,`Adres` varchar(50)
,`Plaats` varchar(50)
,`Postcode` varchar(50)
,`Land` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `3b`
-- (Zie onder voor de actuele view)
--
CREATE TABLE `3b` (
`Titel` varchar(50)
,`Release_Date` date
,`Naam` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structuur voor view `3c`
-- (Zie onder voor de actuele view)
--
CREATE TABLE `3c` (
`Voornaam` varchar(50)
,`Titel` varchar(50)
);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acteur`
--

CREATE TABLE `acteur` (
  `ActeurID` int(11) NOT NULL,
  `Voornaam` varchar(50) NOT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Geslacht` varchar(50) NOT NULL,
  `Geboortedatum` date NOT NULL,
  `Woonplaats` varchar(50) NOT NULL,
  `Land` varchar(50) NOT NULL,
  `Specialisme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `acteur`
--

INSERT INTO `acteur` (`ActeurID`, `Voornaam`, `Achternaam`, `Geslacht`, `Geboortedatum`, `Woonplaats`, `Land`, `Specialisme`) VALUES
(1, 'Stephan', 'Bisschop', 'Man', '2002-11-15', 'Simpelveld', 'Nederland', 'Improvise');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `crew`
--

CREATE TABLE `crew` (
  `CrewID` int(11) NOT NULL,
  `Voornaam` varchar(50) NOT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Geslacht` varchar(50) NOT NULL,
  `Geboortedatum` date NOT NULL,
  `Woonplaats` varchar(50) NOT NULL,
  `Land` varchar(50) NOT NULL,
  `Specialisme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `crew`
--

INSERT INTO `crew` (`CrewID`, `Voornaam`, `Achternaam`, `Geslacht`, `Geboortedatum`, `Woonplaats`, `Land`, `Specialisme`) VALUES
(1, 'Stephan', 'Bisschop', 'Man', '2002-11-15', 'Simpelveld', 'Nederland', 'Filmen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `film`
--

CREATE TABLE `film` (
  `FilmID` int(11) NOT NULL,
  `Titel` varchar(50) NOT NULL,
  `Release_Date` date NOT NULL,
  `Korte_inhoud` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Productiehuis_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `film`
--

INSERT INTO `film` (`FilmID`, `Titel`, `Release_Date`, `Korte_inhoud`, `Rating`, `Productiehuis_ID`) VALUES
(1, 'chainsawridge', '2002-11-15', 'ketting oorlog', 10, 1),
(2, 'operation markt achteruin', '2021-11-15', 'achtertuin van de markt', 10, 2),
(3, 'saving private adolf', '2023-11-15', 'redden van adolf', 0, 3),
(4, 'battle of bogel', '2024-11-15', 'strijd om de bogel', 3, 3),
(5, 'thomas in de oorlog', '2025-11-15', 'thomas de oorlogs trein', 2, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `filmcast`
--

CREATE TABLE `filmcast` (
  `ActeurID` int(50) NOT NULL,
  `Personage` varchar(50) NOT NULL,
  `FilmID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `filmcast`
--

INSERT INTO `filmcast` (`ActeurID`, `Personage`, `FilmID`) VALUES
(1, 'Man', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `filmcrew`
--

CREATE TABLE `filmcrew` (
  `CrewID` int(11) NOT NULL,
  `FilmID` int(11) NOT NULL,
  `Functie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `filmcrew`
--

INSERT INTO `filmcrew` (`CrewID`, `FilmID`, `Functie`) VALUES
(1, 1, 'Act'),
(2, 2, 'Figuranten');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `productiehuis`
--

CREATE TABLE `productiehuis` (
  `Productiehuis_ID` int(50) NOT NULL,
  `Naam` varchar(50) NOT NULL,
  `Adres` varchar(50) NOT NULL,
  `Plaats` varchar(50) NOT NULL,
  `Postcode` varchar(50) NOT NULL,
  `Land` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `productiehuis`
--

INSERT INTO `productiehuis` (`Productiehuis_ID`, `Naam`, `Adres`, `Plaats`, `Postcode`, `Land`) VALUES
(1, 'dutchfilworks', 'nederlandstraat1', 'nederland', '6969NL', 'nederland'),
(2, 'belguimfilmworks', 'belgiestraat 1', 'belgie', '6369BE', 'belgie'),
(3, 'deutschefilmworks', 'deutschlandstrasse 1', 'duitsland', '6369DE', 'duitsland');

-- --------------------------------------------------------

--
-- Structuur voor de view `3a`
--
DROP TABLE IF EXISTS `3a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `3a`  AS SELECT `productiehuis`.`Productiehuis_ID` AS `Productiehuis_ID`, `productiehuis`.`Naam` AS `Naam`, `productiehuis`.`Adres` AS `Adres`, `productiehuis`.`Plaats` AS `Plaats`, `productiehuis`.`Postcode` AS `Postcode`, `productiehuis`.`Land` AS `Land` FROM `productiehuis` WHERE `productiehuis`.`Land` = 'nederland' ;

-- --------------------------------------------------------

--
-- Structuur voor de view `3b`
--
DROP TABLE IF EXISTS `3b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `3b`  AS SELECT DISTINCT `film`.`Titel` AS `Titel`, `film`.`Release_Date` AS `Release_Date`, `productiehuis`.`Naam` AS `Naam` FROM ((`film` join `filmcrew`) join `productiehuis`) WHERE `film`.`Release_Date` = '2002-11-15' AND `productiehuis`.`Naam` = 'dutchfilworks' ;

-- --------------------------------------------------------

--
-- Structuur voor de view `3c`
--
DROP TABLE IF EXISTS `3c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `3c`  AS SELECT `acteur`.`Voornaam` AS `Voornaam`, `film`.`Titel` AS `Titel` FROM (`film` join `acteur`) WHERE `acteur`.`Voornaam` = 'stephan' ;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`ActeurID`);

--
-- Indexen voor tabel `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`CrewID`);

--
-- Indexen voor tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`FilmID`),
  ADD KEY `Productiehuis_ID` (`Productiehuis_ID`);

--
-- Indexen voor tabel `filmcast`
--
ALTER TABLE `filmcast`
  ADD KEY `FilmID` (`FilmID`),
  ADD KEY `ActeurID` (`ActeurID`,`FilmID`);

--
-- Indexen voor tabel `filmcrew`
--
ALTER TABLE `filmcrew`
  ADD KEY `FilmID` (`FilmID`),
  ADD KEY `CrewID` (`CrewID`);

--
-- Indexen voor tabel `productiehuis`
--
ALTER TABLE `productiehuis`
  ADD PRIMARY KEY (`Productiehuis_ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `acteur`
--
ALTER TABLE `acteur`
  MODIFY `ActeurID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `crew`
--
ALTER TABLE `crew`
  MODIFY `CrewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `film`
--
ALTER TABLE `film`
  MODIFY `FilmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`CrewID`) REFERENCES `filmcrew` (`CrewID`);

--
-- Beperkingen voor tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Productiehuis_ID`) REFERENCES `productiehuis` (`Productiehuis_ID`);

--
-- Beperkingen voor tabel `filmcast`
--
ALTER TABLE `filmcast`
  ADD CONSTRAINT `filmcast_ibfk_1` FOREIGN KEY (`FilmID`) REFERENCES `film` (`FilmID`),
  ADD CONSTRAINT `filmcast_ibfk_2` FOREIGN KEY (`ActeurID`) REFERENCES `acteur` (`ActeurID`);

--
-- Beperkingen voor tabel `filmcrew`
--
ALTER TABLE `filmcrew`
  ADD CONSTRAINT `filmcrew_ibfk_1` FOREIGN KEY (`FilmID`) REFERENCES `film` (`FilmID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
