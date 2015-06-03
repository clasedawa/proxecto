<div class="box">
	<h1><i class="flaticon-calendar135"></i> Cursos</h1>
	<div class="table-responsive">
		<table class="table table-striped table-bordered">
		<tr>
			<th>
				Id <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>			
			<th>
				Año <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>			
			<th>
				Estado <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
		</tr>
		<?php 
		if($cursos){
		       foreach ($cursos as $curso){
    	?>
		<tr>
			<td>
				<?php echo $curso['anhId']; ?>
			</td>
			<td>
				<?php echo $curso['anhAnho']; ?>
			</td>
			<td>
				<?php echo $curso['anhEst']; ?>
			</td>
		</tr>
		<?php 
             }
          }
     	?>   
		</table>
	</div>
</div>