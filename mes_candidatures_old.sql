-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 06 Septembre 2021 à 10:30
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `mes candidatures`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidatures`
--

CREATE TABLE IF NOT EXISTS `candidatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_date` date NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `place` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `more_information` text NOT NULL,
  `answer` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `candidatures`
--

INSERT INTO `candidatures` (`id`, `application_date`, `company_name`, `place`, `website`, `link`, `more_information`, `answer`, `user_id`) VALUES
(1, '2021-06-22', 'free', 'Noisy', 'free.fr', 'free.fr', 'c''est juste un test', 'non', 3),
(2, '2021-06-23', 'Orange', 'Paris', 'Orange.fr', 'orange.fr', 'C''est encore un test', 'non', 3),
(3, '2021-06-23', 'TEst', 'test', 'test', 'test', 'test', 'tst', 7),
(4, '2021-06-20', 'trv', 'dssdqsqd', 'sqdsqdsqd', 'sqdqdsqd', 'qsdqsdsqd', 'sqdqsd', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(3, 'baptiste', 'cornic', 'baptiste@', '$2y$11$dd3813c6dc36ef5deb00fu.mtCJXp7YcQME6rLNtYkVqBZc8VgMGK'),
(7, 'test', 'test', 'test', '$2y$11$cee57826e74b536d93529uJfuLwzt3li3NvJuuwgwWM2ZqRO/7jF2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
