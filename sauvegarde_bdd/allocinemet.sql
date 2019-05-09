-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 09 Mai 2019 à 13:39
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `allocinemet`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acteur`
--

CREATE TABLE `Acteur` (
  `Id_Acteur` int(11) NOT NULL,
  `Nom_Acteur` varchar(255) NOT NULL,
  `Image_Acteur` varchar(255) NOT NULL,
  `Bio_Acteur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `Id_Film` int(11) NOT NULL,
  `Titre_Film` varchar(255) NOT NULL,
  `Duree` varchar(255) NOT NULL,
  `Image_Film` varchar(255) NOT NULL,
  `Video_Film` varchar(255) NOT NULL,
  `Synopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Film`
--

INSERT INTO `Film` (`Id_Film`, `Titre_Film`, `Duree`, `Image_Film`, `Video_Film`, `Synopsis`) VALUES
(1, 'After-Chapitre 1', '1h25min', 'img/1.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lb9HUR5k2gU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Depuis son plus jeune âge, Tessa était promise à un avenir tout tracé : une vie rangée, une brillante carrière, un mariage tranquille avec son fiancé de toujours. Jusqu’à sa rencontre avec Hardin à son arrivée à l’université. Grossier, provocateur, cruel, c’est le garçon le plus détestable qu’elle ait jamais croisé. Et pourtant, ce bad boy tatoué pourrait bien lui faire perdre tout contrôle… '),
(2, 'Greenbook', '2h05min', 'img/2.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GhdFHzVNDlQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'En 1962, alors que règne la ségrégation, Tony Lip, un videur italo-américain du Bronx, est engagé pour conduire et protéger le Dr Don Shirley, un pianiste noir de renommée mondiale, lors d\'une tournée de concerts. Durant leur périple de Manhattan jusqu\'au Sud profond, ils doivent se confronter aux humiliations, perceptions et persécutions, tout en devant trouver des établissements accueillant les personnes de couleurs.'),
(3, 'Le Chant du loup', '1h55min', 'img/3.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0-LTTNiGgUA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Un jeune homme a le don rare de reconnaître chaque son qu’il entend. A bord d’un sous-marin nucléaire français, tout repose sur lui, l’Oreille d’Or.\r\nRéputé infaillible, il commet pourtant une erreur qui met l’équipage en danger de mort. Il veut retrouver la confiance de ses camarades mais sa quête les entraîne dans une situation encore plus dramatique.\r\nDans le monde de la dissuasion nucléaire et de la désinformation, ils se retrouvent tous pris au piège d’un engrenage incontrôlable. '),
(4, 'Avengers: Infinity War', '2h40min', 'img/4.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eIWs2IUr3Vs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. '),
(5, 'Dragons 3', '1h40min', 'img/5.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tEUFQ8mdzcg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Harold est maintenant le chef de Berk au côté d’Astrid et Krokmou, en tant que dragon, est devenu le leader de son espèce. Ils réalisent enfin leurs rêves de vivre en paix entre vikings et dragons. Mais lorsque l’apparition soudaine d’une Furie Eclair coïncide avec la plus grande menace que le village n’ait jamais connue, Harold et Krokmou sont forcés de quitter leur village pour un voyage dans un monde caché dont ils n’auraient jamais soupçonnés l’existence. Alors que leurs véritables destins se révèlent, dragons et vikings vont se battre ensemble jusqu’au bout du monde pour protéger tout ce qu’ils chérissent. '),
(6, 'A Star Is Born', '2h14min', 'img/6.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jsg9NxCBzFs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Star de country un peu oubliée, Jackson Maine découvre Ally, une jeune chanteuse très prometteuse. Tandis qu\'ils tombent follement amoureux l\'un de l\'autre, Jack propulse Ally sur le devant de la scène et fait d\'elle une artiste adulée par le public. Bientôt éclipsé par le succès de la jeune femme, il vit de plus en plus de mal son propre déclin… '),
(7, 'Astérix : Le Secret de la potion magique', '1h45min', 'img/7.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gXbR3zonMRk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'À la suite d’une chute lors de la cueillette du gui, le druide Panoramix décide qu’il est temps d’assurer l’avenir du village. Accompagné d’Astérix et Obélix, il entreprend de parcourir le monde gaulois à la recherche d’un jeune druide talentueux à qui transmettre le Secret de la Potion Magique… '),
(8, 'Nous finirons ensemble', '2h15min', 'img/8.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RjfF0V5blEE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Préoccupé, Max est parti dans sa maison au bord de la mer pour se ressourcer. Sa bande de potes, qu’il n’a pas vue depuis plus de 3 ans débarque par surprise pour lui fêter son anniversaire ! La surprise est entière mais l’accueil l’est beaucoup moins... \r\nMax s’enfonce alors dans une comédie du bonheur qui sonne faux, et qui mettra le groupe dans des situations pour le moins inattendues.\r\nLes enfants ont grandi,  d’autres sont nés, les parents n’ont plus les mêmes priorités...  Les séparations, les accidents de la vie... Quand tous décident de ne plus mettre de petits mouchoirs sur les gros bobards, que reste-t-il de l’amitié ? '),
(9, 'La Malédiction de la dame blanche', '1h33min', 'img/9.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L7IQ_P9qtUk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'La Dame Blanche. Spectre terrifiant, pris en étau entre le paradis et l\'enfer, piégé par un terrible destin dont elle est elle-même l\'artisan. La seule évocation de son nom sème la terreur dans le monde depuis des siècles. Quand elle était en vie, elle a noyé ses enfants dans un accès de folle jalousie, puis, dévastée par le chagrin, elle s\'est jetée dans le fleuve déchaîné.\r\nDésormais, ses larmes sont devenues éternelles. Elles sont même mortelles et tous ceux qui entendent ses appels sinistres la nuit sont maudits. Tapie dans l\'ombre, la Dame Blanche s\'attaque aux enfants, cherchant désespérément à remplacer les siens. Au fil des siècles, elle est devenue de plus en plus prédatrice… et ses méthodes de plus en plus terrifiantes.\r\nLos Angeles, années 1970. La Dame Blanche hante la nuit… et les enfants.\r\nIgnorant les avertissements d\'une mère soupçonnée de violence sur mineurs, une assistante sociale et ses enfants sont projetés dans un monde surnaturel des plus effrayants. Pour espérer survivre à la fureur mortelle de la Dame Blanche, leur seul recours est un prêtre désabusé et ses pratiques mystiques destinées à repousser les forces du mal… à la frontière où la peur et la foi se rencontrent…\r\nMéfiez-vous de ses pleurs glaçants… Elle est prête à tout pour vous entraîner vers les ténèbres. Car sa douleur ne connaît pas de répit – son âme tourmentée n\'a pas droit au repos. Et il n\'existe aucun moyen d\'échapper à la malédiction de la Dame Blanche. '),
(10, 'Dumbo', '1h52min', 'img/10.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-mPAnHDCm9Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Les enfants de Holt Farrier, ex-artiste de cirque chargé de s’occuper d’un éléphanteau dont les oreilles démesurées sont la risée du public, découvrent que ce dernier sait voler...');

-- --------------------------------------------------------

--
-- Structure de la table `Genre`
--

CREATE TABLE `Genre` (
  `Id_Genre` int(11) NOT NULL,
  `Type_Genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Genre`
--

INSERT INTO `Genre` (`Id_Genre`, `Type_Genre`) VALUES
(1, 'Fantastique'),
(2, 'Aventure'),
(3, 'Drame'),
(4, 'Guerre'),
(5, 'Comedie'),
(6, 'Triller'),
(7, 'Science-Fiction'),
(8, 'Action'),
(9, 'Animation'),
(10, 'Amour'),
(11, 'Horreur');

-- --------------------------------------------------------

--
-- Structure de la table `Jouer`
--

CREATE TABLE `Jouer` (
  `Id_Film` int(11) NOT NULL,
  `Id_Acteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Membre`
--

CREATE TABLE `Membre` (
  `Id_Membre` int(11) NOT NULL,
  `Login_Membre` varchar(255) NOT NULL,
  `Password_Membre` varchar(255) NOT NULL,
  `Email_Membre` varchar(255) NOT NULL,
  `Id_Role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Modifier`
--

CREATE TABLE `Modifier` (
  `Id_Membre` int(11) NOT NULL,
  `Id_Acteur` int(11) NOT NULL,
  `Id_Realisateur` int(11) NOT NULL,
  `Id_Film` int(11) NOT NULL,
  `Id_Genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Realisateur`
--

CREATE TABLE `Realisateur` (
  `Id_Realisateur` int(11) NOT NULL,
  `Nom_Realisateur` varchar(255) NOT NULL,
  `Image_Realisateur` varchar(255) NOT NULL,
  `Bio_Realisateur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Realisateur`
--

INSERT INTO `Realisateur` (`Id_Realisateur`, `Nom_Realisateur`, `Image_Realisateur`, `Bio_Realisateur`) VALUES
(1, 'Tim Burton', 'img/realisateurs/tim_burton.jpg', 'Tim Burton est un réalisateur, scénariste et producteur de cinéma américain, né le 25 août 1958 à Burbank (Californie).\r\n\r\nAdepte du fantastique et influencé par Edgar Allan Poe, il est largement reconnu comme étant bon conteur et graphiste. Il est révélé au grand public en signant la mise en scène de Beetlejuice (1988), Batman (1989), Edward aux mains d’argent (1990) et Batman : Le Défi (1992).\r\n\r\nPar la suite, il entame un cycle plus expérimental, en signant le biopic Ed Wood (1994), la satire Mars Attacks! (1996) puis le remake La Planète des singes (2001), un échec critique1.\r\n\r\nIl opère cependant un retour au sommet avec le succès Big Fish (2003). Par la suite, il collabore avec les studios Disney, pour qui il réalise, Alice au pays des merveilles (2010) (sa plus grande réussite commerciale et un des succès commerciaux majeurs de l\'histoire du cinéma) et Dumbo (2019).\r\n\r\nParallèlement, il réalise plusieurs adaptations dans un style plus gothique : la comédie musicale Sweeney Todd : Le Diabolique Barbier de Fleet Street (2007) puis les contes Dark Shadows (2012) et Miss Peregrine et les Enfants particuliers (2016).\r\n\r\nSes acteurs fétiches sont Johnny Depp, qu\'il dirige à huit reprises et Helena Bonham Carter, son ex-compagne et mère de ses deux enfants2. Depuis 2012, eva Green semble avoir remplacé cette dernière.\r\n\r\nTim Burton produit et rédige également le scénario de L\'Étrange Noël de monsieur Jack, réalisé par Henry Selick, puis finance et coréalise Les Noces funèbres et enfin coécrit, produit et met en scène Frankenweenie, trois films d’animation utilisant la technique de l\'animation en volume et des marionnettes qui évoluent dans des décors réels.\r\n\r\nSon cinéma se caractérise par un défilé de monstres et de créatures et un mélange d\'humour noir, d\'ironie et de macabre. Restant fidèle à son style, le cinéaste explore plusieurs genres qu\'il enchevêtre par moments : film d\'épouvante, drame intimiste, conte, mélodrame, biographie filmée, film de science-fiction, comédie, film d\'époque, comédie musicale ou encore film d\'action. Ses histoires mettent en scène des personnages marginaux ou des êtres hors-normes, face à la médiocrité du monde. On y décèle une grande influence du cinéma fantastique, du cinéma expressionniste allemand ainsi que des films de la Hammer Productions, à la fois pastichés et célébrés.\r\n\r\nTim Burton fait partie des cinéastes qui parviennent à concilier succès critique et commercial. Il a été décoré de l\'insigne de chevalier et d\'officier de l\'ordre national des Arts et des Lettres par Frédéric Mitterrand en mars 2010 et fut le président du jury du 63e Festival de Cannes. Le MoMA de New York et la Cinémathèque française à Paris ont consacré une grande exposition à son œuvre plastique et cinématographique, respectivement en 2009 et 20123,4. Tim Burton a également été le sujet de plusieurs biographies illustrées, notamment Tim Burton d\'Antoine de Baecque (2006) et Burton par Burton de Mark Salisbury (2000). '),
(2, 'Jenny Gage', 'img/realisateurs/jenny_gage.jpg', 'Pas connue, même sur Wikipédia...'),
(3, 'Peter Farrelly', 'img/realisateurs/peter_farrelly.jpg', ' Diplomé de Providence College et de l\'université de Columbia, Peter Farrelly commence sa carrière en 1990 comme scénariste pour la série télé Seinfeld. Quatre ans plus tard, il se lance dans le cinéma en co-réalisant Dumb and Dumber avec son frère Bobby, comédie à la bêtise revendiquée où \"brillent\" Jim Carrey et Jeff Daniels. Peter Farrelly ne cesse par la suite de travailler en étroite collaboration avec son frère. Le duo, à la fois réalisateur, scénariste et producteur de ses films, rencontre vite le succès en imposant sa marque de fabrique : un humour potache, volontiers provocateur et vulgaire, qui puise partiellement sa force dans les faiblesses de chacun.\r\n\r\nAprès Kingpin, une comédie sur le bowling, les frères Farrelly réalisent Mary a tout prix, qui leur apporte la consécration internationale et leur donne le statut de maîtres d\'une comédie US mordante et sans tabous. En 2000, ils signent le délirant Fous d\'Irene, qui leur donne l\'occasion de retrouver Jim Carrey. Un an plus tard, ils s\'essaient au film d\'animation déjanté avec Osmosis Jones, puis adoptent un ton plus doux-amer avec Shallow hal, film qui aborde le thème des personnes obèses et montre une facette plus sensible de leur talent.\r\n\r\nEn 2003, Peter et Bobby Farrelly s\'intéressent au destin de deux frères siamois dans Deux en un, comédie emmenée par Matt Damon et Greg Kinnear. Si le duo s\'éloigne de son univers avec habituel avec Terrain d\'entente, une comédie romantique sur fond de base-ball portée par Drew Barrymore, il ne tarde pas à retrouver son mordant avec le très cru Les Femmes de ses rêves, qui leur permet de retrouver Ben Stiller neuf ans après Mary a tout prix.\r\n\r\nAprès avoir fait tourné des stars du rire comme Jim Carrey ou Ben Stiller, c\'est au tour d\'Owen Wilson de tenir en 2011 le premier rôle de leur comédie Bon à Tirer, aux côtés de Jason Sudeikis. Ils y racontent les aventures de deux maris à qui leurs femmes, lassées de leur manque d\'attention, donnent carte blanche durant une semaine. Ils participent ensuite à l\'ensemble de courts comiques Movie 43 avant de se lancer dans un projet qui leur tient à coeur : un film centré sur le trio comique Les Trois Corniauds. \r\n\r\n20 après le premier film, les frères Farelly retrouvent Jim Carrey et Jeff Daniels en 2014 pour Dumb & Dumber De. Les deux comédiens repartent pour de nouvelles aventures complètement déjantées, à la recherche de la fille d’Harry.\r\n'),
(4, 'Antonin Braudy', 'img/realisateurs/antonin_braudy.jpg', 'Après des classes préparatoires scientifiques au lycée Louis-le-Grand, Antonin Baudry intègre en 1994 l\'École polytechnique2, reçu 326e au concours d\'entrée (option M\')3, et en sort ingénieur des Ponts et Chaussées 4. Il se classe ensuite 2e au concours d\'entrée littéraire5 de l\'École normale supérieure (B/L 1998)6 et obtient un DEA en études cinématographiques7.\r\n\r\nIl devient le 22 avril 2004 conseiller de Dominique de Villepin au ministère de l\'Intérieur chargé de la stratégie et de la prospective8, puis conseiller sur les questions d\'économie internationale le 21 juin 2005 à Matignon9.\r\n\r\nEntre 2010 et 2014, il est conseiller culturel de l\'ambassade de France aux États-Unis10 après avoir occupé le poste de conseiller de coopération et d\'action culturelle à l\'Ambassade de France en Espagne.\r\n\r\nSous le pseudonyme d\'Abel Lanzac, il met à profit son expérience de diplomate pour écrire le scénario de la bande dessinée Quai d\'Orsay (2010-2011), en collaboration avec Christophe Blain, qui en réalise également l\'illustration. Lorsque le second volume obtient le prix du meilleur album du festival d\'Angoulême 201311, il rend publique son identité12.\r\n\r\nLe 28 janvier 2015, il est nommé en Conseil des ministres ambassadeur pour la culture française et président exécutif de l\'Institut français, succédant à Xavier Darcos13. Il démissionne de ce poste à peine quelques mois après sa nomination (printemps 2015) « pour poursuivre des projets personnels »14.\r\n\r\nIl est nommé président d\'un jury du 43e festival international de la bande dessinée, qui se tient du 28 au 31 janvier 2016 à Angoulême.\r\n\r\nEn 2018, il réalise son premier film, Le Chant du loup, qui sort en salles en France le 20 février 2019. '),
(5, 'Anthony Russo', 'img/realisateurs/anthony_russo.jpg', 'Frère de Joe Russo et fils d\'un homme politique libéral, Anthony Russo grandit dans un quartier ouvrier italien de Cleveland, dans l\'Ohio. Avant de suivre une formation aux métiers du cinéma, il écrit, réalise et produit, en collaboration avec son frère, une comédie intitulée Pieces. Le film est présenté en 1997 au Slamdance Film Festival de Park City, dans l\'Utah, et à l\'American Film Institute Festival à Los Angeles.\r\n\r\n\r\nSteven Soderbergh découvre le talent des frères Russo à Slamdance et leur propose de produire, via sa société Section Eight, leur film suivant : Bienvenue à Collinwood (2001). Cette comédie, interprétée par William H. Macy, Sam Rockwell et George Clooney, met en scène l\'organisation d\'un cambriolage censé être juteux et facile. En 2006, les deux frères réalisent leur troisième long-métrage, une troisième comédie, Toi et moi... et Duprée, avec Owen Wilson, Matt Dillon et Michael Douglas au casting.\r\n\r\n\r\nParallèlement à cela et depuis 2003, ils continuent de réaliser et produire plusieurs épisodes de séries telles que Lucky, LAX, Arrested Development, Carpoolers, Community ou bien encore Happy Endings.\r\n\r\n\r\nHuit ans plus tard, la carrière des frères Russo prend un tournant sans précédent lorsqu\'ils se retrouvent aux commandes du blockbuster Captain America, le soldat de l\'hiver (2014). Le film est un succès colossal (714 millions de dollars de recettes mondiales alors que le premier volet avait fait 370 millions) et ils rempilent ainsi pour le troisième opus consacré aux aventures de Steve Rogers inaugurant la Phase III de l\'Univers cinématographique Marvel : Captain America: Civil War. Ensuite, Anthony et Joe Russo s\'attèleront à Avengers : Infinity War (Partie 1) et Partie 2 qui sortiront respectivement en 2018 et 2019. '),
(6, 'Joe Russo', 'img/realisateurs/joe_russo.jpg', '\r\n\r\nFrère d\'Anthony Russo et fils d\'un homme politique libéral, Joe Russo grandit dans un quartier ouvrier italien de Cleveland, dans l\'Ohio. Avant de suivre une formation aux métiers du cinéma, il écrit, réalise et produit, en collaboration avec son frère, Pieces, une comédie dont il est lui-même interprète. Le film est présenté en 1997 au Slamdance Film Festival de Park City, dans l\'Utah, et à l\'American Film Institute Festival à Los Angeles, où Joe obtient le Prix du meilleur acteur de l\'American Film Institute.\r\n\r\n\r\nSteven Soderbergh découvre le talent des frères Russo à Slamdance et leur propose de produire, via sa société Section Eight, leur film suivant : Bienvenue à Collinwood (2001). Cette comédie, interprétée par William H. Macy, Sam Rockwell et George Clooney, met en scène l\'organisation d\'un cambriolage censé être juteux et facile. En 2006, les deux frères réalisent leur troisième long-métrage, une troisième comédie, Toi et moi...et Duprée, avec Owen Wilson, Matt Dillon et Michael Douglas au casting.\r\n\r\n\r\nParallèlement à cela et depuis 2003, ils continuent de réaliser et produire plusieurs épisodes de séries telles que Lucky, LAX, Arrested Development, Carpoolers, Community ou bien encore Happy Endings. \r\n\r\n\r\nHuit ans plus tard, la carrière des frères Russo prend un tournant non négligeable lorsqu\'ils se retrouvent aux commandes de l\'attendu blockbuster Captain America, le soldat de l\'hiver. Le film est un succès colossal (714 millions de dollars de recettes mondiales alors que le premier volet avait fait 370 millions) et ils rempilent ainsi pour le troisième opus consacré aux aventures de Steve Rogers inaugurant la Phase III de l\'Univers cinématographique Marvel : Captain America: Civil War.\r\n\r\n\r\nEnsuite, Joe et Anthony Russo s\'attèleront à Avengers : Infinity War (Partie 1) et Partie 2 qui sortiront respectivement en 2018 et 2019.\r\n'),
(7, 'Dean DeBlois', 'img/realisateurs/dean_deblois.jpg', 'Né et élevé au Québec, DeBlois se découvre très tôt une passion pour l\'animation et passe sa jeunesse à raconter des histoires à travers ses créations graphiques. Après avoir abandonné l\'idée de se faire auteur de comic-book, il débute sa carrière comme assistant animateur à Hinton Animation Studios, société de production télévisuelle animée d\'Ottawa. Ce sont ses talents de metteur en scène et de dessinateur qui lui valent ce premier engagement, qu\'il obtient à peine une année après son entrée à la Sheridan University, dont il sort diplômé en 1990 ( il y passe trois ans). Il y travaille notamment sur la série Les Amis Ratons avant de rejoindre Don Bluth au sein des Sullivan Bluth Studios qu\'il dirige.\r\n\r\nCe changement de société l\'oblige à  s\'exiler en Irlande avec le dit réalisateur puisque ses studios sont installés à Dublin. C\'est pendant cette période qu\'il fera son véritable apprentissage professionnel, en assistant notamment Don Bluth en 1994 sur les layouts, les storyboards et le character design de Poucelina, ainsi que sur Le Lutin Magique. Quatre ans plus tard, il tente sa chance aux studios Disney qui l\'engagent comme scénariste et storyboarder. Il travaille de concert avec Chris Sanders lors de la préproduction de Mulan (1998) qu\'ils écrivent à quatre mains. Par la suite, il participe à l\'élaboration de l\'univers d\'Atlantide, l\'empire perdu (2001).\r\n\r\nC\'est en 2002 qu\'il passe à la réalisation avec Lilo & Stitch, aux côtés de son partenaire Chris Sanders avec qui il coécrit le long-métrage. Le film est depuis souvent considéré comme le dernier du second âge d\'or des studios à grandes oreilles, réalisé en animation traditionnelle. Alors que le film marque la consécration de DeBlois, celui-ci change d\'horizon et se lance par la suite dans l\'écriture, la production et la réalisation plusieurs films en live action chez Disney et Universal, encore à l\'état de projets aujourd\'hui. Seul film live du réalisateur sorti sur les écrans, Heima (2007) est un documentaire sur le groupe Sigur Ros à leur retour surprise en Islande. DeBlois travaillera cependant à l\'écriture des séries animées et d\'une suite de Lilo et Stitch, de 2003 à 2010.\r\n\r\nChris Sanders finit par le ramener à l\'animation lorsque Dreamworks leur propose en 2008 d\'écrire et de réaliser ensemble leur nouvelle grosse production, Dragons. Ils ont un an pour réadapter le roman de Cressida Cowell, des personnages à l\'intrigue elle-même. C\'est la première fois qu\'ils doivent faire face à une oeuvre de cette envergure, mais le film est un succès sans précédent pour le réalisateur : nominé aux Oscars, il remporte aussi nombre de prix dans divers festivals. C\'est également la plus grosse réussite des studios Dreamworks en dehors de la franchise Shrek. Le film sera par la suite dérivé sur tous les médias possibles, du jeu vidéo à la série animée.\r\n\r\nDragons connaît un tel engouement qu\'il est proposé à DeBlois d\'en réaliser un deuxième volet. Il accepte à condition que le tout devienne une trilogie. Il réalise entre-temps une vidéo live pour le leader de Sigur Ros, Jonsi, \"Go Quiet\", sorti en parallèle du nouvel album du chanteur, \"Go\". C\'est en 2014 que sort Dragons 2, que DeBlois produit, écrit et réalise cette fois-ci sans l\'aide de Chris Sanders. Le film est par ailleurs sélectionné au festival de Cannes de cette même année, hors-compétition. '),
(8, 'Bradley Cooper', 'img/realisateurs/bradley_cooper.jpg', 'Bradley Cooper est un acteur, réalisateur, producteur et chanteur américain, né le 5 janvier 1975 à Philadelphie. \r\n\r\nEn 2018 il passe à la réalisation avec A Star Is Born, drame dans lequel il joue aussi le rôle principal, aux côtés de la chanteuse Lady Gaga. Dans ce film musical, Bradley Cooper a appris à chanter et jouer de la guitare. Afin de mener à terme ce projet, il a dû refuser de revenir dans la mini-série Wet Hot American Summer: Ten Years Later, mise en ligne durant l\'été 2017. Il a donc été remplacé par Adam Scott 31. '),
(9, 'Alexandre Astier', 'img/realisateurs/alexandre_astier.jpg', 'La passion première d\'Alexandre Astier n\'est pas la comédie mais la musique.Très jeune, il entre au Conservatoire avant de poursuivre ses études à l\'American School of Modern Music à Paris. En parallèle, il suit ses premiers cours de théâtre et se met peu à peu à l\'écriture. Très vite, il monte deux pièces écrites par ses soins : en 1997, Poule Fiction, et en 2000, L\'étrange assistant du Docteur Lannion. C\'est grâce à sa prestation sur scène à Lyon dans Le jour du froment qu\'il se fait remarquer par les professionnels. Il se distingue notamment dans la pièce de Jacques Chambon, Nous crions grâce.\r\n\r\nAprès avoir composé des musiques pour des courts-métrages tels que Soyons sport et Un soupçon fondé sur quelque chose de gras, il se lance dans la réalisation de son propre court, Dies iræ, qui remporte le Prix du public 2003 du Festival Off-Courts. Celui-ci donnera naissance à la série Kaamelott qui l\'a fait connaître auprès du grand public. Il est à la fois réalisateur, scénariste et acteur de cette fiction qui met en scène la légende des chevaliers de la Table Ronde. Elle a remplacé avec succès Caméra Café sur l\'antenne de M6 à partir du mois de Janvier 2005. Tandis qu\'il s\'offre le rôle du Roi Arthur, il en profite pour faire jouer sa famille. Ainsi, son père Lionel Astier obtient le rôle de Léodagan, son frère Simon Astier celui d\'Yvain, Joëlle Sevilla, sa mère, celui de Sévi et Josée Drevon, sa belle-mère, celui d\'Ygerne. Il va même jusqu\'à composer les musiques de la série ! A partir de 2006, il décline l\'univers de Kaamelott dans une BD dont il a écrit le scénario.\r\n\r\nIl décroche son premier rôle au cinéma en 2006 dans le film Comme t\'y es belle !, aux cotés de Michèle Laroque, puis il enchaîne avec le blockbuster français Astérix aux Jeux Olympiques. En 2008, il endosse le rôle de Reiser, grand dessinateur et ami de Coluche, dans le film d\'Antoine de Caunes, Coluche, l\'histoire d\'un mec. L\'année suivante, il offre un registre inattendu avec son rôle d\'ex-mari confident de Sophie Marceau dans LOL - Laughing Out Loud. Il fera un petit retour à la télévision en 2010 le temps d\'un caméo dans la série de son frère Simon, Hero Corp avant d\'incarner en 2011 le méchant Clotindre dans Philibert, pastiche de films de cape et d\'épée face à Jérémie Renier. \r\n\r\nEn 2012, Alexandre Astier voit enfin l’accomplissement de son premier long-métrage au cinéma : David et Madame Hansen. Comme à son habitude, Alexandre est sur tous les fronts puisqu’il écrit, produit, réalise, monte et compose même les musiques de ce film. En 2012 aussi, il retrouve les planches avec sa pièce Que ma joie demeure !, et fait de nombreuses apparitions dans des émissions et mini-séries à succès comme Bref, Le Golden Show, ou encore Scènes de ménages en 2013.\r\n\r\nLa même année, il collabore au scénario de Pop Rédemption et y joue avec Julien Doré. Le 6 mars 2014 est mis en ligne un court-métrage de Lisa Azuelos intitulé 14 millions de cris dans lequel il joue aux côtés de Julie Gayet et qui dénonce le mariage forcé de plus de 14 millions de mineurs chaque année dans le monde. Le mois suivant sort dans les salles la quatrième collaboration d’Alexandre Astier et Lisa Azuelos dans la romance Une rencontre.\r\n\r\nA Noël 2014, le public français découvre Astérix - Le Domaine des Dieux, le neuvième film d’animation du célèbre petit gaulois. Alexandre Astier, à l’origine de ce projet, réunit une pléiade de stars dont des habitués de Kaamelott comme Lionel Astier et Joëlle Sevilla, mais aussi Elie Sémoun, Alain Chabat, Géraldine Nakache, ainsi que Florence Foresti et Roger Carel, la voix officielle d’Astérix depuis 1967. En 2014 toujours, l’hyperactif Astier tourne dans le premier long-métrage de Kheiron et débute la tournée dans l’hexagone, la Suisse et la Belgique de sa nouvelle pièce de théâtre l’Exoconférence. '),
(10, 'Louis Clichy', 'img/realisateurs/louis_clichy.jpg', 'Pote d\'Alexandre Astier.'),
(11, 'Guillaume Canet', 'img/realisateurs/louis_clichy.jpg', '\r\n\r\nPassionné d\'équitation, Guillaume Canet, né le 10 avril 1973 à Boulogne-Billancourt, voit une prometteuse carrière de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au théâtre dans la pièce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interprète aux côtés de Christophe Malavoy.\r\n\r\nAprès une première apparition au cinéma dans le court-métrage Le Fils unique, en 1995, Guillaume Canet se retrouve face à Jean Rochefort pour les besoins du thriller Barracuda (1997). Mais ce sont ses prestations dans En plein coeur (1998) de Pierre Jolivet et Je règle mon pas sur le pas de mon père (id.) de Rémi Waterhouse qui lui assurent une belle notoriété naissante. Il retrouvera ces cinéastes qui lui ont donné sa chance en 2002 avec le moyenâgeux Frère du guerrier et la comédie Mille millièmes, fantaisie immobilière.\r\n\r\nEn 2000, Guillaume Canet devient un acteur de tout premier plan, donnant la réplique à Leonardo DiCaprio sur La Plage, testant La Fidélité de Sophie Marceau, goûtant aux Morsures de l\'aube d\'Antoine de Caunes et composant le biographe autoproclamé de Vidocq. Après avoir réalisé quelques spots publicitaires et courts-métrages (Sans regrets, Je taim), il se met en scène en 2002 dans un premier long-métrage, Mon idole, fable amorale sur le milieu du show business. Après ce galop d\'essai réussi, Guillaume Canet aborde des genres différents : il flirte avec Marion Cotillard dans Jeux d\'enfants, rêve d\'aventures dans le déjanté Narco et combat dans les tranchées de l\'émouvant Joyeux Noël.\r\n\r\nAprès le drame L\'Enfer et la comédie Un ticket pour l\'espace, le comédien prête sa voix au film d\'animation Pixar, Cars. Puis il franchit un nouveau palier en 2006 en réalisant Ne le dis à personne, adaptation du roman d\'Harlan Coben où il dirige un casting de luxe réunissant François Cluzet, Kristin Scott Thomas ou encore Jean Rochefort. Le long-métrage remporte quatre César, dont celui du Meilleur acteur pour François Cluzet et du Meilleur réalisateur pour Canet, qui devient le cinéaste le plus jeune de l\'histoire des César à être récompensé dans cette catégorie.\r\n\r\nDésormais figure majeure du cinéma hexagonal, Guillaume Canet côtoie en 2007 Audrey Tautou dans la comédie romantique Ensemble, c\'est tout, adaptation littéraire du best-seller d\'Anna Gavalda. La même année, il est très antipathique dans Darling puis tient la vedette de La Clef, thriller de Guillaume Nicloux où il partage notamment l\'affiche avec Marie Gillain, Jean Rochefort et Vanessa Paradis.\r\n\r\nAprès avoir dirigé François Cluzet dans Ne le dis à personne, c\'est désormais de l\'autre côté de la caméra que les deux acteurs se retrouvent dans Les Liens du sang de Jacques Maillot. Ils y interprètent deux frères bien différents (l\'un est policier, l\'autre criminel) ayant des difficultés à tirer un trait sur leur passé. C\'est sur un ton plus léger que Guillaume Canet choisit de finir l\'année 2008 en prêtant sa voix au narrateur de La Famille Suricate.\r\n\r\n2009 plonge l\'acteur malgré lui dans le monde dangereux des services secrets. Il enfile le costume d\'un bagagiste qui va devoir s\'improviser agent secret dans Espion(s) de Nicolas Saada. Puis, en pleine guerre froide, Emir Kusturica l\'implique de nouveau devant la caméra de Christian Carion, cinq ans après Joyeux Noël. Après avoir partagé l\'affiche avec Marion Cotillard dans Le Dernier vol (2009), il la dirige sur son troisième long métrage Les Petits mouchoirs (2010), un film de \"potes\" très personnel pour lequel il retrouve aussi, entre autres, les acteurs François Cluzet et Gilles Lellouche. Dix ans après La Plage, l\'acteur tourne à nouveau de l’autre côté de l’Atlantique dans le drame amoureux Last Night, entouré d’un casting international : Keira Knightley, Eva Mendes et Sam Worthington.\r\n\r\nDe retour en France, il tourne dans le nouveau film d\'époque de Christophe Barratier, La Nouvelle guerre des boutons, avec Laetitia Casta et une panoplie d\'\"enfants guerriers\", avant de se retrouver sous la direction de Cédric Kahn pour le dramatique Une vie meilleure, aux côtés de Leïla Bekhti, avec qui il forme un jeune couple plein d\'illusions qui se voit brutalement malmené par de gros problèmes d\'endettement. La même année, il prête sa voix à la version française de Lightning McQueen pour Cars 2.\r\n\r\nGuillaume Canet scénarise et tourne ensuite dans Jappeloup de Christian Duguay, un biopic sur un cheval, champion de saut d’obstacle, et son jockey. Un an plus tard, il retourne aux États-Unis mais cette fois pour réaliser, produire et coscénariser avec James Gray son premier film américain, Blood Ties, un remake des Liens du sang, porté par Clive Owen et Billy Crudup. L\'expérience internationale se poursuit avec The Program de Stephen Frears, aux côtés de Ben Foster et Chris O\'Dowd et The Siege of Jadotville, avec Jamie Dornan et Mark Strong, qui ne connaît qu\'une sortie en VOD.\r\n\r\nL\'acteur n\'en oublie pas pour autant le cinéma hexagonal, au sein duquel il fait toujours preuve d\'éclectisme : inquiétant et glaçant dans La prochaine fois je viserai le coeur et L\'homme qu\'on aimait trop, poétique dans Le secret des banquises, historique dans Cézanne et moi avec Guillaume Gallienne... Il opère finalement un retour aux sources déjanté avec Rock\'n\'Roll, dans lequel il se met en scène avec Marion Cotillard dans une version inattendue et pleine d\'auto-dérision de leur couple.\r\n'),
(12, 'Michael Chaves', 'img/realisateurs/michael_chaves.jpg', 'ichael Chaves is an American film director, writer, visual effects artist, editor, and executive producer best known for his work on Chase Champion[1] and The Curse of La Llorona.\r\nHe started directed several short films including The Maiden, which won the Best Super Short Horror Film Award at Shriekfest 2016.[3] He also created the television series Chase Champion, and directed all of the episodes.[4][5][1] He is transitioning to feature-length filmmaking with horror films The Curse of La Llorona[2][6] and the upcoming The Conjuring 3,[7] both produced by James Wan, which are the sixth and eighth installments of the Conjuring Universe, respectively. He is also signed on to direct another horror film, The Reckoning, for Michael Bay, Bradley Fuller, and Andrew Form, under Platinum Dunes, with a script written by Patrick Melton and Marcus Dunstan.');

-- --------------------------------------------------------

--
-- Structure de la table `Realiser`
--

CREATE TABLE `Realiser` (
  `Id_Realisateur` int(11) NOT NULL,
  `Id_Film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Role`
--

CREATE TABLE `Role` (
  `Id_Role` int(11) NOT NULL,
  `Administrateur` varchar(255) NOT NULL,
  `Utilisateur` varchar(255) NOT NULL,
  `Id_Membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Soumettre`
--

CREATE TABLE `Soumettre` (
  `Id_Film` int(11) NOT NULL,
  `Id_Genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Acteur`
--
ALTER TABLE `Acteur`
  ADD PRIMARY KEY (`Id_Acteur`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`Id_Film`);

--
-- Index pour la table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Id_Genre`);

--
-- Index pour la table `Jouer`
--
ALTER TABLE `Jouer`
  ADD PRIMARY KEY (`Id_Film`,`Id_Acteur`),
  ADD KEY `Jouer_Acteur1_FK` (`Id_Acteur`);

--
-- Index pour la table `Membre`
--
ALTER TABLE `Membre`
  ADD PRIMARY KEY (`Id_Membre`),
  ADD UNIQUE KEY `Membre_Role0_AK` (`Id_Role`);

--
-- Index pour la table `Modifier`
--
ALTER TABLE `Modifier`
  ADD PRIMARY KEY (`Id_Membre`,`Id_Acteur`,`Id_Realisateur`,`Id_Film`,`Id_Genre`),
  ADD KEY `Modifier_Acteur1_FK` (`Id_Acteur`),
  ADD KEY `Modifier_Realisateur2_FK` (`Id_Realisateur`),
  ADD KEY `Modifier_Film3_FK` (`Id_Film`),
  ADD KEY `Modifier_Genre4_FK` (`Id_Genre`);

--
-- Index pour la table `Realisateur`
--
ALTER TABLE `Realisateur`
  ADD PRIMARY KEY (`Id_Realisateur`);

--
-- Index pour la table `Realiser`
--
ALTER TABLE `Realiser`
  ADD PRIMARY KEY (`Id_Realisateur`,`Id_Film`),
  ADD KEY `Realiser_Film1_FK` (`Id_Film`);

--
-- Index pour la table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`Id_Role`),
  ADD UNIQUE KEY `Role_Membre0_AK` (`Id_Membre`);

--
-- Index pour la table `Soumettre`
--
ALTER TABLE `Soumettre`
  ADD PRIMARY KEY (`Id_Film`,`Id_Genre`),
  ADD KEY `Soumettre_Genre1_FK` (`Id_Genre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Acteur`
--
ALTER TABLE `Acteur`
  MODIFY `Id_Acteur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `Id_Film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `Id_Genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `Membre`
--
ALTER TABLE `Membre`
  MODIFY `Id_Membre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Realisateur`
--
ALTER TABLE `Realisateur`
  MODIFY `Id_Realisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Role`
--
ALTER TABLE `Role`
  MODIFY `Id_Role` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Jouer`
--
ALTER TABLE `Jouer`
  ADD CONSTRAINT `Jouer_Acteur1_FK` FOREIGN KEY (`Id_Acteur`) REFERENCES `Acteur` (`Id_Acteur`),
  ADD CONSTRAINT `Jouer_Film0_FK` FOREIGN KEY (`Id_Film`) REFERENCES `Film` (`Id_Film`);

--
-- Contraintes pour la table `Membre`
--
ALTER TABLE `Membre`
  ADD CONSTRAINT `Membre_Role0_FK` FOREIGN KEY (`Id_Role`) REFERENCES `Role` (`Id_Role`);

--
-- Contraintes pour la table `Modifier`
--
ALTER TABLE `Modifier`
  ADD CONSTRAINT `Modifier_Acteur1_FK` FOREIGN KEY (`Id_Acteur`) REFERENCES `Acteur` (`Id_Acteur`),
  ADD CONSTRAINT `Modifier_Film3_FK` FOREIGN KEY (`Id_Film`) REFERENCES `Film` (`Id_Film`),
  ADD CONSTRAINT `Modifier_Genre4_FK` FOREIGN KEY (`Id_Genre`) REFERENCES `Genre` (`Id_Genre`),
  ADD CONSTRAINT `Modifier_Membre0_FK` FOREIGN KEY (`Id_Membre`) REFERENCES `Membre` (`Id_Membre`),
  ADD CONSTRAINT `Modifier_Realisateur2_FK` FOREIGN KEY (`Id_Realisateur`) REFERENCES `Realisateur` (`Id_Realisateur`);

--
-- Contraintes pour la table `Realiser`
--
ALTER TABLE `Realiser`
  ADD CONSTRAINT `Realiser_Film1_FK` FOREIGN KEY (`Id_Film`) REFERENCES `Film` (`Id_Film`),
  ADD CONSTRAINT `Realiser_Realisateur0_FK` FOREIGN KEY (`Id_Realisateur`) REFERENCES `Realisateur` (`Id_Realisateur`);

--
-- Contraintes pour la table `Role`
--
ALTER TABLE `Role`
  ADD CONSTRAINT `Role_Membre0_FK` FOREIGN KEY (`Id_Membre`) REFERENCES `Membre` (`Id_Membre`);

--
-- Contraintes pour la table `Soumettre`
--
ALTER TABLE `Soumettre`
  ADD CONSTRAINT `Soumettre_Film0_FK` FOREIGN KEY (`Id_Film`) REFERENCES `Film` (`Id_Film`),
  ADD CONSTRAINT `Soumettre_Genre1_FK` FOREIGN KEY (`Id_Genre`) REFERENCES `Genre` (`Id_Genre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
