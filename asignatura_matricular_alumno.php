<?php
include 'lib/autenticacion.php';


if ($_POST['envio']){

	$idAlumno = $_POST['idUsuario'];
	$idAsignatura=$_POST['idAsignatura'];
//para crear los registro de la notas alumno es necesario tener los siguientes campos
//		Alumno se corresponde con $_post[$idProfesor]
//		Asignatura => $_post[$idAsignatura]
//		evaluacion => se buscan con la select sobre tabla evaluación
//		nota=> se buscan con la select sobre tabla nota


// selecionamos la evaluaciones que tiene estado 1(las activas)
//para la demostración a Bertin con tener activas las de un año es suficiente	
	$sql = "Select * form evaluacion  WHERE evaest = 1";
	$queryEval = mysqli_query($enlace, $sql);

	if(!$queryEval){
//Si tenemos alguna de evaluacion activa seleccionamos las notas que podra poner		
		$sql = "Select * form notas";
		$queryNotas = mysqli_query($enlace, $sql);
		
		if(!$queryNotas){
//si tenemos notas entonces recorremos los dos recursos como si fuera un array bidimensional pero lo hago con
//while. La ultima instruccion del primer while se usa para devolver el puntero del segundo recurso a la primera posicion 
			while ($filaEval = mysqli_fetch_assoc($queryEval)){
				$idEvaluacion=$filaEval['evaId'];
//devuelve el puntero al inicio del recurso.
				mysqli_data_seek($queryNotas,0);
				while ($filaNotas = mysqli_fetch_assoc($queryNotas)){
					$idNota = $filaNotas['notId'];
					$sql="insert into  values($idAlumno,$idAsignatura,$idEvaluacion,$idNota,'')";
					$query = mysqli_query($enlace, $sql);				
				}
			}			
		}

	}

}
header('Location: ./asignatura-view.php');
?>