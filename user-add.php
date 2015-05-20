<!DOCTYPE html>
<html lang="es">
  <head>
   
  </head>
  <body>
      <?php  require_once 'layout/header.php';?>
    
      <div id="wrapper">
       

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- zona para los includes según vistas-->
                            <?php  require_once 'views/user/add.php';?>
                            <!-- /zona para los includes según vistas-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <?php require_once 'layout/footer.php'; ?>
   
  </body>
</html>