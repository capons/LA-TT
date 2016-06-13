<?php
class Comments
{
    public static function addComment($message_id,$date,$comment,$user_id)
    {
        $query = mysqli_query(Database::connect(), "INSERT into li_message_comment (li_message_id_m,date_c,comment,li_user_id)
                                                    VALUES ('$message_id','$date','$comment','$user_id')") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        }
    }
    public static function showComment($id)
    {
        $query = mysqli_query(Database::connect(), "SELECT * FROM li_message_comment WHERE li_message_id_m = '$id'") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return $query;
        }
    }
    public static function editComment($comment_id,$message_id,$comment)
    {
        $query = mysqli_query(Database::connect(), "UPDATE li_message_comment SET comment ='$comment' WHERE id_c = '$comment_id' AND li_message_id_m = '$message_id'") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        } else {
            return false;
        }
    }
}