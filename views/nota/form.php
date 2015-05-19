<form action="" method="post">
        <div class="row">
            <div class="col-sm-6">
               
                <div class="form-group">
                    <label for="criterio1"><?php echo $criterio1 ?></label>
                    <textarea class="form-control" name="criterio1" ><?php echo $criterio1Txt ?></textarea>
                </div>
                 <div class="form-group">
                    <label for="criterio2"><?php echo $criterio2 ?></label>
                    <textarea class="form-control" name="criterio1" ><?php echo $criterio2Txt ?></textarea>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="criterio3"><?php echo $criterio3 ?></label>
                    <textarea class="form-control" name="criterio1" ><?php echo $criterio3Txt ?></textarea>
                </div>
                 <div class="form-group">
                    <label for="criterio4"><?php echo $criterio4 ?></label>
                    <textarea class="form-control" name="criterio1" ><?php echo $criterio4Txt ?></textarea>
                </div>
                <div class="form-group text-right">
                    <input type="submit" name="envio" value="<?php echo $boton ?>" class="btn btn-primary">
                    <input type="reset" name="reset" value="Cancelar" class="btn btn-danger">
                </div>
            </div>
        </div>    
</form>