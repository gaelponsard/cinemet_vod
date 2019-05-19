<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Connexion</title>

    <?php
session_start(); //on ouvre la session


/////////////////////////////CONNECTION A LA BDD ///////////////////////////
include('php/Connect_BDD.php');



///////////////////////////CONNEXION //////////////////////////////////

if(isset($_POST['formconnexion'])) {
    $mailconnect = htmlspecialchars($_POST['mailconnect']);
    $mdpconnect = sha1($_POST['mdpconnect']);
    if(!empty($mailconnect) AND !empty($mdpconnect)) {
       $requser = $bdd->prepare("SELECT * FROM membre WHERE Email_Membre = ? AND Password_Membre = ?");
       $requser->execute(array($mailconnect, $mdpconnect));
       $userexist = $requser->rowCount();
       if($userexist == 1) {
          $userinfo = $requser->fetch();
          $_SESSION['id'] = $userinfo['Id_Membre'];
          $_SESSION['pseudo'] = $userinfo['Login_Membre'];
          $_SESSION['mail'] = $userinfo['Email_Membre'];
          header("Location: profil.php?id=".$_SESSION['id']);
       } else {
          $erreur = "Mauvais mail ou mot de passe !";
       }
    } else {
       $erreur = "Tous les champs doivent être complétés !";
    }
 }
 ?>
 

</head>
<body>
<!------  NAVBAR  ------->

<?php include('header.php'); ?>

    <head>
       <title>TUTO PHP</title>
       <meta charset="utf-8">
    </head>
    <body>
       <div align="center">
          <h2>Connexion</h2>
          <br /><br />
          <form method="POST" action="">
             <input type="email" name="mailconnect" placeholder="Mail" />
             <input type="password" name="mdpconnect" placeholder="Mot de passe" />
             <br /><br />
             <input type="submit" name="formconnexion" value="Se connecter !" />
          </form>
          <?php
          if(isset($erreur)) {
             echo '<font color="red">'.$erreur."</font>";
          }
          ?>
       </div>
    </body>
 </html>
