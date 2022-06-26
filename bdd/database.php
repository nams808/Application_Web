<?php

function getPdo()
{
    $pdo = new PDO('mysql:host=localhost;dbname=c1867542c_club;charset=utf8', 'c1867542c_namNams', 'xKjL/*5f*C', [
        PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION
    ]);



    return $pdo;
}
