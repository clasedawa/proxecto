<?php
//include '../../lib/autenticacion.php';
$enlace = mysqli_connect('localhost','clasedawa','123abc.','proxeccolec');

$sql = "SELECT logID, logFec,logUsuId, logAcc FROM log ORDER BY logFec DESC";
$resultado = mysqli_query($enlace,$sql) or
die('Error consulta de log: '. mysqli_error($enlace));

while($fila = mysqli_fetch_array($resultado)){
	$logID = $fila['logID'];
	$logDatEve = $fila['logFec'];

	$fecha = date("d-m-Y H:i:s", strtotime($logDatEve));

	$UsuID = $fila['logUsuId'];
	$logAction = $fila['logAcc'];


}
echo "

		<a href='' class='btn btn-default btn-sm'><span class='glyphicon glyphicon-triangle-left'></span> Inicio</a>
		";
mysqli_close($enlace);





?>
<div class="box">
	<h1><i class="flaticon-diploma7"></i> Logs</h1>
	<div class="table-responsive">
		<table class="table table-striped table-bordered">
		<tr>
			<th>
				ID <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Fecha <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Usuario<span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Acción <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
		</tr>
		<tr>
			<td>
				<?php echo $logID;?>
			</td>
			<td>
				<?php echo $fecha;?>
			</td>
			<td>
				<?php echo $UsuID;?>
			</td>
			<td>
				<?php echo $logAction;?>
			</td>
		</tr>

		</table>
	</div>
</div>