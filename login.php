<?php
	include 'lib/autenticacion.php';
	
	$loginErr="";
	$dni="";
	$password="";
	
	// Cuando le de a iniciar sesión
	if(isset($_POST["entrar"])){
		$dni = $_POST["dni"];
		$password = $_POST["password"];
		
		$sql = "SELECT * FROM vrolusu WHERE Dni='$dni' AND Pass='$password'";
		$query = mysqli_query($enlace, $sql);
		$rowcount = mysqli_num_rows($query);
		// Si las credenciales son correctas
		if($rowcount==1){
			$fila = mysqli_fetch_assoc($query);
			if($fila["Estado"]==1){
				session_start();
				$_SESSION["usuID"] = $fila["ID"];
				$_SESSION["usuDNI"] = $fila["Dni"];
				$_SESSION["usuNom"] = $fila["Nombre"];
				$_SESSION["usuApe"] = $fila["Apellidos"];
				$_SESSION["usuRol"] = $fila["Rol"];
				$_SESSION["usuRolNom"] = $fila["NombreRol"];
				// Si esta variable no es true redirigimos al usuario al login desde cualquier vista.
				$_SESSION["loggedin"] = true;
				header("Location: index.php");
			} else {
				$loginErr="<div class='alert alert-warning alert-dismissible' role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
  				<strong>Atención!</strong> Usuario deshabilitado, contacte con el administrador.</div>";
			}
		} else {
			$loginErr="<div class='alert alert-warning alert-dismissible' role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
  				<strong>Atención!</strong> DNI o contraseña incorrectos.</div>";
		}		
	}
	require("loginView.php");
?>