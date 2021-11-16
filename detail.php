<?php
/* inclure la histoire pour accéder à ses methodes */
require_once 'histoire.php';
// Recuperation de l'id envoyé par url dans index.php
$id = $_GET['id'];
//Recuperation du personnage 
$dt = $histoire->detailId($id);
?>
<!DOCTYPE html>
<html lang="fr">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Detail</title>
      <!-- Styles CSS-->
      <link rel="stylesheet" href="css/styleDetail.css">
   </head>
   <body>
      <div class="Retour">
          <a href="index.php">Retour</a>
      </div>     
         <div class="container">
            <div class="row">
               <?php foreach ($dt as $info):?>
                  <div class="rounded mx-auto d-block alphat">
                     <img src="<?=$info['nom_image']?>" width="150" height="150"  alt="">
                  </div>
                  <div class="col-xs-12 col-md-3">
                     <h2 class="nom" style="text-align: center;"><?=$info['nom_complet']?></h2>
                  </div>
                  <div class="col-xs-12 col-md-3">
                     <p> <?=$info['historique']?></p>
                  </div>
               </div>
            </div>
            <?php endforeach?>
         </div>
      </div>
   </body>
</html>