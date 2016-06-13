<?php

class CommentsComments
{
    public static function addComment($message_id,$message_c_id,$date,$comment,$user_id)
    {
        $query = mysqli_query(Database::connect(), "INSERT into li_message_comments_comments (li_message_id_m,li_message_comment_id_c,date_cc,comment_c,li_user_id)
                                                    VALUES ('$message_id','$message_c_id','$date','$comment','$user_id')") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        }
    }
    public static function showComment($message_id,$message_c_id)
    {
        $query = mysqli_query(Database::connect(), "SELECT * FROM li_message_comments_comments WHERE li_message_id_m = '$message_id' AND li_message_comment_id_c = '$message_c_id'") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return $query;
        }
    }
    public static function editComment($message_id,$comment_id,$comments_comments_id,$comment)
    {
        $query = mysqli_query(Database::connect(), "UPDATE li_message_comments_comments SET comment_c ='$comment' WHERE id_cc = '$comments_comments_id' AND li_message_id_m = '$message_id' AND li_message_comment_id_c = '$comment_id'") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        } else {
            return false;
        }
    }
}