<!DOCTYPE html>
<html lang="es">
  <head>
      <?php require_once 'layout/head.php' ?>
  </head>
  <body>
      <?php  require_once 'layout/header.php';?>
    
      <div id="wrapper">
            <!-- Sidebar -->
            <?php require_once 'layout/menu.php'; ?>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- zona para los includes según vistas-->
                            <?php include 'asignatura-View-Datos.php'?>
                            <?php  require_once 'views/asignatura/view.php';?>
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