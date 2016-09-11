<?php
	require_once('static/conexion.php');

	if($_GET){
		$id = $_GET['id'];
		$sql = "SELECT * FROM Mesas WHERE id = '$id'";
	}else{
		$sql = "SELECT * FROM Mesas";	
	}
	
	$res = mysqli_query($con, $sql) or die ("error al insertar "+mysqli_connect_error());
	$data = [];
	while($reg = mysqli_fetch_assoc($res)){
		$data[] = $reg;
	}
	print json_encode($data);


?>