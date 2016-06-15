<?php
session_start();
require_once ("config/const.php");
require_once ("./libs/vkAuth.php");
require_once ("./config/Autoload.php");
require_once ("./Layout/header.php");
require_once ("./libs/admin_access.php");

?>

<div style="width: 100%;position: relative;margin-top: 30px">
    <div style="position: relative;width: 49%;display: inline-block;">
        <div class="c-t-full-w">
            <div class="c-t-head">
                <p>Add team</p>
            </div>
        </div>
        <div class="c-t-full-w">
            <div>
                <form action="<?php base_path ?>controllers/creatTournamentController.php" method="post">
                    <div class="form-full">
                        <div class="f-span-f">
                            <span class="text-c">Team name</span>
                        </div>
                        <div class="f-input-f">
                            <input type="text" name="team_name" placeholder="Name" required>
                        </div>
                    </div>
                    <div class="form-full">
                        <div class="f-span-f">
                            <span class="text-c">Team country</span>
                        </div>
                        <div class="f-input-f">
                            <input type="text" name="team_country" placeholder="Country" required>
                        </div>
                    </div>

                    <div class="form-full">
                        <div  class="f-span">

                        </div>
                        <div style="text-align: center;" class="f-input p-cent">
                            <button id="b_look" type="submit">Add</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <div style="position: relative;width: 50%;display: inline-block;">
        <div class="c-t-full-w">
            <div class="c-t-head">
                <p>Creat Tournament</p>
            </div>
        </div>
        <div class="c-t-full-w">
            <div>
                <form action="<?php base_path ?>controllers/creatTournamentController.php" method="post">
                    <div class="form-full">
                        <div class="f-span-f">
                            <span class="text-c">Tournament type</span>
                        </div>
                        <div class="f-input-f">
                            <select name="tour_type" style="width: 145px;" required>
                                <option></option>
                                <?php
                                $round = new Round();
                                $tournament_round = $round->selectRound();
                                while($row = $tournament_round->fetch_assoc()) {
                                    echo $row['type'];

                                    ?>
                                    <option value="<?php echo $row['id']; ?>"><?php echo $row['type']; ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-full">
                        <div class="f-span-f">
                            <span class="text-c">Tournament name</span>
                        </div>
                        <div class="f-input-f">
                            <input type="text" name="tour_name" placeholder="Name" required>
                        </div>
                    </div>

                    <div class="form-full">
                        <div  class="f-span">

                        </div>
                        <div style="text-align: center" class="f-input p-cent">
                            <button id="b_look" type="submit">Add</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>










<?php
$info = '';
if(isset($_SESSION['user_info'])){ ?>
    <div class="error-b" >
        <?php $info = $_SESSION['user_info'];
        unset($_SESSION['user_info']);
        echo '<p class="error-t">'.$info.'</p>'; ?>
    </div>
<?php } ?>
</body>
</html>