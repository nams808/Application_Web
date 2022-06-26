-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 12 juin 2022 à 18:45
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `club`
--

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` text,
  `departement` text CHARACTER SET utf8 COLLATE utf8_bin,
  `ville` text CHARACTER SET utf8 COLLATE utf8_bin,
  `discipline` text,
  `club` text CHARACTER SET utf8 COLLATE utf8_bin,
  `adresse` varchar(250) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`id`, `region`, `departement`, `ville`, `discipline`, `club`, `adresse`, `contact`) VALUES
(115, 'Hauts de France', 'Nord', 'Tourcoing', 'Aikido', 'Club Tourquennois d\'Arts Martiaux', 'Complexe sportif Léo Lagrange, rue des Anges', 'Céline Verhelst 03.20.36.37.51'),
(114, 'Hauts de France', 'Nord', 'Tourcoing', 'Judo', 'Club Tourquennois d\'Arts Martiaux', 'Complexe sportif Léo Lagrange, rue des Anges ', 'Céline Verhelst 03.20.36.37.51'),
(109, 'Hauts de France', 'Nord', 'Wattrelos', 'Capoera', 'Ecole d\'Arts Martiaux Wattrelosienne', 'Cité des sports, rue Amédée Prouvost', 'Patricia Dewannain 03.20.75.54.30'),
(113, 'Hauts de France', 'Nord', 'Tourcoing', 'Karate', 'Shotokan karaté Tourquennois', '81 rue des piats', 'Lounaci essaid  0615446552'),
(116, 'Hauts de France', 'Nord', 'Tourcoing', 'Qi gong', 'Club Tourquennois d\'Arts Martiaux', 'Complexe sportif Léo Lagrange, rue des Anges', 'Lionel Hyughe  03.20.36.37.51'),
(64, 'Hauts de France', 'Nord', 'Wattrelos', 'Boxe anglaise', 'Académie Multi Boxes Wattrelosienne', 'Cité des sports, rue Amédée Prouvost', 'Calogero CONTRINO 06 49 19 41 78'),
(66, 'Hauts de France', 'Nord', 'Armentières', 'Judo', 'Budo-Kwai Armentières / Judo & Jiu-jitsu', 'Halle des sports, 8 rue de l\'Octroi -', 'Jacques Bonte  03 20 50 26 45'),
(67, 'Hauts de France', 'Nord', 'Croix', 'Karate', 'Uechi-Ryu Karaté-Do Kenyukai du Nord (UKKN) / Croix', 'Campus Universitaire, Rue Verte', 'Christophe MAZET 0670047376'),
(68, 'Hauts de France', 'Nord', 'Denain', 'Karate', 'Fudo-Shin karaté Denain', 'Complexe Sportif Fernand Sastre', 'chelkia laurent  0663368320'),
(70, 'Hauts de France', 'Nord', 'Hazebrouck', 'Karate', 'Bushido club Hazebrouckois', 'Complexe Pierre de Coubertin, avenue des Flandres', 'Jean Michel Carpentier 0626026511'),
(71, 'Hauts de France', 'Nord', 'Maubeuge', 'Boxe anglaise', 'Boxing-Club maubeugeois', '3 place René Hamoir', 'Djilali HADDA 03 27 64 69 57'),
(72, 'Hauts de France', 'Nord', 'Baisieux', 'Karate', 'Baisieux arts martiaux', 'Rue Paul-Émile Victor', 'Pascal Verstraet  06.22.56.78.71'),
(93, 'Hauts de France', 'Pas de Calais', 'Hénin-Beaumont', 'Capoera', 'Cor Capoeira', 'Rue Pierre Brossolette', '  06.23.35.19.91'),
(80, 'Hauts de France', 'Nord', 'Roubaix', 'KARATE', 'Nagashi Karate Club (NTJ Coligny)', '60 rue de Coligny - 59100', 'Mr Mario BOUCA 06 82 51 55 50'),
(81, 'Hauts de France', 'Nord', 'Roubaix', 'Judo', 'Judo Club Potennerie', 'salle Deville, 48 rue Nabuchodonosor - 59100', '03 20 02 91 83'),
(82, 'Hauts de France', 'Nord', 'Roubaix', 'Karate', 'Nagashi Karate Club (NTJ Coligny)', '60 rue de Coligny - 59100', 'SEILLIER Frederic 06 82 51 55 50'),
(83, 'Hauts de France', 'Nord', 'Roubaix', 'Escrime', 'URSA Arts Martiaux', '48 rue Nabuchodonosor - 59100 ', '06 11 60 75 25'),
(84, 'Hauts de France', 'Nord', 'Roubaix', 'Karate', 'URSA Arts Martiaux', '48 rue Nabuchodonosor - 59100 ', '06 11 60 75 25'),
(85, 'Hauts de France', 'Nord', 'Roubaix', 'Aikido', 'Aikidojo Roubaix', 'Salle Bernard Jeu, 35 rue des Champs', 'Mr Berenguer Jean'),
(92, 'Hauts de France', 'Nord', 'Lille', 'Boxe anglaise', 'Lille Body Club', 'Paul sportif Jacqueline AURIOL rue Paul LAFARGUE', 'RAKEM Mustapha 0660440477'),
(112, 'Hauts de France', 'Nord', 'Tourcoing', 'Taekwondo', 'Club Tourquennois d\'Arts Martiaux', 'Complexe sportif Léo Lagrange, rue des Anges', 'Céline Verhelst 03.20.36.37.51'),
(90, 'Hauts de France', 'Nord', 'Lille', 'Karate', 'Shtokan karate Lille', 'Jardin des sports, rue d\'Esquermes', 'Adjeroud Keddour 06 22 47 50 11'),
(91, 'Hauts de France', 'Nord', 'Lille', 'Karate', 'ASPTT Lille', 'Palais des Sports Saint-Sauveur', 'Thierry BROUTIN 03.20.85.27.72'),
(94, 'Hauts de France', 'Pas de Calais', 'Hénin-Beaumont', 'Judo', 'Henin Judo Jujitsu', 'Complexe F. Mitterrand, rue René Cassin', 'Avril Bruno  06 70 96 43 10'),
(95, 'Hauts de France', 'Pas de Calais', 'Carvin', 'Karate', 'Shotokan Carvin Karaté', 'Complexe Sportif Régional, route de Meurchin', 'Dominique DESPREZ 03.21.40.41.60'),
(96, 'Hauts de France', 'Pas de Calais', 'Carvin', 'Judo', 'MANUKI Judo-Jujitsu Club', 'Complexe régional sportif de Carvin , route de Meurchin', 'Cédric Bové 0671784932'),
(97, 'Hauts de France', 'Nord', 'Hazebrouck', 'Tai-chi', 'Taï Chi Hazebrouck', 'Salle Coubertin, avenue des Flandres', 'Yoann Fleurice 03 28 49 51 30'),
(98, 'Hauts de France', 'Nord', 'Maubeuge', 'Judo', 'Alliance Judo 59', 'Stade Léo Lagrange', 'Eric Lybrecht 03.27.65.29.89'),
(99, 'Hauts de France', 'Nord', 'Maubeuge', 'Lutte', 'Free Fight Maubeuge', 'Entreprise MCA, avenue Henry Chausson', 'Jérémy Leblond  0607509594'),
(100, 'Hauts de France', 'Nord', 'Croix', 'Karate', 'Croix Karaté Club', 'Bld Emile Zola, Stade Henri Seigneur', 'André Tavernier 03 20 03 27 48'),
(101, 'Hauts de France', 'Nord', 'Douai', 'Aikido', 'Wago Dojo', 'Complex sportif Renault Douai', 'Patrick FAORO 03.27.71.61.34'),
(102, 'Hauts de France', 'Nord', 'Douai', 'Judo', 'Judo Karaté Club de Douai', 'Complexe Marcel Thieuriet, Avenue des acacias, Fb de Béthune -', 'Charlie Florent 06 37 22 90 45'),
(103, 'Hauts de France', 'Nord', 'Douai', 'Tai-chi', 'Association Tai Ji Douai', 'Pavillon Roux, rue Léonie Maïaux', 'Annita Delmotte 06 98 39 44 21'),
(104, 'Hauts de France', 'Nord', 'Douai', 'Judo', 'Judo Aïkido Club Douai', 'Complexe sportif le Gayant, quai Devigne', 'Abdelhafid Boucham 06.25.06.14.74'),
(105, 'Hauts de France', 'Nord', 'Douai', 'Aikido', 'Judo Aïkido Club Douai', 'Complexe sportif le Gayant, quai Devigne', 'Abdelhafid Boucham 06.25.06.14.74'),
(107, 'Hauts de France', 'Nord', 'Armentières', 'Tai-chi', 'Association de Taï Chi Chuan d\'Armentières', 'Maison du Temps Libre, 106b rue du Général Leclerc', 'Lucie Fortrie 0320482495'),
(108, 'Hauts de France', 'Nord', 'Armentières', 'Lutte', 'Société Municipale de Lutte d\'Armentières', 'Halle des sports Jean Zay, rue de l\'Octroi', 'Yves Colin 0320482495'),
(110, 'Hauts de France', 'Nord', 'Wattrelos', 'Karate', 'Ecole d\'Arts Martiaux Wattrelosienne', 'Cité des sports, rue Amédée Prouvost', 'Patricia Dewannain 03.20.75.54.30'),
(111, 'Hauts de France', 'Nord', 'Wattrelos', 'Aikido', 'Ecole d\'Arts Martiaux Wattrelosienne', 'Cité des sports, rue Amédée Prouvost', 'Patricia Dewannain 03.20.75.54.30'),
(118, 'Ile-de-France', 'Paris', 'Paris 20', 'Judo', 'FAIR PLAY sport', '5 cité Champagne', 'Mr Vignaud Jean-Pierre 0143487990'),
(121, 'Ile-de-France', 'Paris', 'Paris 20', 'Karaté', 'FAIR PLAY sport', '5 cité Champagne', 'Mr Vignaud Jean-Pierre 0143487990'),
(120, 'Ile-de-France', 'Paris', 'Paris 20', 'Kung-Fu', 'ASCAM - Association Sports de Combat et Arts Martiaux', '45 rue Alexandre Dumas', 'Mr Matteo Pepe'),
(122, 'Ile-de-France', 'Paris', 'Paris 19', 'Karaté', 'Goshin Budokai Karate Club Paris - Dojo Atlas', '18, rue de l\'Atlas', 'Mr Michel Bascunana 06 47 46 73 04'),
(123, 'Ile-de-France', 'Paris', 'Paris 19', 'Taichi Chuan', 'Tokitsu-Ryû', '144, boulevard de la Vilette', 'Mr Alain Stoll 0142005420'),
(124, 'Ile-de-France', 'Paris', 'Paris 19', 'Escrime', 'Union Française de Kali Arnis Eskrima', '207, rue de Belleville', 'Mr Rozzi Michel 0664952253'),
(125, 'Hauts de France', 'Nord', 'Roubaix', 'Taekwondo', 'Fresnoy', '92 rue Fresnoy', 'Mr Meziane'),
(126, 'Ile-de-France', 'Hauts de Seine', 'Antony', 'Muy Thai', 'Horse Team M.M.A', 'Dojo Tabarly, 2 rue de l\'Annapurna 92160', 'Mr Rajhi Bader 0786779432 ou 0629411547'),
(127, 'Ile-de-France', 'Hauts de Seine', 'Antony', 'Taekwondo', 'K\'ao Taekwondo', '164 bis, av. du Pd Kennedy 92160', 'Mme Mami Tania 0622688000'),
(128, 'Ile-de-France', 'Hauts de Seine', 'Antony', 'Judo', 'Antony Sport Judo', 'Dojo, 31, rue Camille-Pelletan 92160', '0146608032 de 17h à 19h30'),
(129, 'Ile-de-France', 'Hauts de Seine', 'Nanterre', 'Karaté', 'Assur Karaté', '313 Terrasses de l\'Arche 92000', 'Mr Devedeux David  0685964072'),
(130, 'Ile-de-France', 'Hauts de Seine', 'Nanterre', 'Taï Chi Chuan, Qi Gong, Kung-fu', 'Association Convergences Kung-fu Wushu', '44 rue de l\'Union 92000', 'https://association.convergences.over-blog.fr'),
(131, 'Ile-de-France', 'Hauts de Seine', 'Gennevilliers', 'Aïkido', 'Iwama Takemusu Aïkido ', '63 - 97, rue de la Couture d\'Auxerre 92230', 'Mr Serio Jean-Marc 0670923511'),
(132, 'Ile-de-France', 'Hauts de Seine', 'Gennevilliers', 'Lutte', 'Lutte et sports Gennevilliers', '34 rue Lucette Mazalaigue 92230', 'Mr Bekkay Benyounes 0618034885'),
(133, 'Hauts de France', 'Aisne', 'Laon', 'Karaté', 'Karaté Wado Ryu Laon', '44, rue Victor Basselet', 'Mr Ayraud Jean-Paul 0323202382'),
(134, 'Hauts de France', 'Aisne', 'St Quentin', 'Lutte', 'Cercle pugilistique ', 'avenue de Remicourt', 'Mme Williot Josiane 0611126771'),
(135, 'Hauts de France', 'Aisne', 'Bohain', 'Karaté', 'Karaté Club Bohain', 'rue pasteur', 'Mlle Place Evelyne 0323090038'),
(136, 'Hauts de France', 'Somme', 'Amiens', 'Karaté', 'Onami Dojo Amiens', '2, rue des Archers', 'Mr Leclercq Olivier 0768750112'),
(137, 'Hauts de France', 'Somme', 'Amiens', 'Aïkido', 'Aïkido Club Amienois', 'rue Utrillo ', 'Mr Agbo Sonan Serge 0322412245 '),
(138, 'Ile-de-France', 'Val de Marne', 'Créteil', 'Karaté', 'U.S. Créteil Karaté', '33 av. du Dr Paul Casalis', 'Mr Hor Martin 01 42 07 15 74'),
(139, 'Ile-de-France', 'Val de Marne', 'Vitry sur Seine', 'Karaté, boxe thailandaise', 'Haute Tension', '6 rue Antoine Marie Colin 94400', 'Mr Merchet Jean Marie 01 46 82 71 58'),
(140, 'Ile-de-France', 'Val de Marne', 'Vitry sur Seine', 'Boxe française', 'E.S. de Vitry / Boxe française', '22 rue Charles Fourier', 'Mr Gohel Laurent 01 46 80 94 44'),
(141, 'Ile-de-France', 'Val de Marne', 'Vitry sur Seine', 'Taekwondo', 'Tae Kwon do Vitry sur seine', '94 rue Gabriel Peri 94400', 'https://taekwondo-vitry.fr'),
(142, 'Ile-de-France', 'Val de Marne', 'Le Plessis Trevis', 'Hapkido, Taekwondo', 'Club du Plessis Trevise ', '6 av. Camus 94420', 'Mr Mollet Rémi 01 48 80 13 07'),
(143, 'Ile-de-France', 'Seine Saint Denis', 'Villemomble', 'Judo, Taekwondo', 'Judo Club Rainc-Villemomble', '10, avenue Géneral Galliéni 93250', 'Mr Monali Claude 01 48 94 32 12'),
(144, 'Ile-de-France', 'Seine Saint Denis', 'Villemomble', 'Judo', 'Villemomble Sports Judo', '6 rue du Bois Rousselet 93250', '06 60 37 89 74'),
(145, 'Ile-de-France', 'Seine Saint Denis', 'Drancy', 'Judo', 'AS Drancy', '1 rue Sacco et Vanzzetti 93700', 'Mr Tournet Pierre 06 21 75 39 39'),
(146, 'Ile-de-France', 'Val d\'Oise', 'Sarcelles', 'Judo', 'AASS Judo', 'avenue César Franck 95200', 'https://www.ffjudo.com/club-aa-sarcelles_212'),
(147, 'Ile-de-France', 'Val d\'Oise', 'Argenteuil', 'Capoera', 'Grupo Cordao Bahiano', 'Gymnase Paul Vaillant Couturier 95100', '06 66 98 49 08'),
(148, 'Hauts de France', 'Somme', 'Abbeville', 'Full contact, Kick boxing', 'Abbeville Boxe Pied Poing', '19 rue Josse Van Robais', 'Mr Farcure Jérôme 06 27 14 33 18'),
(149, 'Hauts de France', 'Oise', 'Beauvais', 'Kung-Fu', 'Ecole du dragon d\'or', '4 rue des capucines 60000', 'Mr Turmine Franck 06 28 20 76 95'),
(150, 'Hauts de France', 'Oise', 'Beauvais', 'Karaté', 'Association Shotokan Karaté Traditionnel', '31 rue des Primevères 60000', 'Mr Aarab Abdelaziz 06 66 94 70 75'),
(151, 'Hauts de France', 'Oise', 'Allonne', 'Karaté', 'UKKN', '11 Chemin des Coutumes', 'Mr Mazet Christophe'),
(152, 'Hauts de France', 'Oise', 'Creil', 'Escrime, Jeet Kune Do, Kali', 'Soama jeet kune do', 'Gymnase Jules Uhry', 'Mr Debauve Alexandre');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filmId` int(11) NOT NULL,
  `author` varchar(100) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filmId` (`filmId`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `filmId`, `author`, `comment`, `date`) VALUES
(96, 53, 'Kevin', 'Très bon film !', '2020-01-02 16:07:30'),
(97, 52, 'Namir', 'Très bon film !', '2020-01-02 16:08:08'),
(98, 48, 'Namir', 'Très bon film !', '2020-01-02 16:08:25'),
(99, 53, 'Namir', 'Très bon film !', '2020-01-02 16:08:48'),
(100, 47, 'Namir', 'Très bon film !', '2020-01-02 16:09:09'),
(101, 45, 'Namir', 'Très bon film !', '2020-01-02 16:09:29'),
(102, 16, 'Namir', 'Très bon film !', '2020-01-02 16:09:49'),
(103, 15, 'Namir', 'Très bon film !', '2020-01-02 16:10:17'),
(104, 14, 'Namir', 'Très bon film !', '2020-01-02 16:10:40'),
(105, 13, 'Namir', 'Très bon film !', '2020-01-02 16:11:00'),
(106, 12, 'Namir', 'Très bon film !', '2020-01-02 16:11:22'),
(107, 11, 'Namir', 'Très bon film !', '2020-01-02 16:11:40'),
(108, 10, 'Namir', 'Très bon film !', '2020-01-02 16:12:38'),
(109, 9, 'Namir', 'Très bon film !', '2020-01-02 16:13:02'),
(110, 8, 'Namir', 'Très bon film !', '2020-01-02 16:13:28'),
(111, 7, 'Namir', 'Très bon film !', '2020-01-02 16:13:44'),
(112, 3, 'Namir', 'Très bon film !', '2020-01-02 16:14:01'),
(113, 1, 'Namir', 'Très bon film !', '2020-01-02 16:14:23'),
(114, 48, 'Kevin', 'je suis d\'accord', '2020-01-04 19:22:37'),
(118, 48, 'Gab', 'cool', '2020-02-02 01:02:02'),
(119, 48, 'Gab', 'Enfin !!!', '2020-02-03 20:51:41'),
(120, 47, 'Gab', 'ok', '2020-02-03 20:58:36'),
(121, 13, 'Namias', 'bonsoir', '2020-02-03 21:13:43'),
(122, 45, 'Gab', 'test', '2020-02-03 22:28:27'),
(124, 13, 'Gab', 'ok', '2020-02-04 12:18:39'),
(125, 15, 'Omar', 'Top !!!', '2020-02-04 14:14:30'),
(126, 52, 'Moussa', 'ok', '2020-02-04 14:28:53'),
(127, 16, 'Gab', 'ok', '2020-02-04 19:05:51'),
(129, 47, 'Tania', 'test', '2020-02-11 15:31:01'),
(130, 1, 'Gab', 'super !', '2020-02-12 18:25:14'),
(131, 16, 'Gab', 'bon film', '2020-02-17 02:03:00'),
(134, 53, 'Gab', 'Je suis une admiratrice', '2020-02-19 14:56:03'),
(135, 16, 'Gab', 'test', '2020-02-20 21:18:32'),
(136, 16, 'Gab', 'test', '2020-02-20 21:40:29'),
(137, 48, 'Sam', 'oui bon film', '2020-02-24 19:24:39'),
(138, 64, 'Gab', 'Excellent film !', '2020-02-26 02:59:44'),
(139, 47, 'Gab', 'test', '2020-03-29 13:09:20'),
(140, 53, 'Coucou', 'Test', '2020-05-05 17:22:06'),
(141, 64, 'Gab', 'ok', '2020-05-24 18:30:02'),
(142, 1, 'Gab', 'Nikel ', '2020-07-25 10:51:13'),
(143, 53, 'Gab', 'c cool', '2020-08-11 21:42:42'),
(145, 64, 'Gab', 'iojioj', '2021-01-11 13:10:35'),
(146, 53, 'Gab', 'Dehfheh', '2021-01-14 18:37:46'),
(147, 64, 'Gab', 'eeeeee', '2022-04-03 19:55:57'),
(148, 64, 'Gab', 'ddd', '2022-04-03 19:56:01'),
(149, 64, 'Gab', 'ddd', '2022-04-03 19:56:43'),
(150, 53, 'Gab', 'test', '2022-04-03 20:07:07'),
(151, 48, 'Gab', 'test', '2022-04-03 20:26:47'),
(152, 64, 'rrr', 'rrr', '2022-04-09 19:54:30'),
(153, 64, 'nam', 'génial !', '2022-06-12 18:05:16'),
(154, 64, 'nam', 'génial !', '2022-06-12 18:05:48'),
(155, 64, 'nam', 'génial !', '2022-06-12 18:07:14'),
(156, 64, 'nam', 'génial !', '2022-06-12 18:07:23'),
(157, 52, 'test', 'test', '2022-06-12 18:08:44'),
(158, 52, 'nam', 'test', '2022-06-12 19:30:59'),
(159, 64, 'nam', 'test', '2022-06-12 19:44:20'),
(160, 64, 'nam', 'test', '2022-06-12 19:44:54'),
(161, 64, 'nam', 'test', '2022-06-12 19:45:38'),
(162, 64, 'nam', 'test', '2022-06-12 19:46:04'),
(163, 64, 'nam', 'test', '2022-06-12 19:46:06'),
(164, 48, 'test', 'test', '2022-06-12 19:48:32');

-- --------------------------------------------------------

--
-- Structure de la table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
CREATE TABLE IF NOT EXISTS `disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `video` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `disciplines`
--

