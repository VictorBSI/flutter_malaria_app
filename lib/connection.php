<?php
    $conn = new mysqli("localhost", "root", "", "malaria");
    if ($conn -> connect_errno) {
      echo "Failed to connect to MySQL: " . $conn -> connect_error;
      exit();
    }/*else{
      echo "Connected";
    }*/
?>