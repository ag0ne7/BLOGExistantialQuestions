<?php

    $meter = (int) 0;

    if (
        isset($_POST['pw_registration']) and !empty($_POST['pw_registration'])
    ) {

        $password = (string) $_POST['pw_registration'];

        if (strlen($password) >= 8) {
            $meter += 10;
        }

        /**
         * Comporte au moins une minuscule et une majuscule
         * 'preg_match(args)' renvoi int(0) en cas de non-correspondance
         * 'preg_match(args)' renvoi int(1) en cas de correspondance
         * [a-z] represente l'ENSEMBLE de toutes les lettres de l'alphabet minuscules
         * [A-Z] represente l'ENSEMBLE de toutes les lettres de l'alphabet majuscules
         */
        if (!((bool) preg_match('/[a-z]/', $password))) {
            $missing = (string) 'manque-minuscule';
        } else {
            $meter += 10;
        }

        if (!((bool) preg_match('/[A-Z]/', $password))) {
            $missing = (string) 'manque-majuscule';
        } else {
            $meter += 10;
        }

        // Comporte au moins un chiffre (\d pour digit)
        if (!((bool) preg_match('/[\d]/', $password))) {
            $missing = (string) 'manque-chiffre';
        } else {
            $meter += 10;
        }

        // Comporte au moins un caractere special
        if (!((bool) preg_match('/[^a-zA-Z\d]/', $password))) {
            $missing = (string) 'manque-special';
        } else {
            $meter += 10;
        }

    }

    echo json_encode(['note' => $meter]);

?>