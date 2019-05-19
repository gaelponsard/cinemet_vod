<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liste des films</title>

    <?php


include('php/Connect_BDD.php');//CONNECTION A LA BDD

$films = $bdd->prepare('SELECT * FROM film ORDER BY Titre_Film ASC');
$films->execute();
?>
</head>
<body>
<ul>
      <?php while($a = $films->fetch()) { ?>
      <li>
         <a href="content.php?id=<?= $a['Id_Film'] ?>">
            <img src="img/<?= $a['Image_Film'] ?>.jpg" width="150" /><br />
            <?= $a['Titre_Film'] ?>
         </a>
          | <a href="ajoutfilm.php?edit=<?= $a['Id_Film'] ?>">Modifier</a> | <a href="suppressionfilm.php?id=<?= $a['Id_Film'] ?>">Supprimer</a>
      </li>
      <?php   
    }
$films->closeCursor();
?>
   <ul>
    
</body>
</html>