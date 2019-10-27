<?php

$db_host = "rdsdede.cf4kbdfuw9lt.us-east-2.rds.amazonaws.com";
$db_user = "admin";
$db_pass = "Password#01";
$db_name = "sosmed";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
