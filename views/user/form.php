<?php
echo $mensaje;
?>
<form action="" method="post">
        <div class="row">
            <div class="col-sm-6">
               
                <div class="form-group">
                    <label for="dni">DNI</label>
                    <input type="text" class="form-control" name="dni"  value="<?php echo $dni ?>" required>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" name="pass"  value="<?php echo $pass ?>" required>
                </div>
                 <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre"   value="<?php echo $nombre ?>" required>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" name="apellido" value="<?php echo $apellido ?>" required>
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <input type="text" class="form-control" name="telefono"  value="<?php echo $telefono ?>" required>
                </div>
               
            </div>
            <div class="col-sm-6">
                 <div class="form-group">
                    <label for="¨direccion">Dirección</label>
                    <input type="text" class="form-control" name="direccion" value="<?php echo $direccion ?>" required>
                </div>
                <div class="form-group">
                    <label for="poblacion">Población</label>
                    <input type="text" class="form-control" name="poblacion" value="<?php echo $poblacion ?>" required>
                </div>
                
                <div class="form-group">
                    <label for="rol">Tipo</label>
                    <select class="form-control" name="rol">
                        <option value="1" <?php  echo $selectedTipo1 ?> >Profesor</option>
                        <option value="2"  <?php echo $selectedTipo2 ?>>Alumno</option>
                    </select>
                </div>
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
    