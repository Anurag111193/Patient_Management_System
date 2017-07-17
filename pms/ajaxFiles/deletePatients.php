<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Include The dbConn.php File
include_once '../includes/dbConn.php';
if(isset($_POST['p_id'])){
    $id = $_POST['p_id'];
    $deleteDoctor = "DELETE FROM ".$prev."patient WHERE `p_id` = '$id'";
    $deleteQuery = mysql_query($deleteDoctor);
    if($deleteQuery){
        echo '<div class="success">Successfully Deleted!</div>';
    }else{
        echo '<div class="error">Unable To Delete</div>';
    }
}