<?php
    header("Content-type:application/json;charset=utf-8");
    require ("_libreria.php");
	
	if($_SERVER["REQUEST_METHOD"] == "POST"){
		// 1. controllo parametri
		if(!isset($_POST["username"])){
			http_response_code(400);
			die("parametro mancante: username");
		}
		if(!isset($_POST["password"])){
			http_response_code(400);
			die("parametro mancante: password");
		}	
		// 2. connessione
		$con = _connection("gibsondb");
		$user = $con->real_escape_string($_POST["username"]);
		$password = $con->real_escape_string($_POST["password"]);
		
		
		// 3. query
		$sql = "select * from utenti where username='$user'";
		$data= _eseguiQuery($con, $sql);
		$use = $data[0]['password'];
		if(count($data)==0){
			http_response_code(401);
			die("username non valido");
		}
		else if($use!= $password){
			http_response_code(401);
			die("password non valida");
		}
		// 4. creazione session e restituzione risultato
		else{
			session_start();
			$_SESSION["matricola"] = $data[0]["matricola"];
			$_SESSION["scadenza"] = time() + SCADENZA;
			setcookie(session_name(), session_id(), time()+SCADENZA, "/");
			//echo(json_encode({"ris":"ok"}))
			echo(json_encode(array("ris"=>"ok")));			
		}
		// 5. close
		$con->close();		
	}
	//md5() cripta la password e non è reversibile. Ritorna serie di caratteri 
?>