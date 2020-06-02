<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");

    if(!isset($_REQUEST["options"])){
        http_response_code(422);
        die("Parametro mancante.");
    }
    $con= _connection("gibsondb");
    $options = $con->real_escape_string($_REQUEST["options"]);
    $sql = "select * from guitars where options='$options'";
    $data = _eseguiQuery($con,$sql);
    if(count($data)>0){
        echo(json_encode($data));
    }else{
        http_response_code(500);
        die("Nessun record");
    }
    $con->close();
?>