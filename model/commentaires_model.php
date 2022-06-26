<?php
require_once('../model/functions.php');

if (!isset($_GET['id']) or !is_numeric($_GET['id']))
    redirect('blog.php');
else {
    extract($_GET);
    $id = htmlspecialchars($id);
    require_once('../model/functions.php');
    if (!empty($_POST)) {
        extract($_POST);
        $errors = array();

        $author = htmlspecialchars($author);
        $comment = htmlspecialchars($comment);


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
