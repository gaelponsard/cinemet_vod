<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profil</title>
</head>
<body>
    
<?php
session_start(); //on ouvre la session


/////////////////////////////CONNECTION A LA BDD ///////////////////////////
include('php/Connect_BDD.php');



/////////////////////////// PHP PROFIL //////////////////////////////////

if(isset($_GET['id']) AND $_GET['id'] > 0) {
    $getid = intval($_GET['id']);
    $requser = $bdd->prepare('SELECT * FROM membre WHERE Id_Membre = ?');
    $requser->execute(array($getid));
    $userinfo = $requser->fetch();
 ?>

</head>
<body>
<!------  NAVBAR  ------->

<?php include('header.php'); ?>

<div align="center">
         <h2>Profil de <?php echo $userinfo['Login_Membre']; ?></h2>
         <br /><br />
         Pseudo = <?php echo $userinfo['Login_Membre']; ?>
         <br />
         Mail = <?php echo $userinfo['Email_Membre']; ?>
         <br />
         <?php
         if(isset($_SESSION['id']) AND $userinfo['Id_Membre'] == $_SESSION['id']) {
         ?>
         <br />
         <a href="editionprofil.php">Editer mon profil</a>
         <a href="deconnexion.php">Se déconnecter</a>
         <a href="administration.php">Editer les films</a>
         <?php
         }
         ?>
      </div>
   </body>
</html>
<?php   
}
?>