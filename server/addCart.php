<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");

    _checkSession("matricola");
    if(!isset($_REQUEST["id"])){
        http_response_code(422);
        die("Parametro mancante.");
    }

    $con= _connection("gibsondb");
    $id = $con->real_escape_string($_REQUEST["id"]);
    $idUtente = $_SESSION["matricola"];

    $sql = "insert into cart (matricolaUtente, idGuitar) values($idUtente,$id)";
    _eseguiQuery($con,$sql);
    echo(json_encode(array("ris"=> "ok")));
    $con->close();
?>