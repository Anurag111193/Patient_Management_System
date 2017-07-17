<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// Include dbConn.php File
include_once '../includes/dbConn.php';
if(isset($_POST['page'])&& !empty($_POST['page'])){
    
        $p_id = $_POST['p_id'];
        $d_id = $_POST['d_id'];
        $times = $_POST['time'];
        $dd =   $_POST['dd'];
        $yy =   $_POST['yy'];
        $mm =   $_POST['mm'];
        $date = $dd.'-'.$mm.'-'.$yy;
        $encoder = $_POST['encoder'];
        
    if(isset($p_id) && !empty($p_id)  || isset($d_id) && !empty($d_id)){
        
        // Initialize Post Variables
    
        
        
        
        $get = mysql_query("SELECT `d_id`,`p_id` FROM ".$prev."app WHERE `d_id` = '$d_id' AND `p_id` = '$p_id'");
        $count = mysql_num_rows($get);
        if($count > 0){
            echo '<div class="error">Both Patient And Doctors ID Alreday Exisit</div>';
        }else{
            
                $appQuery = "INSERT INTO ".$prev."app SET `d_id`    = '$d_id',
                                               `p_id`   = '$p_id',
                                               `time`   = '$times',
                                               `encoder` = '$encoder',
                                               `date`    = '$date',
                                               `datead`  = '".date('Y-m-d H:i:s')."'";
                $appResults = mysql_query($appQuery);
                if($appResults){
                    echo '<div class="success">Successfully Submited</div>';
                }else{
                    echo '<div class="success">Unable To Insert</div>';
                }
      }
   }
    
    
}