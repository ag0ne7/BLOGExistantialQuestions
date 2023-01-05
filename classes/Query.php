<?php

// Creation de notre classe
class Query {

    // Declaration des attributs sans leurs valeurs

    /*
    Stockera la requete SQL souhaite par un utilisateur
    */
    private $sql;

    /*
    Stockera les donnees de remplacement sous forme de tableau cle et valeur
    */
    private $mapper;

    /*
    Stockera l'objet issue de PDO pour permettre un dialogue avec une base de donnee
    */
    private $connexion;

    /*
    Stockera un objet issue des methodes natives de PDO
    */
    private $preparation;

    // Declaration d'une methode non native

    public function __construct(string $sql, array $mapper) {
        $this->sql = (string) $sql;
        $this->mapper = (array) $mapper;
        $this->connexion();
    }

    private function connexion() : void {
        include(__DIR__ . '/../configuration.php');
        try {
            $connexion = (object) new PDO(
                sprintf("mysql:host=%s;dbname=%s", 
                $DATABASE['hostname'], 
                $DATABASE['database_name']),
                $DATABASE['username'],
                $DATABASE['password']
            );
        } catch (PDOException $exception) {
            die($exception->getMessage());
        } finally {
            $this->connexion = (object) $connexion;
            $this->prepare();
        }
    }

    // Declaration des methodes non natives

    private function prepare() : void {
        $preparation = (object) $this->connexion->prepare($this->sql);
        $this->preparation = (object) $preparation;
    }

    private function execute() : void {
        if (!$this->preparation->execute($this->mapper)) {
            die(print_r($this->preparation->errorInfo()[2]));
        }
    }

    public function toNull() : void {
        $this->execute();
    }

    public function toJson() : string {
        $this->execute();
        return (string) json_encode($this->preparation->fetchAll(PDO::FETCH_ASSOC));
    }

    public function toArray() : array {
        $this->execute();
        return (array) $this->preparation->fetchAll(PDO::FETCH_ASSOC);
    }

    public function toIndex() : array {
        $this->execute();
        return (array) $this->preparation->fetchAll(PDO::FETCH_NUM);
    }

}

?>