/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function doLogin(){
    var username = $('#username').val(); // declare username
    var password = $('#password').val(); // declare password
    var dataString = 'username=' +username+ '&password=' +password+ '&page=login';
    //var vpath = 
    //Check Username And Password Blank Or Not
    if(username === ""){
        $('#login_status').html('<div class="error">Please Enter Username</div>');
        $('#username').focus();
    }
    else if(password === ""){
        $('#login_status').html('<div class="error">Please Enter Password</div>');
        $('#password').focus();
    }
    else{
       
        $.ajax({
           type : "POST",
           url : "ajaxFiles/doLogin.php",
           cache : false,
           data : dataString,
           beforeSend : function(){
               $('#login_status').html('<img src="images/load.gif" style="position: absolute;margin-left: 200px; margin-top: 50px;">');
           },
           
           success: function(response){
               $('#login_status').hide().fadeIn('slow').html(response);
           }
           
          
           
           
        });
       
    }
    
}