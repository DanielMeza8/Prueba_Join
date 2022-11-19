<?php 


    function conexion(){
        $servidor = "localhost";
        $usuario = "root";
        $password = "123Yandari";
        $bd = "bd_asignaciones";
        $puerto = 3306;

        $conexion = mysqli_connect($servidor,$usuario, $password, $bd, $puerto);

        return $conexion;
    }


?>