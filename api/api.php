<?php

include ('api_class.php');
$var= include('config.php');
$api = new apiclass($var['host'],$var['username'],$var['password'],$var['port'],$var['db']);

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
	if(isset($_GET['action'])) {
		switch ($_GET['action']) {
				case 'getPatients':
					$api->getPatients();
					return;
				case 'getConnectedMAC': 
					$api->getConnectedMAC();
					return;		
				case 'getAccessPoint':
					$api->getAccessPoint();
					return;
				break;
			
			default:
				break;
		}
		
	}
	header('Content-type: application/json');
	echo json_encode(array('result' => false));
}