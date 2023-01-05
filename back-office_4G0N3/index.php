<?php

require_once('./../classes/MVC.php');
require_once('./../classes/Query.php');

// Controleur pour les templates du front-office
include_once('./../includes/errors.php');

session_start();

$smarty = (new MVC('back-office'))->smarty();

/**
 *               FONCTIONNALITES BACK-OFFICE
 * 
 * Selection de donnees pour la connexion d'un administrateur
 */
if (
    isset($_POST['username']) and !empty($_POST['username'])
    and isset($_POST['password']) and !empty($_POST['password'])
) {

    $data = (new Query("
    SELECT 
        id,
        password 
    FROM 
        administrators
    WHERE 
        username = (:username)", 
    array(
        'username' => $_POST['username'])
    ))->toArray();

    if (
        !empty($data) 
        and password_verify($_POST['password'], $data[0]['password'])
    ) {

        $_SESSION['logged_admins'] = (int) $data[0]['id'];

        $_SESSION['anti_csrf'] = (string) bin2hex(random_bytes(32));

    } else {

        // Redirection faite dans la if / else presente dans l'"index.master.tpl" du back-office

    }

}

/**
 * Insertion de donnees pour la creation d'un article
 */

if (
    isset($_POST['title']) and !empty($_POST['title']) and strlen($_POST['title']) <= 100
    and isset($_POST['summary']) and !empty($_POST['summary'])
    and isset($_POST['anti_csrf']) and !empty($_POST['anti_csrf']) 
    and isset($_SESSION['anti_csrf']) and !empty($_SESSION['anti_csrf']) 
    and $_POST['anti_csrf'] === $_SESSION['anti_csrf']
) {

    (new Query("
    INSERT INTO
        articles (`title`, `summary`, `date`, `id_admin`)
    VALUES
        ((:title), (:summary), (now()), (:id_admin))", 
    array(
        'title' => $_POST['title'],
        'summary' => $_POST['summary'],
        'id_admin' => $_SESSION['logged_admins'])
    ))->toNull();
    
}

// Declaration d'une methode pour empecher une connexion frauduleuse 
if (
    isset($_SESSION['anti_csrf']) and !empty($_SESSION['anti_csrf'])
) {
    $smarty->assign(
        'anti_csrf', $_SESSION['anti_csrf']
    );
}


$smarty->assign(
    'logged_admins', $_SESSION 
);

$smarty->assign(
    'page', $_SERVER['QUERY_STRING'] 
);

$smarty->display('index.master.tpl');

?>