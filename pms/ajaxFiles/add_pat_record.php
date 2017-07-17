<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Include dbConn.php File

include_once '../includes/dbConn.php';
if(isset($_POST['page']) && !empty($_POST['page'])){
    //Set Post Variables
        $d_id = trim(strip_tags(strtoupper($_POST["d_id"])));
	$fname = trim(strip_tags($_POST['fname']));
	$lname = trim(strip_tags(strtoupper($_POST["lname"])));
	$mi = trim(strip_tags($_POST['mi']));
	$age = trim(strip_tags($_POST['age']));
	$remark = trim(strip_tags($_POST['remark']));
	$dat = trim(strip_tags($_POST['dat']));
        
        //Check Age And Postal Code is Numeric Or Not
        
        if(empty($dat)) 
	{
		 $update="INSERT INTO ".$prev."precord (p_id, fname, lname, med , amt , remarks, date) VALUES ('".$d_id."','".$fname."','".$lname."','".$mi."','".$age."', '".$remark."' ,'".date('Y-m-d H:i:s')."')";;
            $rs=mysql_query($update) or die(mysql_error());
            if($rs){
                echo '<div class="success" id="signup_status">
                         <button type="button" class="close" data-dismiss="alert">&times;</button>
                         <h4>Success!</h4>
                         Records are successfully Inserted..<br/>
                         <a href="?view_patients" class="btn">Back to Info</a>
                         
                    </div>';
            }else{
        
            }
	}
	
        else{
            $update="INSERT INTO ".$prev."precord (p_id, fname, lname, med , amt , remarks, date) VALUES ('".$d_id."','".$fname."','".$lname."','".$mi."','".$age."', '".$remark."' , '".$dat."')";;
            $rs=mysql_query($update) or die(mysql_error());
            if($rs){
                echo '<div class="success" id="signup_status">
                         <button type="button" class="close" data-dismiss="alert">&times;</button>
                         <h4>Success!</h4>
                         Records are successfully Inserted..<br/>
                         <a href="?view_patients" class="btn">Back to Info</a>
                         
                    </div>';
            }else{
        
            }
        }
        
    
}


?>