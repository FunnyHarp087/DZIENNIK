-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 29, 2024 at 07:19 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dziennik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logowanie`
--

CREATE TABLE `logowanie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(200) NOT NULL,
  `rodzaj` varchar(255) NOT NULL,
  `login` varchar(200) NOT NULL,
  `haslo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logowanie`
--

INSERT INTO `logowanie` (`id`, `nazwa`, `rodzaj`, `login`, `haslo`) VALUES
(0, 'Maks', 'uczeń', 'max', '1234'),
(1, 'Dominik', 'uczeń', 'dodo', '1234');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `logowanie_id` int(11) DEFAULT NULL,
  `przedmiot` varchar(100) DEFAULT NULL,
  `ocena` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id`, `logowanie_id`, `przedmiot`, `ocena`) VALUES
(1, 1, 'polski', '1,6,2,0,+,44'),
(2, 1, 'angielski', '1,2,3-,+'),
(3, 1, 'matematyka', '2+,4+,3+,1,5,10%');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `logowanie_id` int(11) DEFAULT NULL,
  `godzina` varchar(100) DEFAULT NULL,
  `a0` varchar(100) DEFAULT NULL,
  `a1` varchar(100) DEFAULT NULL,
  `a2` varchar(100) DEFAULT NULL,
  `a3` varchar(100) DEFAULT NULL,
  `a4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `logowanie_id`, `godzina`, `a0`, `a1`, `a2`, `a3`, `a4`) VALUES
(8, 1, '7:10-7:55', 'Grafika Komputerowa', 'Matematyka', 'J.Angielski', 'Grafika Komputerowa', 'Matematyka'),
(9, 1, '8:00-8:45', 'Grafika Komputerowa', 'J.Angielski', 'J.Angielski', 'Grafika Komputerowa', 'Grafika Komputerowa'),
(10, 1, '8:50-9:35', 'Matematyka', 'J.Polski', 'Matematyka', 'J.Niemiecki', 'Grafika Komputerowa'),
(11, 1, '9:40-10:30', 'Matematyka', 'J.Polski', 'Matematyka', 'Religia', 'Grafika Komputerowa'),
(12, 1, '10:40-11:25', 'J.Polski', NULL, 'J.Polski', 'J.Angielski', 'Wychowawcza'),
(13, 1, '11:40-12:25', NULL, NULL, 'W-F', NULL, 'Wiedza o Społeczeństwie'),
(14, 1, '12:30-13:15', NULL, NULL, 'W-F', NULL, 'W-f');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwagi`
--

CREATE TABLE `uwagi` (
  `id` int(11) NOT NULL,
  `logowanie_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `punkty` int(5) DEFAULT NULL,
  `tresc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uwagi`
--

INSERT INTO `uwagi` (`id`, `logowanie_id`, `data`, `punkty`, `tresc`) VALUES
(1, 1, '2024-01-29', -14, '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean laoreet ex vitae nisi facilisis auctor in pulvinar sapien. Phasellus in purus sit amet lacus ullamcorper laoreet eget ac ante. Nunc vel tristique ligula, vitae faucibus ipsum. Curabitur commodo condimentum lobortis. Nunc elementum malesuada semper. Curabitur suscipit lacus id metus vehicula, eget semper augue vehicula. Donec mollis ex sit amet tortor gravida rutrum eu vitae mi. Morbi volutpat condimentum aliquam. In at metus placerat est facilisis pretium sed a lorem.\r\n\r\nFusce ut consectetur eros. Aliquam molestie finibus nisi, quis blandit orci tincidunt eu. Donec nibh nulla, scelerisque a velit sed, efficitur. ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosc`
--

CREATE TABLE `wiadomosc` (
  `id` int(11) NOT NULL,
  `logowanie_id` int(11) DEFAULT NULL,
  `data_dodania` date DEFAULT NULL,
  `tresc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wiadomosc`
--

INSERT INTO `wiadomosc` (`id`, `logowanie_id`, `data_dodania`, `tresc`) VALUES
(1, 1, '2024-01-02', 'jebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebacjebac'),
(2, 0, '2024-01-27', 'ruchacruchacruchacrucharuchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchaccruchacruchacruchacrucharuchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchaccruchacruchacruchacrucharuchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchaccruchacruchacruchacrucharuchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchaccruchacruchacruchacrucharuchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacruchacc'),
(3, 1, '2024-01-17', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget dapibus ipsum, sit amet iaculis velit. Donec consectetur magna sem, nec luctus ante dictum et. Nam sed efficitur massa. Sed id aliquet libero. Morbi molestie ante id eros fermentum, ut eleifend est lacinia. Duis dapibus vel ipsum nec fringilla. Curabitur sagittis hendrerit placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nPhasellus nec dui dui. Suspendisse cursus urna eu diam scelerisque luctus. Etiam tincidunt vestibulum sapien. Praesent quam magna, rhoncus vel molestie a, efficitur ut odio. Praesent varius enim sem, vitae auctor nisi auctor sit amet. Curabitur ut ante eu neque suscipit venenatis a eget metus. Suspendisse consequat tincidunt lacus vitae congue. Suspendisse eget ultricies quam.\r\n\r\nDonec congue vulputate placerat. Pellentesque eu accumsan erat. Etiam sit amet arcu nec mauris convallis mattis. Proin consectetur cursus nisi, et accumsan lorem pellen');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `logowanie`
--
ALTER TABLE `logowanie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logowanie_id` (`logowanie_id`);

--
-- Indeksy dla tabeli `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logowanie_id` (`logowanie_id`);

--
-- Indeksy dla tabeli `uwagi`
--
ALTER TABLE `uwagi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logowanie_id` (`logowanie_id`);

--
-- Indeksy dla tabeli `wiadomosc`
--
ALTER TABLE `wiadomosc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logowanie_id` (`logowanie_id`);

--
-- AUTO_INCREMENT for dumped tables
--
ALTER TABLE `logowanie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `uwagi`
--
ALTER TABLE `uwagi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wiadomosc`
--
ALTER TABLE `wiadomosc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`logowanie_id`) REFERENCES `logowanie` (`id`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`logowanie_id`) REFERENCES `logowanie` (`id`);

--
-- Constraints for table `uwagi`
--
ALTER TABLE `uwagi`
  ADD CONSTRAINT `uwagi_ibfk_1` FOREIGN KEY (`logowanie_id`) REFERENCES `logowanie` (`id`);

--
-- Constraints for table `wiadomosc`
--
ALTER TABLE `wiadomosc`
  ADD CONSTRAINT `wiadomosc_ibfk_1` FOREIGN KEY (`logowanie_id`) REFERENCES `logowanie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
