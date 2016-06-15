<?php
session_start();
require_once ("../config/Autoload.php");
require_once ("../config/const.php");
if(isset($_POST['tour_type'])) {
    $tournament = new Tournament();
    $add_rournament = $tournament->tournamentRegist($_POST['tour_type'],$_POST['tour_name']);
    if($add_rournament == true){
        $_SESSION['user_info'] = 'Successfully add tournament';
        header('Location:'.base_path.'creatTournament.php');
        die();
    } else {
        $_SESSION['user_info'] = 'Error please try again';
        header('Location:'.base_path.'creatTournament.php');
        die();
    }
} elseif(isset($_POST['team_name'])){
    $team = new Team();
    $add_team = $team->teamRegist($_POST['team_name'],$_POST['team_country']);
    if($add_team == true){
        $_SESSION['user_info'] = 'Successfully add team';
        header('Location:'.base_path.'creatTournament.php');
        die();
    } else {
        $_SESSION['user_info'] = 'Error please try again';
        header('Location:'.base_path.'creatTournament.php');
        die();
    }


} elseif(isset($_POST['tour_type_j'])){
    if(count($_POST) < 17){
        $_SESSION['user_info'] = 'You need to choose 16 teams for the tournament';
        header('Location:'.base_path.'creatTournament.php');
        die();
    } else {

        $tournament_id = $_POST['tour_type_j'];
        unset($_POST['tour_type_j']);
        $play = new Play();
        $check_tournament = $play->checkTournamentTeam($tournament_id);
        if ($check_tournament == true) {
            $add_team_tournament = $play->teamRegist($_POST, $tournament_id);
            //print_r($add_team_tournament);
            if ($add_team_tournament == true) {
                $_SESSION['user_info'] = 'Successfully add teams in the tournament';
                header('Location:' . base_path . 'creatTournament.php');
                die();
            } else {
                $_SESSION['user_info'] = 'Error please try again';
                header('Location:' . base_path . 'creatTournament.php');
                die();
            }
        } else {
            $_SESSION['user_info'] = 'The tournament is already filled';
            header('Location:' . base_path . 'creatTournament.php');
            die();
        }
    }
}elseif(isset($_POST['check-b-b'])){
    $tournament_id = $_POST['check-b-b'];
    $play = new Play();
    $all_team = $play->selectTournamentTeam($tournament_id);
    $team_id = array();
    $team_to_play = array();
    if($all_team !== false){
        $s_x = 1;
        while ($row = $all_team->fetch_assoc()) {
            $team_id[] =  $row['team_id'];
            $team_to_play[] ='p'.$s_x++.'='.(int)$row['team_id'];
        }
        $add_play_team = $play->addPlayTeam($tournament_id,$team_id,$team_to_play);
        if($add_play_team == true){
            //ПРОДОЛЖАЮ





            echo 'ok';
        }
    }
} else {
    $_SESSION['user_info'] = 'You have no access!';
    header('Location:'.base_path.'creatTournament.php');
    die();
}