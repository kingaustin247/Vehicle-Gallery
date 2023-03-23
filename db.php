<?php
$servername = 'localhost';
$dbuser = 'username';
$dbpass = 'password';
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