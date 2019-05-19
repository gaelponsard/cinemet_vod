<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Films</title>
    <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link src="css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="css/allo_films.css">
    <link rel="stylesheet" href="css/animate.css">

</head>

<body>
    <?php include('php/Connect_BDD.php');

    //////////////////////////////  NAVBAR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    include('header.php');?>


    <!--//////////////////////////////  HEADER  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

    <div class="header_films">
        <h1>NOS FILMS</h1>
        <div class="ligne">
            <img class="ligne_g fadeInLeft animated" src="img/ligne_g.png">
            <img class="ligne_d fadeInRight animated" src="img/ligne_d.png">
        </div>
    </div>

    <!--//////////////////////////////  LISTE GAUCHE  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

    <div class="row nopadding" id="liste_films">
        <div class="col-lg-3 col-md-4 col-sm-4">
            <div class="menu_films">
                <ul id="menu-accordeon">
                    <input type="search" id="site-search" name="q" aria-label="Search through site content">

                    <button>Rechercher</button>

                    <li><a class="collapsible">Genres</a>
                    
                    
                        <ul>
                        <li><a href="allo_films.php">TOUS</a></li>
                        </ul>
                        <ul>
                        <?php
include('php/RequetesFilm.php');
while ($donnees = $genres->fetch())
{
?>
                            <li><a href="genre.php?Id_Genre=<?php echo $donnees['Id_Genre']; ?>"><?php echo $donnees['Type_Genre']; ?></a></li>
                            <?php   
    }
$genres->closeCursor(); // on ferme la boucle et termine le traitement de la requete IMAGE_FILM + ID_FILM
?>
                        </ul>
                    </li>
                    

                    <li><a class="collapsible">Realisateurs</a>
                        <ul>
                        <?php
include('php/RequetesFilm.php');
while ($donnees = $realisateurs->fetch())
{
?>   
                            <li><a href="realisateur.php?Id_Realisateur=<?php echo $donnees['Id_Realisateur']; ?>"><?php echo $donnees['Nom_Realisateur']; ?></a></li>
                            <?php   
    }
$realisateurs->closeCursor(); // on ferme la boucle et termine le traitement de la requete IMAGE_FILM + ID_FILM
?>
                        </ul>
                    </li>
                    <li><a class="collapsible">Acteurs</a>
                        <ul>
                        <?php
include('php/RequetesFilm.php');
while ($donnees = $acteurs->fetch())
{
?>   
                            <li><a href="acteur.php?Id_Acteur=<?php echo $donnees['Id_Acteur']; ?>"><?php echo $donnees['Nom_Acteur']; ?></a></li>
                            <?php   
    }
$acteurs->closeCursor(); // on ferme la boucle et termine le traitement de la requete IMAGE_FILM + ID_FILM
?>
                        </ul>
                    </li>
                </ul>
            </div>

            <!--//////////////////////////////  LISTE GAUCHE POUR SMARTPHONE  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

            <div class="menu_films_portable">
                <ul id="menu-accordeon">
                    <input type="search" id="site-search" name="q" aria-label="Search through site content">
                    <button>Rechercher</button>
                    <li><a class="collapsible">Genres</a>
                        <ul>
                        <?php
include('php/RequetesFilm.php');
while ($donnees = $genres->fetch())
{
?>
                            <li><a href="#" class="collapsible"><?php echo $donnees['Type_Genre']; ?></a></li>
                            <?php   
    }
$genres->closeCursor(); // on ferme la boucle et termine le traitement de la requete IMAGE_FILM + ID_FILM
?>

                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!--//////////////////////////////  MINIATURES FILMS DROITE  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


        <div class="col-lg-9 col-md-8 col-sm-8">
            <div class="liens_films fadeInUp animated">
                <div class="titre"> Nouveautés </div><br />
                <?php
include('php/RequetesFilm.php');
while ($donnees = $films->fetch())
{
?>
                <a href="content.php?id=<?php echo $donnees['Id_Film'];?>"><img class="effect "
                        src="img/<?php echo $donnees['Image_Film']; ?>.jpg">

                </a>
                <?php   
    }
$films->closeCursor(); // on ferme la boucle et termine le traitement de la requete IMAGE_FILM + ID_FILM
?>
            </div>
        </div>

    </div>




    <!--//////////////////////////////  FOOTER  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
<footer>
    <?php include('footer.php');?>
</footer>
    <!--//////////////////////////////  BACK TO TOP BTN  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

    <div><a id="cRetour" class="cInvisible" href="#haut"></a></div>


    <!--//////////////////////////////  SCRIPTS  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

    <script src="https://code.jquery.com/jquery-3.4.0.slim.min.js"
        integrity="sha256-ZaXnYkHGqIhqTbJ6MB4l9Frs/r7U4jlx7ir8PJYBqbI=" crossorigin="anonymous"></script>
    <script src="js/siema.min.js"></script>
    <script src="js/allo_films.js"></script>

</body>

</html>