INSERT INTO `disciplines` (`id`, `nom`, `image`, `description`, `video`) VALUES
(1, 'taekwondo', 'c2.jpg', '<strong>Le taekwondo</strong> est un art martial originaire de Corée du Sud qui peut se traduire par: \"La voie du pied et du poing\". ', 'https://www.youtube.com/embed/TKEbws4QhEk'),
(2, 'hapkido', 'hapkido.jpg', 'Le Hapkido est un art martial coréen qui fonde sa pratique sur une connaissance métabolique poussée du corps humain permettant une appréhension autant physique .', ''),
(3, 'judo', 'judo.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(4, 'escrime', 'escrime.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(5, 'pencakSilat', 'pencak.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(6, 'karate', 'karate.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(7, 'muay-Thai', 'muythai.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(8, 'escrime', 'escrime.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(9, 'taekwondo', 'c2.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(10, 'j.O Paris', '17.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(11, 'escrime', 'escrime.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(12, 'taekwondo', 'c2.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(13, 'judo', 'judo.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', ''),
(14, 'escrime', 'escrime.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi, nisi.', '');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `image`, `content`) VALUES
(1, 'Rocky IV', 'rocky4.jpg\r\n', '<br>\r\n<strong>Date de sortie</strong>  22 janvier 1986 (1h 31min)<br>\r\n<strong>De</strong> Sylvester Stallone<br>\r\n<strong>Avec</strong> Sylvester Stallone, Talia Shire, Burt Young plus<br>\r\n<strong>Genres</strong> Action, Drame<br>\r\n<strong>Nationalité</strong> Américain<br>\r\n<br>\r\n\r\nApollo Creed, ancien adversaire et dorénavant <br> \r\nami de Rocky Balboa, est tué sur le ring <br>\r\npar le boxeur russe Ivan Drago. Se reprochant de n\'avoir pu <br>\r\nsauver son camarade à temps, Rocky va demander un combat <br>\r\ncontre Ivan Drago afin de le venger. <br>Une confrontation qui se déroulera sur le sol russe.<br>'),
(3, 'Mantis', 'mantis.jpg', '<br>\r\n<strong>Titre original</strong>	Tang Lang<br>\r\n<strong>Réalisation</strong>	Liu Chia-<br>\r\n<strong>Scénario</strong>	On Szeto<br>\r\n<strong>Acteurs principaux</strong> David chiang,Cecilia Wong<br>\r\n\r\n<strong>Sociétés de production</strong>	Shaw brothers<br>\r\n<strong>Pays d’origine</strong>	Hong Kong <br> \r\n<strong>Genre</strong>	Film d\'action, drame <br>\r\n<strong>Durée</strong>	96 minutes <br>\r\n<strong>Sortie</strong>	1978 <br>\r\n<br>\r\nRecruté par les mandchous sous la menace, <br> \r\nle jeune lettré Wei Fung, doit espionner une famille.  <br>\r\nCependant, ce dernier tombe amoureux de leur fille et finit par l\'épouser. N\'en oubliant pas pour autant sa mission, <br>\r\nil décide d\'aller faire son rapport, mais se \r\n<br> \r\nretrouve rapidement piégé par sa « belle-famille ».<br>'),
(7, 'IP Man', 'ipman.jpg', '<br>\r\n<strong>Date</strong> de sortie 5 octobre 2010 en DVD (1h 45min)<br>\r\n<strong>De</strong> Wilson Yip<br>\r\n<strong>Avec</strong> Donnie Yen, Simon Yam, Siu-Wong Fan plus<br>\r\n<strong>Genres</strong> Arts Martiaux, Biopic<br>\r\n<strong>Nationalités</strong> Chinois, Hong-Kongais<br>\r\n<br>\r\n\r\nFilm biographique sur la vie de Ip Man, un maître de Kung-Fu <br>\r\nspécialisé dans le style Wing Chun et qui fut le mâitre de Bruce Lee. <br>\r\nDans les années 30, Ip Man vit à Foshan dans le sud de la Chine, lors <br>\r\nde l\'occupation japonaise. Face à ses indéniables talents en matière <br>\r\nd\'arts martiaux, les japonais lui demandent d\'entraîner les soldats, <br>\r\nce qu\'il refuse catégoriquement. Il va alors devoir lutter pour sa survie.'),
(8, 'Kick Boxer', 'kickboxer.jpg', '<br>\r\n<strong>Date</strong> de sortie 2 août 1989 (1h 37min)<br>\r\n<strong>De</strong> Mark DiSalle, David Worth<br>\r\n<strong>Avec</strong> Jean-Claude Van Damme, Dennis Alexio, Dennis Chan plus<br>\r\n<strong>Genres</strong> Arts Martiaux, Action<br>\r\n<strong>Nationalité</strong> Américain<br>\r\n<br>\r\n\r\nKurt Sloane souhaite venger son frère Eric, paralysé à vie <br>\r\npar le terrifiant Tong Po lors d\'un combat de kickboxing.<br>\r\n Le souci, c\'est que Kurt ne sait pas se battre. Il lui faudra <br>\r\napprendre les rudiments de ce sport auprès du vieux sage Xian Chow.'),
(9, 'Warriors Two', 'warriorstwo.jpg', '<br>\r\n<strong>Date de sortie initiale</strong> : 28 décembre 1978<br>\r\n<strong>Réalisateur</strong> : Sammo Hung<br>\r\n<strong>Mandarin</strong> : Zàn Xian Sheng Yu Zhao Qián Huá<br>\r\n<strong>Producteur</strong> : Raymond Chow<br>\r\n<strong>Scénario</strong> : Sammo Hung, On Szeto<br>\r\n<br>\r\nL\'homme d\'affaire Mo complote pour régner sur la ville. <br>\r\nM. Tsang, docteur et maître de Wing Chun, en est informé <br>\r\net essaye de contrecarrer ses projets avec l\'aide de Fei Chun, <br>\r\nun de ses élèves.'),
(10, 'Shaolin vs Lama', 'shaolinvslama.jpg', '<br>\r\n<strong>Date</strong> de sortie 1983<br>\r\n<strong>Réalisateur :</strong> Lee Tso Nam<br>\r\n<strong>Producteur :</strong> Ching Kuo Chung<br>\r\n<strong>Chorégraphe :</strong> Peng Kang <br>\r\n<strong>Pays :</strong> Hong Kong<br>\r\n<strong>Genre :</strong>Kung fu<br>\r\n<br>\r\n\r\n\r\n\r\nUn moine transfuge de l\'ecole de Shaolin devient le chef de Lama, <br>\r\nune secte rivale. Pour detruire ce personnage sanguinaire, un novice <br>\r\napprend une methode imparable.'),
(11, 'Shaolin vs Wu-tong\r\n', 'shaolinwutong.jpg', '<br>\r\n<strong>Date de sortie</strong>  1983<br>\r\n<strong>Sortie en DVD</strong>  10 novembre 2014 en VOD (1h 27min)<br>\r\n<strong>De</strong> Lau Kar Leung<br>\r\n<strong>Avec</strong> Gordon Liu, Adam Cheng<br>\r\n<strong>Genres</strong> Arts Martiaux, Action<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\n\r\nUn prince mandchou piège des maîtres Shaolin et Wu Tang <br>\r\nafin qu\'ils s\'affrontent ensemble. Deux anciens amis doivent<br>\r\n alors se combattre, mais préfèrent demander conseil à leurs <br>\r\nsupérieurs. Ceux-ci découvrent la machination et les deux écoles<br>\r\n s\'unissent pour combattre le prince félon.<br>\r\n'),
(12, 'Retour de la 36ème chambre', 'retour36chambre.jpg', '<br>\r\n<strong>Date de sortie</strong> 24 aoû 1980 (1h 39min)<br>\r\n<strong>De</strong> Chia-Liang Liu<br>\r\n<strong>Avec</strong> Szu-Chia Chen, Kara Hui, Lung Wei Wang <br>\r\n<strong>Genres</strong> Arts Martiaux, Action, Comédie, Historique<br>\r\n<strong>Nationalités</strong> Chinois, Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nDes ouvriers exploités engagent un acteur pour incarner <br>\r\nun maître de Shaolin et effrayer leurs patrons tyranniques. <br>\r\nCes derniers ne sont pas dupes et punissent leurs employés. <br>\r\nL\'acteur se rend alors à Shaolin dans l\'espoir d\'y être formé,<br>\r\n afin de revenir venger ses amis...'),
(13, 'La 36ème Chambre', '36emechambre.jpg', '<br>\r\n<strong>Date de sortie</strong> 1978 (1h 51min)<br>\r\n<strong>De</strong> Chia-Liang Liu<br>\r\n<strong>Avec</strong> Gordon Liu, Lung Chan, Norman Chui Siu Keung <br>\r\n<strong>Genres</strong> Arts Martiaux, Action, Drame, Historique<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nDécidé à combattre les Mandchous et de venger sa famille <br>\r\nassassinée, Liu intègre le temple de Shaolin afin d\'y être formé<br>\r\n aux arts martiaux. Mais les moines Shaolin ne lui font pas de cadeau...'),
(14, 'Disciples de la 36ème chambre', 'disciple36chambre.jpg\r\n', '<br>\r\n<strong>Date de sortie</strong> 1985 (1h 30min)<br>\r\n<strong>De</strong> Chia-Liang Liu<br>\r\n<strong>Avec</strong> Gordon Liu, Lily Li, Chia-Liang Liu plus<br>\r\n<strong>Genres</strong> Arts Martiaux, Action<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nFong Sai-yuk est un jeune homme aussi doué en arts martiaux<br>\r\n qu\'indiscipliné en cours. Son caractère impulsif lui vaut <br>\r\nd\'inévitables ennuis le jour où il manque de respect à un<br>\r\n soldat mandchou. Sa mère décide alors de le cacher, <br>\r\nlui et ses frères, au temple de Shaolin,<br> où les officiels <br>\r\nn\'osent guère s\'aventurer. Placé sous la direction du moine San Te, <br>\r\nFong Sai-yuk fait preuve d\'une attitude tout aussi rebelle <br>\r\nqu\'auparavant et ne semble pas du tout décidé à suivre les règles du lieu sacré...'),
(15, 'KARATE KID', 'thekaratekid.jpg', '<br>\r\n<strong>Date de sortie</strong> 18 août 2010 (2h 20min)<br>\r\n<strong>De</strong> Harald Zwart<br>\r\n<strong>Avec</strong> Jaden Smith, Jackie Chan, Taraji P. Henson <br>\r\n<strong>Genres</strong> Arts Martiaux, Action, Drame, Famille<br>\r\n<strong>Nationalité</strong> Américain, Chinois<br>\r\n<br>\r\n\r\n\r\nLorsque la carrière de sa mère l\'entraîne à Benjing en Chine,<br>\r\n le jeune Dre Parker doit faire face à des changements radicaux. <br>\r\nAu bout de quelques jours, il se retrouve mêlé à une altercation <br>\r\nau sein de son école, impliquant Cheng, l\'un des garçons <br>\r\nles plus doués en Kung Fu et qui lui fait définitivement perdre <br>\r\nle respect de ses camarades de classe.\r\nTémoin de cet affrontement, Mr Han, <br>\r\nprofesseur de Karaté à la retraite, embauché <br>\r\npar les Parker comme chauffeur et assistant, <br>\r\ndécide d\'aider Dre à regagner le respect de son entourage.'),
(16, 'Le justicier de Shangai', 'justiciershangai.jpg', '<br>\r\n<strong>Date de sortie</strong> 8 novembre 1973(1h 34min)<br>\r\n<strong>De</strong> Chang Cheh, Hsueh Li Pao<br>\r\n<strong>Avec</strong> Kuan Tai Chen, Wang Qing, David Chiang <br>\r\n<strong>Genres</strong> Action, Drame, Policier, Arts Martiaux<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nMa Yung Cheng quitte Shantung pour construire une <br>\r\nvie meilleure à Shangai. Il se lie d\'amitié avec Hsiai Chiang Pei,<br>\r\n tombe amoureux et trouve du travail chez un gangster local. <br>\r\nQuand il commence à défier les plus grands champions de kung-fu, <br>\r\nson rival Yang Shuang lui tend un piège...'),
(45, 'La hyene intrepide', 'lahyeneintrepide.jpg', '<br>\r\n<strong>Date de sortie initiale :</strong> 17 février 1979<br>\r\n<strong>De</strong> Jackie Chan, Kenneth Tsang<br>\r\n<strong>Avec</strong> Jackie Chan, James Tien, Dean Shek plus<br>\r\n<strong>Genres</strong> Arts Martiaux, Comédie, Action<br>\r\n<strong>Nationalités</strong> Sud-Coréen, Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nShing Lung vit dans un village isolé avec son grand-père <br>\r\nqui lui enseigne le Kung-Fu. Bien que approché par des malfrats,<br>\r\n il se bat pour devenir le maître d\'une école de Kung-Fu. <br>\r\nCette nouvelle se propage alors qu\'un vieil ennemi de son grand-père, <br>\r\nchef d\'un gang, réapparaît. Shing Lung va tout faire pour se venger.'),
(47, 'la Fureur Shaolin', 'lafureurshaolin.jpg', '<br>\r\n<strong>Durée</strong> 1h 38min<br>\r\n<strong>De</strong> Chang <br>\r\n<strong>Avec</strong> Chien Sun, Sheng Chiang, Feng Lu plus<br>\r\n<strong>Genre</strong> Action<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\n\r\n\r\nUn machiavélique prince cherche à monter <br>\r\nles élèves de l\'école Shaolin du Nord contre ceux de<br>\r\n l\'école du Sud dans l\'espoir qu\'ils s\'entretuent. <br>\r\nMais les combattants du sud sont assassinés par le <br>\r\nprince du canton qui fait porter la responsabilité <br>\r\naux nordistes. Décidé à venger ses élèves, le vieux maître <br>\r\ndu sud crie vengeance et envoie ses 3 meilleurs combattants <br>\r\npour laver l\'affront fait à son école'),
(48, 'Les Exécuteurs de Shaolin', 'executeurshaolin.jpg', '<strong>Date de sortie</strong>   1977<br>\r\n<strong>Sortie en DVD</strong>  15 mars 2012  (1h 40min)<br>\r\n<strong>De</strong> Chia-Liang Liu<br>\r\n<strong>Avec</strong> Kuan Tai Chen, Li-li Li, Yue Wong plus<br>\r\n<strong>Genres</strong> Arts Martiaux, Action<br>\r\n<strong>Nationalité</strong> Hong-Kongais<br>\r\n<br>\r\nLe temple de Shaolin est attaqué par les mandchous.<br>\r\n Un étrange ermite, \"le moine aux sourcils blancs\" Pei Mei, <br>\r\nmet le temple à feu et à sang. Certains opposants au <br>\r\npouvoir Mandchou comme Hung fuient. Sur la route, <br>\r\nil rencontre une jolie paysanne... Ils se marient et ont un fils. <br>\r\nEt 17 années plus tard, c\'est leur propre fils qui demandera des<br>\r\n comptes au maléfique Pei Mei...'),
(52, 'Les 7 grands maitres de Shaolin', 'Les 7 grands maitres de Shaolin.jpg', '<br> <strong>Date de sortie</strong>   1977 (1h 30min)<br> <strong>De</strong> Joseph Kuo<br> <strong>Avec</strong> Jack Long, Li Yi-min, Mark Long<br> <strong>Genres</strong> Arts Martiaux<br> <strong>Nationalité</strong> Taïwanais<br> <br>  Il est temps pour Cheng Shang-Huan, professeur <br>  de kung-fu, de prendre sa retraite. Avant de se retirer<br>   du monde des arts martiaux, son titre de champion est<br>   remis en cause par les sept grands maîtres de Saolin. <br>  S\'il veut le récupérer et partir la tête haute, Cheng <br>  devra les affronter un à un dans un voyage semé d\'embûches<br>   et de pièges mortels. Sur la route, il fait la connaissance<br>   Hsia Hsiao Ying, un garçon très maladroit. Sur les chemins <br>  de la victoire, les deux hommes devront surmonter leurs <br>  différences pour venir à bout de chacune des épreuves.'),
(53, 'Born Invincible', 'Born Invincible.jpg', '<br>\r\n<strong>Date de sortie</strong> 1978 (1h 30min)<br>\r\n<strong>De</strong> Joseph Kuo<br>\r\n<strong>Avec</strong> Jack Long, Li Yi-min, Mark Long, Carter Wong<br>\r\n<strong>Genres</strong> Kung fu<br>\r\n<strong>Nationalité</strong> Taïwanais<br>\r\n<br>\r\n\r\nDes étudiants en arts martiaux cherchent à venger<br> \r\nla mort de leur maître assassiné lors d\'un combat avec<br> \r\nun redoutable combattant expert en tai-Chi et devenu <br> \r\ninvincible à force d\'entraînement intense.'),
(64, 'La vengeance de l\'aigle', 'la vengeance de l\'aigle.jpg', '<br> <strong>Date de sortie</strong>  1978 (1h 31min)<br> <strong>De</strong> Chung Sun<br> <strong>Avec</strong>  Ti Lung, Sheng Fu, Feng Ku<br> <strong>Genres</strong> Action<br> <strong>Nationalité</strong> hong-kongaise<br> <br>  Treize super guerriers, élèves du clan de l\'Aigle, <br>  commentent toutes sortes de forfaits sous la houlette du  <br> redoutable tyran Hung Yun-Tse. L\'un des élèves, Chi Ming-Sing,  <br> ne supporte plus ces dérives sanglantes et décide de <br> quitter l\'école. Hélas, son maître lance les autres élèves à sa poursuite.<br> Pris au piège, Chi Ming-Sing devra affronter ses anciens camarades... <br> Il pourra compter sur l\'aide providentielle d\'un chevalier solitaire, Tso Yi Fan. <br>');

-- --------------------------------------------------------

--
-- Structure de la table `recupmdp`
--

DROP TABLE IF EXISTS `recupmdp`;
CREATE TABLE IF NOT EXISTS `recupmdp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` int(11) NOT NULL,
  `confirme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `recupmdp`
--

INSERT INTO `recupmdp` (`id`, `email`, `code`, `confirme`) VALUES
(44, 'omar_591@live.fr', 23037990, 0),
(51, 'na.chelghoum@laposte.net', 9547394, 0),
(56, 'martialgame@laposte.net', 29999434, 1),
(60, 'pac.my@laposte.net', 38027322, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` text NOT NULL,
  `roles` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `pass`, `roles`) VALUES
(1, 'test', 'test@test.fr', '$argon2id$v=19$m=65536,t=4,p=1$RzUwQVJOVnJvL1RsZDVZTA$4zDjmx+McFpZb/c7h0ZZJPYIL0zL2kuJaYNWd8H+Ghk', '[\"ROLE_USER\"]'),
(2, 'test', 'test@test.fr', '$argon2id$v=19$m=65536,t=4,p=1$US43YTNuSXBiMmk5VDVKZQ$UPq+WwvN2eRi67Yw1E7ejYeauXpeQQqFs4d55COSrME', '[\"ROLE_USER\"]'),
(3, 'test', 'test@test.fr', '$argon2id$v=19$m=65536,t=4,p=1$T3lDMlpaUFU3dnVvWm5Yaw$fLjpNm2zcdd0NvP6v0PQHy4ZFEUMtbkb0Yea1Gc+4Gw', '[\"ROLE_USER\"]'),
(4, 'rr', 'rr@rr.fr', '$argon2id$v=19$m=65536,t=4,p=1$anRTdG9XTjFZa0h4bHhZbQ$Iwl/KEnAtjd0ihdpZOdM3UfJlUBflqvL3l2ezL3EGNU', '[\"ROLE_USER\"]'),
(5, 'rr', 'rr@rr.fr', '$argon2id$v=19$m=65536,t=4,p=1$alZpRWZkaEpDSkhTUWQyaQ$LnZ4yHfr5+aGeGZfE2JuvmFucZr/zpj4F2fpj26ncLg', '[\"ROLE_USER\"]'),
(6, 'aa', 'aa@aa.fr', '$argon2id$v=19$m=65536,t=4,p=1$aHljWFFxOFE5eEVxU3E0Yg$XydpsA5JDtk0KPZ381v1ziNUL/0SMiUagTztscq+YNM', '[\"ROLE_USER\"]'),
(7, 'vv', 'vv@vv.fr', '$argon2id$v=19$m=65536,t=4,p=1$ZnluZmsvUnNVRVBpYUFPcw$XPjxhbHSW2f/T1itDzXUWvYvOUUkh3Vw+PmcLhIF4FU', '[\"ROLE_USER\"]'),
(8, 'nam', 'pac.my@laposte.net', '$argon2id$v=19$m=65536,t=4,p=1$c0JJVW1MN2ZoWGRIc1hUWQ$0Ta+1ij9B6B8jU/1AdmCPfmIsbvG5FukqFwIW/guJsM', '[\"ROLE_USER\"]');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `role` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `confirmation_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `email`, `password`, `role`, `confirmation_token`, `confirmed_at`, `confirme`) VALUES
(131, 'toto', 'toto@toto.fr', '90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', 'admin', NULL, NULL, 0),
(142, 'testeur', 'test@test.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'utilisateur', NULL, NULL, 0),
(132, 'admin', 'martialgame@laposte.net', '3995fa59df2e11bda58647c6b102abcbd35c3cdb', 'admin', NULL, NULL, 1),
(141, 'kevin', 'kevin@kevin.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'utilisateur', NULL, NULL, 0),
(128, 'gab', 'gab@gab.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'utilisateur', NULL, NULL, 1),
(146, 'testing', 'testing@testing.fr', 'a3023ac706c520be75c2674752f7d2d2c4af1a2d', 'utilisateur', NULL, NULL, 0),
(148, 'bobo', 'bobo@bobo.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'utilisateur', NULL, NULL, 0),
(151, 'tania', 'tania@tania.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', NULL, NULL, NULL, 0),
(222, 'coucou', 'hastein.philippeson@gmail.com', '5ed25af7b1ed23fb00122e13d7f74c4d8262acd8', NULL, NULL, '2020-05-05 17:21:40', 1),
(223, 'Hum', 'humaya@laposte.net', '9cf95dacd226dcf43da376cdb6cbba7035218921', NULL, NULL, '2020-06-24 18:33:42', 1),
(224, 'saf', 'saf.iya@laposte.net', '9cf95dacd226dcf43da376cdb6cbba7035218921', NULL, NULL, '2020-07-17 09:49:00', 1),
(226, 'Salim', 'salim.rezig@hotmail.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', NULL, NULL, '2020-08-01 23:46:08', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
