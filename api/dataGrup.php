<?php  
header("Access-Control-Allow-Origin: *");
include "config.php";

$query = "SELECT * FROM grup_kontak";
$result = mysqli_query($link, $query) or die("Query gagal");


while ($row = mysqli_fetch_assoc($result)) {
	$output[] = $row;
}

echo json_encode($output);
?>