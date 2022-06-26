<?php

require_once('functions.php');
require_once('../view/film.php');

if (!isset($_GET['id']) or !is_numeric($_GET['id']))
    redirect('blog.php');
else {
    extract($_GET);
    $id = strip_tags($id);
    if (!empty($_POST)) {
        extract($_POST);
        $errors = array();

        $author = strip_tags($author);
        $comment = strip_tags($comment);


        if (empty($author))
            array_push($errors, 'Entrez un pseudo');

        if (empty($comment))
            array_push($errors, 'Entrez un commentaire');

        if (count($errors) == 0) {
            $comment = addComment($id, $author, $comment);

            $success = 'Votre commentaire a été publié';

            unset($author);
            unset($comment);
        }
    }
    $film = getFilm($id);
    $comments = getComments($id);
}
