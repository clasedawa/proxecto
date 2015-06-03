<?php 
	include 'lib/conexion.php';

	/* Obtenemos los ciclos de la BBDD */
	function getCiclos(){
		$cicl = array();
	
		$conexion = get_conexion();
		$sql = "SELECT * from ciclo";
	
		$resultCicl = mysqli_query($conexion, $sql);
	
		while($row = mysqli_fetch_assoc($resultCicl)){
			$cicl[] = $row;
		}
	
		return $cicl;
	}
	
?>