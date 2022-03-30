<?php
include "connection.php";
    $codigo = $_POST['codigo'];
    $nome = $_POST['nome'];
    $data_nascimento = $_POST['data_nascimento'];
    $endereco = $_POST['endereco'];
    $sexo = $_POST['sexo'];

    $query = "INSERT INTO malaria.usuario (codigo, nome, data_nascimento, endereco, sexo) VALUES ('$codigo', '$nome', '$data_nascimento', '$endereco', '$sexo')";
    $result = mysqli_query($conn, $query);
?>