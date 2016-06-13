<?php
session_start();
require_once ("config/Autoload.php");
date_default_timezone_set('America/New_York');
if(isset($_SESSION['user_name'])){
    $user_name = $_SESSION['user_name'];
}
$all_message = Message::showMessage();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.ord/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Comments</title>
    <link href="style/comment.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"--></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="js/script_v1.js"></script>
</head>
<body>
<div class="add_content">
    <div class="add_content_head">
        <?php if(isset($user_name)) { ?>
            <button class="add_message">Add message</button>
        <?php }else { ?>
            <p class="no_login">Для добавления и комментирования сообщений <a href="http://bogdand.net23.net/">выполните вход</a></p>
        <?php } ?>
    </div>
</div>
<div class="content_body">
    <div class="content_body_head">
        <?php if($all_message == FALSE) { ?>
            <p>No comments yet</p>
        <?php } else { ?>
            <p>Comments</p>
        <?php } ?>
    </div>
    <div class="user_message">
        <?php if($all_message != FALSE) {  ?>
            <?php while($res = mysqli_fetch_assoc($all_message)){?>
                <div id="row-<?php echo $res['id_m'] ?>" class="message">
                    <div id="m_date-<?php echo $res['id_m']; ?>" class="m_date">
                        <p><button id="b_hide_all_comments-<?php echo $res['id_m']; ?>" onclick="hide_all_comments(<?php echo $res['id_m']; ?>)" class="b_hide_all_comments"></button><?php echo $res['date_m']; ?></p>
                    </div>
                    <div id="m_text-<?php echo $res['id_m']; ?>" class="m_text">
                        <p id="u_m-<?php echo $res['id_m']; ?>"><?php echo $res['message']; ?></p>
                        <?php if(isset($user_name)) { ?>
                            <?php if ($res['li_user_id'] == $user_name) { ?>
                                <button onclick="message_edit_id(<?php echo $res['id_m'] ?>,'<?php echo $res['message'] ?>')" id="comment_edit-<?php echo $res['id_m']; ?>" class="edit_message">Edit</button>
                            <?php }
                        }?>
                        <?php if (isset($user_name)) { ?>
                            <button onclick="message_id(<?php echo $res['id_m']; ?>,'<?php echo $user_name; ?>')" id="comment-<?php echo $res['id_m']; ?>" class="add_comment">Add comment</button>
                        <?php } ?>
                    </div>
                    <div id="hide-<?php echo $res['id_m']; ?>">
                        <?php
                        $message_comment = Comments::showComment($res['id_m']);
                        while($res_c = mysqli_fetch_assoc($message_comment)){
                        ?>
                            <div id="m_comment-<?php echo $res['id_m']; ?>" class="m_comment">
                                <div class="c_date">
                                    <p><?php echo $res_c['date_c']; ?></p>
                                </div>
                                <div class="c_text">
                                    <p id="show_edit_comment-<?php echo $res_c['li_message_id_m']; ?>-<?php echo $res_c['id_c']; ?>"><?php echo $res_c['comment']; ?></p>
                                    <?php
                                    if(isset($user_name)) {
                                        if($res_c['li_user_id'] == $user_name) { ?>
                                        <button onclick="comment_edit_id(<?php echo $res['id_m']; ?>,<?php echo $res_c['id_c']; ?>,'<?php echo $res_c['comment']; ?>')" id="edit_comment_c-<?php echo $res_c['id_c']; ?>" class="edit_comment_c">Edit</button>
                                    <?php }
                                     }?>
                                    <?php
                                    if (isset($user_name)) { ?>
                                        <button onclick="comment_id(<?php echo $res_c['li_message_id_m'] ?>,<?php echo $res_c['id_c']; ?>,'<?php echo $user_name; ?>')"  id="comment_c-<?php echo $res_c['id_c']; ?>" class="add_comment_c">Add comment</button>
                                  <?php  } ?>
                                </div>
                            </div>
                            <?php
                            $all_comments_c = CommentsComments::showComment($res_c['li_message_id_m'],$res_c['id_c']);
                            while($res_c_c = mysqli_fetch_assoc($all_comments_c)) {
                            ?>
                                <div class="m_comment_c">
                                    <div class="c_date_c">
                                        <p><?php echo $res_c_c['date_cc']; ?></p>
                                    </div>
                                    <div class="c_text_c">
                                        <p id="show_edit_comment_c-<?php echo $res_c_c['li_message_id_m']; ?>-<?php echo $res_c_c['li_message_comment_id_c']; ?>-<?php echo $res_c_c['id_cc']; ?>"><?php echo $res_c_c['comment_c']; ?></p>
                                        <?php if (isset($user_name)) {
                                            if ($res_c_c['li_user_id'] == $user_name) { ?>
                                                <button onclick="comments_coments_edit_id(<?php echo $res_c_c['li_message_id_m']; ?>,<?php echo $res_c_c['li_message_comment_id_c']; ?>,<?php echo $res_c_c['id_cc']; ?>,'<?php echo $res_c_c['comment_c']; ?>')" id="comment_c_c-<?php echo $res_c_c['id_cc']; ?>" class="add_comment_c_c">Edit</button>
                                            <?php }
                                        }?>
                                    </div>
                                </div>
                            <?php } ?>
                            <div id="show_m_comment_c-<?php echo $res_c['id_c']; ?>" class="m_comment_c">
                            </div>
                        <?php } ?>
                        <div id="show_m_comment-<?php echo $res['id_m']; ?>" class="m_comment">
                        </div>
                    </div>
                </div>
            <?php } ?>
        <?php } ?>
    </div>
