<form action="" method="post">
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="criterio1">Descripción</label>
                    <input type="text" class="form-control" name="criterio1"  value="<?php echo $descripcion ?>"  required>
                </div>
            </div>
            <div class="col-sm-6">
                  <div class="form-group">
                    <label for="estado">Estado</label>
                    <select class="form-control" name="estado">
                        <option value="1"  <?php echo $selectedEstado1 ?>>Activo</option>
                        <option value="0" <?php echo $selectedEstado2 ?>>Inactivo</option>
                    </select>
                </div>
                <div class="form-group text-right">
                    <input type="submit" name="envio" value="<?php echo $boton ?>" class="btn btn-primary">
                    <input type="reset" name="reset" value="Cancelar" class="btn btn-danger">
                </div>
            </div>
        </div>    
</form>