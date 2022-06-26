<?php


require_once('blog.php');

if (isset($_SESSION["user"])) {
    include './view/navbar_blog.php';
    
    //Fonction qui récupère tous les films
require_once('bdd/database.php');    
$pdo = getPdo();
$allFilms = $pdo->prepare('SELECT id, titre, image FROM films ORDER BY id DESC');
$allFilms->execute();
$films = $allFilms->fetchAll(PDO::FETCH_OBJ);
return $films;
$allFilms->closeCursor();
} else {
    header('location:login.php');
}



