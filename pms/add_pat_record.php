

 <script type="text/javascript" src="<?php echo $vpath?>js/jquery.form.js"></script>
 <script type="text/javascript" src="<?php echo $vpath?>js/jquery.min.js"></script>
 <script type="text/javascript" src="<?php echo $vpath?>myScript/addPatRecord.js"></script>
 <link href="css/warningCss.css" rel="stylesheet" type="text/css"/>


<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Include dbConn.php File
include_once 'includes/dbconn.php';
if(isset($_GET['d_id'])){
    $docID = $_GET['d_id'];
    $doctorEditQuey = "SELECT * FROM ".$prev."patient WHERE `p_id` = '$docID'";
    $doctorEditResult = mysql_query($doctorEditQuey);
    $doctorEditResultShow = mysql_fetch_array($doctorEditResult);


?>

<table  align="center" style="margin:20px; font-size:15px; height:430px; font-weight:bold; width:792px;" border="0">
    <tr>
        <td>Patient ID:&nbsp;<span class="label label-success">Default</span></td>
    </tr>
    
    <tr>
        <td>
            <span id="" class="btn"><?php  echo $doctorEditResultShow['p_id'];?></span>
            <input type="hidden" name="d_id" id="d_id" value="<?php echo $doctorEditResultShow['p_id']?>" required="required" />
        </td>
    </tr>
    
    <tr>
        <td>First Name&nbsp;</td>
        <td>Last Name&nbsp;</td>
        <td>Medicine Given&nbsp;</td>
        <td>Amount Charged&nbsp;</td>
		<td>Date&nbsp;</td>
    </tr>
    
    <tr>
        <td><input id="fname" name="fname" type="text" value="<?php  echo $doctorEditResultShow['fname'];?>" class="input-medium" required="required"></td>
        <td><input id="lname" name="lname" type="text" value="<?php  echo $doctorEditResultShow['lname'];?>" class="input-medium" required="required"></td>
        <td><input id="mi" name="mi" type="text" value="" class="input-medium" required="required"></td>
        <td><input id="age" name="age" type="text" value="" class="input-small" required="required"></td>
		<td><input id="dat" name="dat" type="text" value="" class="input-small" required="required"></td>
    </tr>
  
    
    <tr>
        <td>Remarks&nbsp;<span class="label label-success">Optional</span></td>
    </tr>
    
    <tr>
        <td colspan="5"><textarea name="remark" id="remark" class="span7" style="width:700px;"><?php  echo $doctorEditResultShow['remark'];?></textarea></td>
    </tr>
    
    <tr>
        <td colspan="2" align="left" height="20">
            <a href="javascript:void(0);" class="btn btn-medium btn-primary " onClick="editdoctor();" style="float:left;"><i class="icon-edit icon-black"></i>&nbsp;Save Changes</a>
            <div id="signup_status" style="margin-left:223px; margin-top:-64px;position:absolute;"></div>
        </td>
    </tr>
    
</table>

<?php }?>