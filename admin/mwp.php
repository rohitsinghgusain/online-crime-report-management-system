
<?php
session_start();
error_reporting(0);
include('include/config.php');

if(isset($_POST['submit']))
{
$id=$_SESSION['id'];
$name=$_POST['name'];
$address=$_POST['address'];
$crime=$_POST['crime'];
$cdetails=$_POST['cdetails'];
$image=$_FILES["image"]["name"];



move_uploaded_file($_FILES["image"]["tmp_name"],"image/".$_FILES["image"]["name"]);
$query=mysqli_query($con,"insert into mwp(name,address,crime,cdetails,image) values('$name','$address','$crime','$cdetails','$image')");
// code for show complaint number

echo '<script> alert("Successfully Added")</script>';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register MWP</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Add Most Wanted Person</h3>
							</div>
							<div class="module-body">


									<br />

			<form class="form-horizontal row-fluid" name="Category" method="post" enctype="multipart/form-data" >
									
<div class="control-group">
<label class="control-label" for="basicinput">Name</label>
<div class="controls">
<input type="text" placeholder=""  name="name" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Crime</label>
<div class="controls">
<input type="text" placeholder=""  name="crime" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Address</label>
<div class="controls">
<input type="text" placeholder=""  name="address" class="span8 tip" required>
</div>
</div>






<div class="control-group">
											<label class="control-label" for="basicinput">Description(Max 2000 Words)</label>
											<div class="controls">
												<textarea class="span8" name="cdetails" cols="10" rows="10" maxlength="2000"></textarea>
											</div>
                                            
										</div>
                                        <div class="control-group">
<label class="control-label" for="basicinput">Image</label>
<div class="controls">
<input type="file" placeholder=""  name="image" class="span8 tip" required>
</div>
</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Submit</button>
											</div>
										</div>
									</form>
							</div>
						</div>


	

							</div>
						</div>						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
