<?php 

  include("connection.php");

  $queryResult = $conn->
      query("SELECT * FROM malaria.usuario");

  $result = array();

  while ($fetchdata=$queryResult->fetch_assoc()) {
      $result[] = $fetchdata;
  }

  echo json_encode($result);
 ?>