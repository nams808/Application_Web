<?php


function getDisciplines() {
    require_once('./bdd/database.php'); 
    $pdo = getPdo();   
$Disciplines = $pdo->prepare("SELECT * FROM disciplines ");
    $Disciplines->execute();
    $data = $Disciplines->fetchAll(PDO::FETCH_OBJ);
return $data;
}