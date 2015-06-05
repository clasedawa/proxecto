<?php
include 'conexion.php';

define('SERVIDOR', 'localhost');
define('USUARIO', 'clasedawa');
define('CONTRASENA', '123abc.');
define('DB_DATABASE', 'proxeccolec');

$enlace = mysqli_connect(SERVIDOR,USUARIO,CONTRASENA,DB_DATABASE);

mysqli_select_db($enlace, "proxeccolec")
	or die ("<h3>La base de datos no se ha encontrado</h3>");
?>
