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
    $tournament = new Tournament();
    $check_tournament = $tournament->checkTournametn($tournament_id);



    if($check_tournament['status'] == 'not started') {
        $play = new Play();
        $all_team = $play->selectTournamentTeam($tournament_id);
        $team_id = array();
        $team_to_play = array();
        if ($all_team !== false) {
            $s_x = 1;
            while ($row = $all_team->fetch_assoc()) {
                $team_id[] = $row['team_id'];
                $team_to_play[] = 'p' . $s_x++ . '=' . (int)$row['team_id'];
            }
            $add_play_team = $play->addPlayTeam($tournament_id, $team_id, $team_to_play);
            if (!in_array(false, $add_play_team)) {
                $update_tournament_status = $tournament->updateTournament($tournament_id, 'running');
                if ($update_tournament_status == true) {
                    $all_tournament_play_team = $play->selectAllPLayTeam($tournament_id);
                    if($all_tournament_play_team !== false) {


                        $order_play = $play->orderPlay($all_tournament_play_team);
                        if(!in_array(false,$order_play)){
                            $_SESSION['user_info'] = 'The tournament is over! LOOK AT THE RESULTS!';
                            header('Location:' . base_path . 'creatTournament.php');
                            die();
                        }else {
                            $_SESSION['user_info'] = 'Error please try again!';
                            header('Location:' . base_path . 'creatTournament.php');
                            die();
                        }


                        /*
                        $t_play_one_id = '';
                        $first_team ='';

                        $t = 0;
                        while ($row = $all_tournament_play_team->fetch_assoc()) {
                            $all_games = array();

                            $t_play_one_id = $row['id'];

                            $first_team = $row['team_id'];
                            unset($row['team_id']);
                            unset($row['id']);
                            unset($row['tournament_id']);
                           // shuffle($row); //random sort array
                            $clear_array = array_filter($row); //clear empty slot
                            echo '<pre>';
                            //print_r($clear_array);
                            echo '</pre>';

                            foreach ($clear_array as $key=>$val){
                                $all_games[][] = $first_team;
                                $all_games[$t][] = $val;
                                $t++;
                            }
                            $a = '';      //team a
                            $b = '';      //team b
                            $score = '';  //play score
                           // $winner = ''; //winner
                            echo '<pre>';
                            print_r($all_games);
                            echo '</pre>';

                            foreach ($all_games as $val) {
                                foreach ($val as $key => $t_val) {
                                    switch ($key) {
                                        case 0:
                                            $a = $t_val;
                                            break;
                                        case 1:
                                            $b = $t_val;
                                            break;
                                    }
                                    //generates the result of the match
                                    $scor_a = rand(0, 5);
                                    $scor_b = rand(0, 5);
                                    $score = $scor_a . ':' . $scor_b;
                                }

                                $data_to_save = array();
                                $data_to_save[] = (int)$t_play_one_id;
                                $data_to_save[] = (int)$a;
                                $data_to_save[] = (int)$b;
                                $data_to_save[] = ''.$score.'';
                                $str_result = (explode(':',$score));

                                if($str_result[0] > $str_result[1]){
                                    $data_to_save[] = (int)$a;
                                } elseif($str_result[0] < $str_result[1]){
                                    $data_to_save[] = (int)$b;
                                } elseif($str_result[0] = $str_result[1]){
                                    $data_to_save[] = '\'draw\'';
                                }


                                $sql_str = implode(',', $data_to_save);


                                echo '<pre>';
                                //print_r($data_to_save);
                                echo '</pre>';
                                echo $sql_str;

                                //print_r($str_result);
                                //data to save
                                //echo $sql_str;


                               // echo '<hr>';
                            }


                        }
                        */
                    }
                    die();

                } else {
                    $_SESSION['user_info'] = 'Error please try again!';
                    header('Location:' . base_path . 'creatTournament.php');
                    die();
                }
            } else {
                $_SESSION['user_info'] = 'Error please try again!';
                header('Location:' . base_path . 'creatTournament.php');
                die();
            }
        }
    } else {
        $_SESSION['user_info'] = 'The tournament has started!';
        header('Location:' . base_path . 'creatTournament.php');
        die();
    }
} else {
    $_SESSION['user_info'] = 'You have no access!';
    header('Location:'.base_path.'creatTournament.php');
    die();
}