<?php

require_once('../bdd/database.php');
require_once('../view/profil.php');
$pdo = getPdo();

if (isset($_SESSION['id'])) {

    $reqPseudo = $pdo->prepare("SELECT * FROM utilisateur WHERE id = ?");
    $reqPseudo->execute(array($_SESSION['id']));
    $user = $reqPseudo->fetch();
}



