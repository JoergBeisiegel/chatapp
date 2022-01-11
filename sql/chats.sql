-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Jun 2018 um 09:20
-- Server-Version: 10.1.31-MariaDB
-- PHP-Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `chat_user` varchar(45) DEFAULT NULL,
  `chat_message` varchar(565) DEFAULT NULL,
  `chat_color` varchar(45) DEFAULT NULL,
  `chat_connection_id` varchar(45) DEFAULT NULL,
  `chat_ip` varchar(45) DEFAULT NULL,
  `chat_timestamp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `chats`
--

INSERT INTO `chats` (`chat_id`, `chat_user`, `chat_message`, `chat_color`, `chat_connection_id`, `chat_ip`, `chat_timestamp`) VALUES
(1, 'Peter', 'sdaf', '#ff8000', 'agItjWtdFX_YVfZ-AAAA', '::1', '2018-05-29 12:29:25'),
(2, 'Peter', 'test', '#ff8000', 'DUzJdnQV9OMNAYQ2AAAB', '::1', '2018-05-29 12:29:34'),
(3, 'Peter', 'asfddsa', '#ff8000', '3Y1q4iJorSu7BPXbAAAA', '::1', '2018-05-29 13:37:57'),
(4, 'Peter', 'asfdsd', '#ff8000', 'HchPclcadJhuN5vUAAAB', '::1', '2018-05-29 13:42:29'),
(5, 'Peter', 'daf', '#ff8000', 'HchPclcadJhuN5vUAAAB', '::1', '2018-05-29 13:42:30'),
(6, 'Peter', 'asdf', '#ff8000', 'ygmDkGvykJxsDlZVAAAA', '::1', '2018-05-29 13:43:59'),
(7, 'Peter', 'afds', '#ff8000', 'A5ODg4xX3SOcdJMzAAAA', '::1', '2018-05-29 13:44:30'),
(8, 'Peter', 'sdfaf', '#ff8000', 'uWR2-y8XqU4DQFCYAAAA', '::ffff:127.0.0.1', '2018-05-29 13:44:57'),
(9, 'Peter', 'dasfsda', '#ff8000', 'uWR2-y8XqU4DQFCYAAAA', '::ffff:127.0.0.1', '2018-05-29 13:45:01'),
(29, 'icke', 'trest', '#ff8000', 'XKMXGI3PffAs6LukAAAB', '::1', '2018-05-29 16:29:02'),
(30, 'icke', 'test', '#ff8000', 'o1-XC2XZfu9LWCUOAAAA', '::1', '2018-05-29 16:30:08'),
(31, 'icke', 'test', '#ff8000', 'q9hQ54EbbHvzuyUBAAAA', '::1', '2018-05-29 16:43:28'),
(32, 'icke', 'tesrt', '#ff8000', 'veSsE4CIIP021BYlAAAB', '::1', '2018-05-29 16:44:32'),
(33, 'icke', 'asfd', '#ff8000', 'i8H8XHhB-sMLAKEtAAAC', '::1', '2018-05-29 16:44:45'),
(71, 'Jörg', 'nachricht', '#ff0000', 'gJJwUtpMiPxSEns6AAAC', '::1', '2018-06-06 12:56:56'),
(73, 'Jörg', 'äääääää', '#ff0000', 'Pvo8kwuz8FLTdxgnAAAA', '::1', '2018-06-06 13:55:47'),
(74, 'Jörg', 'aaaaaaaaaaaaaaa', '#ff0000', 'e6Yhm54zHdg84l70AAAB', '::1', '2018-06-06 13:57:18'),
(75, 'Jörg', 'bbbbbbbbbbbbb', '#ff0000', 'i5EbwbycXo3xMwzMAAAA', '::1', '2018-06-06 13:58:37'),
(76, 'Jörg', 'tütütütü', '#ff0000', 'GPPAAU6KeIixOR43AAAA', '::1', '2018-06-06 14:04:27'),
(77, 'werda', 'iche', '#ff0000', '81nBVQhDw-Yd6VsIAAAC', '::1', '2018-06-06 14:06:39'),
(78, 'werda', 'ja', '#ff0000', 'O2T-LHuoRWUBWuhOAAAA', '::1', '2018-06-06 14:13:52'),
(81, 'asfdsd', 'sdfasd', '#0080ff', 'Ht5WnenXEH_bFNmoAAAD', '::1', '2018-06-06 14:18:55'),
(88, 'sdfg', 'dddddd', '#ff0000', 'UaWcIRDFR11UtUFkAAAA', '127.0.0.1', '2018-06-06 17:31:02'),
(252, '2', 'ddddd', '#0000ff', '7NStjilFYT4uCgqHAAAB', '127.0.0.1', '2018-06-08 09:50:21'),
(253, '2', '', '#0000ff', '7NStjilFYT4uCgqHAAAB', '127.0.0.1', '2018-06-08 09:50:26'),
(254, '2', 'asdfsda', '#0000ff', '7NStjilFYT4uCgqHAAAB', '127.0.0.1', '2018-06-08 09:50:28'),
(266, 'aaa', 'bbb', '#ff8080', 'tYYJyfVp8NM4C6AhAAAB', '127.0.0.1', '2018-06-08 10:46:21'),
(270, 'dfdf', 'sss', '#800000', 'bvYMuiHHdlDsD0BQAAAB', '127.0.0.1', '2018-06-08 11:02:58'),
(273, 'xxx', 'wwww', '#0000ff', 'IDjhVBNzKWYoP113AAAB', '127.0.0.1', '2018-06-08 11:04:28'),
(274, 'xxx', 'sssssssss', '#00ff40', '_4vltva1x_tN1BSSAAAB', '127.0.0.1', '2018-06-08 11:05:02'),
(278, 'adsf', 'xxx', '#0000ff', 'Rzwwoc8LNsi9X1-SAAAB', '127.0.0.1', '2018-06-08 11:40:32.227'),
(279, '1', 'xxx', '#004000', 'Pux9IAG0BT5ks1tpAAAA', '127.0.0.1', '2018-06-08 11:41:49.920'),
(280, '1', 'xxxx', '#000040', 'F1I1_QJQE_qKdaILAAAB', '127.0.0.1', '2018-06-08 11:42:28.528'),
(281, 'asfd', 'dff', '#ff8000', 'TOoJkSVJ1hdD6lgwAAAC', '127.0.0.1', '2018-06-08 11:51:42.963'),
(282, 'dffd', 'dddd', '#ff8000', 'WRlJ7LMV1IJrob0VAAAD', '127.0.0.1', '2018-06-08 11:52:19.362'),
(283, 'dfd', 'ddd', '#ff8000', '37BhZQoEl_GKssj4AAAE', '127.0.0.1', '2018-06-08 11:56:02.398'),
(285, 'dsfdf', 'sss', '#ff0000', 'Mxo44UulN4RsqssnAAAG', '127.0.0.1', '2018-06-08 11:57:53.917'),
(286, 'dsfdf', 'sss', '#0000ff', 'Mxo44UulN4RsqssnAAAG', '127.0.0.1', '2018-06-08 11:58:06.909'),
(287, 'dsfdf', 'dfd', '#ffff00', 'Mxo44UulN4RsqssnAAAG', '127.0.0.1', '2018-06-08 11:59:08.836'),
(289, 'fff', 'xxxxx', '#ff8000', 'YWi5q8ccnuoTD-4PAAAB', '127.0.0.1', '2018-06-08 13:16:29.391'),
(309, 'aaaaaaaaaa', 'bbbbbbbbbbb', '#ff8000', 'rSa7mKScyZ6TiZxPAAAD', '127.0.0.1', '2018-06-11 09:02:55.336'),
(310, 'aaaaaaaaaa', 'bbbbbbbbbbbb', '#ff8000', 'rSa7mKScyZ6TiZxPAAAD', '127.0.0.1', '2018-06-11 09:03:09.600'),
(370, 'test', 'xxx', '#000000', 'fN8tzvm2VJlKfovOAAAB', '127.0.0.1', '2018-06-11 12:10:29.829'),
(371, 'test', '', '#0080ff', 'fN8tzvm2VJlKfovOAAAB', '127.0.0.1', '2018-06-11 12:10:40.819'),
(372, 'Petere', NULL, '#00ff00', 'AVcONMTk1ZHYyRXYAAAb', '127.0.0.1', '2018-06-11 13:43:16.524'),
(373, 'Petere', '', '#00ff00', 'AVcONMTk1ZHYyRXYAAAb', '127.0.0.1', '2018-06-11 13:43:17.986'),
(374, 'asdfds', 'asdasda', '#000000', 'kLHhPSRmS9JhhA1uAAA3', '127.0.0.1', '2018-06-11 14:49:28.578'),
(375, 'ich', 'mal loslegen', '#000000', 'EzVxNX5SDzkFJM0yAABL', '127.0.0.1', '2018-06-11 15:10:00.250'),
(377, 'Einer von Euch', 'Neue Nachricht an alle', '#8000ff', 'PrKfLlSke8DjpI1yAAAB', '127.0.0.1', '2018-06-12 09:15:15.647');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
