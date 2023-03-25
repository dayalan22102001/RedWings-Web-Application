var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookies, $cookieStore, $http) 
{
	
/****************************************************************************/
/************************** Get Admin Details ***********************************/
/****************************************************************************/	
	$scope.cook_user_email = $cookieStore.get("cook_user_email");
	$scope.cook_staff_dept = $cookieStore.get("cook_staff_dept");
	$scope.cook_hosp_name = $cookieStore.get("cook_hosp_name");

	$scope.user_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_admin_email = "";
			$cookies.cook_user_email = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}
	
/****************************************************************************/
/************************** Add Complaint *********************************/
/****************************************************************************/
	$scope.create_blood = function() 
	{		
	$scope.field_8 = "Nil";
	
	
		$http.post('create_blood.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'field_5':$scope.field_5,'field_6':$scope.field_6,
		'field_7':$scope.field_7,'field_8':$scope.field_8,'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Created Successfully");
				window.location = "view_blood.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Enter 10 Digit Mobile No");
			}
			else
			{
				alert("Un Successfully");
			}
        });
    }

/****************************************************************************/
/************************** Add Complaint *********************************/
/****************************************************************************/
	$scope.create_bank = function() 
	{		
	
		$http.post('create_bank.php', {
		'field_1':$scope.field_1,'field_2':$scope.field_2,'field_3':$scope.field_3,
		'field_4':$scope.field_4,'field_5':$scope.field_5,'field_6':$scope.field_6,
		'field_7':$scope.field_7,'field_8':$scope.field_8,
		'field_9':$scope.field_9,'field_10':$scope.field_10,
		'field_11':$scope.field_11,'field_12':$scope.field_12,
		'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Created Successfully");
				window.location = "view_bank.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Enter 10 Digit Mobile No");
			}
			else
			{
				alert("Un Successfully");
			}
        });
    }

/****************************************************************************/
/************************** Delete Sales   *********************************/
/****************************************************************************/
	// products_delete
	$scope.delete_blood = function(cus_id) 
	{		
        $http.post('delete_blood.php', 
		{
		'id': cus_id
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Deleted Successful");
				window.location = "view_blood.html";	
				return;
			}
			else if(data.success == 0)
			{
				alert("Error While Deleting Product!!");
			}
			else
			{
				alert("No id found");
			}
        });
    }

/****************************************************************************/
/************************** admin Details *********************************/
/****************************************************************************/
	$http.post('admin_get.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.admin_details = data.details;
		}
		else
		{
			$scope.admin_details = "No Data Found !!!";
		}
    });
/****************************************************************************/
/************************** Get Feedback *********************************/
/****************************************************************************/
	$http.post('feedback_get.php')
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.feedback_details = data.details;
		}
		else
		{
			$scope.feedback_details = "No Data Found !!!";
		}
    });
/****************************************************************************/
/************************** Get All details  *********************************/
/****************************************************************************/
	$http.post('get_blood.php')
	.success(function(data, status, headers, config) 
	{
			$scope.details = data.details;
    });
	
	$http.post('get_bank.php')
	.success(function(data, status, headers, config) 
	{
			$scope.bank_details = data.details;
    });
	
	
	$http.post('get_all_user.php')
	.success(function(data, status, headers, config) 
	{
			$scope.all_user_details = data.details;
    });
	
/****************************************************************************/
/************************** Add Requriments *********************************/
/****************************************************************************/
	$scope.create_feedback = function() 
	{		
		$http.post('create_feedback.php', 
		{
		'field_1':$scope.field_1,'field_2':$scope.field_2,'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Feedback Submitted Successfully");
				window.location = "home.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 0)
			{
				alert("Error In Creating");
			}
			else
				{
					alert("Un Successfully");
				}
        });
    }

	

