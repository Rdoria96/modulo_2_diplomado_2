<?php

session_start();

if (!isset($_SESSION['usuario'])) {
  header("location: index.html");
}

echo "HOLA INGINIERO " . $_SESSION['usuario'];

session_destroy();