<?php  
header("Access-Control-Allow-Origin: *");
include "config.php";

//terima inputn data
$data = json_decode(file_get_contents("php://input"));
//ambil nilai dari nama dan ket
$nama = $data->nama_grup;
$ket  = $data->ket;
//query insert
$sql = "INSERT INTO grup_kontak (nama_grup, ket) VALUES ('$nama', '$ket')";
//echo pesan
if(mysqli_query($link, $sql)){
	$pesan = "input berhasil";
}else{
	$pesan = "input gagal";
}

echo $pesan;
?>