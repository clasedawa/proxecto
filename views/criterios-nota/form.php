<form action="" method="post">
        <div class="row">
            <div class="col-sm-6">
               
                <div class="form-group">
                    <label for="criterio1">Criterio1</label>
                    <input type="text" class="form-control" name="criterio1"  value="<?php echo $criterio1 ?>"  required>
                </div>
                 <div class="form-group">
                    <label for="criterio1">Criterio2</label>
                    <input type="text" class="form-control" name="criterio2"  value="<?php echo $criterio2 ?>"  required>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="criterio3">Criterio3</label>
                    <input type="text" class="form-control" name="criterio3"  value="<?php echo $criterio3 ?>"  required>
                </div>
                 <div class="form-group">
                    <label for="criterio4">Criterio4</label>
                    <input type="text" class="form-control" name="criterio4"  value="<?php echo $criterio4 ?>"  required>
                </div>
                <div class="form-group text-right">
                    <input type="submit" name="envio" value="<?php echo $boton ?>" class="btn btn-primary">
                    <input type="reset" name="reset" value="Cancelar" class="btn btn-danger">
                </div>
            </div>
        </div>    
</form>