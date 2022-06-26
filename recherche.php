<?php
require_once('./view/navbar.php');
require_once('./bdd/database.php');
$region = '';

$query = "
 SELECT region FROM club GROUP BY region ORDER BY region ASC
";
$pdo = getPdo();
$statement = $pdo->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach ($result as $row) {
    $region .= '<option value="' . $row["region"] . '">' . $row["region"] . '</option>';
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/recherche.css">
    <title>Document</title>
</head>

<body>


    <form method="post" action="affiche_result.php">
        <h2 style="width:400px;">Recherchez un club !</h2>
        <select name="region" id="region" style="width:300px;" class="form-control action">
            <option value="">Selectionner Region</option>
            <?php echo $region; ?>
        </select>
        <br />

        <select name="departement" id="departement" style="width:300px;" class="form-control action">
            <option value="">Selectionner Departement</option>
        </select>
        <br />

        <select name="ville" id="ville" style="width:300px;" class="form-control action">
            <option value="">Selectionner Ville</option>
        </select>
        <br />
        <br />


        <button name="action" class="btn btn-primary" href="affiche.php">Afficher
    </form>


    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

    <script>
        //Code de vérification afin de savoir si le dom est prêt pour exécuter le js
        $(document).ready(function() {

            $('.action').change(function() {

                if ($(this).val() != '') {
                    var action = $(this).attr("id");
                    var query = $(this).val();
                    var result = '';

                    /*Condition si la variable "action" est renseigné alors
                      on passera au champs suivant*/
                    if (action == 'region') {
                        result = 'departement';
                    } else if (action == 'departement') {
                        result = 'ville';
                    }

                    $.ajax({

                        /*l'url est le paramètre qui sera appelé en arrière plan
                          pour récupéré du contenu depuis le serveur*/
                        url: 'affiche_result.php',

                        //La méthode POST sera utilisé
                        method: "POST",

                        /*Le paramètre suivant est un objet au format JSON, 
                          le principe de correspondance clé-valeur sera utiliser*/
                        data: {
                            action: action,
                            query: query
                        },

                        //Le callback success est appelé lorsque l'appel AJAX réussi 
                        success: function(data) {
                            $('#' + result).html(data);

                        }
                    })
                }
            });;
        });;
    </script>


</body>

</html>