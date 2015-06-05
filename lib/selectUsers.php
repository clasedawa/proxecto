<?php
include 'lib/autenticacion.php';

$sql = "SELECT * FROM vrolusu WHERE rol=1 and estado=0";
$query = mysqli_query($enlace, $sql);

$listaResultados="";
$asignatura=$_GET['idAsig'];
while ($fila = mysqli_fetch_assoc($query)){
	$id = $fila['ID'];
	$nombre = $fila['Nombre']." " .$fila['Apellidos'];
	$listaResultados .= "\n\t\\t <option value = '$id'>$nombre</option>";
}

?>