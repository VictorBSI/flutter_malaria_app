<?php
include "connection.php";

        $resposta_1 = $_POST["resposta_1"];
        $resposta_2 = $_POST["resposta_2"];
        $usuario = $_POST["usuario"];

        $query = "INSERT INTO malaria.user_evitar (resposta_1, resposta_2, usuario) VALUES ('$resposta_1', '$resposta_2', '$usuario')";
        $result = mysqli_query($conn, $query);
?>