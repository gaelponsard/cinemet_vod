<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <title>Cinemet V.O.D.</title>
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
  <link rel="stylesheet" href="css/carousel.css">
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="slider_home/engine1/style.css">
  

 <!--------------- WOWSLIDER ------------------>
<script type="text/javascript" src="slider_home/engine1/jquery.js"></script>


</head>

<body>
  <?php include('php/Connect_BDD.php');

//////////////////////////////  NAVBAR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

include('header.php');?>

  <!-- début WOWSlider section -->
  <div id="wowslider-container1">
    <div class="ws_images">
      <ul>
        <li><a href="allo_films.php" target="_self"><img src="slider_home/data1/images/01.jpg" alt="Avengers: Endgame"
              title="Avengers: Endgame" id="wows1_0" /></a>Phase finale pour les vengeurs...</li>
        <li><a href="allo_films.php"><img src="slider_home/data1/images/02.jpg" alt="Alita: Battle Angel" title="Alita: Battle Angel"
              id="wows1_1" /></a>Le chef d'oeuvre de Cameron et Rodriguez !</li>
        <li><a href="allo_films.php"><img src="slider_home/data1/images/03.jpg" alt="John Wick Parabellum"
              title="John Wick Parabellum" id="wows1_2" /></a>Sa tête est mise à prix !</li>
        <li><a href="content.php?id=10"><img src="slider_home/data1/images/04.jpg" alt="Dumbo" title="Dumbo" id="wows1_3" /></a>Quand
          Burton retrouve Disney</li>
        <li><a href="allo_films.php" target="_self"><img src="slider_home/data1/images/05.jpg" alt="Notre sélection 90's"
              title="Notre sélection 90's" id="wows1_4" /></a>Un bon cru à découvrir !</li>
      </ul>
    </div>
    <div class="ws_bullets">
      <div>
        <a href="allo_films.php" title="Avengers: Endgame"><span><img src="slider_home/data1/tooltips/01.jpg"
              alt="Avengers: Endgame" />1</span></a>
        <a href="allo_films.php" title="Alita: Battle Angel"><span><img src="slider_home/data1/tooltips/02.jpg"
              alt="Alita: Battle Angel" />2</span></a>
        <a href="allo_films.php" title="John Wick Parabellum"><span><img src="slider_home/data1/tooltips/03.jpg"
              alt="John Wick Parabellum" />3</span></a>
        <a href="content.php?id=10" title="Dumbo"><span><img src="slider_home/data1/tooltips/04.jpg" alt="Dumbo" />4</span></a>
        <a href="allo_films.php" title="Notre sélection 90's"><span><img src="slider_home/data1/tooltips/05.jpg"
              alt="Notre sélection 90's" />5</span></a>
      </div>
    </div>
    <div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">jquery slider</a> by
      WOWSlider.com v8.8</div>
    <div class="ws_shadow"></div>
  </div>
  <script type="text/javascript" src="slider_home/engine1/wowslider.js"></script>
  <script type="text/javascript" src="slider_home/engine1/script.js"></script>
  <!-- fin WOWSlider  section -->

  <!-- début carousel 3D -->
  <main>

    <div id="carousel">

      <div class="hideLeft">
        <a href="content.php?id=1"><img src="img/1.jpg"></a>
      </div>

      <div class="prevLeftSecond">
      <a href="content.php?id=2"><img src="img/2.jpg"></a>
      </div>

      <div class="prev">
      <a href="content.php?id=3"><img src="img/3.jpg"></a>
      </div>

      <div class="selected">
      <a href="content.php?id=4"><img src="img/4.jpg"></a>
      </div>

      <div class="next">
      <a href="content.php?id=5"><img src="img/5.jpg"></a>
        
      </div>

      <div class="nextRightSecond">
      <a href="content.php?id=6"><img src="img/6.jpg"></a>
      </div>

      <div class="hideRight">
      <a href="content.php?id=7"><img src="img/7.jpg"></a>
      </div>

    </div>

    <div class="buttons">
      <button id="prev">Prev</button>
      <button id="next">Next</button>
    </div>

  </main>

  <!-- fin carousel 3D -->


  <!-- début parallax -->
  <div class="parallax-window" data-parallax="scroll" data-image-src="img/parallax/01.jpg" alt=""></div>
  <!-- fin parallax -->


  <!--- début section à propos -->
  <div class="a_propos">
    <div class="image-a_propos">
      <img src="img/a_propos.jpg" alt="AllocineMET">
    </div>
    <div class="text-a_propos">
      <h2 class=" container-fluid mx-auto">Lorem Ipsum</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga error reiciendis repellat, aut quos
        culpa
        distinctio tempora a laudantium voluptatem eligendi possimus nesciunt quas maiores, asperiores
        beatae
        esse? Nulla, totam.</p>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam, nesciunt sapiente. Magnam dicta
        eligendi
        repellendus repellat dolore saepe rem totam. Possimus quam illo aliquam repudiandae ipsam nam ad, et
        quis?</p>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam, nesciunt sapiente. Magnam dicta
        eligendi
        repellendus repellat dolore saepe rem totam. Possimus quam illo aliquam repudiandae ipsam nam ad, et
        quis?</p>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam, nesciunt sapiente. Magnam dicta
        eligendi
        repellendus repellat dolore saepe rem totam. Possimus quam illo aliquam repudiandae ipsam nam ad, et
        quis?</p>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita minus nisi sed cum, molestiae
        voluptates est voluptatibus architecto iusto molestias esse sapiente hic nulla quasi vel aperiam a
        ex tempora!</p>

    </div>
  </div>
  <!-- fin section à propos -->




  

    <?php include('footer.php');?>

  


  <!------------------------ scripts pour le carousel 3d ------------------>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
  <script src="js/carousel.js"></script>

  <!----------------- script pour le parallax --------------------->
  <script src="https://cdn.jsdelivr.net/parallax.js/1.4.2/parallax.min.js"></script>

</body>

</html>