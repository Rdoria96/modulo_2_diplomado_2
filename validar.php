<?php
session_destroy();
$usuario = $_POST['usuario'];
$pass = $_POST['password'];
$carrera = "Ingenieria de sistema";
$pass = md5($pass);

if (empty($usuario) || empty($pass)) {
    header("Location: index.html");
    exit();
}
$server = "localhost";
$user = "root";
$passw = "";
$bd = "diplomado";

$conexion = mysqli_connect($server, $user, $passw, $bd)
    or die("Ha sucedido un error inexperado en la conexion de la base de datos");



$sql = "SELECT * FROM estudiante as es, usuario as us WHERE es.identificador = us.identificador and password='$pass' and es.Carrera='$carrera'";
$result = mysqli_query($conexion, $sql);

if ($row = mysqli_fetch_array($result)) {
    if ($row['password'] ==  $pass) {
        session_start();
        $_SESSION['usuario'] = $usuario;
        header("Location: contenido.php");
    } else {
        header("Location: index.html");
        exit();
    }
} else {
    header("Location: index.html");
    exit();
}