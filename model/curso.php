<?php 
	include 'lib/conexion.php';

	/* Obtenemos los cursos de la BBDD */
	function getCursos(){
		$curs = array();
	
		$conexion = get_conexion();
		$sql = "SELECT * from anho";
	
		$resultCurs = mysqli_query($conexion, $sql);
	
		while($row = mysqli_fetch_assoc($resultCurs)){
			$curs[] = $row;
		}
	
		return $curs;
	}
	
?>