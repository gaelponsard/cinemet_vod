<?php
// on recupere les infos TITRE_FILM + IMAGE_FILM + ID_FILM de la table film
$films = $bdd->prepare('SELECT * FROM film');
$films->execute();


// on recupere les infos ID_GENRE et TYPE_GENRE de la table genre par ordre alphabétique
$genres = $bdd->prepare('SELECT * FROM genre ORDER BY Type_Genre');
$genres->execute();

// on recupere les infos ID_REALISATEUR et NOM_REALISATEUR de la table realisateur par ordre alphabétique
$realisateurs = $bdd->prepare('SELECT * FROM realisateur ORDER BY Nom_Realisateur');
$realisateurs->execute();


// on recupere les infos ID_ACTEUR et NOM_ACTEUR de la table acteur par ordre alphabétique
$acteurs = $bdd->prepare('SELECT * FROM acteur ORDER BY Nom_Acteur');
$acteurs->execute();




?>


