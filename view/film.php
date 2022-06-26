<?php
require_once('../Model/film_model.php');
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="kungfu, art martial, arts martiaux, club de sport">
    <meta name="description" content="Vous recherchez un club??">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/film.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <title>Film</title>

</head>


<body id="filmBlog">

    <br />
    
    <br />


    
        <div class="container-fluid">
        
                <h3><?php echo $film->titre ?></h3>
                <h3><img width="300" height="300" src="../image/gallery/<?php echo $film->image ?>" /> </h3>

                <h3>SYNOPSIS ET DÉTAILS</h3>

                <h6>
                    <div class=""><?php echo $film->content ?>
                </h6>
            
            <a class="btn btn-primary" href="commentaires.php?id=<?php echo $film->id ?>">Poster un commentaire</a>
            <a class="btn btn-primary" href="../blog.php">Retour à la page précédente</a>
            </div>
            
            <hr />