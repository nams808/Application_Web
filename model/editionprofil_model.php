<?php

require_once('../bdd/database.php');
require_once('../model/functions.php');
require_once('../view/editionprofil.php');

$pdo = getPdo();


if (isset($_SESSION['id'])) {

    $editPseudo = $pdo->prepare("SELECT * FROM utilisateur WHERE id = ?");
    $editPseudo->execute(array($_SESSION['id']));
    $user = $editPseudo->fetch();

    if (isset($_POST['newpseudo']) and !empty($_POST['newpseudo']) and $_POST['newpseudo'] != $user['pseudo']) {
        $newPseudo = htmlspecialchars($_POST['newpseudo']);
        $insertPseudo = $pdo->prepare("UPDATE utilisateur SET pseudo = ? WHERE id = ?");
        $insertPseudo->execute(array($newPseudo, $_SESSION['id']));
        redirect('profil.php?id=' . $_SESSION['id']);
    }

    if (isset($_POST['newEmail']) and !empty($_POST['newemail']) and $_POST['newemail'] != $user['email']) {
        $newEmail = htmlspecialchars($_POST['newemail']);
        $insertEmail = $pdo->prepare("UPDATE utilisateur SET email = ? WHERE id = ?");
        $insertEmail->execute(array($newEmail, $_SESSION['id']));
        redirect('profil.php?id=' . $_SESSION['id']);
    }

    if (isset($_POST['newmdp1']) and !empty($_POST['newmdp1']) and isset($_POST['newmdp2']) and !empty($_POST['newmdp2'])) {
        $mdp1 = sha1($_POST['newmdp1']);
        $mdp2 = sha1($_POST['newmdp2']);

        if ($mdp1 == $mdp2) {
            $insertMdp = $pdo->prepare("UPDATE utilisateur SET password = ? WHERE id = ?");
            $insertMdp->execute(array($mdp1, $_SESSION['id']));
            redirect('profil.php?id=' . $_SESSION['id']);
        } else {
            $msg = "Vos deux mots de passes ne correspondent pas";
        }
    }


    if (isset($_POST['newpseudo']) and $_POST['newpseudo'] == $user['pseudo']) {
        redirect('profil.php?id=' . $_SESSION['id']);
    }
}
