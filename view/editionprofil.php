<?php
session_start();
require_once('../model/editionprofil_model.php');
?>


<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="kungfu, art martial, arts martiaux, club de sport">
    <meta name="description" content="Vous recherchez un club??">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edition Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>

    <div class="container-fluid">
        <h3>Edition de mon profil </h3>

        <form method="POST" action="">
            <label>Pseudo : </label><br>
            <input type="text" name="newpseudo" placeholder="Pseudo" value="<?php echo $user['pseudo']; ?>" /><br>
            <br>
            <label>Email : </label><br>
            <input type=" text" name="newemail" placeholder="Email" value="<?php echo $user['email']; ?>" /><br>
            <br>
            <label>Mot de passe : </label><br>
            <input type="password" name="newmdp1" placeholder="Mot de passe" /><br>
            <br>
            <label>Confirmation - mot de passe : </label><br>
            <input type="password" name="newmdp2" placeholder="Confirmation du mot de passe" />
            <br><br>
            <input type="submit" class="btn btn-primary" value="Mettre à jour">

        </form>

        <br>

            <form method="post" action="../contact.php">
                <input type="submit" class="btn btn-primary" name="delete" value="Supprimer mon compte">
            </form>
            <br>
            <a href="profil.php"><button type="button" class="btn btn-primary"> Retour</button></a>
            <?php if (isset($msg)) {
                echo $msg;
            } ?>


    </div>
</body>

</html>