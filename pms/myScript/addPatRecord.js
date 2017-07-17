function editdoctor() 
{
    
	var d_id = $("#d_id").val();
	var fname = $("#fname").val();
	var lname = $("#lname").val();
	var mi = $("#mi").val();
	var age = $("#age").val();
	var remark = $("#remark").val();
	var dat = $("#dat").val();
	

		var dataString = 
		'd_id='+ d_id 
		+ '&fname='+ fname 
		+ '&lname=' + lname 
		+ '&mi=' + mi 
		+ '&age=' + age
		+ '&remark=' + remark
		+ '&dat=' + dat
		+ '&page=editdoctor';
		
		$.ajax({
			type: "POST",
			url: "ajaxFiles/add_pat_record.php",
			data: dataString,
			cache: false,
			beforeSend: function() 
			{
				$("#signup_status").html('<div style=" color:green; margin-left:15px;width:35px;"><img src="img/ajax-loader.gif" alt="Loading...." align="absmiddle"  title="Loading...."/></div>');
			},
			success: function(response)
			{
				$("#signup_status").hide().fadeIn('slow').html(response);
			
			}
		});
	}
