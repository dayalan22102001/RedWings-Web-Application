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

$get_id = ($data->id);
$get_field_1 = ($data->field_1);
$get_field_2 = ($data->field_2);
$get_field_3 = ($data->field_3);
$get_field_4 = ($data->field_4);
$get_field_5 = ($data->field_5);
$get_field_6 = ($data->field_6);
$get_field_7 = ($data->field_7);
$get_field_8 = ($data->field_8);
$get_field_9 = ($data->field_9);
$get_field_10 = ($data->field_10);
$get_field_11 = ($data->field_11);
$get_field_12 = ($data->field_12);
$get_created_date =date('Y-m-d');

if( empty($get_field_1) || empty($get_field_2) || empty($get_field_3) ||
	empty($get_field_4) || empty($get_field_5) || empty($get_field_6) || empty($get_field_7) ||
	empty($get_field_8) || empty($get_field_9) || empty($get_field_10) || empty($get_field_11) )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	$result = mysqli_query($conn,"UPDATE stock SET field_1='$get_field_1',
				field_2='$get_field_2',field_3='$get_field_3',field_4='$get_field_4',
				field_5='$get_field_5',field_6='$get_field_6',field_7='$get_field_7',
				field_8='$get_field_8', 
				field_9='$get_field_9',field_10='$get_field_10',field_11='$get_field_11',
				field_12='$get_field_12' 
				WHERE cus_id = '$get_id' ");

	// check for empty result
	if($result)
	{
		// success
		$response["success"] = 1;		
		// echoing JSON response
		echo json_encode($response);
		
		
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;		
		// echoing JSON response
		echo json_encode($response);
	}
}
?>