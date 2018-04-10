<html>
<head>
<link rel="stylesheet" href="adminmain.css"> 
</head>
<body>

<ul>
<li class="dropdown"><font color="yellow" size="10">ADMIN MODE</font></li>
<br>
<h2>
  <li class="dropdown">    
  <a href="javascript:void(0)" class="dropbtn">Doctor</a>
    <div class="dropdown-content">
      <a href="adddoctor.php">Add Doctor</a>
      <a href="deletedoctor.php">Delete Doctor</a>
      <a href="showdoctor.php">Show Doctor</a>
	  <a href="showdoctorschedule.php">Show Doctor Schedule</a>
    </div>
  </li>
  
  <li class="dropdown">
  <a href="javascript:void(0)" class="dropbtn">Clinic</a>
    <div class="dropdown-content">
      <a href="addclinic.php">Add Clinic</a>
      <a href="deleteclinic.php">Delete Clinic</a>
      <a href="adddoctorclinic.php">Assign Doctor to Clinic</a>
	  <a href="addmanagerclinic.php">Assign Manager to Clinic</a>
	  <a href="deletedoctorclinic.php">Delete Doctor from Clinic</a>
	  <a href="deletemanagerclinic.php">Delete Manager from Clinic</a>
	  <a href="showclinic.php">Show Clinic</a>
    </div>
  </li>
  <li class="dropdown">    
  <a href="javascript:void(0)" class="dropbtn">Manager</a>
    <div class="dropdown-content">
      <a href="addmanager.php">Add Manager</a>
      <a href="deletemanager.php">Delete Manager</a>
	  <a href="showmanager.php">Show Manager</a>
    </div>
  </li>
  
    <li>  
	<form method="post" action="mainpage.php">	
	<button type="submit" class="cancelbtn" name="logout" style="float:right;font-size:22px"><b>Log Out</b></button>
	</form>
  </li>
	
</ul>
</h2>
<p>

<center><h1>********WELCOME ADMIN*******</h1> 
<?php
session_start();	
	if(isset($_POST['logout'])){
		session_unset();
		session_destroy();
		header( "Refresh:1; url=../cover.php"); 
	}
?>
</body>
</html>