<?php
session_start();
unset($_SESSION['uid']);
unset($_SESSION['uname']);
session_destroy();
header("Location: ./index.php");
exit();
