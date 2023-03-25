<?php
/*********************
**** CPanel ******************
*********/

/* Following code will retrieve table values */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db


// check for post data
$data = json_decode(file_get_contents("php://input"));



$result = mysqli_query($conn,"SELECT * FROM request ");
if(mysqli_num_rows($result))
{
	$response["sales"] = array();	
	while($Alldetails = mysqli_fetch_array($result))
	{
		$sales = array();
		$sales = $Alldetails;
		array_push($response["sales"],$sales);
	}	
	$response["success"] = 1;
	echo json_encode($response);

}

else
{	
	$response["success"] = 2;
	echo json_encode($response);
}
?>