<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");

    _checkSession("matricola");

    $con= _connection("gibsondb");
    $idUtente = $_SESSION["matricola"];

    $sql = "select * from cart where matricolaUtente=$idUtente";
    $data = _eseguiQuery($con,$sql);
    $v = array();
    for($i=0;$i<count($data);$i++){
        $sql = "select * from guitars where id=".$data[$i]["idGuitar"]."";
        array_push($v,_eseguiQuery($con,$sql)[0]);
    }
    if(count($v)>0){
        echo(json_encode($v));
    }else{
        http_response_code(500);
        die("Nessun record");
    }
    $con->close();
?>