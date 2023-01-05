<?php

// Creation de notre classe
class MVC {

    // Declaration des attributs sans leurs valeurs

    /*
    Stockera l'emplacement des TPLs'
    */
    private $templates_dir;

    /*
    Stockera l'objet issue de SMARTY
    */
    private $smarty;

    // Declaration d'une methode native

    public function __construct(string $templates_dir) {
        $this->templates_dir = (string) $templates_dir;
        $this->instanciation();
    }

    // Declaration des methodes non natives

    private function instanciation() : void {
        require_once(__DIR__ . '/../vendor/smarty/libs/Smarty.class.php');
        // Instanciation de la classe Smarty
        $this->smarty = (object) new Smarty();
        $this->configuration();
    }

    private function configuration() : void {
        include_once(__DIR__ . '/../configuration.php');
        // Parametre le mode debogage
        $this->smarty->debugging = (bool) $SMARTY['debugging'];
        // Parametre la mise en cache
        $this->smarty->caching = (bool) $SMARTY['caching'];
        // Parametre la duree des fichiers presents en cache
        $this->smarty->cache_lifetime = (int) $SMARTY['cache_lifetime'];
        // Parametre la compilation des fichiers PHP depuis les .tpl
        $this->smarty->force_compile = (bool) $SMARTY['force_compile'];
        // Parametre l'emplacement du repertoire possedant les .tpl
        $this->smarty->setTemplateDir(__DIR__ . '/../templates/' . $this->templates_dir);
        /*
        Parametre l'emplacement du repertoire possedant les .tpl compiles
        Il faut appliquer la commande "sudo chown -R www-data:www-data ./templates_c/"
        car PHP doit avoir l'autorisation d'ecrire dans ce repertoire.
        */
        $this->smarty->setCompileDir(__DIR__ . '/../templates_c/'); 
        // Parametre l'emplacement du repertoire des fichiers de cache
        $this->smarty->setCacheDir(__DIR__ . '/../caches/');
    }

    public function smarty() : object {
        return (object) $this->smarty;
    }

}

?>