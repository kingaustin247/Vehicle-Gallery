<?php
if (isset($_POST['SignUp'])) {
    require('db.php');
    $uname = $_POST['uname'];
    $umail = $_POST['umail'];
    $upass = $_POST['upass'];
    $urpass = $_POST['urpass'];
    if (empty($uname) || empty($umail) || empty($upass) || empty($urpass)) {
        header("Location: ./login.php?error=emptyfields&uname=$uname&umail=$umail");
        exit();
    } elseif (!filter_var($umail, FILTER_VALIDATE_EMAIL) && preg_match("/^[a-zA-Z0-9*$//", $uname)) {
        header("Location: ./login.php?error=bademailanduname&uname=$uname&umail=$umail");
        exit();
    } elseif (!filter_var($umail, FILTER_VALIDATE_EMAIL)) {
        header("Location: ./login.php?error=bademail&uname=$uname&umail=$umail");
        exit();
    } elseif (preg_match("/^[a-zA-Z0-9*$//", $uname)) {
        header("Location: ./login.php?error=baduname&uname=$uname&umail=$umail");
        exit();
    } elseif ($upass !== $urpass) {
        header("Location: ./login.php?error=passnomatch&uname=$uname&umail=$umail");
        exit();
    } elseif (preg_match('/^(?=.{6,}$)(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?\W).*$//', $upass)) {
        header("Location: ./login.php?error=passshortordoesnotmatchcriteria&uname=$uname&umail=$umail");
        exit();
    } elseif (strlen($uname) > 15) {
        header("Location: ./login.php?error=unamelong&uname=$uname&umail=$umail");
        exit();
    } elseif (strlen($uname) < 5) {
        header("Location: ./login.php?error=unameshort&uname=$uname&umail=$umail");
        exit();
    } elseif (strlen($umail) < 10) {
        header("Location: ./login.php?error=umailshort&uname=$uname&umail=$umail");
        exit();
    } elseif (strlen($umail) > 254) {
        header("Location: ./login.php?error=umaillong&uname=$uname&umail=$umail");
        exit();
    } elseif (strpos($uname, '@')) {
        $newmail = explode('@', $umail);
        $newname = explode('@', $uname);
        if ($newmail[0] == $newname[0]) {
            header("Location: ./login.php?error=umailunamematch&uname=$uname&umail=$umail");
            exit();
        }
    } else {
        $sql = "SELECT user_name FROM users WHERE user_name=?";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            exit();
        } else {
            mysqli_stmt_bind_param($stmt, 's', $uname);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            $result = mysqli_stmt_num_rows($stmt);
        }
        $sql2 = "SELECT user_email FROM users WHERE user_email=?";
        $stmt2 = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt2, $sql2)) {
            exit();
        } else {
            mysqli_stmt_bind_param($stmt2, 's', $umail);
            mysqli_stmt_execute($stmt2);
            mysqli_stmt_store_result($stmt2);
            $result2 = mysqli_stmt_num_rows($stmt2);
            if ($result > 0 || $result2 > 0) {
                header("Location: ./login.php?error=unameumailtaken&uname=$uname&umail=$umail");
                exit();
            } else {
                $newpass = password_hash($upass, PASSWORD_DEFAULT);
                $sql = "INSERT INTO `users`(`user_name`, `user_email`, `user_pass`, `VList`) VALUES ('$uname', '$umail', '$newpass', '')";
                $stmt = mysqli_stmt_init($conn);
                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    echo "ERROR!!!!!! " . mysqli_stmt_error($stmt);
                    exit();
                } else {
                    if ($conn->query($sql)) {
                        header("Location: ./login.php?signup=success");
                        exit();
                    }
                }
            }
        }
    }
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
} else {
    header("Location: ./index.php");
    exit();
}
