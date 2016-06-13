<?php


class Message
{
    public static function addMessage($user_name,$date,$message)
    {
        $query = mysqli_query(Database::connect(), "INSERT into li_message (li_user_id,date_m,message)
                                                    VALUES ('$user_name','$date','$message')") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        }
    }
    public static function showMessage()
    {
        $query = mysqli_query(Database::connect(), "SELECT * FROM li_message
                                                    ORDER BY id_m DESC
                                                    ") or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query) != 0) {
            return $query;
        }else {
            return false;
        }
    }
    public static function editMessage($message_id,$message)
    {
        $query = mysqli_query(Database::connect(), "UPDATE li_message SET message ='$message' WHERE id_m = '$message_id'") or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        } else {
            return false;
        }
    }
}