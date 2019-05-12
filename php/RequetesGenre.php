<?php

// on recupere les infos ID_GENRE et TYPE_GENRE de la table genre par ordre alphabétique
$genres = $bdd->prepare('SELECT * FROM genre ORDER BY Type_Genre');
$genres->execute();

// on recupere les infos ID_REALISATEUR et NOM_REALISATEUR de la table realisateur par ordre alphabétique
$realisateurs = $bdd->prepare('SELECT * FROM realisateur ORDER BY Nom_Realisateur');
$realisateurs->execute();


// on recupere les infos ID_ACTEUR et NOM_ACTEUR de la table acteur par ordre alphabétique
$acteurs = $bdd->prepare('SELECT * FROM acteur ORDER BY Nom_Acteur');
$acteurs->execute();

// on recupere le Type_Genre de la table genre juste pour le titre de la catégorie
$titregenre = $bdd->prepare('SELECT Type_Genre FROM genre WHERE Id_Genre='.$_GET['Id_Genre'] );
$titregenre->execute();

// on recupere les infos FILM, SOUMETTRE et GENRE pour les utiliser dans la page GENRE ou les afficher seront affichées par genre
$affichesgenre = $bdd->prepare('SELECT * FROM film, soumettre, genre WHERE film.Id_Film=soumettre.Id_Film AND soumettre.Id_Genre=genre.Id_Genre AND genre.Id_Genre='.$_GET['Id_Genre'] );
$affichesgenre->execute();


?>