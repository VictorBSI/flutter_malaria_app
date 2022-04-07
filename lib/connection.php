<?php
    $conn = new mysqli("35.184.28.132", "root", "Tarso1992", "malaria");
    if ($conn -> connect_errno) {
      echo "Failed to connect to MySQL: " . $conn -> connect_error;
      exit();
    }/*else{
      echo "Connected";
    }*/
?>