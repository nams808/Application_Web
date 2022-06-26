<?php
//session_start();
require_once('../model/commentaires_model.php');

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="kungfu, art martial, arts martiaux, club de sport">
    <meta name="description" content="Vous recherchez un club??">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Commentaire</title>

</head>

<body>
    <div class="container-fluid">
        
    <h3>
            <?php echo $film->titre ?>
        </h3>
        
        <img width="300" height="300" src="../image/gallery/<?php echo $film->image ?>" />

        <h3>SYNOPSIS ET DÉTAILS</h3>

        <h6>
            <?php echo $film->content ?>
        </h6>
        
        <a class="btn btn-primary" href="../blog.php">Retour au blog</a>

        <hr />
        <?php
        if (isset($success))
            echo $success;
        if (!empty($errors)) : ?>

            <?php foreach ($errors as $error) : ?>
                <div class="row">
                    <div class="col-md-6">
                        <div class="alert alert-danger"> <?php echo $error ?></div>
                    </div>
                </div>


            <?php endforeach; ?>

        <?php endif; ?>

        <div class="row">
            <div class="col-md-6">
                <form action="commentaires.php?id=<?php echo $film->id ?>" method="post">
                    <p><label for="author">Pseudo :</label><br />
                        <input type="text" name="author" id="author" value="<?php /*echo ucfirst($_SESSION['pseudo']);*/ ?>" class="form-control" />
                    </p>

                    <p><label for="comment">Commentaire :</label><br />
                        <textarea name="comment" id="comment" cols="30" rows="5" class="form-control"><?php if (isset($comment)) echo $comment ?></textarea>
                    </p>
                    <button type="submit" class="btn btn-success">Envoyer</button>

                </form>
            </div>
        </div>
        <h5>
            <?php
            echo count($comments); ?> Commentaires :
        </h5>
        <?php foreach ($comments as $com) : ?>
            <h5><?php echo $com->author ?></h5>
            <time><?php echo $com->date ?></time>
            <p><?php echo $com->comment ?></p>
            <hr />
        <?php endforeach; ?>

    </div>

</body>

</html>