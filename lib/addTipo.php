<?php
include "connection.php";

        $resposta = $_POST["resposta"];
        $usuario = $_POST["usuario"];

        $query = "INSERT INTO malaria.user_tipo (resposta, usuario) VALUES ('$resposta', '$usuario')";
        $result = mysqli_query($conn, $query);
?>