<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Ticket</title>
    <link href="style.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .office{
            height: 28%;
            width:96%;
            margin-left: 2%;
            margin-top: 2%;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
             <div class="col-md-12">
                <h2 style="margin-left: 20%;margin-top: 7%;">View Ticket</h2>

                <form action="#" method="post" style="border:2px solid #999797;width: 55%;height:55%;margin-left: 20%;">

                    <input class="office" type="text" name="tname" placeholder="Enter your ticket id"/>

                    
                    <button name="search" style="margin-left: 2%;margin-top: 4%;"type="button "class="btn btn-primary">Submit</button>
					<button style="margin-left: 2%;margin-top: 4%;"type="button "class="btn btn-primary"><a style="color:white;" href="index.php">Back</a></button>
               </form>
            </div>
        </div>
		<?php
		
		if(isset($_POST['search']))
		{
		$id = $_POST['tname'];
		$query = "SELECT * FROM generate_ticket WERE ID='$id'";
		$query_run = mysqli_query($connection,$query);
		
				
			
		
		?>
		 <center><h1 style="margin-top:100px;">Ticket Information</h1></center>
            <center><div id="form">
        <table border="1"cellspacing="0">
				<thead>
                <tr bgcolor="yellow">
                    <th> <center><b><font color="blue">Ticket ID</font></b></center></th>
                    <th> <center><b><font color="blue"> Product</font></b></center></th>
                    <th> <center><b><font color="blue">Name</font></b></center></th>
                    <th> <center><b><font color="blue">Mobile Number</font></b></center></th>
                    <th> <center><b><font color="blue">Detail</font></b></center></th>
                </tr>
				</thead>
				<?php
							if(mysqli_num_rows($query_run) > 0)
						{
								while($row = mysqli_fetch_array($query_run))
						{
				?>
                <tbody>
                    <tr bgcolor="pink">
                    <td> <center><?php echo $row['ID']; ?></center></td>
                    <td> <center><?php echo $row['product']; ?></center></td>
                    <td> <center><?php echo $row['name']; ?></center></td>
                    <td> <center><?php echo $row['mobile']; ?></center></td>
                    <td> <center><?php echo $row['detail']; ?></center></td>
                </tr>
				<?php
						  }
						}
						else 
						{
							?>
							<tr>
							<td colspan="6"> no record found</td>
							</tr>
							<?php
						}
				?>
               </tbody>

                
            </table>
           </div>
		   <?php
		       }
		   ?>
	    </center>
       </div>
</body>
</html>