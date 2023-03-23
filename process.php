<?php
session_start();
if (isset($_POST['SignIn'])) {
    require('db.php');
    $umail = $_POST['email'];
    $upass = $_POST['password'];
    if (empty($umail) || empty($upass)) {
        header("Location: ./login.php?logerror=emptyfields&email=$umail");
        exit();
    } else {
        $sql = "SELECT * FROM users WHERE user_name=? OR user_email=?";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            exit();
        } else {
            mysqli_stmt_bind_param($stmt, 'ss', $umail, $umail);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            if ($row = mysqli_fetch_assoc($result)) {
                $dbpassword = password_verify($upass, $row['user_pass']);
                if ($dbpassword == false) {
                    header("Location: ./login.php?logerror=wrongpassword&email=$umail");
                    exit();
                } elseif ($dbpassword == true) {
                    $_SESSION['uid'] = $row['user_id'];
                    $_SESSION['uname'] = $row['user_name'];
                    header("Location: ./login.php?login=success");
                    exit();
                } else {
                    header("Location: ./login.php?logerror=wrongpassword&email=$umail");
                    exit();
                }
            } else {
                header("Location: ./login.php?logerror=nouser&email=$umail");
                exit();
            }
        }
    }
} else {
    header("Location: ./index.php");
    exit();
}
