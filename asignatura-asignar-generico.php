<?php
$idAsignatura=$_GET['idAsignatura'];
if ($_POST['envio']){
	header ('location:asignatura-asignar.php?idAsignatura='.$idAsignatura);
}

if ($_POST['envioAlumno']){
	header ('location:asignatura-matricular.php?idAsignatura='.$idAsignatura);	
}
?>