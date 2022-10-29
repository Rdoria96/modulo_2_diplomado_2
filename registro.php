<?php
$server = "localhost";
$user = "root";
$passw = "";
$bd = "diplomado";

$conexion = mysqli_connect($server, $user, $passw, $bd)
    or die("Ha sucedido un error inexperado en la conexion de la base de datos");


if (isset($_POST['enviar'])) {
    $user = $_POST['usuario'];
    $pass = $_POST['password'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $carrera = $_POST['carrera'];
    $correo = $_POST['correo'];
    $identificador = $_POST['identificador'];
    $pass = md5($pass);

    $sql = "INSERT INTO estudiante (nombre,apellido,carrera,correo,identificador)
    VALUES('$nombre','$apellido','$carrera','$correo','$identificador')";


    $sql2 = "INSERT INTO usuario (identificador,usuario,password)
    VALUES('$identificador','$user','$pass')";

    if ($conexion->query($sql) && $conexion->query($sql2)) {
        $_SESSION['success'] = 'Datos almacenados correctamente';
    } else {
        $_SESSION['error'] = 'Algo salió mal al agregar el registro';
    }
    $conexion->close();
}
header('location:message.php');