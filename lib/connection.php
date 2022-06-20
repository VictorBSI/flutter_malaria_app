<?php
    $conn = new mysqli("localhost", "root", "hugo15", "malaria");
    if ($conn -> connect_errno) {
      echo "Failed to connect to MySQL: " . $conn -> connect_error;
      exit();
    }/*else{
      echo "Connected";
    }*/
?>