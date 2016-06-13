<?php
require_once ("../config/Autoload.php");
require_once ("../libs/datafilter.php");
if(isset($_POST['text_c_c'])){
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $c_comments = CommentsComments::addComment($_POST['message_id'],$_POST['message_comment_id'],$_POST['date_c_c'],$_POST['text_c_c'],$_POST['user_comment_c_id']);
    if($c_comments == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}
if(isset($_POST['text_edit_c_c'])){
    $_POST = trimAll($_POST);
    $_POST = htmlAll($_POST);
    $update_c_comments = CommentsComments::editComment($_POST['edit_message_id'],$_POST['edit_message_comment_id'],$_POST['edit_comments_comments_id'],$_POST['text_edit_c_c']);
    if($update_c_comments == true){
        echo 'Added successfully';
    }else {
        echo 'Please try again';
    }
}