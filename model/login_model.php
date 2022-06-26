<?php
require_once('bdd/database.php');



if (!empty($_POST)) {
    //Le formulaire a été envoyé
    //var_dump($_POST);

    //On vérifie que tout les champs requis sont remplis
    if (
        isset($_POST['email'], $_POST['pass'])
        && !empty($_POST['email'] && !empty($_POST['pass']))
    ) {
        // Le formulaire est complet 
        // On récupère les données en les protégeant
        //$pseudo = strip_tags($_POST['pseudo']);

        //Vérifie si l'adresse email n'est pas une adresse valide
        if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
            die("L'adresse email est incorrecte");
        }



        // Ajoutez ici tous les contrôles

        // On se connecte à la BDD
        $requete = "SELECT * FROM users WHERE email = :email";
        $pdo = getPdo();
        $query = $pdo->prepare($requete);
        $query->bindValue(":email", $_POST['email'], PDO::PARAM_STR);
        $query->execute();

        $user = $query->fetch();
        //var_dump($user);

        //Si l'user n'existe pas
        if (!$user) {
            die("L'utilisateur et/ou le mot de passe est incorrecte");
        }

        //Si l'user n'existe, on vérifie son mot de passe
        //Si ce n'est pas le bon mot de pass
        if (!password_verify($_POST["pass"], $user["pass"])) {
            die("L'utilisateur et/ou le mot de passe est incorrecte");
        }

        //L'utilisateur et le mot de passe sont corrects
        //On va pouvoir "connecter" l'utilisateur
        //On démarre la session php
        $_SESSION["user"] = [
            "id" => $user["id"],
            "pseudo" => $user["pseudo"],
            "email" => $user["email"],
            "roles" => $user["roles"]
        ];
        header("Location: blog.php");
    }
}
