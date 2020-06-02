<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");

    _checkSession("matricola");

    $con= _connection("gibsondb");
    $idUtente = $_SESSION["matricola"];

    $sql = "delete from cart where matricolaUtente = $idUtente";
    _eseguiQuery($con,$sql);
    echo(json_encode(array("ris"=> "ok")));
    $con->close();
?>