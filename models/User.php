<?php
require_once ("../config/const.php");
class User extends Validation
{
    private $name;
    private $s_name;
    private $email;
    private $image;
    private $pass;
    private $redirePath = base_path;
    public function userRegist($name,$s_name,$email,$pass){
        $this->name = parent::valid($name);
        $this->s_name = parent::valid($s_name);
        $this->email = parent::valid($email);
        $this->pass = md5(parent::valid($pass));
        $sql = "INSERT into user (name,s_name,email,pass,access)
                VALUES ('$this->name','$this->s_name','$this->email','$this->pass',1)";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if ($query == true) {
           return $last_id = mysqli_insert_id(Database::connect());

        }
        die();
    }
    public function userImage($id,$image){
        $this->image = parent::valid($image);
        $sql = "INSERT into image (user_id,image_name)
                VALUES ('$id','$image')";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if ($query == true) {
            return true;
        }
        die();
    }
    public function checkEmail($email){
        $this->email = parent::valid($email);
        $sql = "SELECT * FROM user WHERE email = '$this->email'";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query)>0) {
            return false;
        } else {
            return true;
        }
    }
    public function checkLogin($email,$pass){
        $this->email = parent::valid($email);
        $this->pass = parent::valid($pass);
        $sql = "SELECT * FROM user WHERE email = '$this->email' AND ";
        $query = mysqli_query(Database::connect(), $sql) or die (mysqli_error(Database::connect()));
        if (mysqli_num_rows($query)>0) {
            return false;
        } else {
            return true;
        }
    }
}