<?php  
header("Access-Control-Allow-Origin: *");
$host 	= "localhost";
$user 	= "root";
$pass 	= "Surday19";
$db 	= "project_sms";

$link = mysqli_connect($host, $user, $pass, $db) or die(mysqli_error($link));

?>