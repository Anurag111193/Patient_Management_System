<!----- INCLUDE HEAD SCRIPT --->
<?php include_once 'includes/head.php';?>
    <body>
        <div class="wrapper">

            
            <!------- NAVIGATION INCLUDE ---->
            <?php include_once 'includes/nav.php';?>
           
         
           <div class="clear">&nbsp;</div>
           
            <?php 
           if(isset($_SESSION['doc_id']))
           {
               
               
               if(isset($_GET['addNewDoctor'])){
                   
                   include('addNewDoctor.php'); // include addNewDoctor Page
               }
               else if(isset($_GET['patientsAdd'])){
                   
                   include_once('addNewPatients.php'); // include  addNewPatients Page
               }
               else if(isset($_GET['view_doctors'])){
                   
                   include_once ('view_doctors.php'); // include view_doctors Page
               }
			    else if(isset($_GET['view_patients'])){
                   
                   include_once ('view_patients.php'); // include view_doctors Page
               }
               else if(isset($_GET['add_app_form'])){
                   include_once 'add_app_form.php'; //Include add_app_form 
               }
               else if(isset($_GET['view_patient_by_doctor'])){
                   include_once 'view_patient_by_doctor.php'; // Include view_patient_by_doctor File
               }
               
               else{
                   echo '<h2 align="center">Welcome to Patient Management System</h2>';
               }
           }    
           ?>
            <div class="modal-footer"></div> <!--- modal footer --->
           
           
       </div>
    </body>
</html>
