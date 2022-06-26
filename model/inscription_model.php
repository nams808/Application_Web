<?php
require_once('bdd/database.php');



if (!empty($_POST)) {
    //Le formulaire a été envoyé
     //var_dump($_POST);

     //On vérifie que tout les champs requis sont remplis
    if(isset($_POST['pseudo'], $_POST['email'], $_POST['pass'])
    && !empty($_POST['pseudo']) && !empty($_POST['email']) && !empty($_POST['pass'])
    ){
        // Le formulaire est complet 
        // On récupère les données en les protégeant
        $pseudo = strip_tags($_POST['pseudo']);

        //Vérifie si l'adresse email n'est pas une adresse valide
        if(!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)){
        die("L'adresse email est incorrecte");
    }

    // On va hasher le mot de passe
    $pass = password_hash($_POST['pass'], PASSWORD_ARGON2ID);
        //die($pass);

    // Ajoutez ici tous les contrôles

        // On enregistre en BDD
        $requete = "INSERT INTO users(pseudo, email, pass, roles) VALUES(:pseudo, :email, '$pass', '[\"ROLE_USER\"]')";
        $inscriptions = $pdo->prepare($requete);

        $inscriptions->bindValue(":pseudo", $pseudo, PDO::PARAM_STR);
        $inscriptions->bindValue(":email", $_POST["email"], PDO::PARAM_STR);
        $inscriptions->execute();

        // On connecte l'utilisateur
     
    }
        //Sinon
    else {
        die("Le formulaire n'est pas complet");
    }
    }
   

    

    


