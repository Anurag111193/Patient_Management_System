
<!------ Search Script --->






<div class="navbar" style="width:505px; margin-left:22px;">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <center>
<font size = "5">
Enter The dates to get the Payment
<form action="payments.php" method="GET">
   
<br><br> Start Date:&nbsp&nbsp<input name="sdate" type="text" id="event_startDate" size="17">&nbsp&nbsp
       End Date:&nbsp&nbsp<input name="ldate" type="text" id="event_endDate" size="17"><br><br><br>
        <input type = "submit" style="width:80;height:40;font-size:20" name = "sub" class="buttons" value = "सादर" id="btnsubmit">
<br><br>
<br><br><br><br>
</font>
</form>
</center>
    <?php }?>
</div>
<?php if(isset($_GET['details'])){ ?><div id="as" class="modal-backdrop fade in" ></div><?php }?>

<!-------- Modal Popup End --->



