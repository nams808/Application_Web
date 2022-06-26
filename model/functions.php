<?php
/*   $requete = "INSERT INTO users('pseudo', 'email', 'pass', 'roles') VALUES(:pseudo, :email, '$pass', '[\"ROLE_USER\"]')";
        $inscriptions = $bdd->prepare($requete);

        $inscriptions->bindValue(":pseudo", $pseudo, PDO::PARAM_STR);
        $inscriptions->bindValue(":email", $_POST["email"], PDO::PARAM_STR);
        $inscriptions->execute();    */


/*    define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS","root");
define("DBNAME", "club");

// On définit le DSN (Data Source Name) de connexion
$dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST;

try {
    //On se connecte à la base de données en "instanciant" PDO
    $bdd = new PDO($dsn, DBUSER, DBPASS);

    // On définit le charset à "utf8"
    $bdd->exec("SET NAMES utf8");

    // On définit la méthode de récupération (fetch) des données
    $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch(PDOException $e){
    
}       */

//FONCTION REDIRECTION

function redirect(string $url): void
{
    header("Location: $url");
}

// FONCTION DU BLOG


//Fonction qui récupère tous les films
function getFilms()
{
    require_once('bdd/database.php');
    $pdo = getPdo();
    $allFilms = $pdo->prepare('SELECT id, titre, image FROM films ORDER BY id DESC');
    $allFilms->execute();
    $data = $allFilms->fetchAll(PDO::FETCH_OBJ);
    return $data;
    $allFilms->closeCursor();
    
}

//Fonction qui récupère un film
function getFilm($id)
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    //$pdo = $dsn;
    $oneFilm = $pdo->prepare('SELECT * FROM films WHERE id= ?');
    $oneFilm->execute(array($id));
    if ($oneFilm->rowCount() == 1) {
        $data = $oneFilm->fetch(PDO::FETCH_OBJ);
        return $data;
    } else
        header('Location: blog.php');
    $oneFilm->closeCursor();
}



//Fonction qui ajoute un commentaire en BDD
function addComment($filmId, $author, $comment)
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    $createComment = $pdo->prepare('INSERT INTO comments (filmId, author, comment, date) VALUES(?, ?, ?, NOW())');
    $createComment->execute(array($filmId, $author, $comment));
    $createComment->closeCursor();
}

//Fonction qui récupère les commentaires d'un film
function getComments($id)
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    $recupComment = $pdo->prepare('SELECT * FROM comments WHERE filmId = ?');
    $recupComment->execute(array($id));
    $data = $recupComment->fetchAll(PDO::FETCH_OBJ);
    return $data;
    $recupComment->closeCursor();
}



//FONCTION Admin

//page d'accueil admin(films)

function tabFilm($row)
{
    echo '<tr>';
    echo '<td>' . $row['titre'] . '</td>';
    echo '<td>' ?><img width="200" height="230" src="../../../asset/images/gallery/<?php echo $row['image']  ?>">
<?php '</td>';
    echo '<td width=250>';
    echo '<a class="btn btn-secondary" href="readblog.php?id=' . $row['id'] . '">Afficher</a>';
    echo ' ';
    echo '<a class="btn btn-secondary" href="deleteblog.php?id=' . $row['id'] . '">Supprimer</a><style>  { font-size: 22px;}</style>';
    echo '</td>';
    echo '</tr>';
}


//Ajouter un film 

function insertFilm()
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    $titre = $_POST['titre'];
    $image = $_POST['image'];
    $content = $_POST['content'];
    $insertFilm = $pdo->prepare("INSERT INTO films (titre, image, content) VALUES(?, ?, ?)");
    $insertFilm->execute(array($titre, $image, $content));
    return $insertFilm;
}


//FONCTION CLUB

//page d'accueil (club)

function tabClub($row)
{
    echo '<tr>';
    echo '<td>' . $row['region'] . '</td>';
    echo '<td>' . $row['departement'] . '</td>';
    echo '<td>' . $row['ville'] . '</td>';
    echo '<td>' . $row['discipline'] . '</td>';
    echo '<td>' . $row['club'] . '</td>';
    echo '<td>' . $row['adresse'] . '</td>';
    echo '<td>' . $row['contact'] . '</td>';
    echo '<td width=250>';
    echo '<a class="btn btn-secondary" href="read.php?id=' . $row['id'] . '">Lire</a>';
    echo ' ';
    echo '<a class="btn btn-secondary" href="update.php?id=' . $row['id'] . '">Maj</a>';
    echo ' ';
    echo '<a class="btn btn-secondary" href="delete.php?id=' . $row['id'] . '">Supprimer</a><style> .btn { font-size: 12px;}</style>';
    echo '</td>';
    echo '</tr>';
}


//Ajouter un club

