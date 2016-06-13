<?php
require_once ("config/const.php");
session_start();
$client_id = '---';
$client_secret = '---'; 
$redirect_uri = 'http://bogdand.net23.net/'; 
$url = 'http://oauth.vk.com/authorize';
    $params = array(
        'client_id'     => $client_id,
        'redirect_uri'  => $redirect_uri,
        'response_type' => 'code'
    );
if (isset($_GET['code'])) {
    $result = false;
    $params = array(
       'client_id' => $client_id,
       'client_secret' => $client_secret,
       'code' => $_GET['code'],
       'redirect_uri' => $redirect_uri
       );
        $token = json_decode(file_get_contents('https://oauth.vk.com/access_token' . '?' . urldecode(http_build_query($params))), true);

        if (isset($token['access_token'])) {
            $params = array(
                'uids'         => $token['user_id'],
                'fields'       => 'uid,first_name,last_name,screen_name,sex,bdate,photo_big',
                'access_token' => $token['access_token']
            );
            $userInfo = json_decode(file_get_contents('https://api.vk.com/method/users.get' . '?' . urldecode(http_build_query($params))), true);
            if (isset($userInfo['response'][0]['uid'])) {
                $userInfo = $userInfo['response'][0];
                $result = true;
            }
        }
        if ($result) {
            if(isset($userInfo['first_name'])) {
                $_SESSION['user_name'] = $userInfo['first_name'];
                header("Location: http://bogdand.net23.net/comment.php");
                die();
            }
        }
    }
if (isset($_POST['user_look'])){
    if($_POST['user_look'] == 'user_look') {
        unset($_SESSION['user_name']);
        header("Location: http://bogdand.net23.net/comment.php");
        die();
    }
}    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Play soccer</title>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,300,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link href="<?php echo base_path; ?>style/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<div  class="auth">
     <form action="<?php base_path ?>controllers/auth.php" method="post">
         <div class="form-i">
             <div class="f-span">
                <span class="text-c">Email</span>
             </div>
             <div class="f-input">
                <input  type="email" name="email" placeholder="Email" value="bog@ram.ru" required>
             </div>
         </div>
         <div class="form-i">
             <div class="f-span">
                <span class="text-c">Password</span>
             </div>
             <div class="f-input">
                <input type="password" name="pass" placeholder="Password" required>
             </div>
         </div>

         <div class="form-i">
             <div  class="f-span">
                 <!--Sign in by VK -->
                 <?php echo $link = '<a href="' . $url . '?' . urldecode(http_build_query($params)) . '"><img id="vk" src="'.base_path.'image/vk.png" alt="альтернативный текст"></a>'; ?>
             </div>
             <div class="f-input p-cent">
                 <button id="b_look" type="submit">Sign in</button>
                 <a class="text-c" href="<?php base_path; ?>registration.php">Sign up</a>
             </div>
         </div>

    </form>

        <?php
        $info = '';
        if(isset($_SESSION['user_info'])){ ?>
            <div class="error-b" style="width: 60%;margin: 0 auto">
            <?php $info = $_SESSION['user_info'];
            unset($_SESSION['user_info']);
            echo '<p class="error-t">'.$info.'</p>'; ?>
             </div>
        <?php } ?>

</div>
</body>
</html>