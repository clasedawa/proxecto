<div class="box">
    <h1 class="blue"><span>Asignar profesor a asignatura</span></h1>
    <hr/>
    <form action="" method="post">
        <div class="row">
    		<input type="hidden" name="idAsignatura" value="<?php echo $asignatura?>" hidden>
    	</div>
        <div class="row">
            <div class="col-sm-6">
                <!--recuperar de la base de datos un listado de los ciclos para asignar a la asignatura-->
                 <div class="form-group">
                    <select class="form-control" name="ciclo">
						<?php echo $listaResultados?>
                    </select>
                </div>
            
            </div>
            <div class="col-sm-6">
                <div class="form-group text-right">
                    <input type="submit" name="envio" value="Asignar" class="btn btn-primary">
                    <input type="reset" name="reset" value="Cancelar" class="btn btn-danger">
                </div>
            </div>
        </div>    
</form>
</div>
                            