<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>O+ Blood group</title>
	<?php include("admin_head.php");?>
    //<link rel="stylesheet" type="text/css" href="css/new.css">//
    <style type="text/css">
    td{
        width: 200px;
        height: 40px;
    }
    </style>
</head>
<body>
<?php include("admin_topnav.php"); ?>
  <div class="container"  style='margin-top:70px;'>
	<div class="row">
		<div class="col-sm-3">
			<?php include("admin_side_nav.php");?>
		</div>
		<div class="col-sm-9" >
			<h3 class="text-primary"><i class="fa fa-envelope"></i> Blood Stocke </h3><hr>
			
			<tr bgcolor="pink">
	    
                       <h1><td width="200px"height="50px"><b>Search Blood Group</b></td></h1>
	              <td width="200px"height="50px">
			 <select name="bgroup" onchange="location=this.value;">
			  <option value="Apos.php">A+</option>
			 <option value="Bpos.php">B+</option>
			  <option value="ABpos.php">AB+</option>
			 <option value="O1.php">O+</option>
			<option value="Ave.php">A-</option>
			  <option value="Bve.php">B-</option>
			 <option value="ABve.php">AB-</option>
			  <option value="Ove.php">O-</option>
			</select>
	    </td>
	 </tr>
    <div id="full">
       
        <div id="body">
            <br>
            <?php
            $un=$_SESSION['un'];
            if(!$un)
            {
                header("Location:index.php");
            }
            ?>

          <center><h1>B-ve Bgroup report</h1></center>
            <center><div id="form">
        <table border="1"cellspacing="0">
                <tr bgcolor="yellow">
                    <td> <center><b><font color="blue">First Name</font></b></center></td>
                    <td> <center><b><font color="blue">Last Name</font></b></center></td>
                    <td> <center><b><font color="blue">Address</font></b></center></td>
                    <td> <center><b><font color="blue">City</font></b></center></td>
                    <td> <center><b><font color="blue">Age</font></b></center></td>
                    <td> <center><b><font color="blue">Blood Grooup</font></b></center></td>
                    <td> <center><b><font color="blue">Mobile Number</font></b></center></td>
                    <td> <center><b><font color="blue"> E-mail</font></b></center></td>
                </tr>
                <?php
                $q=$db->query("SELECT * from donor where bgroup='B-'");
                while($r1=$q->fetch(PDO::FETCH_OBJ))
                {
                    ?>
                    <tr bgcolor="pink">
                    <td> <center><?=$r1->name;?></center></td>
                    <td> <center><?=$r1->fname;?></center></td>
                    <td> <center><?=$r1->address;?></center></td>
                    <td> <center><?=$r1->city;?></center></td>
                    <td> <center><?=$r1->age;?></center></td>
                    <td> <center><?=$r1->bgroup;?></center></td>
                    <td> <center><?=$r1->mon;?></center></td>
                    <td> <center><?=$r1->email;?></center></td>
                </tr>
                <?php
                }
                ?>

                
            </table>
            </div></center>
            </div>
           
            </div>
            </div>
			</div>
		</div>
			<?php include("footer.php"); ?>
			
		</div>
            </body>
            </html>















