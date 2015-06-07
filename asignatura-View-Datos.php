<?php
include 'lib/autenticacion.php';

$sql = "select asiID,asiNom, (select cicNom from ciclo where asiCicID=cicID)as cicNom,asiEst from asignatura";
$query = mysqli_query($enlace, $sql);

$listaResultados="";
while ($fila = mysqli_fetch_assoc($query)){

//para evitar lios con las comillas simples y dobles se guardan los datos en variables
	$id=$fila['asiID'];
	$nomAsi= $fila['asiNom'];
	$nomCic = $fila['cicNom'];
	$estado = $fila['asiEst'];
	
	$listaResultados = $listaResultados ."\n\t\t <tr>"
						."\n\t\t\t <td> $id </td>"
						."\n\t\t <td> $nomAsi</td>"
						."\n\t\t <td> $nomCic </td>"
			            ."\n\t\t <td> $estado </td>"
			            ."\n\t\t <td>"  
			            ."\n\t\t\t	<form method='post' action='asignatura-asignar-generico.php?idAsignatura=$id'>"
			            ."\n\t\t\t\t <input type='submit' value='Asignar profesor' name='envio' id='envio' class='btn btn-primary'/>"
						."\n\t\t\t\t <input type='submit' value='Matricular Alumno' name='envioAlumno' id='envioAlumno' class='btn btn-primary'/>"			            		
			            ."\n\t\t\t\t <input type='hidden' value='hid' name='hid' id='hid'/>"
			            ."\n\t\t\t </form>"
						."\n\t\t</td>"
						."\n\t\t</tr>";
}
?>