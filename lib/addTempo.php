<?php
include "connection.php";

        $resposta_1 = $_POST["resposta_1"];
        $resposta_2 = $_POST["resposta_2"];
        $meses = $_POST["meses"];
        $usuario = $_POST["usuario"];
        $quem = $_POST["quem"];

        $query = "INSERT INTO malaria.user_tempo (resposta_1, resposta_2, meses, usuario, quem) VALUES ('$resposta_1', '$resposta_2', '$meses', '$usuario', '$quem')";
        $result = mysqli_query($conn, $query);
?>