<?php
/*require_once('model/login_model.php');
$pseudo = $_SESSION['pseudo'];*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/navbar_blog.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Document</title>
</head>

<body>
    <div class="m-4">
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top">
            <div class="container-fluid">               
                <div class="txt_welcome" style=" font-size:22px">
                    Bienvenue <?php /*echo ucfirst($pseudo);*/ ?>
                </div>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    
                    <div class="navbar-nav ms-auto">
                    <a href="./view/profil.php" class="nav-item nav-link active profil">Profil</a>
                        <a href="./controller/deconnexion.php" class="nav-item nav-link">Deconnexion</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>