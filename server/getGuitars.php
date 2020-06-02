<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");

    if(!isset($_REQUEST["model"])){
        http_response_code(422);
        die("Parametro mancante.");
    }
    $con= _connection("gibsondb");
    $model = $con->real_escape_string($_REQUEST["model"]);
    $sql = "select * from guitars where model='$model'";
    $data = _eseguiQuery($con,$sql);
    if(count($data)>0){
        echo(json_encode($data));
    }else{
        http_response_code(500);
        die("Nessun record");
    }
    $con->close();
?>