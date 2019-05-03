-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Ven 03 Mai 2019 à 14:21
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test_allocinemet`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `duree` varchar(11) NOT NULL,
  `date_de_sortie` date NOT NULL,
  `producteur` varchar(50) NOT NULL,
  `realisateur` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `acteurs` varchar(50) NOT NULL,
  `synopsis` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `duree`, `date_de_sortie`, `producteur`, `realisateur`, `genre`, `pays`, `acteurs`, `synopsis`, `image`, `video`) VALUES
(15, 'After-Chapitre 1', '1h25min', '2019-04-11', 'Louis De Funes', 'James Cameron', 'Drame', 'USA', 'Jamel Debouze, Madonna', 'Depuis son plus jeune âge, Tessa était promise à un avenir tout tracé : une vie rangée, une brillante carrière, un mariage tranquille avec son fiancé de toujours. Jusqu’à sa rencontre avec Hardin à son arrivée à l’université. Grossier, provocateur, cruel, c’est le garçon le plus détestable qu’elle ait jamais croisé. Et pourtant, ce bad boy tatoué pourrait bien lui faire perdre tout contrôle… ', 'img/1.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lb9HUR5k2gU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(16, 'Greenbook', '2h05min', '2019-04-02', 'Jean-Mich Mich', 'Kevin Spielberg', 'Comedie', 'Irlande', 'Alain Deloin, Robert, Redford', 'En 1962, alors que règne la ségrégation, Tony Lip, un videur italo-américain du Bronx, est engagé pour conduire et protéger le Dr Don Shirley, un pianiste noir de renommée mondiale, lors d\'une tournée de concerts. Durant leur périple de Manhattan jusqu\'au Sud profond, ils doivent se confronter aux humiliations, perceptions et persécutions, tout en devant trouver des établissements accueillant les personnes de couleurs.', 'img/2.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GhdFHzVNDlQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
