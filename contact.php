<?php
        require_once('./view/navbar.php');
        ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/contact.css">
    <title>Document</title>
</head>

<body>
    
        

            <form method="post">
                <h3>Formulaire contact</h3>
                <input type="text" class="form-control"  name="pseudo" placeholder=" Pseudo..." required><br /><br />

                <input type="email" class="form-control"  name="email" placeholder=" Email..." required><br /><br />

                <textarea name="texte"   rows="5"  class="fonrm-control" placeholder=" Votre message..." required></textarea><br /><br />

                <input type="submit" value="Envoyer" class="btn btn-primary btn-sm" name="contact"><br /><br />

                <?php if (isset($message)) {
                    echo $message;
                }
                ?>
            </form>
          

</body>

</html>