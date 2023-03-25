<?php
/*********************

**** CPanel ******************
*********/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db

$data = json_decode(file_get_contents("php://input"));
$get_fname ="test";//mysql_real_escape_string($data->fname);
$get_lname ="test";//  mysql_real_escape_string($data->lname);
$get_email = "test@gmail.com";// mysql_real_escape_string($data->email);
$get_password = "test";// mysql_real_escape_string($data->password);
$get_mobile = "9790675343";//mysql_real_escape_string($data->mobile);
$get_created_date = date('Y-m-d');
$get_otp = rand(10000,99000);

//$result = mysql_query("SELECT * FROM customer_details WHERE email = '$get_email'");



		
		
		// success
		$response["success"] = 1;
		// echoing JSON response
		echo json_encode($response);
		
			/////////////////////////////////////////////////
			///////////////////SMS /////////////////////
			/////////////////////////////////////////////////

	// Authorisation details
	$username = "contact@arudhrainnovations.com";
	$apiKey = urlencode('gFiNovbuwFA-Sq6GSGPLvCfzHKWRcQBbuzlt0ChGEK');
	$test = "0";
	$sender = urlencode('AISOFT');
	$numbers = $get_mobile; // A single number or a comma-seperated list of numbers

	$message = 'Your OTP '.$get_otp;

	$message = urlencode($message);
	$data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
	
		$ch = curl_init('https://api.textlocal.in/send/');
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$result2 = curl_exec($ch); // This is the result from the API
		curl_close($ch);
			/////////////////////////////////////////////////
			///////////////////SMS /////////////////////
			/////////////////////////////////////////////////
	

?>