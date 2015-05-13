<?php 
    echo $loginErr;
?>
<section id="login">
                <h1>Proyecto grupo DAWA</h1>
                <div class="well well-login">
                    <form id="form-login">
                        <div class="box-login">
                            <div class="form-group">
                                <label for="dni">DNI</label>
                                <div class="user"><input type="text" class="form-control" id="dni" name="dni" placeholder="Introduzca su DNI sin letra" required></div>
                            </div>
                            <div class="form-group">
                                <label for="password">Contraseña</label>
                                <div class="password"><input type="password" class="form-control" id="password" name="password" placeholder="Introduzca su contraseña" required></div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-sm-8"></div>
                        <div class="col-sm-4 text-right"><input type="submit" name="entrar" class="btn btn-primary btn-auto" value="Entrar"/></div>
                        
                    </div>
                    </form> 
                </div>
                <p class="text-center"><a href="" class="">¿Olvidaste tu contraseña?</a><br>
                    <a href="" class="link-gris">¿Problemas con el login?</a> Contacta con nosotros
                </p>

    </section>