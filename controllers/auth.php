<?php
session_start();
require_once ("../config/Autoload.php");
if(isset($_POST['email']) && (isset($_POST['pass']))) {
    $auth = new Auth();
    $auth->userLogin($_POST['email'],$_POST['pass']);

    //$Auth->userLogin($_POST['email'],$_POST['pass']);
    //$_SESSION['user_info'] = 'accept';
    //header("Location: http://localhost/bogdan/LIGHT-IT/lightit/");
    //die();
} else {
    header("Location: http://localhost/bogdan/LIGHT-IT/lightit/");
}
