<?php
    session_start();
    require_once("connection.php");

    $email = $_POST['email'];
    $pass = $_POST['pass'];

    $query = "SELECT * FROM malaria.login WHERE email LIKE '$email' and pass LIKE '$pass'";
    $res = mysqli_query($conn, $query);
    $data = mysqli_fetch_array($res);

    if(isset($data[0]) ? 2 : 1 > 1){
        //echo json_encode("account already exists");
        $query = "SELECT * FROM malaria.login WHERE pass LIKE '$pass'";
        $res = mysqli_query($conn, $query);
        $data = mysqli_fetch_array($res);

        if($data[2] >= 1){
            echo json_encode("true");
        }else{
            echo json_encode("false");
        }

    } else {
        echo json_encode("dont have an account");
    }
    
?>