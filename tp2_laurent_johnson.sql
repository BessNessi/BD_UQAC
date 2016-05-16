-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 27 Mars 2016 à 17:40
-- Version du serveur: 5.5.47-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tp2_laurent_johnson`
--
CREATE DATABASE IF NOT EXISTS `tp2_laurent_johnson` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tp2_laurent_johnson`;

-- --------------------------------------------------------

--
-- Structure de la table `Book`
--

CREATE TABLE IF NOT EXISTS `Book` (
  `ISBN` int(8) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `edition` int(1) NOT NULL,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Book`
--

INSERT INTO `Book` (`ISBN`, `title`, `edition`, `year`) VALUES
(10026274, 'Extremely Loud and Incredibly Close', 1, 1931),
(10473662, 'Don''t Bend Over in the Garden, Granny, You Know Th', 1, 1930),
(11524160, 'Alexander and the Terrible, Horrible, No Good, Ver', 1, 1943),
(11633650, 'the Particular Sadness of Lemon Cake', 1, 2000),
(11775668, 'Well-Behaved Women Seldom Make History', 1, 1997),
(11822367, 'Send More Idiots', 1, 1904),
(13172789, 'Nostradamus Ate My Hamster', 1, 1975),
(14641702, 'Tinker, Tailor, Soldier, Spy', 1, 1925),
(17603912, 'The Effect of Gamma Rays on Man-in-the-Moon Marigo', 1, 1906),
(18572283, 'The Devil Wears Prada', 1, 2004),
(18772124, 'The Man Who Was Thursday: A Nightmare', 1, 1963),
(18897729, 'All Quiet on the Western Front', 1, 1935),
(20722517, 'One Hundred Years of Solitude', 1, 1909),
(22342301, 'I Have No Mouth and I Must Scream', 1, 2000),
(23170196, 'The Unbearable Lightness of Being', 1, 1985),
(23508706, 'When You Are Engulfed in Flames', 1, 2010),
(24562594, 'The Lone Ranger and Tonto Fistfight in Heaven', 1, 2000),
(24905123, 'If on a Winter''s Night a Traveller', 1, 1934),
(25890836, 'I Capture the Castle', 1, 1986),
(26770519, 'Zen and the Art of Motorcycle Maintenance: An Inqu', 1, 1947),
(26799126, 'Are You There, Vodka? It''s Me, Chelsea', 1, 1922),
(29409437, 'Neverwhere', 1, 1956),
(29992729, 'I Still Miss My Man But My Aim Is Getting Better', 1, 1943),
(33394467, 'The Zombie Survival Guide: Complete Protection fro', 1, 1983),
(35700201, 'The Importance of Being Earnest', 1, 1976),
(36481724, 'No Country For Old Men', 1, 1931),
(36690904, 'An Arsonist''s Guide to Writers'' Homes in New Engla', 1, 1961),
(37039878, 'The Spy Who Came In from the Cold', 1, 1969),
(38149366, 'The Long Dark Tea-Time of the Soul', 1, 1914),
(38401616, 'Fear and Loathing in Las Vegas', 1, 1953),
(38548668, 'John Dies at the End', 1, 1909),
(41371466, 'The Curious Incident of the Dog in the Night-Time', 1, 1979),
(43488136, 'Me Talk Pretty One Day', 1, 1935),
(45452449, 'Of Mice and Men', 1, 1942),
(47390462, 'How to Shit in the Woods: An Environmentally Sound', 1, 1983),
(47706971, 'How to Talk About Books You Haven''t Read', 1, 1928),
(49512337, 'The Restaurant at the End of the Universe', 1, 1975),
(51372721, 'Stop Dressing Your Six-Year-Old Like a Skank: A Sl', 1, 1907),
(52799382, 'Do Androids Dream of Electric Sheep?', 1, 1973),
(53001908, 'The Earth, My Butt, and Other Big Round Things', 1, 1922),
(53251929, 'The Man Without Qualities', 1, 1980),
(54495733, 'The Guernsey Literary and Potato Peel Pie Society', 1, 1933),
(54956525, 'For Whom the Bell Tolls', 1, 1974),
(55334053, 'A Confederacy of Dunces', 1, 1917),
(57101159, 'The Man Who Mistook His Wife for a Hat and Other C', 1, 1938),
(58209935, 'The Hitchhiker''s Guide to the Galaxy', 1, 2008),
(60725861, 'The Grapes of Wrath', 1, 1971),
(63722691, 'How to Lose Friends and Alienate People', 1, 1967),
(63830630, 'And Then There Were None', 1, 1932),
(64149464, 'The Electric Kool-Aid Acid Test', 1, 1960),
(64205116, 'The Gordonston Ladies Dog Walking Club', 1, 1998),
(64494248, 'Cloudy With a Chance of Meatballs', 1, 1978),
(65594252, 'In God We Trust: All Others Pay Cash', 1, 1960),
(65824440, 'To Kill a Mockingbird', 1, 1900),
(66269722, 'I Was Told There''d Be Cake', 1, 1948),
(66493191, 'The Silence of the Lambs', 1, 1930),
(67348677, 'As I Lay Dying', 1, 1998),
(68676944, 'A Heartbreaking Work of Staggering Genius', 1, 1962),
(69111021, 'Sense and Sensibility and Sea Monsters', 1, 1991),
(70066210, 'Brave New World', 1, 1948),
(70174657, 'Midnight in the Garden of Good and Evil: A Savanna', 1, 1971),
(70413094, 'Another Bullshit Night in Suck City', 1, 1929),
(70445485, 'Hard-Boiled Wonderland and the End of the World', 1, 1935),
(70568046, 'The Perks of Being a Wallflower', 1, 2008),
(70737154, 'The Lust Lizard of Melancholy Cove', 1, 1937),
(70920498, 'Love in the Time of Cholera', 1, 2005),
(71742899, 'A Clockwork Orange', 1, 1934),
(73738012, 'What to Say When You Talk to Yourself', 1, 1954),
(74229475, 'Pride and Prejudice and Zombies', 1, 1918),
(74843713, 'The Hollow Chocolate Bunnies of the Apocalypse', 1, 1921),
(75737419, 'The Lord of the Rings', 1, 1903),
(76510972, 'A Thousand Splendid Suns', 1, 1910),
(77800151, 'Dogshit Saved My Life', 1, 1963),
(77825120, 'Their Eyes Were Watching God', 1, 1900),
(78146652, 'Don''t Pee on My Leg and Tell Me It''s Raining: Amer', 1, 2000),
(78455438, 'A Short History of Tractors in Ukrainian', 1, 1912),
(79623557, 'The Sound and the Fury', 1, 1971),
(82531446, 'Where the Wild Things Are', 1, 1957),
(82611330, 'Captain Underpants and the Perilous Plot of Profes', 1, 2005),
(82638242, 'There''s a Wocket in My Pocket!', 1, 1929),
(84711123, 'Eats, Shoots & Leaves: The Zero Tolerance Approach', 1, 1949),
(85273876, 'Something Wicked This Way Comes', 1, 1983),
(88319942, 'The Moon is a Harsh Mistress', 1, 1942),
(88749714, 'Tequila Makes Her Clothes Fall Off', 1, 1938),
(89934950, 'The Catcher in the Rye', 1, 1904),
(90117055, 'So Long, and Thanks for All the Fish', 1, 1908),
(94502125, 'Life, the Universe and Everything', 1, 1933),
(94632193, 'I Hope They Serve Beer in Hell', 1, 1942),
(96478058, 'A Wrinkle in Time', 1, 1939),
(97316790, 'She Got Up Off The Couch: And Other Heroic Acts Fr', 1, 2006),
(97892953, 'This Is Not a Novel', 1, 1989),
(99287393, 'I Am America', 1, 1982);

-- --------------------------------------------------------

--
-- Structure de la table `BookCopy`
--

CREATE TABLE IF NOT EXISTS `BookCopy` (
  `copyNo` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `available` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`copyNo`),
  UNIQUE KEY `copyNo` (`copyNo`),
  KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `BookCopy`
--

INSERT INTO `BookCopy` (`copyNo`, `ISBN`, `available`) VALUES
(1000, 52799382, 'true'),
(1001, 85273876, 'true'),
(1002, 85273876, 'true'),
(1003, 58209935, 'true'),
(1004, 58209935, 'true'),
(1005, 74229475, 'true'),
(1006, 74229475, 'true'),
(1007, 66269722, 'true'),
(1008, 66269722, 'true'),
(1009, 41371466, 'true'),
(1010, 41371466, 'true'),
(1011, 74843713, 'true'),
(1012, 84711123, 'true'),
(1013, 65824440, 'true'),
(1014, 65824440, 'true'),
(1015, 26799126, 'true'),
(1016, 26799126, 'true'),
(1017, 23170196, 'true'),
(1018, 70174657, 'true'),
(1019, 70568046, 'true'),
(1020, 53001908, 'true'),
(1021, 53001908, 'true'),
(1022, 64494248, 'true'),
(1023, 64494248, 'true'),
(1024, 51372721, 'true'),
(1025, 51372721, 'true'),
(1026, 43488136, 'true'),
(1027, 43488136, 'true'),
(1028, 20722517, 'true'),
(1029, 38149366, 'true'),
(1030, 38149366, 'true'),
(1031, 38548668, 'true'),
(1032, 38548668, 'true'),
(1033, 82531446, 'true'),
(1034, 82531446, 'true'),
(1035, 68676944, 'true'),
(1036, 36690904, 'true'),
(1037, 53251929, 'true'),
(1038, 11524160, 'true'),
(1039, 70413094, 'true'),
(1040, 63722691, 'true'),
(1041, 64205116, 'true'),
(1042, 64205116, 'true'),
(1043, 90117055, 'true'),
(1044, 90117055, 'true'),
(1045, 33394467, 'true'),
(1046, 71742899, 'true'),
(1047, 71742899, 'true'),
(1048, 99287393, 'true'),
(1049, 99287393, 'true'),
(1050, 29409437, 'true'),
(1051, 29409437, 'true'),
(1052, 10026274, 'true'),
(1053, 22342301, 'true'),
(1054, 22342301, 'true'),
(1055, 18572283, 'true'),
(1056, 23508706, 'true'),
(1057, 76510972, 'true'),
(1058, 76510972, 'true'),
(1059, 29992729, 'true'),
(1060, 77825120, 'true'),
(1061, 54495733, 'true'),
(1062, 54495733, 'true'),
(1063, 55334053, 'true'),
(1064, 55334053, 'true'),
(1065, 60725861, 'true'),
(1066, 60725861, 'true'),
(1067, 66493191, 'true'),
(1068, 96478058, 'true'),
(1069, 88749714, 'true'),
(1070, 57101159, 'true'),
(1071, 54956525, 'true'),
(1072, 54956525, 'true'),
(1073, 26770519, 'true'),
(1074, 26770519, 'true'),
(1075, 38401616, 'true'),
(1076, 38401616, 'true'),
(1077, 47390462, 'true'),
(1078, 47390462, 'true'),
(1079, 70920498, 'true'),
(1080, 70920498, 'true'),
(1081, 11822367, 'true'),
(1082, 11822367, 'true'),
(1083, 24905123, 'true'),
(1084, 49512337, 'true'),
(1085, 70066210, 'true'),
(1086, 18772124, 'true'),
(1087, 18772124, 'true'),
(1088, 36481724, 'true'),
(1089, 36481724, 'true'),
(1090, 18897729, 'true'),
(1091, 79623557, 'true'),
(1092, 79623557, 'true'),
(1093, 89934950, 'true'),
(1094, 37039878, 'true'),
(1095, 94632193, 'true'),
(1096, 64149464, 'true'),
(1097, 24562594, 'true'),
(1098, 63830630, 'true'),
(1099, 73738012, 'true'),
(1100, 78146652, 'true'),
(1101, 78146652, 'true'),
(1102, 88319942, 'true'),
(1103, 88319942, 'true'),
(1104, 11775668, 'true'),
(1105, 11775668, 'true'),
(1106, 11633650, 'true'),
(1107, 13172789, 'true'),
(1108, 75737419, 'true'),
(1109, 75737419, 'true'),
(1110, 65594252, 'true'),
(1111, 65594252, 'true'),
(1112, 97316790, 'true'),
(1113, 97316790, 'true'),
(1114, 45452449, 'true'),
(1115, 45452449, 'true'),
(1116, 67348677, 'true'),
(1117, 94502125, 'true'),
(1118, 94502125, 'true'),
(1119, 17603912, 'true'),
(1120, 17603912, 'true'),
(1121, 70445485, 'true'),
(1122, 25890836, 'true'),
(1123, 25890836, 'true'),
(1124, 97892953, 'true'),
(1125, 10473662, 'true'),
(1126, 10473662, 'true'),
(1127, 69111021, 'true'),
(1128, 69111021, 'true'),
(1129, 78455438, 'true'),
(1130, 78455438, 'true'),
(1131, 82611330, 'true'),
(1132, 47706971, 'true'),
(1133, 47706971, 'true'),
(1134, 35700201, 'true'),
(1135, 35700201, 'true'),
(1136, 14641702, 'true'),
(1137, 14641702, 'true'),
(1138, 77800151, 'true'),
(1139, 70737154, 'true'),
(1140, 82638242, 'true'),
(1141, 82638242, 'true');

-- --------------------------------------------------------

--
-- Structure de la table `BookLoan`
--

CREATE TABLE IF NOT EXISTS `BookLoan` (
  `copyNo` int(4) NOT NULL,
  `dateOut` date NOT NULL,
  `dateDue` date NOT NULL,
  `borrowerNo` int(11) NOT NULL,
  PRIMARY KEY (`copyNo`,`dateOut`),
  KEY `borrowerNo` (`borrowerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `BookLoan`
--

INSERT INTO `BookLoan` (`copyNo`, `dateOut`, `dateDue`, `borrowerNo`) VALUES
(1000, '2015-11-06', '2015-11-20', 964),
(1001, '2015-01-08', '2015-01-22', 211),
(1001, '2015-09-17', '2015-10-01', 692),
(1002, '2015-04-16', '2015-04-30', 874),
(1002, '2015-12-04', '2015-12-18', 420),
(1003, '2015-09-04', '2015-09-18', 304),
(1003, '2015-09-18', '2015-10-02', 738),
(1004, '2015-12-15', '2015-12-29', 319),
(1006, '2015-05-23', '2015-06-06', 647),
(1007, '2015-08-24', '2015-09-07', 523),
(1008, '2015-03-15', '2015-03-29', 894),
(1009, '2015-11-22', '2015-12-06', 631),
(1010, '2015-01-15', '2015-01-29', 713),
(1012, '2015-06-07', '2015-06-21', 761),
(1012, '2015-11-28', '2015-12-12', 552),
(1015, '2015-02-12', '2015-02-26', 873),
(1015, '2015-03-25', '2015-04-08', 959),
(1016, '2015-04-06', '2015-04-20', 420),
(1017, '2015-02-03', '2015-02-17', 589),
(1017, '2015-03-18', '2015-04-01', 729),
(1018, '2015-08-09', '2015-08-23', 873),
(1018, '2015-09-17', '2015-10-01', 560),
(1018, '2015-10-16', '2015-10-30', 729),
(1019, '2015-07-26', '2015-08-09', 973),
(1020, '2015-04-28', '2015-05-12', 390),
(1021, '2015-09-08', '2015-09-22', 870),
(1022, '2015-05-07', '2015-05-21', 915),
(1023, '2015-04-12', '2015-04-26', 552),
(1024, '2015-01-19', '2015-02-02', 170),
(1024, '2015-08-26', '2015-09-09', 761),
(1024, '2015-09-29', '2015-10-13', 319),
(1024, '2015-11-02', '2015-11-16', 277),
(1026, '2015-02-17', '2015-03-03', 272),
(1026, '2015-06-10', '2015-06-24', 172),
(1026, '2015-08-28', '2015-09-11', 247),
(1027, '2015-01-13', '2015-01-27', 232),
(1027, '2015-02-09', '2015-02-23', 232),
(1027, '2015-10-21', '2015-11-04', 272),
(1027, '2015-12-12', '2015-12-26', 761),
(1028, '2015-02-21', '2015-03-07', 964),
(1030, '2015-02-12', '2015-02-26', 446),
(1030, '2015-02-26', '2015-03-12', 560),
(1031, '2015-01-24', '2015-02-07', 458),
(1031, '2015-05-20', '2015-06-03', 873),
(1031, '2015-10-27', '2015-11-10', 390),
(1032, '2015-08-19', '2015-09-02', 240),
(1033, '2015-04-22', '2015-05-06', 420),
(1036, '2015-06-15', '2015-06-29', 420),
(1037, '2015-04-18', '2015-05-02', 277),
(1037, '2015-09-16', '2015-09-30', 959),
(1038, '2015-01-13', '2015-01-27', 560),
(1038, '2015-02-27', '2015-03-13', 854),
(1038, '2015-08-08', '2015-08-22', 973),
(1039, '2015-12-02', '2015-12-16', 647),
(1040, '2015-04-05', '2015-04-19', 560),
(1040, '2015-06-10', '2015-06-24', 874),
(1040, '2015-11-25', '2015-12-09', 277),
(1041, '2015-05-23', '2015-06-06', 873),
(1042, '2015-12-01', '2015-12-15', 769),
(1043, '2015-04-01', '2015-04-15', 870),
(1043, '2015-08-12', '2015-08-26', 247),
(1044, '2015-06-10', '2015-06-24', 232),
(1044, '2015-08-24', '2015-09-07', 825),
(1044, '2015-11-21', '2015-12-05', 458),
(1045, '2015-03-15', '2015-03-29', 964),
(1045, '2015-08-12', '2015-08-26', 490),
(1045, '2015-09-07', '2015-09-21', 304),
(1045, '2015-11-23', '2015-12-07', 288),
(1045, '2015-12-09', '2015-12-23', 319),
(1046, '2015-11-08', '2015-11-22', 987),
(1047, '2015-01-31', '2015-02-14', 172),
(1049, '2015-01-23', '2015-02-06', 304),
(1049, '2015-02-07', '2015-02-21', 854),
(1050, '2015-08-12', '2015-08-26', 647),
(1050, '2015-12-17', '2015-12-31', 854),
(1052, '2015-03-17', '2015-03-31', 987),
(1053, '2015-05-25', '2015-06-08', 406),
(1054, '2015-04-23', '2015-05-07', 973),
(1055, '2015-05-15', '2015-05-29', 319),
(1057, '2015-08-12', '2015-08-26', 446),
(1058, '2015-02-13', '2015-02-27', 103),
(1058, '2015-04-12', '2015-04-26', 406),
(1058, '2015-07-27', '2015-08-10', 964),
(1058, '2015-08-21', '2015-09-04', 516),
(1058, '2015-09-28', '2015-10-12', 209),
(1059, '2015-06-03', '2015-06-17', 247),
(1060, '2015-05-16', '2015-05-30', 523),
(1060, '2015-06-28', '2015-07-12', 560),
(1062, '2015-10-16', '2015-10-30', 874),
(1063, '2015-02-04', '2015-02-18', 490),
(1063, '2015-06-12', '2015-06-26', 854),
(1064, '2015-08-10', '2015-08-24', 170),
(1064, '2015-09-14', '2015-09-28', 272),
(1065, '2015-05-05', '2015-05-19', 103),
(1065, '2015-12-14', '2015-12-28', 870),
(1066, '2015-03-24', '2015-04-07', 406),
(1067, '2015-02-09', '2015-02-23', 272),
(1068, '2015-12-26', '2016-01-09', 631),
(1069, '2015-05-17', '2015-05-31', 232),
(1071, '2015-03-04', '2015-03-18', 959),
(1071, '2015-10-23', '2015-11-06', 738),
(1071, '2015-12-16', '2015-12-30', 962),
(1072, '2015-04-04', '2015-04-18', 523),
(1074, '2015-01-28', '2015-02-11', 490),
(1074, '2015-08-26', '2015-09-09', 406),
(1075, '2015-09-29', '2015-10-13', 552),
(1076, '2015-01-13', '2015-01-27', 523),
(1076, '2015-12-12', '2015-12-26', 103),
(1078, '2015-03-12', '2015-03-26', 277),
(1078, '2015-07-13', '2015-07-27', 964),
(1079, '2015-07-24', '2015-08-07', 825),
(1080, '2015-01-20', '2015-02-03', 631),
(1080, '2015-07-15', '2015-07-29', 962),
(1081, '2015-05-01', '2015-05-15', 406),
(1081, '2015-08-15', '2015-08-29', 738),
(1082, '2015-07-20', '2015-08-03', 523),
(1083, '2015-09-10', '2015-09-24', 420),
(1083, '2015-10-23', '2015-11-06', 924),
(1083, '2015-12-23', '2016-01-06', 870),
(1084, '2015-06-05', '2015-06-19', 103),
(1085, '2015-08-16', '2015-08-30', 870),
(1087, '2015-05-11', '2015-05-25', 304),
(1088, '2015-03-25', '2015-04-08', 170),
(1088, '2015-09-17', '2015-10-01', 560),
(1090, '2015-08-01', '2015-08-15', 769),
(1090, '2015-09-28', '2015-10-12', 420),
(1091, '2015-06-08', '2015-06-22', 987),
(1093, '2015-02-17', '2015-03-03', 516),
(1093, '2015-07-28', '2015-08-11', 240),
(1093, '2015-10-12', '2015-10-26', 446),
(1094, '2015-05-20', '2015-06-03', 172),
(1094, '2015-09-24', '2015-10-08', 287),
(1095, '2015-02-12', '2015-02-26', 987),
(1096, '2015-03-18', '2015-04-01', 729),
(1096, '2015-04-19', '2015-05-03', 406),
(1101, '2015-09-11', '2015-09-25', 277),
(1102, '2015-05-03', '2015-05-17', 232),
(1103, '2015-01-13', '2015-01-27', 304),
(1103, '2015-05-14', '2015-05-28', 924),
(1104, '2015-06-12', '2015-06-26', 873),
(1104, '2015-06-26', '2015-07-10', 103),
(1104, '2015-08-09', '2015-08-23', 170),
(1105, '2015-04-01', '2015-04-15', 761),
(1106, '2015-03-05', '2015-03-19', 874),
(1106, '2015-12-01', '2015-12-15', 420),
(1108, '2015-06-26', '2015-07-10', 277),
(1109, '2015-05-25', '2015-06-08', 873),
(1109, '2015-07-05', '2015-07-19', 894),
(1110, '2015-01-16', '2015-01-30', 987),
(1110, '2015-12-14', '2015-12-28', 825),
(1111, '2015-05-07', '2015-05-21', 894),
(1112, '2015-01-25', '2015-02-08', 406),
(1112, '2015-06-24', '2015-07-08', 692),
(1113, '2015-02-07', '2015-02-21', 304),
(1113, '2015-07-06', '2015-07-20', 552),
(1114, '2015-06-17', '2015-07-01', 870),
(1115, '2015-05-03', '2015-05-17', 589),
(1115, '2015-09-04', '2015-09-18', 959),
(1115, '2015-10-01', '2015-10-15', 783),
(1115, '2015-10-18', '2015-11-01', 288),
(1115, '2015-11-19', '2015-12-03', 924),
(1116, '2015-09-07', '2015-09-21', 319),
(1117, '2015-09-20', '2015-10-04', 278),
(1118, '2015-11-04', '2015-11-18', 825),
(1119, '2015-12-20', '2016-01-03', 277),
(1120, '2015-02-10', '2015-02-24', 516),
(1121, '2015-07-16', '2015-07-30', 287),
(1121, '2015-08-03', '2015-08-17', 390),
(1121, '2015-12-20', '2016-01-03', 825),
(1125, '2015-01-01', '2015-01-15', 692),
(1125, '2015-09-14', '2015-09-28', 874),
(1126, '2015-01-14', '2015-01-28', 959),
(1126, '2015-05-18', '2015-06-01', 924),
(1126, '2015-08-11', '2015-08-25', 915),
(1128, '2015-05-14', '2015-05-28', 240),
(1128, '2015-09-27', '2015-10-11', 769),
(1129, '2015-08-06', '2015-08-20', 589),
(1130, '2015-03-13', '2015-03-27', 523),
(1130, '2015-12-14', '2015-12-28', 458),
(1132, '2015-11-19', '2015-12-03', 962),
(1133, '2015-05-05', '2015-05-19', 964),
(1133, '2015-12-06', '2015-12-20', 277),
(1134, '2015-01-30', '2015-02-13', 232),
(1135, '2015-07-19', '2015-08-02', 446),
(1135, '2015-09-06', '2015-09-20', 211),
(1136, '2015-02-20', '2015-03-06', 825),
(1136, '2015-05-19', '2015-06-02', 870),
(1140, '2015-02-15', '2015-03-01', 761),
(1141, '2015-01-12', '2015-01-26', 446);

--
-- Déclencheurs `BookLoan`
--
DROP TRIGGER IF EXISTS `beforeInsert_bookLoan`;
DELIMITER //
CREATE TRIGGER `beforeInsert_bookLoan` BEFORE INSERT ON `BookLoan`
 FOR EACH ROW BEGIN
	DECLARE nb_loan, jour, av INTEGER;
	SET nb_loan = 0;
	SET jour = 0;
	SET av=0;

	WHILE (nb_loan<3 AND jour<15 AND av=0) DO
		SET nb_loan=(SELECT count(*)
			FROM BookLoan
			WHERE borrowerNo=NEW.borrowerNo AND dateOut<ADDDATE(New.dateOut,jour) AND dateDue>ADDDATE(New.dateOut,jour));
		SET av=(SELECT count(*) FROM BookLoan WHERE copyNo=New.copyNo AND dateOut<ADDDATE(New.dateOut,jour) AND dateDue>ADDDATE(New.dateOut,jour));
		SET jour=jour+1;

	END WHILE;
           
    IF (nb_loan>2 OR av<>0)
           THEN
           SET NEW.copyNo=NULL;
           SET NEW.dateOut=NULL;
           ELSE 
           SET NEW.dateDue=ADDDATE(NEW.dateOut,14);
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Borrower`
--

CREATE TABLE IF NOT EXISTS `Borrower` (
  `borrowerNo` int(11) NOT NULL,
  `borrowerName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `borrowerAddress` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`borrowerNo`),
  UNIQUE KEY `borrowerName` (`borrowerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Borrower`
--

INSERT INTO `Borrower` (`borrowerNo`, `borrowerName`, `borrowerAddress`) VALUES
(103, 'Afton Schweigert', '484 Old Hickory Court, Slaughterville, Oklahoma, 7'),
(170, 'Muoi Aguila', '5195 Bright Concession, Brimstone, Quebec, J6N-1G4'),
(172, 'Willy Corker', '5048 Emerald Village, Two Chestnut, Maryland, 2150'),
(209, 'Hildegard Philipps', '9817 Grand Centre, Cardtown, South Carolina, 29245'),
(211, 'Shanna Korte', '3231 Round Cape, Alabama Village, Vermont, 05551-3'),
(232, 'Tenisha Chiodo', '1323 Rocky Bear Swale, Fivemile, Wisconsin, 54698-'),
(240, 'Raven Kemmer', '7349 Velvet River Ridge, Soapstick, Ohio, 45854-73'),
(247, 'Glen Divers', '2700 Middle Arbor, Hell Gate, Texas, 77828-9392, U'),
(272, 'Brandon Cosme', '2859 Silver Maze, Whiskey Spring, Alberta, T2V-6N7'),
(277, 'Rosalva Stelling', '1011 Blue Autumn Limits, Troublesome, Quebec, G0W-'),
(278, 'Karey Caston', '6099 Quaking Glen, Teakettle Junction, Indiana, 47'),
(287, 'Kimberely Pilla', '1672 Misty Campus, Ideal, Louisiana, 70183-9947, U'),
(288, 'Claris Venzon', '1316 Cozy Embers Link, Winneboujou, Yukon, Y3P-8I6'),
(304, 'Shari Moultrie', '7176 Heather Beacon Plaza, Latexo, New Brunswick, '),
(319, 'Doris Rothschild', '1636 Hazy Farms, Shiney Town, New Mexico, 88315-84'),
(390, 'Roseann Wynne', '1246 Tawny Vista, Badnation, Utah, 84657-6015, US,'),
(406, 'Earl Valliere', '3798 Gentle Port, Cheek, Maryland, 21444-8233, US,'),
(420, 'Joan Kitchell', '4 Cinder Wagon View, Lake Dick, Minnesota, 56227-0'),
(441, 'Modesta Pou', '3700 Crystal Oak Bend, Alta, California, 93629-623'),
(446, 'Octavio Lynn', '6468 Green Ledge, Savage, Illinois, 60973-1293, US'),
(458, 'Albertina Zeiger', '3561 Hidden Autoroute, Cathlapotle, North Dakota, '),
(490, 'Stuart Amoroso', '18 Thunder Log By-pass, Drip Rock, Manitoba, R6L-5'),
(516, 'Annamaria Bunde', '5577 Quiet Hills Carrefour, Cheeseville, South Car'),
(523, 'Lean Durrance', '3484 Fallen Freeway, Greasy Corner, New Brunswick,'),
(552, 'Adam Rogge', '2742 Burning Passage, Michigan Bar, Rhode Island, '),
(560, 'Sherryl Coppola', '5327 Little Bluff Cove, Sebewaing, Quebec, J6T-1B7'),
(589, 'Gino Bottorff', '7450 Sleepy Island, Lingerlost, Maine, 04797-2429,'),
(631, 'Evangelina Harps', '68 Umber Horse Acres, Agate, Newfoundland, A0Z-3Y4'),
(647, 'Marybeth Sebesta', '9852 Clear Avenue, Ah-Gwah-Ching, Virginia, 22229-'),
(655, 'Jamee Mcmackin', '8611 Dewy Stead, Consumers, Oregon, 97356-1661, US'),
(692, 'Arianne Setzer', '236 Harvest Sky Diversion, Kremlin, Ontario, L7A-1'),
(713, 'Madison Sherrer', '4030 Dusty Goose Route, Buttzville, Oregon, 97936-'),
(729, 'Emmie Belmont', '1707 Merry Parade, Sizerock, Newfoundland, A1G-0H2'),
(738, 'Alex Pixler', '347 Noble Dell, Pie Town, Nunavut, X5Y-1F8, CA, (8'),
(761, 'Dorthy Dean', '9081 Broad Mews, Oketeyeconne, Louisiana, 71148-30'),
(769, 'Ina Burrill', '5008 Honey Mountain Glade, Brass Castle, Wyoming, '),
(783, 'Paulita Scott', '755 Sunny Pine Villas, Governor Run, Minnesota, 56'),
(825, 'Shemeka Nodine', '7169 Stony Manor, Unfried, New Jersey, 07486-4521,'),
(854, 'Lucius Leonard', '9233 Indian Grove, Vocation, Ontario, N1H-4G5, CA,'),
(870, 'Helaine Ingram', '6832 Easy Nectar Pike, Nasketucket, Nunavut, X2Q-7'),
(873, 'Leoma Gillett', '7995 Colonial Fawn Isle, Black Wolf, Ontario, L1Q-'),
(874, 'Althea Sandage', '3486 Cotton Lake Estates, Holy Cross, Wyoming, 820'),
(894, 'Rosana Uphoff', '8035 High Inlet, Gays Mills, Oklahoma, 73154-9329,'),
(915, 'Charline Muse', '7555 Silent Lane, Fawnskin, Illinois, 62481-0756, '),
(924, 'Antonetta Lenoir', '5285 Lazy Spring Lookout, Bald Head, Rhode Island,'),
(959, 'Yer Futch', '1667 Shady Barn Mall , Gap in Knob, Wisconsin, 534'),
(962, 'Tod Kerby', '5685 Rustic Towers, Charity, Alberta, T8Z-1G8, CA,'),
(964, 'Hal Futrell', '955 Red Nook, Dodge Hollow, Colorado, 81620-2557, '),
(973, 'Lyndsey Bloch', '1184 Golden Heath, Stargo, Michigan, 49469-4402, U'),
(987, 'Eliseo Karls', '4231 Amber Impasse, Tiger, Massachusetts, 01674-79');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `BookCopy`
--
ALTER TABLE `BookCopy`
  ADD CONSTRAINT `BookCopy_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `Book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `BookLoan`
--
ALTER TABLE `BookLoan`
  ADD CONSTRAINT `BookLoan_ibfk_2` FOREIGN KEY (`copyNo`) REFERENCES `BookCopy` (`copyNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `BookLoan_ibfk_1` FOREIGN KEY (`borrowerNo`) REFERENCES `Borrower` (`borrowerNo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
