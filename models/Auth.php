<?php
//require_once ("Validation.php");
require_once ("../config/const.php");
class Auth extends User
{
    private $email='';
    private $pass='';
    private $redirePath = base_path;
    public function userLogin($email,$pass){
        $this->email = parent::valid($email);
        $this->pass = parent::valid($pass);

        
        //проверяем есть ли в БД совпадения
        
        

        $_SESSION['user_info'] = 'Login';
        header('Location:'.$this->redirePath);
        die();
    }
}