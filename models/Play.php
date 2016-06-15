<?php
require_once ("Validation.php");

class Play extends Validation
{
    private $value = array();
    private $sql_value;
    //private $country;
    public function teamRegist($team,$tour_id){
        foreach ($team as $val){
            $this->value[] = '('.$val.','.$tour_id.')';
        }
        $this->sql_value = implode(", ", $this->value);

        $sql = "INSERT INTO `play`(team_id,tournament_id) VALUES $this->sql_value";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        return $query;
        die();
    }
    public function checkTournamentTeam($id){
        $sql = "SELECT tournament_id FROM play WHERE tournament_id = $id";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query) == 16) {
            return false;
        } else {
            return true;
        }
    }
    public function selectAllTeam(){
        $sql = "SELECT * FROM team";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query)>0) {
            return $query;
        } else {
            return false;
        }
    }
    public function selectTournamentTeam($id){
        $sql = "SELECT id,team_id FROM play WHERE tournament_id = $id";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query) > 0) {
            return $query;
        } else {
            return false;
        }
    }
}