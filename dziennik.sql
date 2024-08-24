-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 29, 2024 at 08:33 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

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
  `login` varchar(200) NOT NULL,
  `haslo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logowanie`
--

INSERT INTO `logowanie` (`id`, `nazwa`, `login`, `haslo`) VALUES
(0, 'Maks', 'max', '1234'),
(1, 'Dominik', 'dodo', '1234');

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
  `dzien` varchar(100) DEFAULT NULL,
  `a0` varchar(100) DEFAULT NULL,
  `a1` varchar(100) DEFAULT NULL,
  `a2` varchar(100) DEFAULT NULL,
  `a3` varchar(100) DEFAULT NULL,
  `a4` varchar(100) DEFAULT NULL,
  `a5` varchar(100) DEFAULT NULL,
  `a6` varchar(100) DEFAULT NULL,
  `a7` varchar(100) DEFAULT NULL,
  `a8` varchar(100) DEFAULT NULL,
  `a9` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `logowanie_id`, `dzien`, `a0`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`) VALUES
(1, 1, NULL, '7:10-7:55', '8:00-8:45', '8:50-9:35', '9:40-10:30', '10:40-11:25', '11:40-12:25', '12:30-13:15', '13:25-14:10', '14:20-15:05', '15:15-16:00'),
(2, 1, 'Poniedziałek', 'Grafika Komputerowa', 'Grafika Komputerowa', 'Matematyka', 'Matematyka', 'J.Polski', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Wtorek', 'Matematyka', 'J.Angielski', 'J.Polski', 'J.Polski', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Środa', 'J.Angielski', 'J.Angielski', 'Matematyka', 'Matematyka', 'J.Polski', 'W-F', 'W-F', NULL, NULL, NULL),
(5, 1, 'Czwartek', 'Grafika Komputerowa', 'Grafika Komputerowa', 'J.Niemiecki', 'Religia', 'J.Angielski', NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Piątek', 'Matematyka', 'Grafika Komputerowa', 'Grafika Komputerowa', 'Grafika Komputerowa', 'Wychowawcza', 'Wiedza o Społeczeństwie', 'W-F', NULL, NULL, NULL);

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
-- Indeksy dla tabeli `wiadomosc`
--
ALTER TABLE `wiadomosc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logowanie_id` (`logowanie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `wiadomosc`
--
ALTER TABLE `wiadomosc`
  ADD CONSTRAINT `wiadomosc_ibfk_1` FOREIGN KEY (`logowanie_id`) REFERENCES `logowanie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