/****************************************************************************/
/************************** Student Update *********************************/
/****************************************************************************/
$scope.update_blood = function(cus_id,field_1,field_2,field_3,
								 field_4,field_5,field_6,field_7,field_8) 
	{
		window.location = "update_blood.html";
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_field_1",field_1);
		$cookieStore.put("cook_field_2",field_2);
		$cookieStore.put("cook_field_3",field_3);
		$cookieStore.put("cook_field_4",field_4);
		$cookieStore.put("cook_field_5",field_5);
		$cookieStore.put("cook_field_6",field_6);
		$cookieStore.put("cook_field_7",field_7);
		$cookieStore.put("cook_field_8",field_8);
		return;
	}	
	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");
	$scope.cook_field_2 = $cookieStore.get("cook_field_2");
	$scope.cook_field_3 = $cookieStore.get("cook_field_3");
	$scope.cook_field_4 = $cookieStore.get("cook_field_4");
	$scope.cook_field_5 = $cookieStore.get("cook_field_5");
	$scope.cook_field_6 = $cookieStore.get("cook_field_6");
	$scope.cook_field_7 = $cookieStore.get("cook_field_7");
	$scope.cook_field_8 = $cookieStore.get("cook_field_8");

	$scope.save_blood = function() 
	{		
		$http.post('save_blood.php',{
		'id':$scope.cook_cus_id,'field_1':$scope.cook_field_1,'field_2':$scope.cook_field_2,
		'field_3':$scope.cook_field_3,'field_4':$scope.cook_field_4,'field_5':$scope.cook_field_5,
		'field_6':$scope.cook_field_6,'field_7':$scope.cook_field_7,'field_8':$scope.cook_field_8})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "view_blood.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	

$scope.update_bank = function(cus_id,field_1,field_2,field_3,
								 field_4,field_5,field_6,field_7,field_8,
								 field_9,field_10,field_11,field_12) 
	{
		window.location = "update_bank.html";
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_field_1",field_1);
		$cookieStore.put("cook_field_2",field_2);
		$cookieStore.put("cook_field_3",field_3);
		$cookieStore.put("cook_field_4",field_4);
		$cookieStore.put("cook_field_5",field_5);
		$cookieStore.put("cook_field_6",field_6);
		$cookieStore.put("cook_field_7",field_7);
		$cookieStore.put("cook_field_8",field_8);
		$cookieStore.put("cook_field_9",field_9);
		$cookieStore.put("cook_field_10",field_10);
		$cookieStore.put("cook_field_11",field_11);
		$cookieStore.put("cook_field_12",field_12);
		return;
	}	
	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_field_1 = $cookieStore.get("cook_field_1");
	$scope.cook_field_2 = $cookieStore.get("cook_field_2");
	$scope.cook_field_3 = $cookieStore.get("cook_field_3");
	$scope.cook_field_4 = $cookieStore.get("cook_field_4");
	$scope.cook_field_5 = $cookieStore.get("cook_field_5");
	$scope.cook_field_6 = $cookieStore.get("cook_field_6");
	$scope.cook_field_7 = $cookieStore.get("cook_field_7");
	$scope.cook_field_8 = $cookieStore.get("cook_field_8");
	$scope.cook_field_9 = $cookieStore.get("cook_field_9");
	$scope.cook_field_10 = $cookieStore.get("cook_field_10");
	$scope.cook_field_11 = $cookieStore.get("cook_field_11");
	$scope.cook_field_12 = $cookieStore.get("cook_field_12");

	$scope.save_bank = function() 
	{		
		$http.post('save_bank.php',{
		'id':$scope.cook_cus_id,'field_1':$scope.cook_field_1,'field_2':$scope.cook_field_2,
		'field_3':$scope.cook_field_3,'field_4':$scope.cook_field_4,'field_5':$scope.cook_field_5,
		'field_6':$scope.cook_field_6,'field_7':$scope.cook_field_7,'field_8':$scope.cook_field_8,
		'field_9':$scope.cook_field_9,'field_10':$scope.cook_field_10,'field_11':$scope.cook_field_11,
		'field_12':$scope.cook_field_12
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "view_bank.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please fill all fields");
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	
	
/****************************************************************************/
/************************** User Update *********************************/
/****************************************************************************/
	
		$http.post('get_user_info.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
				$scope.userdetails = data.details;
          });
		  
		$http.post('get_user_appoinment.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
				$scope.app_details = data.details;
          });
		  
		$http.post('get_user_all_appoinment.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
				$scope.app_user_all_details = data.details;
          });
		  
		$http.post('get_hosp_all_appoinment.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
				$scope.hosp_app_all_details = data.details;
          });
		  
		$http.post('get_all_appoinment.php')
		.success(function(data, status, headers, config) 
		{
				$scope.app_all_details = data.details;
				$scope.app_user_details = data.fulldetails;
          });
		  
		$http.post('get_all_hospital.php')
		.success(function(data, status, headers, config) 
		{
				$scope.hospital_details = data.details;
          });
		  
