<?php
    header("Content-type:application/json;charset=utf-8");
    require("_libreria.php");
    _checkSession("matricola");

    $con= _connection("gibsondb");
    $matricola = $_SESSION["matricola"];

    $sql = "select * from utenti where matricola='$matricola'";
    $data = _eseguiQuery($con,$sql);
    $data = json_encode($data);
    echo($data);
    $con->close();
?>