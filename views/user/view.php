<div class="box">
	<h1><i class="flaticon-boy31"></i> Alumnos</h1>	
	<div class="table-responsive">
		<table class="table table-striped table-bordered">
		<tr>
			<th>
				Nombre <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Apellido <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				DNI <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Teléfono <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
			<th>
				Dirección <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
            <th>
				Población <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
		</tr>
		<?php 
		if($usuarios){
		       foreach ($usuarios as $usuario){
    	?>
		<tr>
			<td>
				<?php echo $usuario['usuNom']; ?>
			</td>
			<td>
				<?php echo $usuario['usuApe']; ?>
			</td>
			<td>
				<?php echo $usuario['usuDni']; ?>
			</td>
			<td>
				<?php echo $usuario['usuTel']; ?>
			</td>
			<td>
				<?php echo $usuario['usuDir']; ?>
			</td>
            <td>
				<?php echo $usuario['usuPob']; ?>
			</td>
		</tr>
		<?php 
             }
          }
     	?>     

		</table>
	</div>
	<div class="row">
		<div class="col-sm-4">
			 Mostrando 15 de 160
		</div>
		<div class="col-sm-8">
			<ul class="pagination">
				<li>
				<a href="#" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
				</a>
				</li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li>
				<a href="#" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
				</a>
				</li>
			</ul>
		</div>
	</div>
</div>