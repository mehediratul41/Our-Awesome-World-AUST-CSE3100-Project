<?php include "include/header.php"; ?>
<body class="login">
    <div class="container form-container login">
        <div class="form-holder">
            <form action="" method="POST">
                <label for="email"><b>Email</b></label>
                <input type="email" name="gmail" placeholder="gmail..." required />
                <label for="password"><b>Password</b></label>
                <input type="password" name="password" placeholder="password..." required />
                <input type="submit" class="btn btn-primary btn-lg" value="Login" />
            </form>
        </div>

        <?php
        if (isset($_SESSION['login'])) {
            header("Location:http://localhost/ourawesomeworld/");
        }
        if (!empty($_POST)) {
            $gmail = $_POST['gmail'];
            $password = md5($_POST['password']);

            $sql = "SELECT * FROM login WHERE gmail='$gmail' AND password='$password'";
            $result = $db->query($sql);
            if ($result->num_rows == 1) {

                $sql2 = "SELECT username FROM login WHERE gmail='$gmail' AND password='$password'";
                $result2 = $db->query($sql2);
                $result2 = $result->fetch_assoc();

                if (!isset($_SESSION['login'])) {
                    $_SESSION['login'] = true;
                    $_SESSION['username'] = $result2['username'];
                    $_SESSION['gmail'] = $gmail;
                    header("Location: http://localhost/ourawesomeworld/");
                }
            } else {
                ?><p class="text-white">User Haven't Registered Yet</p><?php
            }
        }
        ?>

    </div>
    </body>