<?php

    require_once('/usr/share/php/libphp-phpmailer/src/PHPMailer.php');
    require_once('/usr/share/php/libphp-phpmailer/autoload.php');

    // Instanciation de la librairie PHPMailer pour la creation d'un objet
    $phpmailer = (object) new PHPMailer\PHPMailer\PHPMailer(true);
    // Definir un delai d'attente pour une question (requete reseau)
    $phpmailer->Timeout = (int) 30;
    // Defini une en-tete vide pour "empecher" de la part des serveurs distant un blocage
    $phpmailer->XMailer = (string) '';
    /*
     Activation du dialogue SMTP signifiant 
     "Simple Mail Transfer Protocol" === "Protocole simple de transfert de courrier"
    */
    $phpmailer->isSMTP();
    // Definition du serveur de messagerie distant
    $phpmailer->Host = (string) 'smtp.gmail.com';
    // Definition du port de communication permettant un dialogue base sur SMTP
    $phpmailer->Port = (int) 587;
    // Desactive la demande des identifiants de connexion
    $phpmailer->SMTPAuth = (bool) true;
    // Definition de l'adresse email expeditrice et valant aussi pour nom d'utilisateur
    $phpmailer->Username = (string) 'fbosengo@gmail.com';
    $phpmailer->Password = (string) 'Aformac&2021';
    $phpmailer->SMTPSecure = (string) 'tls';
    // Definition de l'expediteur
    $phpmailer->setFrom('fbosengo@gmail.com', '');
    
?>