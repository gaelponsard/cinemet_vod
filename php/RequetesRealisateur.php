<?php
// on recupere les infos de la table realisateur
$realisateur = $bdd->prepare('SELECT * FROM realisateur WHERE Id_Realisateur='.$_GET['Id_Realisateur'] );
$realisateur->execute();

// on recupere les infos de la table realisateur, jouer et film
$films = $bdd->prepare('SELECT * FROM film, realiser, realisateur WHERE film.Id_Film=realiser.Id_Film AND realiser.Id_Realisateur=realisateur.Id_Realisateur AND realisateur.Id_Realisateur='.$_GET['Id_Realisateur'] );
$films->execute();

?>
