<?php

include "./conexion.php";
include "./header.php";

$conexion = conexion();
$sql = "SELECT * FROM hardwareusuario";

$respuesta = mysqli_query($conexion, $sql);

?>

<div class="container">
    <div class="row">
        <div class="col mt-4">
            <h1 class="text-center">Control usuarios y hardware</h1>
            <table class="table table-success table-bordered">
                <thead>
                    <tr>
                        <th>Hardware</th>
                        <th>Usuario</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($ver = mysqli_fetch_array($respuesta)): ?>
                        <tr>
                            <td><?php echo $ver['nombre']?></td>
                            <td><?php echo $ver['nombre_usuario']?></td>
                        </tr>
                    <?php endwhile;?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php include "./footer.php"; ?>