</div>
<div class="modal">
    <div class="modal-content">
        <button class="close">close</button>
        <div class="modal-head">
            <p id="info"></p>
        </div>
        <div class="modal-body">
            <form id="add_message">
                <div class="form_block">
                    <input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>">
                    <input type="hidden" name="user_name" value="<?php echo $user_name; ?>">
                    <textarea id="textarea" rows="5" cols="25" name="text"></textarea>
                </div>
                <input class="message_button" type="button" value="Отправить">
            </form>
            <form id="add_comment">
                <div class="form_block">
                    <input type="hidden" name="date_c" value="<?php echo date("Y-m-d"); ?>">
                    <input id="message_id" type="hidden" name="message_id" value="">
                    <input id="user_comment_id" type="hidden" name="user_comment_id" value="">
                    <textarea id="textarea_c" rows="5" cols="25" name="text_c"></textarea>
                </div>
                <input class="message_button_c" type="button" value="Отправить">
            </form>
            <form id="add_comment_c">
                <div class="form_block">
                    <input type="hidden" name="date_c_c" value="<?php echo date("Y-m-d"); ?>">
                    <input id="message_id_c" type="hidden" name="message_id" value="">
                    <input id="message_comment_id" type="hidden" name="message_comment_id" value="">
                    <input id="user_comment_c_id" type="hidden" name="user_comment_c_id" value="">
                    <textarea id="textarea_c_c" rows="5" cols="25" name="text_c_c"></textarea>
                </div>
                <input class="message_button_c_c" type="button" value="Отправить">
            </form>
            <form id="edit_message">
                <div class="form_block">
                    <input id="message_edit_id" type="hidden" name="message_edit_id" value="">
                    <textarea id="textarea_edit" rows="5" cols="25" name="text_edit" value=""></textarea>
                </div>
                <input class="message_edit_button" type="button" value="Edit">
            </form>
            <form id="edit_message_comment">
                <div class="form_block">
                    <input id="message_c_edit_id" type="hidden" name="message_c_edit_id" value="">
                    <input id="comment_edit_id" type="hidden" name="comment_edit_id" value="">
                    <textarea id="textarea_edit_comment" rows="5" cols="25" name="text_edit_c" value=""></textarea>
                </div>
                <input class="comment_edit_button" type="button" value="Edit">
            </form>
            <form id="edit_comments_comments">
                <div class="form_block">
                    <input id="edit_message_id" type="hidden" name="edit_message_id" value="">
                    <input id="edit_message_comment_id" type="hidden" name="edit_message_comment_id" value="">
                    <input id="edit_comments_comments_id" type="hidden" name="edit_comments_comments_id" value="">
                    <textarea id="textarea_edit_comments_comments" rows="5" cols="25" name="text_edit_c_c" value=""></textarea>
                </div>
                <input class="comments_comments_edit_button" type="button" value="Edit">
            </form>
        </div>
    </div>
</div>
</body>
</html>