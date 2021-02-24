<?php

class apiclass {
	private $pdo;

	public function __construct($host, $username, $password, $port, $db) {
		$opt = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,PDO::ATTR_EMULATE_PREPARES => false];
		$dsn = "mysql:host=$host;dbname=$db;charset=utf8mb4";
		$this->pdo = new PDO($dsn, $username, $password, $opt);  
	}

	public function __destruct() {
		$this->pdo = null;
	}

	public function getPatients(){
		$result=[];
		$stmt=$this->pdo->prepare('SELECT * FROM patients');


		if($stmt->execute()){
			$result['patients']=$stmt->fetchAll();
			header('Content-type: application/json');
			echo json_encode(array('result' => $result));
			return;
		}
		
		header('Content-type: application/json');
		echo json_encode(array('result' => false));
	}
	public function getConnectedMAC(){
		$result=[];
		$stmt=$this->pdo->prepare('SELECT * FROM connectedMAC');
		if($stmt->execute()){
			$result['connectedMAC']=$stmt->fetchAll();
			header('Content-type: application/json');
			echo json_encode(array('result' => $result));
			return;
		}
		
		header('Content-type: application/json');
		echo json_encode(array('result' => false));
	}
	public function getAccessPoint(){
		$result=[];
		$stmt=$this->pdo->prepare('SELECT * FROM Accesspoint');
		if($stmt->execute()){
			$result['Accesspoint']=$stmt->fetchAll();
			header('Content-type: application/json');
			echo json_encode(array('result' => $result));
			return;
		}
		
		header('Content-type: application/json');
		echo json_encode(array('result' => false));

	}

}




