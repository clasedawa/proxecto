<?php
include 'lib/autenticacion.php';

// se inicializan variables
$nombre = "";
$apellido="";
$dni="";
$telf="";
$direccion="";
$poblacion="";
$pass = "";
$idRol="";
$mensaje="";
$idUsu="";
$estado=0;


if (isset ( $_POST ['envio'] )) {
	if ($_POST ['nombre'] != "" && $_POST ['apellido'] != "" && $_POST ['dni'] != "" && $_POST ['telefono'] != "" && $_POST ['direccion'] != "" && $_POST ['poblacion'] != "" && $_POST ['pass'] != "" && $_POST ['rol'] != "") {
		$nombre = $_POST ['nombre'];
		$apellido=$_POST ['apellido'];
		$dni=$_POST ['dni'];
		$telf=$_POST ['telefono'];
		$direccion=$_POST ['direccion'];
		$poblacion=$_POST ['poblacion'];
		$pass = $_POST ['pass'];
		$idRol= (Integer)$_POST ['rol'];
		$estado=$_POST ['estado'];
		// Sentencia SQL para buscar un usuario con esos datos
		$ssql = "SELECT * FROM usuario WHERE usuDni='$dni'";
		$query = mysqli_query ( $enlace, $ssql );
		$nr = mysqli_num_rows ( $query );
		
		if ($nr == 1) {
			$mensaje = "<div class='alert alert-warning alert-dismissible' role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
  				<strong>Atención!</strong> El DNI de ese usuario ya existe, por favor intentelo con uno distinto.</div>";
			
			
		} else {
// 			se inserta el usuario

			$ssql = "INSERT INTO usuario (usuNom,usuApe,usuDni,usuTel,usuDir,usuPob,usuPas,usuEst) VALUES ('$nombre','$apellido','$dni','$telf','$direccion','$poblacion','$pass',$estado)";
			$query=mysqli_query ( $enlace, $ssql );
			// se inserta el rol
			$ssql = "SELECT usuID FROM usuario WHERE usuDni='$dni'";
			$query = mysqli_query ( $enlace, $ssql );
			while ( $fila = mysqli_fetch_assoc ( $query ) ) {
				$idUsu = $fila ["usuID"];
			}
			$ssql = "INSERT INTO rol_Usu (rolUsu_usuID,rolUsu_rolID) VALUES ($idUsu,$idRol)";
			mysqli_query ( $enlace, $ssql );
			
			//////////////////////////////////////////////////////////////INSERTAR LOG/////////////////////////
			
			
			//////////////////////////////////////////////////////////////////////////////////////////////////
			
			
			$mensaje = "<div class='alert alert-success alert-dismissible' role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
  				<strong>Atención!</strong> Usuario creado correctamente.</div>";
			
		}
	} else {
			$mensaje = "<div class='alert alert-danger alert-dismissible' role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
  				<strong>Atención!</strong> Creación de usuario fallida.</div>";
			
	}
}
 elseif (isset ( $_POST ['volver'] )) {
	
	header ( "Location: index.php" );
}
require "user-add.php";

?>