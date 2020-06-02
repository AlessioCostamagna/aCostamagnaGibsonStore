<?php

header("Content-type:application/json;charset=utf-8");
require("_libreria.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (
        !isset($_POST["mail"]) ||
        !isset($_POST["password"]) ||
        !isset($_POST["cognome"]) ||
        !isset($_POST["nome"]) ||
        !isset($_POST["telefono"]) ||
        !isset($_POST["username"])
    ) {

        http_response_code(422);
        die("Parametro mancante.");
    }


    $con = _connection("gibsondb");
    $mail = $con->real_escape_string($_POST["mail"]);
    $password = $con->real_escape_string($_POST["password"]);
    $cognome = $con->real_escape_string($_POST["cognome"]);
    $nome = $con->real_escape_string($_POST["nome"]);
    $telefono = $con->real_escape_string($_POST["telefono"]);
    $username = $con->real_escape_string($_POST["username"]);

    
    $sql = "SELECT * FROM utenti WHERE username='$username';";
    $data = _eseguiQuery($con, $sql);
    if (count($data) != 0) {
        http_response_code(401);
        die("Username già esistente!");
    }

    
    $sql = "INSERT INTO utenti (cognome,nome,telefono,mail,username,password) VALUES ('$cognome','$nome','$telefono','$mail','$username','$password');";
    $data = _eseguiQuery($con, $sql);
    if (!$data) {
        http_response_code(401);
        die("errore");
    } else {
        $sql = "SELECT * FROM utenti WHERE username='$username';";
        $data = _eseguiQuery($con, $sql);
        //SETTO IL COOKIE
        session_start();
        $_SESSION["matricola"] = $data[0]["matricola"];
        $_SESSION["scadenza"] = time() + SCADENZA;
        setcookie(session_name(), session_id(), $_SESSION["scadenza"], "/");

        echo json_encode(array("ris" => "ok"));
    }
    $con->close();
}
