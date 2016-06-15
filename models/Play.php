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
    public function addPlayTeam($tournament_id,$team_id,$team_to_play){
        $x = 0;
        $p = 1;
        foreach($team_id as $val){
            $team_to_play[$x] = 'p'.$p.'=0';
            $this->sql_value = implode(",", $team_to_play);
            $team_to_play[$x] = 'p'.$p.'='.$val;
            $x++;
            $p++;
            $sql = "UPDATE `play` SET $this->sql_value  WHERE team_id = $val and tournament_id = $tournament_id";
        }
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        return $query;
    }
}