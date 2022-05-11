<?php
include "connection.php";

        $latitude = $_POST["latitude"];
        $longitude = $_POST["longitude"];
        $usuario = $_POST["usuario"];

        $query = "INSERT INTO malaria.user_localizacao (usuario, latitude, longitude) VALUES ('$usuario', '$latitude', '$longitude')";
        $result = mysqli_query($conn, $query);
?>