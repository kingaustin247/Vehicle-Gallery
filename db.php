<?php
$servername = 'localhost';
$dbuser = 'root';
$dbpass = 'FYb6Zhjc8(g!6[z';
$dbname = 'VehicleDB';
try {
    if ($conn = new mysqli($servername, $dbuser, $dbpass, $dbname)) {
        // echo "connected";
    } else {
        throw new Exception('Unable to connect');
    }
} catch (Exception $exception) {
    echo $exception->getMessage();
}