<?php
// on recupere les infos TITRE_FILM + IMAGE_FILM + ID_FILM de la table film
$affiches = $bdd->prepare('SELECT * FROM film');
$affiches->execute();



?>