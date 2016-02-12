<?php  
header("Access-Control-Allow-Origin: *");
include "config.php";

//terima inputn data
$data = json_decode(file_get_contents("php://input"));
//ambil nilai dari nama dan ket
$nama = $data->nama_kontak;
$alamat  = $data->alamat;
$grup  = $data->nama_grup;
//query insert
$sql = "INSERT INTO daftar_kontak (nama_kontak, alamat, id_grup) VALUES ('$nama', '$alamat', '$grup')";
//echo pesan
if(mysqli_query($link, $sql)){
	$pesan = "input berhasil";
}else{
	$pesan = "input gagal";
}

echo $pesan;
?>