<?php
//fetch.php
//Si la variable est vérifié:
if (isset($_POST['action'])) {
    require_once('./bdd/database.php');
    $pdo = getPdo();

    $output = '';

    //Si la region est saisie dans la variable $POST alors:
    if ($_POST["action"] == 'region') {
        //Sélectionne le departement qui est égale a la region
        $query = "
 SELECT departement FROM club 
 WHERE region = :region
 GROUP BY departement
 ";
        $statement = $pdo->prepare($query);
        $statement->execute(
            array(
                ':region'  => $_POST["query"]
            )
        );
        $result = $statement->fetchAll();
        $output .= '<option value="">Selectionner departement</option>';
        foreach ($result as $row) {
            $output .= '<option value="' . $row["departement"] . '">' . $row["departement"] . '</option>';
        }
    }





    //Si le departement est saisie dans la variable $POST alors:
    if ($_POST["action"] == 'departement') {
        //Sélectionne la ville qui est égale au département
        $query = "
  SELECT ville FROM club 
  WHERE departement = :departement
  GROUP BY ville
  ";
        $statement = $pdo->prepare($query);
        $statement->execute(
            array(
                ':departement'  => $_POST["query"]
            )
        );
        $result = $statement->fetchAll();
        $output .= '<option value="">Selectionner Ville</option>';
        foreach ($result as $row) {
            $output .= '<option value="' . $row["ville"] . '">' . $row["ville"] . '</option>';
        }
    }



    echo $output;
}
