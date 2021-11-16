<?php
/* inclure la  histoire pour accéder à ses methodes */
require_once 'histoire.php';

/*Declaration d'une variable pour recuperer notre objet */ 

$dt = $histoire->detail();

?>


<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/styleIndex.css">
        <title>Histoire Numerique</title>
    </head>
    <body>
    <header class="d-flex justify-content-between align-items-center bg-dark text-white">
    <h1 id="home">L'histoire du numérique</h1>
        <ul class="navbar">
            <li><a href="#home" class="active">Accueil</a></li>
            <li><a href="#Personnages" >Personnage</a></li>
        </ul>
    </header>
        <section class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <img class="img-fluid" src="./images/numerique.jpg" alt="image">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-5 ml-auto d-flex align-items-center mt-4 mt-md-0">
                        <div >
                            <p style="font-size:20px">  Dans l'informatique, il y a eu différentes personnes qui ont 
                                    contribué à la naissance de l'informatique et qu'ils ont amélioré et 
                                    l'ont rendu plus facile à utiliser.
                                    Notre article vous parlera de certains de ces personnages 
                                    clés qui on contribué à l'évolution  de l'informatique.
                                    Le but serait d'expliquer leur travaux afin de susciter un intérêt à en 
                                    apprendre plus (sur leur histoire, leur technologie, etc.).
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <section class="section">
            <h2 id="Personnages">Les Personnages</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <?php foreach ($dt as $detail):?>
                            <div class="col-lg-3 alphat">
                                <a class="lien" href="detail.php?id=<?= $detail["id"] ?>">
                                    <img src="<?=$detail['nom_image']?>"  alt="" class="">
                                </a>
                                <h3><?=$detail['nom_complet']?></h3>       
                            </div>
                        <?php endforeach?>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <div class="copyright">
         <p>copyright 2021 ODK. Tous droits reservé</p>
     </div>
    </body>
</html>
