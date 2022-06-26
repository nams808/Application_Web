<?php
session_start();
require_once('./model/blog_model.php'); 
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/blog.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Blog</title>
</head>

<body>

    <div class="image_card">
        <div class="container-fluid">
            <div class="wrapper">
                <?php foreach ($films as $film) : ?>
                    <div class="card" style="width: 12.6rem;">
                        <img width="200" height="230" src="image/gallery/<?php echo $film->image ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $film->titre ?></h5>                            
                            
                            <a href="./view/film.php?id=<?php echo $film->id ?>" class="btn btn-primary">Lire la suite</a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>


</body>

</html>