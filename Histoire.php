<?php
/* definition d'une classe*/
class Histoire
{
    public $bdd;// Declaration d'une variable bdd qui va contenir notre PDO

    function __construct()
    {
        try
        {
            $this->bdd = new PDO("mysql:host=localhost;dbname=numeric_history", "root", "");
        }
        catch (PDOException $e)
        {
            die("Erreur !: " . $e->getMessage() . "<br/>");
        }
    }

    /*la fonction qui permet de recuperer les details des personnages */
    public function detail()
    {
        $req = $this->bdd->prepare("SELECT * FROM personnages;");
        $req->execute();

        $result = $req->fetchAll();

        return $result;
    }
    

    /* la fonction qui permet de recuperer les details des personnages par id*/ 
    public function detailId($id)
    {
        try
        {
            $req = $this->bdd->prepare("SELECT * FROM personnages where id = ". $id);
            $req->execute();

            $result = $req->fetchAll();

            return $result;
        }
        catch (PDOException $e)
        {
            echo "Erreur !: " . $e->getMessage() . "<br/>";
            die();
        }
    }
}

$histoire = new Histoire();

?>

