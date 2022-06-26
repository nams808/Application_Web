<?php
require_once('./bdd/database.php');
require_once('fetch_result.php');
require_once('./view/navbar.php');
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/affiche_result.css">
    <title>Recherche</title>
</head>

<body>
    
    <table>
        <tr>
            <th width="400px">Club</th>
            <th width="200px">Discipline</th>
            <th width="400px">Adresse</th>
            <th width="300px">Contact</th>
        </tr>

        <?php
        /*Je récupère la variable $_POST du nom de la ville qui
        a été précédemment entrer. */
        $_POST['ville'];


        //Puis je déclare une nouvelle variable que je vais appeler $ville
        $ville = $_POST['ville'];


        /*J'éxecute ma requête en fonction de la variable  
        $ville que j'ai déclaré */

        $req = $pdo->prepare('SELECT * FROM club WHERE ville = ?');
        $req->execute(array($ville));
        while ($donnees = $req->fetch()) {
        ?>

            <tr>
                <td><?php echo $donnees['club']; ?></td>
                <td><?php echo $donnees['discipline']; ?></td>
                <td><?php echo $donnees['adresse']; ?></td>
                <td><?php echo $donnees['contact']; ?></td>
            </tr>

        <?php
        }


        ?>
    </table>
    <br>
    <div class="title_center">
        <a href="recherche.php" class="btn btn-warning">Nouvelle recherche</a>
    </div>
</body>

</html>