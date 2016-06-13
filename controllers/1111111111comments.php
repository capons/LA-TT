<?php
require_once ("../config/Autoload.php");  
require_once ("../libs/datafilter.php");  
if(isset($_POST['text_c'])){
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $comments = Comments::addComment($_POST['message_id'],$_POST['date_c'],$_POST['text_c'],$_POST['user_comment_id']);
    if($comments == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}
if(isset($_POST['text_edit_c'])) {
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $edit_comment = Comments::editComment($_POST['comment_edit_id'],$_POST['message_c_edit_id'],$_POST['text_edit_c']);
    if ($edit_comment == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}