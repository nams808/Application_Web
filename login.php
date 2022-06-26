<?php
session_start();
require_once('./view/navbar.php');
require_once('model/login_model.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/login.css">
  <title>Connexion</title>
</head>

<body>


  <form method="POST">
  <h1>Connexion</h1>
  <br>
    <div class="mb-3">
      <label for="email" class="form-label">Email </label>
      <input type="email" class="form-control" placeholder="email..." name="email" id="email" aria-describedby="pseudoHelp">
    </div>

    <div class="mb-3">
      <label for="pass" class="form-label">Mot de passe</label>
      <input type="password" class="form-control" placeholder="mot de passe..." name="pass" id="pass">
    </div>

<div class="button-aligner">
    <button type="submit" name="login" class="btn btn-primary">Me connecter</button>
    
    
      
        <a id="lien" href="oubliemdp.php"><button type="button" class="btn btn-primary btn-sm">Mot de passe oublié ?!</button></a>
    

      
</div>
<br><br>
<div class="bi">
      <a href="inscription.php"><button type="button" class="btn btn-primary btn-sm">Pas encore inscrit ?</button></a>
      
     
      
      <a href="login.php"><button type="button" class="btn btn-primary btn-sm"> Retour </button></a>
      </div>
  </form>
  <?php
  if (isset($erreur)) {
    echo '<font color="red" size="5em" weight="bold" >' . $erreur . "</font>";
  }
  ?>



</body>

</html>