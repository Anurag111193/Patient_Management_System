          <div class=" navbar navbar-inverse">
              <div class="navbar-inner">
                    <div class="container">
                         <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                         </a>
                         <a class="brand" href="#">Patient Management System</a>
                         <div class="nav-collapse">
                            
                            
                             <ul class="nav">
                                  <li class="active"><a href="javascript:void(0);"><i class="icon-home icon-white"></i> Home</a></li>
                                   <!---- If Session is out then the menu not show here --->
                                   <?php if($_SESSION['doc_id']):?>
                                   <li><a href="?view_patients">View Patient</a></li>
                                   <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">List <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="?view_doctors">Doctors</a></li>
											<li><a href="?view_patients">Patients</a></li>
                                        </ul>
                                   </li>
                                   
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Add New <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="?patientsAdd">Patient</a></li>
                                            <li><a href="?addNewDoctor">Doctors</a></li>
                                        </ul>
                                   </li>
                                      <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Backup <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="BackupPatients.php">Backup Patient Details</a></li>
											<li><a href="BackupPatientsRecords.php">Backup All Patient Records</a></li>
                                        </ul>
                                   </li>
                              </ul>
                            
                             <ul class="nav pull-right">
                                  <li class="active"><a href="logout.php"><i class="icon-off icon-white"></i>&nbsp;Logout</a></li> 
                             </ul>
                             <?php endif; //end if part?>
                         </div> <!-- /.nav-collapse -->

                     </div> <!-- /.container -->
               </div> <!-- /.navbar-inner -->
           </div> <!-- /.navbar -->