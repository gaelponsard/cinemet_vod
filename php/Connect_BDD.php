<?php

try
{
	$bdd = new PDO('mysql:host=localhost;dbname=allocinemet_vod;charset=utf8', 'commun', 'commun');
}
catch (PDOexception $e)
{
        die('Erreur : ' . $e->getMessage());  
}

?>