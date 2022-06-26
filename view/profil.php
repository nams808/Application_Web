<?php
//session_start();
//require_once('./navbar.php');
require_once('../model/profil_model.php');


?>
<br />
<br />
<!DOCTYPE html>

	<html lang="fr">
<head>
	<meta charset="utf-8" />
	<meta name="keywords" content="kungfu, art martial, arts martiaux, club de sport">
   	<meta name="description" content="Vous recherchez un club??">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../asset/css/appli/profil.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>
    
<div class="container-fluid">
    <h3>ESPACE PERSONNEL </h3>
    <form method="POST" action="">
        <label>Pseudo : </label><br>
        <input type="text" name="newpseudo" placeholder="<?php /*echo $user['pseudo'];*/ ?>" /><br>
        <br>
        <label>Email : </label><br>
        <input type=" text" name="newemail" placeholder="<?php /*echo $user['email'];*/ ?>" /><br>
        </form>
        
    <a href="../blog.php"><button type="button" class="btn btn-primary btn-sm">Retour</button></a><br /><br />
    <a href="../controller/deconnexion.php"><button type="button" class="btn btn-primary btn-sm">Se déconnecter</button></a><br /><br />
    <a href="editionprofil.php"><button type="button" class="btn btn-primary btn-sm">Editer mon profil</button></a>

    
    <?php

    ?>
    </div>
    </div>
    </div>
    </div>
</body>

</html>