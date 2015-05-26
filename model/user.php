<?php 
	include 'lib/conexion.php';

	/* Obtenemos los usuarios de la BBDD */
	function getUsuarios(){
		$usuar = array();
	
		$conexion = get_conexion();
		$sql = "SELECT * from usuario";
	
		$resultUsuar = mysqli_query($conexion, $sql);
	
		while($row = mysqli_fetch_assoc($resultUsuar)){
			$usuar[] = $row;
		}
	
		return $usuar;
	}
	
?>