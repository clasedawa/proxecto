<?php 
	//include 'lib/autenticacion.php';

	/* Obtenemos de la BBDD los asignaturas del profesor*/
	function getAsignaturasProfesor(){
		$asignaturaProf = array();
		
		$nombre = $_SESSION['usuNom'];
		$sql = "SELECT * FROM vasipro WHERE nombre=$nombre";
	
		$result = mysqli_query($enlace, $sql);
		
		if($result) {
		while($row = mysqli_fetch_assoc($result)){
			$asignaturaProf[] = $row;
		}
		}
		else {
			echo "Contacte con el administrador";
		}
	
		return $asignaturaProf;
	}
	
?>