<?php

/**
 * $_GET['key'] contient ce que '?key=' represente dans l'URL, suite au clique de l'utilisateur sur le lien du mail qui lui a ete envoye 
 */
if (isset($_GET['key']) and !empty($_GET['key'])) {

    require_once('./classes/Query.php');

    (new Query("
    UPDATE `users` SET `activation` = '' WHERE `activation` = (:key)
    ", $_GET))->toNull();

    http_response_code(302);
    header('Location: ./login.html');
    exit();

}

?>