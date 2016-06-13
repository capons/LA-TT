<?php
require_once ("config/const.php");
session_start();
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
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.2.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="<?php echo base_path; ?>js/script_v1.js"></script>
</head>
<body>
<div  class="auth">
    <form onsubmit="return file_upload_validate();" action="<?php base_path; ?>controllers/registration.php" method="post" enctype="multipart/form-data">
        <div class="form-i">
            <div class="f-span">
                <span class="text-c">Name</span>
            </div>
            <div class="f-input">
                <input  type="text" name="r_name" placeholder="Name" value="name" required>
            </div>
        </div>
        <div class="form-i">
            <div class="f-span">
                <span class="text-c">Surname</span>
            </div>
            <div class="f-input">
                <input  type="text" name="r_sname" placeholder="Surname" value="s_name" required>
            </div>
        </div>
        <div class="form-i">
            <div class="f-span">
                <span class="text-c">Email</span>
            </div>
            <div class="f-input">
                <input  type="email" name="email" placeholder="Email" value="ram@email.ru" required>
            </div>
        </div>
        <div class="form-i">
            <div class="f-span">
                <span class="text-c">Email</span>
            </div>
            <div class="f-input">
                <input  type="password" name="r_pass" placeholder="Password" required>
            </div>
        </div>
        <div class="form-i">
            <div class="f-span">
                <span class="text-c im">Image</span>
            </div>
            <div class="f-input">
                <div id="btn" class="form-control" ></div>
                <input id="upfile" type="file" name="upload">
            </div>
        </div>
        

        <div class="form-i">
            <div  class="f-span">
                <!--Sign in by VK -->

            </div>
            <div class="f-input p-cent">
                <button name="r_button" id="r_look" type="submit">Sign up</button>
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