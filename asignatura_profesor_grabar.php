<?php
include 'lib/autenticacion.php';


if ($_POST['envio']){

	$idProfesor = $_POST['idUsuario'];
	$idAsignatura=$_POST['idAsignatura'];
	
	$sql = "Select * form asi_pro WHERE asiPro_anhId = 1 and  asiPro_usuId = $idProfesor  and asiPro_asiID= $idAsignatura";
	$query = mysqli_query($enlace, $sql);
	
	if(!$query){
		$sql="insert into asi_pro values(1,$idAsignatura,$idProfesor)";
		$query = mysqli_query($enlace, $sql);
	}
	
}
header('Location: ./asignatura-view.php');

?>