function insertClub()
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    $region = $_POST['region'];
    $departement = $_POST['departement'];
    $ville = $_POST['ville'];
    $discipline = $_POST['discipline'];
    $club = $_POST['club'];
    $adresse = $_POST['adresse'];
    $contact = $_POST['contact'];
    $insertClub = $pdo->prepare("INSERT INTO club (region, departement, ville, discipline, club,  adresse, contact) values(?, ?, ?, ?, ?, ?, ?)");
    $insertClub->execute(array($region, $departement, $ville, $discipline, $club,  $adresse, $contact));
    return $insertClub;
}


//Affiche les clubs
function readClub(int $id)
{
    require_once('../bdd/database.php');
    $pdo = getPdo();
    $readClub = $pdo->prepare("SELECT * FROM club where id = ?");
    $readClub->execute(array($id));
    $data = $readClub->fetch(PDO::FETCH_ASSOC);
    return $data;
}

//Modifier un club (requete)

function updateClub($id)
{
    require_once('../../../bdd/database.php');
    $pdo = getPdo();
    $region = $_POST['region'];
    $departement = $_POST['departement'];
    $ville = $_POST['ville'];
    $discipline = $_POST['discipline'];
    $club = $_POST['club'];
    $adresse = $_POST['adresse'];
    $contact = $_POST['contact'];
    $requete = $pdo->prepare("UPDATE club  set region = ?, departement = ?, ville = ?, discipline = ?, club = ?, adresse = ?, contact =? WHERE id = ?");
    $requete->execute(array($region, $departement, $ville, $discipline, $club, $adresse, $contact, $id));
    return $requete;
}

//Modifier un club (execution)

function executeUpdateClub($id)
{
    require_once('../../../bdd/database.php');
    $pdo = getPdo();
    $requete = $pdo->prepare("SELECT * FROM club where id = ?");
    $requete->execute(array($id));
    $data = $requete->fetch(PDO::FETCH_ASSOC);
    return $data;
}

//Supprimer un  club

function deleteClub($id)
{
    require_once('../../../bdd/database.php');
    $pdo = getPdo();
    $deleteClub = $pdo->prepare("DELETE FROM club  WHERE id = ?");
    $deleteClub->execute(array($id));
}

function dataClub($data)
{
    echo $data['region'] . '<br />';
    echo $data['departement'] . '<br />';
    echo $data['ville'] . '<br />';
    echo $data['discipline'] . '<br />';
    echo $data['club'] . '<br />';
    echo $data['adresse'] . '<br />';
    echo $data['contact'] . '<br />';
}


//page d'aucceuil (commentaire)

function tabComment($row)
{

    echo '<tr>';
    echo '<td>' . $row['filmId'] . '</td>';
    echo '<td>' . $row['titre'] . '</td>';
    echo '<td>' . $row['author'] . '</td>';
    echo '<td>' . $row['comment'] . '</td>';
    echo '<td>' . $row['date'] . '</td>';
    echo '<td width=200>';

    echo ' ';
    echo ' ';
    echo '<center><a class="btn btn-secondary" href="deletecomment.php?id=' . $row['id'] . '">Supprimer</a><style> .btn { font-size: 12px;}</style>';
    echo '</td>';
    echo '</tr>';
}

// Supprimer un commentaire

function deleteComment($id)
{
    require_once('../../../bdd/database.php');
    $pdo = getPdo();
    $deleteComment = $pdo->prepare("DELETE FROM comments  WHERE id = ?");
    $deleteComment->execute(array($id));
    redirect('page1.php');
}

function readcomment()
{
    require_once('../../../bdd/database.php');
    $pdo = getPdo();
    echo "" . '<br>';
    echo $data['filmId'] . '<br />';
    echo $data['author'] . '<br />';
    echo $data['comment'] . '<br />';
    echo $data['date'] . '<br />';
    $readComment = $pdo->prepare("SELECT * FROM comments where id = ?");
    $readComment->execute(array($id));
    $data = $readComment->fetch(PDO::FETCH_ASSOC);
}



//page d'accueil (utilisateur)

function tabUtilisateur($row)
{
    echo '<tr>';
    echo '<td>' . $row['pseudo'] . '</td>';
    echo '<td>' . $row['email'] . '</td>';
    echo '<td>' . $row['password'] . '</td>';
    echo '<td>' . $row['role'] . '</td>';
    echo '<td width=250>';

    echo ' ';
    echo '<center><a class="btn btn-secondary" href="updateuser.php?id=' . $row['id'] . '">Modifier</a>';
    echo ' ';
    echo '<a class="btn btn-secondary" href="deleteuser.php?id=' . $row['id'] . '">Supprimer</a><style> .btn { font-size: 12px;}</style>';

    echo '</td>';
    echo '</tr>';
}


//token

function str_random($length){
    $alphabet = "0123456789azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN";
    return substr(str_shuffle(str_repeat($alphabet, $length)), 0, $length);
}
