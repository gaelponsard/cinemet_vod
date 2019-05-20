<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ajout film</title>

    <?php


include('php/Connect_BDD.php');//CONNECTION A LA BDD

$mode_edition = 0;
if(isset($_GET['edit']) AND !empty($_GET['edit'])) {
   $mode_edition = 1;
   $edit_id = htmlspecialchars($_GET['edit']);
   $edit_film = $bdd->prepare('SELECT * FROM film WHERE Id_Film = ?');
   $edit_film->execute(array($edit_id));
   if($edit_film->rowCount() == 1) {
      $edit_film = $edit_film->fetch();
   } else {
      die('Erreur : le film n\'existe pas...');
   }
}
if(isset($_POST['titre_film'], $_POST['synopsis'], $_POST['image_film'], $_POST['duree'], $_POST['video_film'])) {
   if(!empty($_POST['titre_film']) AND !empty($_POST['synopsis'] AND !empty($_POST['image_film'] AND !empty($_POST['duree'] AND !empty($_POST['video_film'])) {
      
      $titre_film = htmlspecialchars($_POST['titre_film']);
      $synopsis = htmlspecialchars($_POST['synopsis']);
      $image_film = htmlspecialchars($_POST['image_film']);
      $duree = htmlspecialchars($_POST['duree']);
      $video_film = htmlspecialchars($_POST['video_film']);

      if($mode_edition == 0) {
         // var_dump($_FILES);
         // var_dump(exif_imagetype($_FILES['miniature']['tmp_name']));
         $ins = $bdd->prepare('INSERT INTO film (Titre_Film, Synopsis, Image_Film, Duree, Video_Film) VALUES (?, ?, ?, ?, ?');
         $ins->execute(array($titre_film, $synopsis, $image_film, $duree, $video_film));
         $lastid = $bdd->lastInsertId();
         
         if(isset($_FILES['affiche']) AND !empty($_FILES['affiche']['name'])) {
            if(exif_imagetype($_FILES['affiche']['tmp_name']) == 2) {
               $chemin = 'img/'.$lastid.'.jpg';
               move_uploaded_file($_FILES['affiche']['tmp_name'], $chemin);
            } else {
               $message = 'Votre image doit être au format jpg';
            }
         }
         $message = 'Votre film a bien été posté';
      } else {
         $update = $bdd->prepare('UPDATE film SET Titre_Film = ?, Synopsis = ?, Image_Film = ?, Duree = ?, Video_Film = ? WHERE Id_Film = ?');
         $update->execute(array($titre_film, $synopsis, $image_film, $duree, $video_film, $edit_id));
         header('Location: allo_films.php?id='.$edit_id);
         $message = 'Votre film a bien été mis à jour !';
      }
   } else {
      $message = 'Veuillez remplir tous les champs';
   }
}
?>
</head>

<body>
    <form method="POST" enctype="multipart/form-data">
        <input type="text" name="titre_film" placeholder="Titre" <?php if($mode_edition == 1) { ?> value="<?= 
      $edit_article['titre'] ?>" <?php } ?> /><br />
        <textarea name="synopsis" placeholder="Synopsis"><?php if($mode_edition == 1) { ?><?= 
      $edit_article['contenu'] ?><?php } ?></textarea><br />
        <?php if($mode_edition == 0) { ?>
        <input type="file" name="affiche" /><br />
        <?php } ?>
        <input type="submit" value="Envoyer le film" />
    </form>
    <br />
    <?php if(isset($message)) { echo $message; } ?>
</body>

</html>