<?php

try
{
	$bdd = new PDO('mysql:host=localhost;dbname=cinemet_vod;charset=utf8', 'root', '');
}
catch (PDOexception $e)
{
        die('Erreur : ' . $e->getMessage());  
}

?>