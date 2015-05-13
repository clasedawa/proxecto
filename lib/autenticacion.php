<?php
include 'conexion.php';

$enlace = mysqli_connect(SERVIDOR,USUARIO,CONTRASENA,DB_DATABASE);

mysqli_select_db($enlace, "proxeccolec")
	or die ("<h3>La base de datos no se ha encontrado</h3>");
?>
