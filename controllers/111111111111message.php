<?php
require_once ("../config/Autoload.php");
require_once ("../libs/datafilter.php");
if(isset($_POST['text'])){
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $message = Message::addMessage($_POST['user_name'],$_POST['date'],$_POST['text']);
    if($message == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}
if(isset($_POST['text_edit'])) {
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $edit_message = Message::editMessage($_POST['message_edit_id'],$_POST['text_edit']);
    if ($edit_message == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}