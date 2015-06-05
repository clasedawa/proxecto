<?php 
	include 'lib/conexion.php';

	/* Obtenemos de la BBDD los asignaturas del profesor*/
	function getAsignaturasProfesor(){
		$asignaturaProf = array();
	
		$conexion = get_conexion();
		
		$nombre = $_SESSION['usuNom'];
		$sql = "SELECT * FROM vasipro WHERE nombre=$nombre";
	
		$result = mysqli_query($conexion, $sql);
		if ($result){
			while($row = mysqli_fetch_assoc($result)){
				$asignaturaProf[] = $row;
			}
		}
		return $asignaturaProf;
	}
	
?>