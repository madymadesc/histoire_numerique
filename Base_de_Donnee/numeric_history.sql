-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 16:18
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(50) NOT NULL,
  `nom_image` varchar(50) NOT NULL,
  `historique` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`) VALUES
(1, 'Tim Berners-Lee', 'images\\Tim_berners_lee.jpg', 'Timothy John Berners-Lee, né le 8 juin 1955 à Londres, est un informaticien britannique, principal inventeur du World Wide Web (WWW) au tournant des années 1990 lors de ses travaux au CERN. En juillet 2004, il est fait chevalier par la reine Élisabeth II pour ce travail et son nom officiel devient Sir Timothy John Berners-Lee. Depuis 1994, il préside le World Wide Web Consortium (W3C), organisme qu\'il a fondé. Il est lauréat du prix Turing 2016.\r\n\r\nTim Berners-Lee est considéré comme l\'inventeur du HTML en 1992. Il fut aidé à ses débuts par l\'ingénieur et informaticien belge Robert Cailliau qui cosigna notamment avec lui, en novembre 1990, un document désormais entré dans l\'Histoire et intitulé « WorldWideWeb : Proposition pour un projet hypertexte».'),
(2, 'Richard Hamming', 'images\\RichardHamming.jpg', 'Richard Hamming, né le 11 février 1915 à Chicago (Illinois) et mort le 7 janvier 1998 à Monterey (Californie) est un mathématicien américain célèbre pour ses travaux sur la théorie des codes qui lui valent le prestigieux prix Turing en 1968 — les codes de Hamming et distance de Hamming sont ainsi nommés en son hommage. Il rejoint le projet Manhattan en 1945, pour lequel il programme l’un des premiers calculateurs d’après les modèles des physiciens et des chimistes du projet pour vérifier qu’une explosion nucléaire n’est pas susceptible d’enflammer l’atmosphère. La suite de sa carrière se déroule dans les laboratoires Bell où il travaille avec Claude Shannon. Il fonde et préside un temps l’Association for Computing Machinery.'),
(3, 'Larry Ellison', 'images\\LarryEllison.jpeg', 'Larry Ellison débute sa carrière dans les années 1970 au sein de l\'entreprise Ampex. Il y découvre les architectures de bases de données. Il est notamment chargé d\'en concevoir une pour la CIA. Il met ses connaissances à profit et fonde Software Development Laboratories en 1977. Ses produits sont alors en concurrence avec ceux de Sybase et de Microsoft SQL Server. L\'entreprise change de nom une première fois et devient Relational Software Inc, puis, en 1983, Oracle System Corporation.\r\n\r\nLorsque Steve Jobs reprend les rênes d\'Apple en 1997, il offre un poste de directeur à Larry Ellison. Ce dernier reste en place jusqu\'en 2002 avant de se re-concentrer sur Oracle qui fait face à une concurrence plus rude de la part de Microsoft et d\'IBM qui a racheté Sybase. Plusieurs années plus tard, en 2010, Larry Ellison finalise le rachat de Sun Microsystems, ce qui donne à Oracle le contrôle sur l\'architecture de la base de données open source MySQL ainsi que sur la technologie Java. S\'ensuivront notamment des procès — toujours en cours — à l\'encontre de Google accusé d\'avoir violé des propriétés intellectuelles relatives à Java au sein du sytème Android.'),
(4, 'jimmy Wales', 'images\\jimmyWales.jpg', 'De 1994 à 2000, Jimmy Wales travaille comme directeur de recherche au Chicago Options Associates. Il fait fortune en spéculant sur la fluctuation des taux d\'intérêt et de change8. D’après Daniel Pink, du magazine Wired, grâce à de la spéculation sur les taux d’intérêt et les fluctuations des monnaies étrangères, il dit avoir gagné assez d’argent pour pouvoir faire vivre son couple durant le reste de son existence[réf. nécessaire].'),
(5, 'Ada Lovelace', 'images\\AdaLovelace.jpg', 'Ada Lovelace, de son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.\r\n\r\nElle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l\'ordinateur : la machine analytique de Charles Babbage. Dans ses notes, on trouve en effet le premier programme publiéWoolley 1, destiné à être exécuté par une machine, ce qui fait considérer Ada Lovelace comme « le premier programmeur du monde1 ». Elle a également entrevu et décrit certaines possibilités offertes par les calculateurs universels, allant bien au-delà du calcul numérique et de ce qu\'imaginaient Babbage et ses contemporainsWoolley 2,Swade 1.\r\n\r\nElle est assez connue dans les pays anglo-saxons et en Allemagne, notamment dans les milieux féministes ; elle est moins connue en France, mais de nombreux développeurs connaissent le langage Ada, nommé en son honneur.'),
(6, 'Linus Torvalds', 'images\\LinusTorvalds.jpg', 'Linus Torvalds  né le 28 décembre 1969) est un ingénieur logiciel finno-américain qui est le créateur et, historiquement, le principal développeur du noyau Linux, utilisé par les distributions Linux et d’autres systèmes d’exploitation tels qu’Android. Il a également créé le système de contrôle de version distribué Git et le logiciel d’enregistrement et de planification de plongée sous-marine Subsurface.\r\n\r\nIl a été honoré, avec Shinya Yamanaka,du Millennium Technology Prize 2012 de la Technology Academy Finland « en reconnaissance de sa création d’un nouveau système d’exploitation open source pour ordinateurs menant au noyau Linux largement utilisé ».Il est également récipiendaire du prix IEEE Computer Society Computer Pioneer 2014 et du prix IEEE Masaru Ibuka Consumer Electronics2018. '),
(7, 'Larry Page et Sergei Brin', 'images\\LarryPageetSergeiBrin.jpg', 'Les internautes du monde entier sont devenus si familiers avec le phénomène des moteurs de recherche connu sous le nom de Google que le mot « google » a une entrée en tant que verbe dans le dictionnaire Merriam-Webster.\r\n\r\nSelon sa définition, googler quelque chose, c’est utiliser le moteur de recherche Google pour obtenir des informations sur un sujet sur le World Wide Web. Cependant, peu de gens peuvent s’arrêter pour penser à ce que Google fait réellement lorsque l’on entre un terme de recherche dans ce champ de recherche familier et simple.\r\n\r\nLa technologie derrière Google est, en fait, une application connue sous le nom de « PageRank », inventée par Larry Page et Sergey Brin, qui sont devenus deux des personnes les plus riches du monde et dont le surnom d’entreprise est devenu synonyme de recherche sur Internet. Page et Brin se sont rencontrés à l’Université de Stanford en 1996, où ils étaient tous deux doctorants dans le programme d’informatique.\r\n\r\nNé à Moscou, en Russie, le 21 août 1973, Brin a émigré aux États-Unis avec sa famille en 1979 et a grandi dans le Maryland, où son père travaillait comme professeur de mathématiques. Il a obtenu un BA de l’Université du Maryland en 1993 et a terminé sa maîtrise à Stanford en 1995.\r\n\r\nPage, né le 26 mars 1973 à Lansing, Michigan, a obtenu un BA de l’Université du Michigan en ingénierie en 1995 et une maîtrise à Stanford. Son père, le Dr Carl Victor Page, était professeur d’informatique à l’Université du Michigan et pionnier dans le domaine de l’intelligence artificielle.\r\n\r\nBrin et Page ont tous deux été détraités de leur chemin vers l’obtention de doctorats lorsqu’ils ont décidé de fonder Google, un jeu de mot sur le mot « Googol », ou un 1 suivi de 100 zéros, en 1998. Lorsqu’ils se sont rencontrés, ils n’auraient pas réussi tout de suite, mais ils ont rapidement découvert qu’ils partageaient un intérêt pour l’identification et la récupération d’informations utiles parmi de grands ensembles de données.\r\n\r\nIls se sont lancés dans un projet en 1995 pour aider à améliorerla façon dont les utilisateurs d’ordinateurs recherchent des informations sur Internet en organisant et en présentant les informations dont ils disposent de manière efficace et claire. L’une des clés à cet égard était de déterminer la pertinence.\r\n\r\nLa première incarnation de leur projet, surnommée « BackRub », était basée sur l’hypothèse du duo que les pages Web qui se sont déjà avérées populaires étaient susceptibles d’être les plus utiles pour les autres aussi. L’application a utilisé une série d’algorithmes pour déterminer le nombre et la pertinence des liens pointant vers un site Web. Page a comparé l’approche aux citations couramment trouvées dans les articles universitaires; plus les articles de recherche étaient souvent cités dans les présentations universitaires des autres, plus ces articles devenaient précieux.\r\n\r\nTraduire cela sur le Web a nécessité beaucoup d’ingéniosité mathématique. Les travaux de Page et Brin ont abouti à un algorithme d’analyse des liens qui utilise la structure des liens d’Internet pour déterminer la valeur d’une page Web individuelle. En effet, il utilise des liens comme votes, en utilisant toutes les autres pages du Web pour déterminer l’importance d’une seule page.\r\n\r\nBackRub a évolué en PageRank, pour lequel Brin et Page ont obtenu le brevet américain n ° 6 285 999 (attribué à l’Université de Stanford). Le nom PageRank est une marque commerciale de Google, que le couple a fondée en 1998 dans le garage d’un ami à Palo Alto, en Californie, après avoir levé environ 1 million de dollars en financement de démarrage auprès de la famille, des amis et des investisseurs.\r\n\r\n'),
(8, 'Leonardo Torres Quevedo', 'images\\LeonardoTorresQuevedo.jpg', 'Leonardo Torres Quevedo, parfois écrit Leonardo Torres y Quevedo, (né le dans le village de Santa Cruz de Iguña, en Cantabrie et mort le 18 décembre 1936 à Madrid), est un ingénieur des travaux publics, mathématicien, physicien et inventeur espagnol de la fin du xixe siècle et au début du xxe siècle. Membre de l’Académie royale des sciences d\'Espagne dès 1901, il en devient président en 1928, il était aussi un membre correspondant de l\'Institut de France1.\r\n\r\nTorres fut le premier à utiliser des relais électromécaniques pour implémenter les fonctions arithmétiques d\'une machine à calculer. Il montra que tous les éléments mécaniques de la machine analytique de Charles Babbage pouvait être remplacés par des éléments électriques construit avec des relais. Il en fit la démonstration en construisant deux machines analytiques extrêmement limitées mais fonctionnelles, une en 1914 et une en 1920.\r\n\r\nIl inventa le premier automate joueur d’échecs2 et créa ainsi le premier jeu électronique3.\r\n\r\nIl inventa un dirigeable qui fut utilisé durant la Première Guerre mondiale4, un téléphérique pour les chutes du Niagara qui est encore en service de nos jours et, avec Nikola Tesla, il fut un pionnier dans l\'invention des télécommandes.'),
(9, 'Steve Wozniak', 'images\\SteveWozniak.jpg', 'Stephen Wozniak, dit Steve Wozniak, né le 11 août 1950 à San José, aussi appelé Woz, est un informaticien, professeur d\'informatique et électronicien américain.\r\n\r\nIl est cofondateur de la société Apple Computer avec Steve Jobs et Ronald Wayne, et concepteur des premiers Apple (dont Apple I, Apple II, Apple III, Lisa et divers périphériques), et est un des pionniers de l\'industrie micro-informatique.'),
(10, 'Bill Gates', 'images\\BillGates.jpg', 'William Henry Gates III, dit Bill Gates [bɪl ɡeɪts]1, né le 28 octobre 1955 à Seattle (État de Washington), est un informaticien, entrepreneur et milliardaire américain. Il est connu comme le fondateur de Microsoft en 1975 et son principal actionnaire jusqu’en 20142.\r\n\r\nGrâce au succès commercial de Microsoft, il est l’un des hommes les plus riches du monde depuis 1996. En 2021, le magazine Forbes classe Bill Gates 4e fortune avec 124 milliards de dollars3.\r\n\r\nDepuis octobre 2007, Bill Gates se consacre à sa fondation Bill-et-Melinda-Gates.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
