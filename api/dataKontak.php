<?php  
header("Access-Control-Allow-Origin: *");
include "config.php";

$query = "SELECT a.*, b.id_grup, b.nama_grup FROM daftar_kontak as a, grup_kontak as b WHERE a.id_grup=b.id_grup";
$result = mysqli_query($link, $query) or die("Query gagal");


while ($row = mysqli_fetch_assoc($result)) {
	$output[] = $row;
}

echo json_encode($output);
?>