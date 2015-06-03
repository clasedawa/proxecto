<?php 
	include 'model/asignaturasProfesor.php';
	include 'lib/permisos.php';
	session_start();
?>
<div id="sidebar-wrapper">
            <h2>Menú</h2>
            <ul class="sidebar-nav">
             <?php 
                	if($isAdministrador){
                		
               ?>
                <!-- tienen que llevar la clase .fa-caret-up siempre que haya desplegable-->
                <li>
                    <a href="#"><i class="flaticon-calendar135"></i> Cursos<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="curso-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="curso-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="curso-add.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="flaticon-graduate20"></i> Ciclos<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="ciclo-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="ciclo-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="ciclo-add.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="flaticon-notepad10"></i> Evaluaciones<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="evaluacion-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="evaluacion-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="evaluacion-add.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="flaticon-chalkboard"></i> Asignaturas<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="asignatura-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="asignatura-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="asignatura-add.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="flaticon-diploma7"></i> Notas<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="nota-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="nota-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="nota-add.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="flaticon-boy31"></i> Usuarios<i class="fa fa-caret-up"></i></a>
                    <ul>
                        <li><a href="user-view.php"><i class="fa fa-eye"></i> Consulta</a></li>
                        <li><a href="user-edit.php"><i class="fa fa-pencil"></i> Modificación</a></li>
                        <li><a href="AltaUsuarios.php"><i class="fa fa-plus-circle"></i> Alta</a></li>
                    </ul>
                </li>
                <li>
                    <a href="log.php"><i class="flaticon-gear26"></i> Log</a>
                </li>
                <?php 
                	}
                	if(!empty($_SESSION) && $isProfesor){
                		$asignaturasProfesor = getAsignaturasProfesor();
                		if($asignaturasProfesor){
                			foreach ($asignaturasProfesor as $asignatura){
                				    
                	?>
                	                		            
                	
                 <li>
                    <a href="alumno-view.php"><i class="flaticon-gear26"></i> Ejemplo asignatura</a>
                </li>
                <?php 
             				}
		          		}
                	}
		     	?> 
		     	<li>
                    <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a>
                </li>  
            </ul>
        </div>