$scope.user_update_info = function(name,password,mobile) 
	{
		window.location = "user_info_edit.html";
		$cookieStore.put("cook_name",name);
		$cookieStore.put("cook_password",password);
		$cookieStore.put("cook_mobile",mobile);
		return;
	}	
	
	$scope.cook_name = $cookieStore.get("cook_name");
	$scope.cook_password = $cookieStore.get("cook_password");
	$scope.cook_mobile = $cookieStore.get("cook_mobile");

	$scope.save_update_info = function() 
	{		
		$http.post('user_update_info.php',{
		 'name':$scope.cook_name, 'password':$scope.cook_password,
		 'mobile': $scope.cook_mobile, 'email': $scope.cook_user_email})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "user_update_info.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
	 $scope.book_1 = function(cus_id,month_1) 
	{
		$cookieStore.put("cook_cus_id",cus_id);
		$cookieStore.put("cook_month_1",month_1);
		window.location = "post_appoinment.html";
		return;
	}	
	
	 $scope.print_invoice = function(cus_id) 
	{
		$cookieStore.put("cook_cus_id",cus_id);
		window.location = "print_invoice.html";
		return;
	}	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");
	$scope.cook_month_1 = $cookieStore.get("cook_month_1");


		$http.post('get_print_appoinment.php',
		{
			'email':$scope.cook_cus_id
		})
		.success(function(data, status, headers, config) 
		{
				$scope.print_details = data.details;
          });
	
	
	 /****************************************************************************/
/************************** Contract Status Update *********************************/
/****************************************************************************/
	
$scope.update_status_con = function(cus_id,field_9) 
	{
		window.location = "con_status_edit.html";
		$cookieStore.put("cook_con_id",cus_id);
		$cookieStore.put("cook_con_status",field_9);
		
		return;
	}	
	
$scope.update_hosp_status = function(cus_id,field_5) 
	{
		window.location = "update_hosp_status.html";
		$cookieStore.put("cook_con_id",cus_id);
		$cookieStore.put("cook_con_status",field_5);
		
		return;
	}	
	
$scope.update_status_hosp = function(cus_id,field_8,field_9) 
	{
		window.location = "con_hosp_status_edit.html";
		$cookieStore.put("cook_con_id",cus_id);
		$cookieStore.put("cook_con_status",field_8);
		$cookieStore.put("cook_field_9",field_9);
		
		return;
	}	
	
	$scope.cook_con_id = $cookieStore.get("cook_con_id");
	$scope.cook_field_9 = $cookieStore.get("cook_field_9");
	$scope.cook_con_status = $cookieStore.get("cook_con_status");

	$scope.save_con_status = function() 
	{		
		$http.post('con_update_status.php',{
		 'cus_id':$scope.cook_con_id,'field_8':$scope.cook_con_status})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated successfully");
				window.location = "view_user_appoinment.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
	$scope.save_hosp_status = function() 
	{		
		$http.post('save_hosp_status.php',{
		 'cus_id':$scope.cook_con_id, 'field_9':$scope.cook_con_status})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Updated successfully");
				window.location = "view_all_hospital.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
	$scope.save_con_hosp_status = function() 
	{		
		$http.post('save_con_hosp_status.php',{
		 'cus_id':$scope.cook_con_id, 'field_8':$scope.cook_con_status})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "view_hosp_all_appoinment.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
	/****************************************************************************/
/************************** Delete Area  *********************************/
/****************************************************************************/
	// products_delete
	$scope.delete_bank = function(cusid) 
	{		
        $http.post('delete_bank.php', 
		{
		'id': cusid
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Deleted Successful");
				window.location = "view_bank.html";
				return;
			}
			else if(data.success == 0)
			{
				alert("Error While Deleting Product!!");
			}
			else
			{
				alert("No id found");
			}
        });
    }



	
	$scope.exportData = function () {
        var blob = new Blob([document.getElementById('exportable').innerHTML], {
            type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8"
        });
        saveAs(blob, "Report.xls");
		};
	

	
	
});