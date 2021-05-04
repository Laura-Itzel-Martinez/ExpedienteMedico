<?php
  $conexion=mysqli_connect("localhost","root","","expedienteMedico");
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Expediente Medico</title>
  <link rel="stylesheet" href="librerias/bootstrap.css">
  <link rel="stylesheet" href="librerias/dataTables.bootstrap4.min.css">

</head>
<body>
  <div class="container mt-3">
    <div class="row">
      <div class="col-sm-12">
        <table id="tablaMedico"  class="table table-striped table-bordered" style="width:100%">
          <thead>
            <tr>
              <th>Nombre</th>
              <th>Apellido Paterno</th>
              <th>Apellido Materno</th>
              <th>Telefono</th>
              <th>Email</th>
              <th>Fecha de nacimiento</th>
              <th>Sexo</th>
              <th>Nacionalidad</th>
            </tr>
          </thead>
          <tbody>
            <?php
              $sql= "SELECT * FROM t_personas";
              $resultado=mysqli_query($conexion,$sql);
              while ($mostrar=mysqli_fetch_array($resultado)){
            ?>
            <tr>
              <td><?php echo $mostrar['nombre']?></td>
              <td><?php echo $mostrar['apellido paterno']?></td>
              <td><?php echo $mostrar['apellido materno']?></td>
              <td><?php echo $mostrar['telefono']?></td>
              <td><?php echo $mostrar['email']?></td>
              <td><?php echo $mostrar['fecha de nacimiento']?></td>
              <td><?php echo $mostrar['sexo']?></td>
              <td><?php echo $mostrar['nacionalidad']?></td>
            </tr>
            <?php
              }
            ?>
                    
          </tbody>
          <tfoot>
            <tr>
              <th>Nombre</th>
              <th>Apellido Paterno</th>
              <th>Apellido Materno</th>
              <th>Telefono</th>
              <th>Email</th>
              <th>Fecha de nacimiento</th>
              <th>Sexo</th>
              <th>Nacionalidad</th>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>

  <script src="librerias/jquery-3.5.1.js"></script>
  <script src="librerias/jquery.dataTables.min.js"></script>
  <script src="librerias/dataTables.bootstrap4.min.js"></script>

     <script>
    $(document).ready(function(){
      $('#tablaMedico').DataTable();

    });
  </script>
 
</body>
</html>