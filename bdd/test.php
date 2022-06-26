<?php
define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS","root");
define("DBNAME", "club");



// On définit le DSN (Data Source Name) de connexion
$dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST;

try {
    //On se connecte à la base de données en "instanciant" PDO
    $pdo = new PDO($dsn, DBUSER, DBPASS);

    // On définit le charset à "utf8"
    $pdo->exec("SET NAMES utf8");

    // On définit la méthode de récupération (fetch) des données
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch(PDOException $e){
    
}


/*
function getPdo()
{
    $pdo = new PDO('mysql:host=localhost;dbname=club;charset=utf8', 'root', 'root', [
        PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION
    ]);



    return $pdo;
}*/