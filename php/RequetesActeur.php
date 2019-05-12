<?php
// on recupere les infos de la table acteur
$acteur = $bdd->prepare('SELECT * FROM acteur WHERE Id_Acteur='.$_GET['Id_Acteur'] );
$acteur->execute();

// on recupere les infos de la table acteur, jouer et film
$films = $bdd->prepare('SELECT * FROM film, jouer, acteur WHERE film.Id_Film=jouer.Id_Film AND jouer.Id_Acteur=acteur.Id_Acteur AND acteur.Id_Acteur='.$_GET['Id_Acteur'] );
$films->execute();

?>
