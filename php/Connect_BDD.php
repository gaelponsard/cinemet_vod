<?php

try
{
	$bdd = new PDO('mysql:host=localhost;dbname=metropolis;charset=utf8', 'root', '');
}
catch (PDOexception $e)
{
        die('Erreur : ' . $e->getMessage());  
}

?>