<?php
include "connection.php";

        $tipo_malaria = $_POST["tipo_malaria"];
        $codigo = $_POST["usuario"];
        $hora_remedio = $_POST["hora_remedio"];

        $query = "INSERT INTO malaria.acompanhamento (codigo, tipo_malaria, hora_remedio) VALUES ('$codigo', '$tipo_malaria', '$hora_remedio')";
        $result = mysqli_query($conn, $query);
?>