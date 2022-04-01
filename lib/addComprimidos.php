<?php
include "connection.php";

        $resposta = $_POST["resposta"];
        $usuario = $_POST["usuario"];
        $explique = $_POST["explique"];

        $query = "INSERT INTO malaria.user_comprimidos (resposta, usuario, explique) VALUES ('$resposta', '$usuario', '$explique')";
        $result = mysqli_query($conn, $query);
?>