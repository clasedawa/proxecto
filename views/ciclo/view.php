<div class="box">
	<h1><i class="flaticon-graduate20"></i> Ciclo</h1>
	<div class="table-responsive">
		<table class="table table-striped table-bordered">
		<tr>
			<th>
				Id <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>			
			<th>
				Nombre <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>			
			<th>
				Estado <span><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span>
			</th>
		</tr>
		<?php 
		if($ciclos){
		       foreach ($ciclos as $ciclo){
    	?>
		<tr>
			<td>
				<?php echo $ciclo['cicID']; ?>
			</td>
			<td>
				<?php echo $ciclo['cicNom']; ?>
			</td>
			<td>
				<?php echo $ciclo['cicEst']; ?>
			</td>
		</tr>
		<?php 
             }
          }
     	?>   
		</table>
	</div>
</div>