<?php
// on recupere les infos TITRE + VIDEO + SYNOPSIS de la BDD
$film = $bdd->prepare('SELECT * FROM film WHERE Id_Film='.$_GET['id'] );
$film->execute();




// On appelle les données "Id_Realisateur"et "Nom_Realisateur" depuis les tables "film","realiser" et "realisateur"

$realisateur = $bdd->prepare('SELECT * FROM film, realiser, realisateur WHERE film.Id_Film=realiser.Id_Film AND realiser.Id_Realisateur=realisateur.Id_Realisateur AND film.Id_Film='.$_GET['id'] );
$realisateur->execute();

// On appelle les données "Id_Acteur"et "Nom_Acteur" depuis les tables "film", "jouer" et "acteur"
          
$acteur = $bdd->prepare('SELECT * FROM film, jouer, acteur WHERE film.Id_Film=jouer.Id_Film AND jouer.Id_Acteur=acteur.Id_Acteur AND film.Id_Film='.$_GET['id'] );
$acteur->execute();


?>