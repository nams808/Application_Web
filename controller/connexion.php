<?php
session_start();
require_once ('./bdd/database.php');
require_once ('./model/functions.php');
//$pdo = getPdo();

if (isset($_POST["login"])) {

    $pseudoconnect = htmlspecialchars($_POST['pseudoconnect']);
    $mdpconnect = sha1($_POST['mdpconnect']);
    if (!empty($_POST["pseudoconnect"]) || empty($_POST["mdpconnect"])) {
        //echo 'Veuillez remplir tout les champs !';
        $reqpseudo = $pdo->prepare("SELECT * FROM utilisateur WHERE pseudo = ? AND password = ? AND role ='admin'");
        $reqpseudo->execute(array($pseudoconnect, $mdpconnect));
        $pseudoexist = $reqpseudo->rowCount();
        if ($pseudoexist == 1) {
            $userinfo = $reqpseudo->fetch();
            $_SESSION['id'] = $userinfo['id'];
            $_SESSION['pseudo'] = $userinfo['pseudo'];
            $_SESSION['email'] = $userinfo['email'];

            redirect('../View/admin/club/page1.php?id=' . $_SESSION['id']);
        } else {
            $reqpseudo = $pdo->prepare("SELECT * FROM utilisateur WHERE pseudo = ? AND password = ? AND confirme = 1");
            $reqpseudo->execute(array($pseudoconnect, $mdpconnect));
            $pseudoexist = $reqpseudo->rowCount();
            if ($pseudoexist == 1) {
                $userinfo = $reqpseudo->fetch();
                $_SESSION['id'] = $userinfo['id'];
                $_SESSION['pseudo'] = $userinfo['pseudo'];
                $_SESSION['email'] = $userinfo['email'];


                redirect('blog.php?id=' . $_SESSION['id']);
            } else {
        $erreur = "Mauvais identifiant et/ou </br> mot de passe incorrect";
    }
        }
    } 
}
