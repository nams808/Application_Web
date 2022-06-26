<?php
require_once('./view/navbar.php');
require_once('./model/disciplines_model.php');
$disciplines = getDisciplines();



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/discipline.css">


    <title>Document</title>
</head>

<body>

    <div class="container">
        <?php foreach ($disciplines as $discipline) : ?>
            <div class="container1">
                <div class="front">
                    <img src="image/<?php echo $discipline->image ?> " alt="test">
                    <h2><?php echo ucfirst($discipline->nom) ?></h2>

                </div>
                <div class="back">
                    <h4><?php echo ucfirst($discipline->nom) ?></h4>
                    <button type="button" class="btn-success style" data-bs-toggle="modal" data-bs-target="#<?php echo $discipline->nom ?>">
                        Ouvrir la vidéo
                    </button>
                    <p><?php echo $discipline->description ?></p>
                </div>
            </div>
        <?php endforeach ?>

        <!-- La modale -->

        <?php
        require_once('discipline/taekwondo.php');
        require_once('discipline/hapkido.php');
        require_once('discipline/judo.php');
        require_once('discipline/escrime.php');
        require_once('discipline/pencak.php');
        require_once('discipline/karate.php');
        require_once('discipline/muythai.php');
        ?>
    </div>


</body>

</html>