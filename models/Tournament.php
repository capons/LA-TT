<?php
require_once ("Validation.php");

class Tournament extends Validation
{
    private $name;
    public function tournamentRegist($id,$name){
        $this->name = parent::valid($name);
        $sql = "INSERT into tournament (name,round_id)
                VALUES ('$this->name','$id')";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        return $query;
        die();
        /*
        if ($query == true) {
            return $last_id = mysqli_insert_id(Database::connect());
        }
        die();
        */
    }
    public function selectUser($id){
        $sql = "SELECT * FROM user WHERE id = '$id'";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query)>0) {
            return mysqli_fetch_assoc($query);
        } else {
            return false;
        }
    }
}