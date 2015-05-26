<?php
	define('SERVIDOR', 'localhost');
	define('USUARIO', 'clasedawa');
	define('CONTRASENA', '123abc.');
	define('DB_DATABASE', 'proxeccolec');
	
	function get_conexion(){
		$servidor='localhost'; 
		$usuario='clasedawa'; 
		$password='123abc.'; 
		$bd='proxeccolec'; 
		 
		/* Recogemos los datos de la conexión a la BBDD */
		$conexion = mysqli_connect($servidor,$usuario,$password,$bd);
		mysqli_set_charset($conexion, 'utf8');
	
		/* Verificamos la conexión a la BBDD */
		if (!$conexion) {
			die('Error al conectar con el servidor');
		}	
		return $conexion;
	}
?>