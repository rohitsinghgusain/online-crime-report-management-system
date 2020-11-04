<!DOCTYPE html>
<html lang="en">
<head>
	<title>MP</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<link rel="icon" type="image/png" href="page/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="page/css/util.css">
	<link rel="stylesheet" type="text/css" href="page/css/main.css">
<!--===============================================================================================-->
<!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="home/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="home/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="home/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="home///fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <link href="home///fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700" rel="stylesheet">
    <!-- //Fonts -->
</head>
<body>
<header class="header">
                <div class="container-fluid px-lg-5">
                    <!-- nav -->
                    <nav class="py-4">
                      <!--  <div class="logo-w3layouts" id="logo-w3layouts">
                            <a href="index.html"><span class="fa fa-magnet" aria-hidden="true"></span></a>

                        </div> -->

                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu mt-2">
                            <li class="mr-lg-4 mr-3"><a href="index.php">Home</a></li>
                            <li class="mr-lg-4 mr-3"><a href="admin/index.php" class="scroll">ADMIN LOGIN</a></li>
                            <li class="mr-lg-4 mr-3"><a href="users/index.php" class="scroll">USER LOGIN</a></li>
                            <li class="mr-lg-4 mr-3 "><a href="mwp.php" class="scroll">MOST WANTED PERSON</a></li>
							<li class="mr-lg-4 mr-3 active"><a href="ms.php" class="scroll">MISSING PERSON</a></li>
                            <li class="mr-lg-4 mr-3"><a href="gd.php" class="scroll">GENERAL DIARIES</a></li>
                            <li><a href="faq/index.php" class="scroll">CONTACT US</a></li>
                        </ul>
                    </nav>
                    <!-- //nav -->
                </div>
            </header>
            <!-- //header -->
	<div class="limiter">
		<div class="container-table100" style="background-image:url('page/images/a.jpg');background-size:cover;">
				<h1 class="h">MISSING PERSON</h1>
			<div class="wrap-table100">
				<div class="table100">
				<div class="table100">
				<?php
                include("admin/include/config.php");
                error_reporting(0);
                $query="SELECT complaintNumber,complaintDetails,complaintfile FROM tblcomplaints WHERE category='2'";
                $data=mysqli_query($con,$query);
                $total=mysqli_num_rows($data);
                if($total != 0)
                {
                    ?>
					<table>
					<thead>
							<tr class="table100-head">
								
                                <th class="">CASE NO</th>
								<th class="">IMAGE</th>
                                <th class="">DESCRIPTION</th>
                                <th class="">ACTION</th>
                            </tr>
                            </thead>
							<?php
                    while($result = mysqli_fetch_array($data))
                    {
                      ?>
                           <tr> 
                           
                        <th><?php echo $result[complaintNumber]; ?></th>
                        <th> <img src="users/complaintdocs/<?php echo $result[complaintfile]; ?>" height="100px" width="100px"></th>
                        <th><?php echo $result[complaintDetails]; ?></th>
                        <th><a href="mwform/mpform.php?uid=<?php echo htmlentities( $result[id]); ?>">Report</th>
                            </tr>
                          <?php 
                    }
                }
                else
                {
                    echo "no record found";
                }
                ?>
						
								
								
						
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>