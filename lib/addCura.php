<?php
include "connection.php";

        $resposta_1 = $_POST["resposta_1"];
        $resposta_2 = $_POST["resposta_2"];
        $data = $_POST["data"];
        $usuario = $_POST["usuario"];

        $query = "INSERT INTO malaria.user_cura (resposta_1, resposta_2, data, usuario) VALUES ('$resposta_1', '$resposta_2', '$data', '$usuario')";
        $result = mysqli_query($conn, $query);
?>