-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 jan. 2022 à 14:46
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mes candidatures`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidatures`
--

DROP TABLE IF EXISTS `candidatures`;
CREATE TABLE IF NOT EXISTS `candidatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_date` date NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `place` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `application_information` text NOT NULL,
  `follow_up` text NOT NULL,
  `answer` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidatures`
--

INSERT INTO `candidatures` (`id`, `application_date`, `company_name`, `place`, `website`, `link`, `application_information`, `follow_up`, `answer`, `user_id`) VALUES
(3, '2021-06-23', 'TEst', 'test', 'test', 'test', 'test', '', 'tst', 7),
(4, '2021-10-12', 'Les ateliers 3D', 'Paris', 'linkedin', 'https://www.linkedin.com/jobs/view/2753325138/?refId=b894036c-4299-4f92-95e8-7b3e92eb3d75&trk=flagship3_job_home_appliedjobs', 'connaissance en intégration 3D', '', 'refus', 3),
(5, '2021-10-11', 'Emeraude escape game', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/emeraude-escape/jobs/creative-developer_paris_EEG_9D3mVD8', 'Creative developer, je correspond pas trop ', '', 'non', 3),
(8, '2021-10-13', 'ESCAL Consulting ', 'ile de france', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=ESCAL-Consulting&t=Alternant%20Developpeur%20Informatique%20Full%20Stack&jk=108af4185e2aa555&q=Developpeur%20Alternance&vjs=3', 'alternance', '', 'non', 3),
(9, '2021-10-13', 'Ecole multimedia', 'ile de france', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=L%27ECOLE-MULTIMEDIA&t=D%C3%A9veloppeur%20Web%20Full%20Stack&jk=7594ba8d9ef03719&q=Developpeur%20Alternance&vjs=3', 'peut etre une ecole', '', 'refus', 3),
(10, '2021-10-13', 'NJG Connect', 'ile de france', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=NJG-connect&t=D%C3%A9veloppeur%20Web%20React%20Apprentissage&jk=562f993b6c65e1d7&q=Developpeur%20Alternance&vjs=3', 'React', '', 'refus', 3),
(11, '2021-10-13', 'Docaposte', 'ile de france', 'Docaposte.fr', 'https://docaposte-recrute.profils.org/offre-de-emploi/emploi-developpeur-f-h_3082.aspx#ancrecontenu', 'peut être une école', '', 'non', 3),
(13, '2021-10-13', 'SQLI France', 'ile de france', 'indeed', 'https://fr.indeed.com/viewjob?jk=e754f714507569af&tk=1fhstrvnjr84i800&from=serp&vjs=3', '', '', 'non', 3),
(14, '2021-10-13', 'Vinci', 'ile de france', 'indeed', 'https://fr.indeed.com/viewjob?jk=cd24343e08b63d2d&tk=1fhstrvnjr84i800&from=serp&vjs=3', 'php', '', 'refus', 3),
(15, '2021-10-13', 'Cash Flow Positif ', 'ile de france', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=Cash-Flow-Positif&t=D%C3%A9veloppeur%20Informatique%20Apprentissage&jk=1f31b8098c1e3c15&q=Developpeur%20Alternance&vjs=3', 'symfony', 'refus sur indeed', 'refus', 3),
(17, '2021-10-13', 'Arthurrivet.io', 'A distance', 'linkedin', 'https://www.linkedin.com/jobs/view/2750928778/?refId=31c33558-4f2d-41e7-b2f3-6c35f0283936', 'j\'ai pas vraiment le profil', '', 'non', 3),
(18, '2021-10-13', 'Izyshow', 'Paris', 'linkedin', 'https://www.linkedin.com/jobs/view/2723637355/?refId=b894036c-4299-4f92-95e8-7b3e92eb3d75&trk=flagship3_job_home_appliedjobs', 'Full stack, pas beaucoup d\'info', '', 'refus', 3),
(20, '2021-10-13', 'Cloud Campus', 'ile de france', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=CLOUD-CAMPUS&t=D%C3%A9veloppeur&jk=8733e7fcaca50ff2&q=Developpeur%20Alternance&vjs=3', 'peut etre une école', '', 'non', 3),
(22, '2021-10-14', 'Sav pro group', 'Montesson', 'sav pro group', 'https://emploi.savprogroupe.fr/offres/63f7e84c-b751-44ad-bb22-86af37b184b8', '', '', 'non', 3),
(23, '2021-10-14', 'Colorz', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/colorz/jobs/developpeur-back-php-symfony_paris', 'Développeur back PHP/Symfony', '', 'refus', 3),
(24, '2021-10-15', 'Skyboy', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/skyboy/jobs/developpeur-se-front-h-f-en-alternance_paris', 'Symfony et Angular', '', 'non', 3),
(25, '2021-10-15', 'Pretto', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/pretto/jobs/developpeur-front-end-alternance_paris', 'Front end / React', '', 'refus', 3),
(26, '2021-10-18', 'Augeo software', ' Le Kremlin-Bicêtre', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/augeo-software/jobs/developpeur-full-stack_le-kremlin-bicetre', 'Front / intégrateur', '', 'non', 3),
(27, '2021-10-19', 'Talent Horizon', 'colombes', 'meteojob', 'https://www.meteojob.com/jobs/19309870?auth=34QHXPEOz0x_lUYJ7ryYu5NJjlkzLq0L1mqc69Sw05FbEmnnsVDiIX5QfeZiGdu_', ' HTML et CSS, PHP et Javascript, Wordpress', '', 'refus', 3),
(28, '2021-10-19', 'Engie', 'Le Kremlin-Bicêtre', 'Engie', 'https://engie.taleo.net/careersection/10550/jobdetail.ftl?job=DCT00002057&tz=GMT%2B02%3A00&tzname=Europe%2FParis&lang=fr_FR&src=JB-14200', 'appui développeur SI / Maîtrise des outils de codage HTML, CSS et PHP, SQL éventuellement / En option : connaissance et expérience d’utilisation des logiciels symfony, laragon…', '', 'non', 3),
(29, '2021-10-20', 'Eskimoz', 'Boulogne', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/eskimoz/jobs/developpeur-web-h-f-alternance_boulogne-billancourt', 'PHP, MYSQL, HTML, CSS, JS, Bootstrap/ bonne connaissance Wordpress', '', 'non', 3),
(30, '2021-10-20', 'Stalle/Villa Beausoleil', 'Montrouge', 'apec', 'https://www.apec.fr/candidat/recherche-emploi.html/emploi/detail-offre/166979634W?typesContrat=20053&sortsType=DATE&lieux=711&motsCles=d%C3%A9veloppeur&page=0&selectedIndex=2', 'Le développement back end front end ainsi que les langages html5 ; php ; sql ; javascript et css3/scss n\'ont pas de secret pour vous et vous connaissez les bonnes pratiques de développement et de mise en production.', '', 'non', 3),
(31, '2021-10-20', 'Poker Academy', 'Paris', 'job teaser', 'https://www.jobteaser.com/fr/job-offers/7799701-poker-academie-developpeur-php-laravel-h-f-les-debrouilleurs', 'Développeur PHP/Laravel ', '', 'non', 3),
(32, '2021-10-20', 'Arengis', 'Paris', 'linkedin', 'https://www.linkedin.com/', 'Front', '', 'non', 3),
(33, '2021-10-21', 'label Emmaus', 'Noisy le sec', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/label-emmaus/jobs/lternance-ou-stage-developpeur-se-symfony-et-vue-js-h-f_noisy-le-sec', 'Symfony et Vue.js', '', 'refus', 3),
(34, '2021-10-22', 'Jooper', 'Levallois', 'linkedin', 'https://www.linkedin.com/jobs/view/2764320928/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=hEtf1Pb%2BSHrp%2BmXQd9VqNg%3D%3D&trackingId=dwYjwjb6XPUN6mwc4pu6Kg%3D%3D&trk=flagship3_search_srp_jobs', 'React / Symfony / REST / Docker', '', 'refus', 3),
(35, '2021-10-22', 'Adiict', 'Gennevilliers', 'apec', 'https://www.apec.fr/candidat/recherche-emploi.html/emploi/detail-offre/167007065W?selectedIndex=0&page=0', 'Solides connaissances en PHP orienté objet (5.6 +) et en MongoDB / Bonnes connaissances en MySQL, ElasticSearch, Codelgniter / Passe par école 2i Tech Academy', '', 'non', 3),
(36, '2021-10-25', 'Stooly', 'Paris', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=STOOLY&t=Assistant+D%C3%A9veloppeur&jk=594a7d4d8a156569&q=Developpeur&vjs=3', 'intégrateur prestashop', '', 'refus', 3),
(37, '2021-11-02', 'Operanka Associates', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'React native', '', 'non', 3),
(38, '2021-11-02', 'Augeo Software', ' Le Kremlin-Bicêtre', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/augeo-software/jobs/developpeur-front-end-saas_le-kremlin-bicetre', 'Typescript / React JS / React Native', '', 'non', 3),
(39, '2021-11-02', 'Oyez', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/oyez/jobs/developpeur-fullstack-javasript-en-alternance-h-f_paris', 'FullStack JS', 'contacter l\'un des lead dev sur LinkedIn dès qu\'ils auront acceptés', 'non', 3),
(40, '2021-11-02', 'The Moneytizer', 'Boulogne', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/the-moneytizer/jobs/developpeur-web-fullstack_boulogne-billancourt', 'Full stack, je correspond, emploi pourvu selon welcome,', ' appel le 02-12 me recontacte par mail', 'non', 3),
(41, '2021-11-02', 'CloudCampus', 'Paris', 'indeed', 'https://fr.indeed.com/voir-emploi?from=app-tracker-post_apply-appcard&hl=fr&jk=2ba1a7b839e9a3a8&tk=1fjgr6gdcu1su800', 'ecole', '', 'non', 3),
(42, '2021-11-02', 'Routard.com', 'Vanves', 'hachette', 'https://hachette-recrute.talent-soft.com/offre-de-emploi/emploi-developpeur-full-stack-alternant-h-f_5019.aspx', 'full stack', '', 'non', 3),
(43, '2021-11-03', 'Cézembre', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'React', '', 'refus', 3),
(44, '2021-11-03', 'Ecole multimedia', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/l-ecole-multimedia/jobs/apprenti-developpeur-euse-front-end_paris', 'Front end', '', 'non', 3),
(45, '2021-11-03', 'Ecole multimedia', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/l-ecole-multimedia/jobs/apprenti-developpeur-euse-front-end_paris_LM_3m6Jxkj', 'React / JS / PHP / Symfony', '', 'non', 3),
(46, '2021-11-03', 'Abware', 'Pontoise', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=ABWARE&t=D%C3%A9veloppeur%20Full%20Stack&jk=758d7ca693c0358b&q=D%C3%A9veloppeur&vjs=3', 'React Symfony stage', '', 'refus', 3),
(47, '2021-11-03', 'Zebra communication', 'Moret', 'candidature spontanée', 'https://www.agencezebra.com/', 'candidature spontanée, ils ont un annonce pour un cdi intégrateur / développeur', 'relance par mail le 17-11 / appel 02-12, prends pas d\'alternant', 'refus', 3),
(48, '2021-11-04', 'Arengi', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'back-end Symfony', 'contacter Jean-Victor Lacavé-Lapalun sur linkedin des qu\'il accepte ou Romain Venel / relance par avec l\'email de contact le 06-12/réponse par email 08-12 refus', 'refus', 3),
(49, '2021-11-04', 'Opteamis', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/opteamis/jobs/developpeur-developpeuse-back-end-php_paris', 'back end PHP', '', 'non', 3),
(50, '2021-11-04', '2i Tech Academy', 'Paris', 'Apec', 'https://www.apec.fr/candidat/recherche-emploi.html/emploi/detail-offre/167002869W?motsCles=Alternance%20-%20D%C3%A9veloppeur&lieux=711&page=0&selectedIndex=1', 'Full stack / ecole', '', 'refus', 3),
(51, '2021-11-04', 'Midsivi Solution', 'Paris', 'Apec', 'https://www.apec.fr/candidat/recherche-emploi.html/emploi/detail-offre/167048173W?motsCles=D%C3%A9veloppeur&lieux=711&sortsType=DATE&typesContrat=20053&page=0&selectedIndex=3', 'intégration principalement', '', 'non', 3),
(52, '2021-11-05', 'Smotly', 'Champs sur Marne', 'Smotly', 'https://www.smotly.com/', 'Candidature spontanée / intégration / relance par mail le 17', '', 'refus le 17/11', 3),
(53, '2021-11-08', 'Ezus', 'Paris', 'Taleez', 'https://taleez.com/apply/stage-full-stack-developpeur-paris-ezus-3/applying?utm_source=Linkedin', 'Stage normalement', '', 'refus', 3),
(54, '2021-11-09', 'Phinasoft', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'Wordpress pas très bavard sur l\'annonce', '', 'non', 3),
(55, '2021-11-09', 'Digiteka', 'Paris', 'linkedin', 'https://www.linkedin.com/company/digiteka/jobs/', 'contact par email / Symfony - React', 'relance linkedin avec Medhi Stili le 03-12/ re-relance le 15-12 / me dit de contacter Amar Dridj', 'non', 3),
(56, '2021-11-09', 'Restoparis', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'Symfony', '', 'refus', 3),
(57, '2021-11-10', 'We +', 'Paris', 'we-plus', 'https://we-plus.fr/', 'candidature spontanée par email ', 'Appel le 02/12 Cindy Rodiere, pas d\'alternant mais elle va vérifier / sms envoyer le 06-12, réponse ils prennent pas ', 'refus', 3),
(58, '2021-11-10', 'Warren Walter', 'Paris', 'warren-walter', 'https://www.warren-walter.com/', 'candidature spontanée par email', 'relance a Eliana Drieux Rojas sur LinkedIn, il recrute pas ', 'refus', 3),
(59, '2021-11-10', 'Conserto', 'Paris', 'conserto', 'https://conserto.pro/', 'candidature spontanée formulaire sur leur site ', 'contact charlotte Manetrier le 09-12', 'refus', 3),
(60, '2021-11-11', 'Qard', 'Paris', 'linkedin', 'https://www.linkedin.com/my-items/saved-jobs/?cardType=APPLIED', 'Symfony / stage alternance / déjà eu un refus pour ce poste 1 mois avant', '', 'refus', 3),
(62, '2021-11-15', 'Obydo', 'Paris', 'linkedin', 'https://www.linkedin.com/jobs/view/2796210204/?refId=eb168268-2497-412a-8789-171a6133db6e', 'Front end / Vue.js', '', 'refus', 3),
(63, '2021-11-15', 'Securinfor', 'Rungis', 'linkedin', 'https://www.linkedin.com/jobs/view/2796215160/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=IN_NETWORK&refId=x1dGEfIs%2FO1CiqjNul4fjg%3D%3D&trackingId=OFAfiLwJyASFKYY6pQgyUg%3D%3D&trk=flagship3_search_srp_jobs', 'déjà postuler 2 mois avant sans réponse / full stack', 'relance LinkedIn a Antoine Davoust 03-12', 'refus', 3),
(64, '2021-11-15', 'AB Tasty ', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/ab-tasty/jobs/alternance-front-end-developer-react-js_paris', 'React - front', '', 'refus', 3),
(65, '2021-11-15', 'non communiqué ', 'Paris', 'Apec', 'https://www.apec.fr/candidat/recherche-emploi.html/emploi/detail-offre/167078064W?motsCles=D%C3%A9veloppeur%20Web%20en%20apprentissage&lieux=711&sortsType=DATE&typesContrat=20053&selectedIndex=0&page=0', 'fullstack js / le nom de l\'entreprise inconnu', '', 'non', 3),
(66, '2021-11-15', 'Niji ', 'Issy-les-Moulineaux', 'Linkedin', 'https://carrieres.niji.fr/fr/annonce/1407575-stage-developpeur-fullstack-salesforce-hf-92130-issy-les-moulineaux', 'Développeur Fullstack - Salesforce / stage normalement / techno ok / niji = arc-en-ciel', 'contact Rh linkedin Anne-Marie 06-12,reponse le lendemain, elle transmet l\'info', 'non', 3),
(67, '2021-11-15', 'Hippocampe', 'Paris', 'Hippocampe', 'https://www.hippocampe.fr/', 'candidature spontanée par formulaire / ils cherchent un CDI sur linkedin / pas pu ajouter lettre de motiv', 'contact  Marine Saxstad sur LinkedIn 06-12 / réponse le 08-12 pas pour l\'instant', 'refus', 3),
(68, '2021-11-15', 'Madagence', 'Levallois', 'Madagence', 'https://www.madagence.fr/', 'candidature spontanée par email / il recherche un CDI sur linkedin', 'relance par email le 03-12', 'non', 3),
(69, '2021-11-16', 'Hiflow', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/hiflow/jobs/developpeur-euse-full-stack-h-f_paris', 'stage ', '', 'refus', 3),
(70, '2021-11-16', 'Galadrim', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/galadrim/jobs/stage-developpeur-full-stack_paris', 'stage - fullstack - JS / React / TypeScript / j\'ai fait un test technique reçu par mail', '', 'refus suite au test technique ', 3),
(71, '2021-11-17', 'Lemon learning', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/lemon-learning/jobs/developpeur-javascript-junior-_-alternance_paris', 'JS + framework js', 'relance par LinkedIn a Elodie gaussens le 03-12', 'non', 3),
(72, '2021-11-17', 'Alumnforce', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/alumnforce/jobs/stage-developpeur-application-php-js-paris-f-h_paris', 'fullstack JS/PHP', '', 'refus', 3),
(73, '2021-11-18', 'Skeepit', 'Paris', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=SKEEPIT&t=D%C3%A9veloppeur%20Informatique&jk=2fd526d5e45a7a81&q=developpeur&vjs=3', 'foodtech / demande un framework JS ', 'contact Mathis Tudico Linkedin, attente de sa reponse / refus indeed', 'refus', 3),
(74, '2021-11-18', 'Digital Virgo', 'Paris?', 'digitalvirgo', 'https://www.digitalvirgo.com/fr/jobs/', 'candidature spontanée / il cherche un CDI php', 'demande sur LinkedIn attends validation ', 'non', 3),
(75, '2021-11-18', 'Umanis', 'ile de france', 'Umanis', 'https://www.umanis.com/fr/rejoignez-nous', 'candidature spontanée / il cherche des CDI fullstack ', '', 'refus', 3),
(76, '2021-11-18', 'Globalis', 'Paris', 'Globalis', 'https://www.globalis-ms.com/jobs/offres-emploi-stage-mission/developpeur-web-fullstack-alternance/', 'framework php et Js / Développeur Web fullstack', 'Message envoyé a Frederic Hovart, DG, le 3-12 sur LinkedIn réponse négative ', 'refus', 3),
(77, '2021-11-18', 'Ekino', 'Paris', 'Ekino', 'https://www.ekino.fr/', 'candidature spontanée / il recrute sur beaucoup de poste, back et front', '', 'refus', 3),
(78, '2021-11-19', 'Capgemini', 'Issy-les-Moulineaux', 'linkedin', 'https://www.linkedin.com/jobs/view/2800733537/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=pGzb%2FwL5kF5dEbWkVBTsuA%3D%3D&trackingId=2MUqu6PAYHzKyt9d7ov6SA%3D%3D&trk=flagship3_search_srp_jobs', 'stage/alternance', '', 'non', 3),
(79, '2021-11-19', 'Kameleoon', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/kameleoon/jobs/alternance-developpeur-front-end_paris', 'front / NodeJS', 'regarder LinkedIn si les invite sont validé', 'non', 3),
(80, '2021-11-19', 'Spayr', 'Paris', 'Station F', 'https://jobs.stationf.co/companies/spayr/jobs/alternance-developpeur-full-stack-vue-js-ruby-on-rails-react-native-spayr_paris', 'fullstack / j\'ai pas top les techno', '', 'non', 3),
(81, '2021-11-19', 'Moneybounce', 'Paris', 'Station F', 'https://jobs.stationf.co/companies/moneybounce/jobs/front-end-developer-finance-alternance_paris', 'front / framework Js', 'Contacter Alexis Albouze ou Damien Tamazout dès qu\'il m\'accepte sur LinkedIn ', 'non', 3),
(82, '2021-11-23', 'Keytchens', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2804894106/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=DE1nzNCjss6zPd1UUNCGcw%3D%3D&trackingId=Z1W7Zcl3OjPixorO%2F%2FoGww%3D%3D&trk=flagship3_search_srp_jobs', 'PhpSymfony ', 'contact Ghozia sur LinkedIn, je lui ai partagé mon CV le 29-11 / relance linkedin a Ghozia', 'non', 3),
(83, '2021-11-23', 'Dimo', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/dimo/jobs/developpeur-fullstack-junior_paris', 'fullstack - PHP  Vue.js - React.js - Node.JS - HTML', 'contact sur LinkedIn Benjamin Lorin le 06-12, réponse le lendemain il transmet l\'info / contact email le 14-12', 'non', 3),
(84, '2021-11-24', 'La Centrale', 'Paris', 'ParisJob', 'https://www.parisjob.com/emplois/alternant-developpeur-cloud-node-php-h-f-14195943.html', 'PHP Node', 'Contacter Lea Martel / Cely Rodrigues sur Linkedin dès qu\'elle accepte', 'refus', 3),
(85, '2021-11-29', 'Agyla', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2809425518/?eBP=CwEAAAF9a1e-cpNsbEX4XdtlbCqOblWng9vQncsG2AxPp0GqPQMSkh4nqMVvFW_Xoz6wfYecwfR8LacvzGrmWWd4_YZN58qNf1s2-EPWE17efNGzAxeHvKERJjFbxoEXmTB4bl_8LB_MAj5FxjYz00iNwheQAq4irWylGDmR1oGedPqr30zZzz-FOpkzJmOOyAr1BoHeWfKIBqmdE8UbwfofY55KzQEz8vC4PqoxXQPc98uFgO0wcXz85Kib_sFO3H6YXq0LBIFJbBSrJ9I63hhbZKzgyqK5HyyUb8_caAGk-mq_jCZDtH1EU95H7uE7xqMNefVwycc1-m95kqowD4Ow03wX-rlNdblz1sbsKwPKIgR6wmcEcyxH2IP15A&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=NvLeiMXy1kexMHCnsS0eQw%3D%3D&trackingId=IdSMTRqmj4xA%2BAHqUoGxmg%3D%3D&trk=flagship3_search_srp_jobs', 'stage JS/HML', 'Contact Adela Sadoudi linkedin le 09-12 /mail refus le 13-12', 'refus', 3),
(86, '2021-11-29', 'Eudonet', 'Courbevoie', 'Linkedin', 'https://www.linkedin.com/jobs/view/2809013713/?eBP=CwEAAAF9a1e-cgSfDx7Q-ocOpNGVUckMGw2f7FYLdy5Ga7AZbd6eFGqCjWArynrEoPRDR6r2ihK64HG-2_6pOu1sViY1pwHI75n1MCcCOv3k8jamjPofkeiH6PO7LaJ-47aVyi2WUQv_OghZkhFgMn-WgWAFs_YT5hnT1k2duvzJpy-BrjxeDRRvQxjTmdQrFvZD--HkR7i3QsDf_7LmoondLOfgmS-UfklCANHDCZlBuBjlpFelbTfE0q4rbE5c5KLMua93q5ZPWafZ8cIMex0FIzel-twCsSZwvyMjQh3rSYEV2rulnwJOTmjmNm8gelLmFWbHOFuDIRWt3XxsCxF5WINPyPu8Pa9uMU7oYddItq5Mjz-FpdpOG6DF2N1O&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=NvLeiMXy1kexMHCnsS0eQw%3D%3D&trackingId=q%2FqTaHs3Rmx%2BlnzU%2BQnpnQ%3D%3D&trk=flagship3_search_srp_jobs', 'C# donc pas trop les techno', 'contact Tiphanie Marechal sur linkedin le 09-12, je suis pas sur qu\'elle soit dans l\'entreprise...', 'non', 3),
(87, '2021-11-30', 'IxBlue', 'Saint-Germain-en-Laye', 'Careers', 'https://careers.flatchr.io/vacancy/4bely9plbe9kekr6-ingenieur-developpeur-web-ui-en-alternance-h-f?btn_color=', 'Front', '', 'non', 3),
(88, '2021-11-30', 'Kisio Digital', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2815846521/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=8iyLzPfYcTgaISdJ7FKcWQ%3D%3D&trackingId=aaSnYUTrac16p82wIZdvSw%3D%3D&trk=flagship3_search_srp_jobs', 'Front', 'contact Laurie Loyeau sur Linkedin le 14-12 / ils cherchaient un CDI...', 'refus', 3),
(89, '2021-11-30', 'Alter Way', 'Paris', 'Alter Way', 'https://www.alterway.fr/', 'candidature spontanée sur leur site', 'contact Awatif Guerbaoui sur linkedin 09-12 / il recrute pas, me renvoie sur Smile', 'refus', 3),
(90, '2021-12-01', 'Avlis formation', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2817787238/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=JOB_SEEKER_QUALIFIED&refId=NrFYTLYNY2SWZrD0TnV%2FNg%3D%3D&trackingId=Wht8I4OSB6TIJ9vLl8MJVw%3D%3D&trk=flagship3_search_srp_jobs', 'peut etre une ecole?? / PHP', '', 'non', 3),
(91, '2021-12-01', 'Belle Epoque', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2816397704/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=NrFYTLYNY2SWZrD0TnV%2FNg%3D%3D&trackingId=crluXhzJG7%2B5EbAwfAeZoQ%3D%3D&trk=flagship3_search_srp_jobs', 'PHP-Drupal', 'contact email 14-12', 'non', 3),
(92, '2021-12-01', 'Eco Tree', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/ecotree-1/jobs/developpement-react-frontend-stage-ou-alternance_paris_ECOTR_4dZQDRW', 'React / front ', 'contact Kevin (lead dev) par mail le 02-12 / réponse le 07-12 il transmet mon CV au RH / relance par mail le 14-12', 'non', 3),
(93, '2021-12-01', 'MG Mobile', 'Paris', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=MG-MOBILE&t=D%C3%A9veloppeur%20Web%20Full%20Stack&jk=8b146c50afe78a7d&q=developpeur&vjs=3', 'full stack', 'contact mail le 14-12 / réponse direct : si j\'ai pas de réponse dans les 3 semaines c\'est un refus...', 'non', 3),
(94, '2021-12-01', 'WorkAdventure ', 'Paris', 'WorkAdventure', 'https://workadventu.re/careers', 'fullstack / contact par email', '', 'refus', 3),
(97, '2021-12-03', 'Bankin\'', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/bankin/jobs/fullstack-developer-nodejs-reactjs-alternance-h-f-x_paris', 'Node React', 'contact Ismail Daoudy via Linkedin 14-12 / contacter Pola Lorz lundi 20 car elle était en vacance / fait le 20-12 sur linkedin, reponse c\'est pas elle qui d\'occupe du recrutement', 'non', 3),
(98, '2021-12-06', 'Idigitaly', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2826126078/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=dqlzIoYF8C06jamG7j2GSQ%3D%3D&trackingId=D%2BkrElYVMbGCCYYlWsqXRw%3D%3D&trk=flagship3_jobs_discovery_jymbii', 'fullstack', 'contact mail le 14-12', 'non', 3),
(99, '2021-12-06', 'Wiboo', 'Bry sur Marne', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/wiboo/jobs/developpeur-web-alternance_le-perreux-sur-marne', 'fullstack', 'contact Mathieu Raimbault sur Linkedin 14-12 / peut pas fournir le nom du RH, demande de faire suivre', 'non', 3),
(100, '2021-12-06', 'Coop-Ere', 'Massy', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=Association-Coop--Ere&t=D%C3%A9veloppeur+Web+PHP&jk=d23626f88afb04e8&q=developpeur&vjs=3', 'PHP avec framework CodeIgniter4', 'contact Baptiste Michel sur Linkedin le 17-12 / m\'a donner un mail contact classique, j\'ai envoyé un mail le 20-12 / refus indeed', 'refus', 3),
(101, '2021-12-08', 'Obydo', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2828303596/?eBP=JYMBII_JOBS_HOME_ORGANIC&refId=p%2BFtjHpHUMQV8fZ67oROug%3D%3D&trackingId=hPrW%2B4J144eVT%2FmwQE556Q%3D%3D&trk=flagship3_jobs_discovery_jymbii', 'Vue.js /front / ils m\'ont déjà recalé pour un poste similaire', '', 'refus', 3),
(102, '2021-12-08', 'Engie', 'Puteaux', 'Engie', 'https://engie.taleo.net/careersection/10550/jobdetail.ftl?job=ENG00043909&lang=fr_FR&src=SNS-10761', '', 'message linkedin a Drissa Tambadou le 23-12', 'non', 3),
(103, '2021-12-08', 'Withings', 'Issy-les-Moulineaux', 'linkedin', 'https://www.linkedin.com/jobs/view/2810839156/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=SCHOOL_RECRUIT&refId=R2uXtsqU93FX%2Fy4MV%2BRHgQ%3D%3D&trackingId=Hq%2Ff9%2FySmCPi2GnyKFIx%2Bg%3D%3D&trk=flagship3_jobs_discovery_jymbii', 'Stage Fullstack Developer PHP / React / annonce assez ancienne!', 'contact Guillaume Paganelli le 14-12 / reponse après 2 semaines c\'est un refus, il ne recrute que des ingé', 'refus', 3),
(104, '2021-12-08', 'Feachy', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2815323083/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=uNe0rtjmbVIw1XxkMe5U4w%3D%3D&trackingId=SDA8y32rD0b%2BLCAJdVS0OQ%3D%3D&trk=flagship3_jobs_discovery_jymbii', 'Front', '', 'refus', 3),
(105, '2021-12-09', 'Peace.', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2828853534/?eBP=JOBS_BLENDING_SERVICE_FAILED&refId=HhfNLoUIyViYjFAEFMBvZg%3D%3D&trackingId=cU3Aj9v0AkcUsbC3giK3xw%3D%3D&trk=flagship3_search_srp_jobs', 'Stage / HTML, CSS, JavaScript / candidature par mail', '', 'non', 3),
(106, '2021-12-09', 'Budspaces', 'Champs sur Marne', 'Linkedin', 'https://www.linkedin.com/jobs/view/2829459097/?eBP=JOBS_BLENDING_SERVICE_FAILED&refId=HhfNLoUIyViYjFAEFMBvZg%3D%3D&trackingId=9sYMjaDdM93hhI0dePPPHw%3D%3D', '', 'uniquement 1 employé LinkedIn et répond  pas', 'non', 3),
(107, '2021-12-09', 'Homeland', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/homeland/jobs/developpeur-php-alternance_paris', 'PHP', 'contact Alex Lys sur Linkedin le 17-12 / il m\'a donné le mail du CTO (était en arrêt maladie) / relance le 20-12 sur le mail / réponse direct a quelques question/ me propose un entretien le 27-12 / reviens vers moi la 1ere semaine de janvier', 'non', 3),
(108, '2021-12-13', 'Isoskele', 'Montrouge', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/isoskele/jobs/integrateur-developpeur-front-end-h-f_montrouge', 'intégrateur', 'message linkedin a Kahina Desponds le 23-12', 'non', 3),
(109, '2021-12-13', 'Evaluo', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2815308481/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=IN_NETWORK&refId=9%2F3Wa%2Fz%2B%2F2W4uoT3s2zo3g%3D%3D&trackingId=8JCGCoS29X7wRgFr3qidsQ%3D%3D&trk=flagship3_jobs_discovery_jymbii', 'fullstack', '', 'refus', 3),
(110, '2021-12-14', 'Homecamper', 'fontainebleau', 'Homecamper', 'https://www.homecamper.fr/', 'appel le 13-12, me dit qu\'ils pourraient être intéresser donc j\'ai envoyé une candidature par mail le lendemain ', 'appel, me dit de voir après les fêtes de noël', 'non', 3),
(111, '2021-12-14', 'Yourse', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2840125692/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=VdeYLmQYXo2gL3mDzcZ3Nw%3D%3D&trackingId=QQYzU0ZieWE8TW8JhQaAHw%3D%3D&trk=flagship3_search_srp_jobs', 'stage ou alternance / Wordpress', '', 'non', 3),
(112, '2021-12-14', 'Cube', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2839004021/?eBP=JOB_SEARCH_ORGANIC&refId=VdeYLmQYXo2gL3mDzcZ3Nw%3D%3D&trackingId=f1N9HJaFVdfPBYIvb8w5Yg%3D%3D&trk=flagship3_search_srp_jobs', 'stage low code', '', 'non', 3),
(113, '2021-12-14', 'Skyboy', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/skyboy/jobs/developpeur-se-front-h-f-en-alternance_paris', 'front', '', 'non', 3),
(114, '2021-12-14', 'Colorz', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/colorz/jobs/developpeur-back-php-symfony_paris', 'Back PHP/Symfony / j\'ai déjà été recalé', '', 'non', 3),
(115, '2021-12-14', 'Cash Flow Positif ', 'Paris', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=Cash-Flow-Positif&t=Developper%20Web%20Full%20Stack%20Une%20Start%20Fintech&jk=057126662d64f5c6&q=developpeur&vjs=3', 'deja refusé il y a 2 mois fullstack', 'refus indeed', 'refus', 3),
(116, '2021-12-16', 'Djust', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/djust/jobs/developpeur-h-f-stage-alternance_paris', 'Fullstack stage/alternance, pas trop les techno', '', 'non', 3),
(117, '2021-12-16', 'Jedha', 'Paris', 'Welcome to the jungle', 'https://www.welcometothejungle.com/fr/companies/jedha/jobs/developpeur-fullstack-en-alternance_paris', 'fullstack / aussi python', 'reponse a un formulaire recu par email', 'non', 3),
(118, '2021-12-16', 'Ho\'Carré', 'Créteil', 'indeed', 'https://fr.indeed.com/voir-emploi?cmp=Ho%27Carr%C3%A9&t=D%C3%A9veloppeur+Informatique&jk=a699840c048d6a7a&q=D%C3%A9veloppeur&vjs=3', 'pas d\'info sur les techno / je sais pas pour quel contrat', 'refus indeed', 'refus', 3),
(119, '2021-12-17', 'Papers', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2845071250/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=JOB_SEEKER_QUALIFIED&refId=Z9Yqtu2k2YyB9ioT8Wn8aw%3D%3D&trackingId=I%2Bdhyv2zZGy%2B4rFq9jhQMg%3D%3D&trk=flagship3_search_srp_jobs', 'Alternance, stage de 6 mois ', '', 'refus', 3),
(120, '2021-12-20', 'Qard', 'Paris', 'Linkedin', 'https://www.linkedin.com/jobs/view/2844344363/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=SKILL_ASSESSMENTS&refId=6icfVIPucuYQA%2FB0cfjr1Q%3D%3D&trackingId=YvXGPJ2EgsVZHI8sgPOmFQ%3D%3D&trk=flagship3_search_srp_jobs', 'deja postulé / stage alternance / PHP-Symfony', 'réponse par email le 23-12', 'refus', 3),
(121, '2021-12-20', 'Aquantis', 'Issy-les-Moulineaux', 'Linkedin', 'https://www.linkedin.com/jobs/view/2838966276/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=6icfVIPucuYQA%2FB0cfjr1Q%3D%3D&trackingId=%2B9%2B02MmQAZIMEu6izogrPw%3D%3D&trk=flagship3_search_srp_jobs', 'plutot intégration', '', 'non', 3),
(122, '2021-12-22', 'Sowee', 'Courbevoie', 'Linkedin', 'https://www.linkedin.com/jobs/view/2847572389/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=JOB_SEEKER_QUALIFIED&refId=PkIIIXF93hoCwY8wEOePjQ%3D%3D&trackingId=Y7FCSJ4bSX%2BojrhdU4R7Jg%3D%3D&trk=flagship3_search_srp_jobs', 'stage', '', 'non', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(3, 'baptiste', 'cornic', 'baptiste@', '$2y$11$dd3813c6dc36ef5deb00fu.mtCJXp7YcQME6rLNtYkVqBZc8VgMGK'),
(7, 'test', 'test', 'test', '$2y$11$cee57826e74b536d93529uJfuLwzt3li3NvJuuwgwWM2ZqRO/7jF2'),
(8, 'dfdsfdsf', 'dsfdsfdsf', 'dsfdsf', '$2y$11$bf3490e2e1dc626bf0c96uTc8oFJDm3JFNGbaE0PqcEEVaLJdwbyS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
