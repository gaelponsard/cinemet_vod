<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Acteur</title>

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
  <?php include('php/Connect_BDD.php');

    //////////////////////////////  NAVBAR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    include('header.php');?>


  <main id="acteur">
    <?php  
  // on recupere les infos ACTEUR de la BDD
include('php/RequetesActeur.php');
// on ouvre la boucle
while ($donnees = $acteur->fetch())
{
?>
    <!--  pour le titre -->
    <div class="hoofd">
      <h1 class="text-uppercase"><?php echo $donnees['Nom_Acteur']; ?></h1>
      <div class="fleches_2">
        <img class="fleche_g animated fadeInLeft" src="img/ligne_g.png">
        <img class="fleche_d animated fadeInRight" src="img/ligne_d.png">
      </div>
    </div>

    <!-- pour la partie carte d'identité et sa photo -->

    <div class="row">
      



      <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">

        <iframe class="shadow p-3 mb-5 bg-light rounded" src="<?php echo $donnees['Image_Acteur']; ?>" height="400px"
          width="300px"></iframe>

      </div>
      

    
    </div>


    <!--  pour la descrition du parcours cinématographique de l'acteur  -->


    <p class="text-center shadow-lg p-3 mb-5 bg-light rounded">
    <?php echo $donnees['Bio_Acteur']; ?>
    </p>
    <?php
}
$acteur->closeCursor(); // on ferme la boucle et termine le traitement de la requete ACTEUR
?>

    <div class="col-md-10">
    <?php
    // on recupere les infos ACTEUR de la BDD
include('php/RequetesActeur.php');
// on ouvre la boucle
while ($donnees = $films->fetch())
{
?>
      <div class="liens_films"><h5 style="color: #ffffff; margin:5px;"><?php echo $donnees['Nom_Acteur']; ?> a joué dans:</h5>
        <a href="content.php?id=<?php echo $donnees['Id_Film'];?>"><img class="affiche" src="<?php echo $donnees['Image_Film']; ?>"></a>
        <?php
}
$films->closeCursor(); // on ferme la boucle et termine le traitement de la requete ACTEUR
?>
      </div>
    </div>

  </main>

  <footer>

  <?php include('footer.php');?>

  </footer>

  <div><a id="cRetour" class="cInvisible" href="#haut"></a></div>

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