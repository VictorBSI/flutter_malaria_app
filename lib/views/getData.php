<?php
    session_start();
    require_once("connection.php");

    $codigo = $_POST['codigo'];

    $sql = "SELECT * FROM malaria.acompanhamento WHERE codigo LIKE '$codigo' ";
        $db_data = array();

        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $db_data[] = $row;
            }
            // Send back the complete records as a json
            echo json_encode($db_data);
        }else{
            echo "error";
        }
?>