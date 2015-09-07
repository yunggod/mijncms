-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 19 sep 2013 om 00:22
-- Serverversie: 5.5.25a
-- PHP-versie: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `myfirstcms`
--
CREATE DATABASE `myfirstcms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myfirstcms`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `dtm_invoer` date NOT NULL,
  `dtm_wijzig` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `content`
--

INSERT INTO `content` (`id`, `titel`, `content`, `dtm_invoer`, `dtm_wijzig`) VALUES
(1, 'Mijn eerste pagina', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. ', '2013-05-23', '0000-00-00'),
(2, 'De tweede ronde', 'En de tweede ronde is? Kweetniet. Deze woorden werden elke uitzending van de Grote meneer Cactus Show meerdere malen gebruikt. Met als hoofdaangever Peter Jan Rens, later bekend van de Haribo reclame (Ongelofelijk lekker) speelde hij samen met Kweetniet en mevrouw ? toneelstukje uit de werkelijkheid van kinderen die gevaarlijk waren.', '2013-05-30', '0000-00-00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `provincie`
--

CREATE TABLE IF NOT EXISTS `provincie` (
  `id` varchar(2) NOT NULL,
  `provincie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `provincie`
--

INSERT INTO `provincie` (`id`, `provincie`) VALUES
('DR', 'Drenthe'),
('FL', 'Flevoland'),
('FR', 'Friesland'),
('GD', 'Gelderland'),
('GR', 'Groningen'),
('LB', 'Limburg'),
('NB', 'Noord-Brabant'),
('NH', 'Noord-Holland'),
('OV', 'Overijssel'),
('UT', 'Utrecht'),
('ZH', 'Zuid-Holland'),
('ZL', 'Zeeland');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `wachtwoord` varchar(50) NOT NULL,
  `prov_id` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `wachtwoord`, `prov_id`) VALUES
(1, 'nn@nn.nl', 'testtest', 'UT'),
(2, 'peter@peter.nl', 'noggeheimer', 'ZL'),
(3, 'peter@peterbijker.nl', 'geheim', 'OV'),
(5, 'staande@bij.nl', 'geheim', 'NH'),
(6, 'nana@na.nl', 'anders', 'FL');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
