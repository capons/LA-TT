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
        $tournament = new Tournament();
        $tournament_is_full = $tournament->tournamentFull($tournament_id);
        if($tournament_is_full == false) {
            $play = new Play();
            $check_tournament = $play->checkTournamentTeam($tournament_id);
            if ($check_tournament == true) {
                $team_id = array(); // push all team id to check -> if team in tournament or no
                foreach ($_POST as $val) {
                    $team_id[] = '(' . $val . ',' . '1' . ')';
                }
                $sql_data = implode(',', $team_id); //array to check if team in tournament or no
                $user = new User();
                $update_team_play_status = $user->teamTournament($sql_data);
                if ($update_team_play_status == true) {
                    $add_team_tournament = $play->teamRegist($_POST, $tournament_id);
                    //print_r($add_team_tournament);
                    if ($add_team_tournament == true) {
                        //$tournament = new Tournament();
                        $tournament_full = $tournament->tournamentTeamStatus($tournament_id);
                        if ($tournament_full == true) {
                            $_SESSION['user_info'] = 'Successfully add teams in the tournament';
                            header('Location:' . base_path . 'creatTournament.php');
                            die();
                        } else {
                            $_SESSION['user_info'] = 'Error please try again';
                            header('Location:' . base_path . 'creatTournament.php');
                            die();
                        }


                    } else {
                        $_SESSION['user_info'] = 'Error please try again';
                        header('Location:' . base_path . 'creatTournament.php');
                        die();
                    }
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
        } else {
            $_SESSION['user_info'] = 'The tournament is already full';
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
                        if($order_play !== false){
                            $end_tournament_status = $tournament->updateTournament($tournament_id,'end');
                            if($end_tournament_status == true) {
                                //$team = new Play();


                                $tournament_team = $play->tournamentTeam($tournament_id);
                                if($tournament_team == true){ //free team status -> team can play again
                                    $t_team = array();
                                    while ($row = $tournament_team->fetch_assoc()){
                                        $t_team[] = '(' . $row['team_id'] . ',' . '0' . ')';
                                    }
                                    $sql_data = implode(',', $t_team);
                                    $user = new User();
                                    $free_team = $user->teamTournament($sql_data);
                                    if($free_team == true) {

                                        $team_score = $play->playScore($tournament_id);
                                        if($team_score == true){
                                            $n_team_score = array();
                                            while ($row = $team_score->fetch_assoc()){
                                                $n_team_score[] = '(' . $row['winner'] . ',' . 3*$row['win_number'] . ')';
                                            }
                                            echo '<pre>';
                                            //print_r($n_team_score);
                                            echo '</pre>';
                                            //die();
                                            $score_sql_data = implode(',', $t_team);
                                            $score = $user->teamScore($score_sql_data);
                                            if($score == true){
                                                echo 'ok';
                                            }


                                            //ПРОДОЛЖИТЬ







                                        }else {
                                            $_SESSION['user_info'] = 'Error please try again!';
                                            header('Location:' . base_path . 'creatTournament.php');
                                            die();
                                        }



                                        $_SESSION['user_info'] = 'The tournament is over! LOOK AT THE RESULTS!';
                                        header('Location:' . base_path . 'creatTournament.php');
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
                            } else {
                                $_SESSION['user_info'] = 'Error please try again!';
                                header('Location:' . base_path . 'creatTournament.php');
                                die();
                            }
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
        } else {
            $_SESSION['user_info'] = 'Add team to the tournament!';
            header('Location:' . base_path . 'creatTournament.php');
            die();
        }
    }elseif($check_tournament['status'] == 'end'){
        $_SESSION['user_info'] = 'The tournament ended!';
        header('Location:' . base_path . 'creatTournament.php');
        die();
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