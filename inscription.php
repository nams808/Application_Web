<?php
require_once('./view/navbar.php');
require_once('./model/inscription_model.php');
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/inscription.css">
    <title>Inscription</title>
</head>

<body>

    <form method="POST">
        <h1>Formulaire d'inscription</h1>

        <label for="pseudo">Pseudo :</label>
        <input type="text" name="pseudo" id="pseudo" placeholder="pseudo..." class="form-control" style="width:300px;"></br>

        <label for="email">Email :</label>
        <input type="email" name="email" id="email" placeholder="email..." class="form-control" style="width:300px;"></br>

        <label for="pass">Password :</label>
        <input type="password" name="pass" id="pass" placeholder="password..." class="form-control" style="width:300px;"></br>

        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="cgi">
            <label class="form-check-label" for="cgi">Conditions générales d'utilisation</label>
        </div>
        <br>

        <div class="button_aligner">
            <button type="submit" class="btn btn-primary btn-sm">M'inscrire</button></a>

            <a href="login.php"><button type="button" class="btn btn-primary btn-sm"> Retour </button></a>
        </div>
    </form>
    </br>



</body>

</html>