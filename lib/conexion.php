<?php

 	function get_conexion(){
		$servidor='localhost'; 
		$usuario='clasedawa'; 
		$password='123abc.'; 
		$bd='proxeccolec'; 
		 

		$conexion = mysqli_connect($servidor,$usuario,$password,$bd);
		mysqli_set_charset($conexion, 'utf8');
	

		if (!$conexion) {
			die('Error al conectar con el servidor');
		}	
		return $conexion;
	} 
?>