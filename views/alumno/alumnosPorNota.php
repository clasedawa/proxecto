<?php
include 'lib/autenticacion.php';

$Asignatura=7;//AQUI HAY QUE CARGAR EL ID DE LA ASIGNATURA SELECCIONADA

$contador=0;//Esto cuenta cuantos alumnos hay matriculados en la asignatura seleccionada

$ssql="SELECT notAlu_usuId FROM not_alu WHERE notAlu_asiID = $Asignatura";
$query=mysqli_query ( $enlace, $ssql );
while ( $fila = mysqli_fetch_assoc ( $query ) ) {
	$contador ++;
	$idAlumno = $fila ['notAlu_usuId'];
	
	$ssql2="SELECT * FROM usuario WHERE usuId = $idAlumno";
	$query2=mysqli_query ( $enlace, $ssql2 );
	while ( $fila2 = mysqli_fetch_assoc ( $query2 ) ) {
		$nombreAlu = $fila2 ['usuNom'];
	
	
	}
	
}

require "view.php";
?>