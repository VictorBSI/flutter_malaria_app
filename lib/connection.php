<?php
    $conn = new mysqli("database-1.czwbo6qxluzm.us-east-1.rds.amazonaws.com", "admin", "Tarso1992", "malaria");
    if ($conn -> connect_errno) {
      echo "Failed to connect to MySQL: " . $conn -> connect_error;
      exit();
    }/*else{
      echo "Connected";
    }*/
?>