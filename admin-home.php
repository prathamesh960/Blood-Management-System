<?php
include('connection.php');
session_start();
?>
<!doctype html>
<html>
 <head>
  
  <title> Admin Login</title>
  <link rel="stylesheet"type="text/css"href="css/m1.css">
 </head>
 <body>
  <div class="full">
	<div id="inner_full">
         <div id="header"><h1><a href="admin-home.php" style="text-decoration:none;color:black;">Blood Bank management
        System</a></h1></div>
		<div id="body">
			<br>
			<?php
			$un=$_SESSION['un'];
			if(!$un)
			{
				header("location:index.php");
			}
			?>
			<marquee bgcolor direction="right" behavior="scroll">
			<h1>Welcome Admin</h1></marquee><br>
			<ul>
			   <li><h3><a href="donor-red.php">Donor Registration</h3></li>
			   <li><h3><a href="donor.php">Donor List</h3></li>
			   <li><h3><a href="stocke-list.php">Stock Blood</h3></li>
			</ul><br><br><br></br>
			<ul>
			   <li><h3><a href="Patient.php">Patient Registration</h3></li>
			   <li><h3><a href="patient_list.php">patient list</h3></li>
			   <li><h3><a href="requirement.php">Patient Requirement</h3></li>
			   
			   
			</ul>
			
		</div>
		
		<div>
		<div id="footer"><h2 align="center">Give Blood-Save Life</h2>
		<p align="center"><a href="logout.php"><font color="white">Logout</font></a></p>
		</div>
	</div>
  </div>
  
 </body>
</html>
