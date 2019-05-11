<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Content</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!--Animate CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
  <!--  pour la police des titres  -->
  <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
  <!-- pour les autres textes -->
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
  <!--mon CSS -->
  <link rel="stylesheet" href="css/style_pages_cont_real_act.css">
  <link rel="stylesheet" href="css/footer.css">

</head>

<body>
  <!---------CONNECTION A LA BDD --------->
  <?php include('php/Connect_BDD.php');



  //////////////////////////////  NAVBAR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  include('header.php');?>
  


  <main id="content">

    <?php
// on recupere les infos TITRE + VIDEO + SYNOPSIS de la BDD
include('php/RequetesContent.php');
// on ouvre la boucle
while ($donnees = $film->fetch())
{
?>

    <!--  pour le titre -->

    <div class="hoofd">
      <h1 class="text-uppercase"><?php echo $donnees['Titre_Film']; ?></h1>
      <div class="fleches_2">
        <img class="fleche_g animated fadeInLeft" src="img/ligne_g.png">
        <img class="fleche_d animated fadeInRight" src="img/ligne_d.png">
      </div>
    </div>

    <!-- pour la video du film -->
    <div class="media shadow-lg p-3 mb-5 bg-light rounded">
      <?php echo $donnees['Video_Film']; ?>
    </div>

    <!-- pour la description du film, on appelle la donnee "Synopsis" depuis la table "film"-->

    <p class="text-center bg-light"><?php echo $donnees['Synopsis']; ?>
    </p>



    <!-- pour la partie récap d'infos -->

    <div class="row">
      <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1"></div>
      <div class="col-10 col-sm-10 col-md-10 col-lg-4 col-xl-5">

        <div class="list-group">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Durée du film</h5>
          </div>
          <a class="list-group-item list-group-item-action">
            <p class="mb-1"><?php echo $donnees['Duree']; ?></p>
          </a>

          <?php
}
$film->closeCursor(); // on ferme la boucle et termine le traitement de la requete TITRE + VIDEO + SYNOPSIS
?>

          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Réalisateur(s)</h5>
          </div>
          <!--On appelle les données "Id_Realisateur"et "Nom_Realisateur" depuis les tables "film","realiser" et "realisateur"-->
          <?php
include('php/RequetesContent.php');
while ($donnees = $realisateur->fetch())
{
?>
          <a href="realisateur.php?Id_Realisateur=<?php echo $donnees['Id_Realisateur']; ?>"
            class="list-group-item list-group-item-action">
            <p class="mb-1"><?php echo $donnees['Nom_Realisateur']; ?></p>
          </a>
          <?php
}
$realisateur->closeCursor(); // termine le traitement de la requete ID_REALISATEUR + NOM_REALISATEUR
?>



          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">Acteurs</h5>
          </div>
          <!--On appelle les données "Id_Acteur"et "Nom_Acteur" depuis les tables "film", "jouer" et "acteur"-->
          <?php
include('php/RequetesContent.php');
while ($donnees = $acteur->fetch())
{
?>
          <a href="acteur.php?Id_Acteur=<?php echo $donnees['Id_Acteur']; ?>"
            class="list-group-item list-group-item-action">
            <p class="mb-1"><?php echo $donnees['Nom_Acteur']; ?><br></p>
          </a>
          <?php
}
$acteur->closeCursor(); // termine le traitement de la requete ID_ACTEUR + NOM_ACTEUR
?>

        </div>
      </div>

      <div class="col-1 col-sm-3 col-md-3 col-lg-1 col-xl-1"></div>
      <div class="col-8 col-sm-8 col-md-8 col-lg-4 col-xl-4">
        <div class="col-2 col-sm-2 col-md-2 col-lg-1 col-xl-1"></div>

      </div>

  </main>



  <div><a id="cRetour" class="cInvisible" href="#haut"></a></div>

  <?php include('footer.php');?>

  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>

  <script>
    $('.m-nav-toggle').click(function (e) {
      e.preventDefault();
      $('#Navbar').toggleClass('is-open');
    })

    document.addEventListener('DOMContentLoaded', function () {
      window.onscroll = function (ev) {
        document.getElementById("cRetour").className = (window.pageYOffset > 100) ? "cVisible" :
          "cInvisible";
      };
    });

    $('#sidebarCollapse').click(function (e) {
      e.preventDefault();
      $('#sidebar').toggleClass('active');
    })

    function openModal() {
      document.getElementById("modal").style.top = "0px";
    }

    function closeModal() {
      document.getElementById("modal").style.top = "-780px";
    }
  </script>

</body>

</html>