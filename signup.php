<html>
<head>
	<link rel="stylesheet" href="main.css">
</head>
<body style="background-image:url(images/signup.jpg)">
<div class="header">
				<ul>
					<li style="float:left;border-right:none"><a href="cover.php" class="logo"><img src="images/cal.png" width="30px" height="30px"><strong> Skylabs </strong>Appointment Booking System</a></li>
					<li><a href="locateus.php">Locate Us</a></li>
					<li><a href="cover.php">Home</a></li>
				</ul>
</div>
<form action="signup.php" method="post">
	<div class="sucontainer">
		<label><b>Name:</b></label><br>
		<input type="text" placeholder="Enter Full Name" name="fname" required><br>
	
		<label><b>Date of Birth:</b></label><br>
		<input type="date" name="dob" required><br><br>
	
		<label><b>Gender</b></label><br>
		<input type="radio" name="gender" value="female">Female
		<input type="radio" name="gender" value="male">Male
		<input type="radio" name="gender" value="other">Other<br><br>
		
		<label><b>Contact No:</b></label><br>
		<input type="number" placeholder="Contact Number" name="contact" required><br>
		
		<label><b>Username:</b></label><br>
		<input type="text" placeholder="Create Username" name="username" required><br>
		
		<label><b>Email:</b></label><br>
		<input type="email" placeholder="Enter Email" name="email" required><br>

		<label><b>Password:</b></label><br>
		<input type="password" placeholder="Enter Password" name="pwd" id="p1" required><br>

		<label><b>Repeat Password:</b></label><br>
		<input type="password" placeholder="Repeat Password" name="pwdr" id="p2" required><br>
		<p style="color:white">By creating an account you agree to our <a href="#" style="color:blue">Terms & Conditions</a>.</p><br>

		<div class="container" style="background-color:grey">
			<button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
			<button type="submit" name="signup" style="float:right">Sign Up</button>
		</div>
  </div>
<?php

function newUser()
{
		include 'dbconfig.php';
		$name=$_POST['fname'];
		$gender=$_POST['gender'];
		$dob=$_POST['dob'];
		$contact=$_POST['contact'];
		$email=$_POST['email'];
		$username=$_POST['username'];
		$password=$_POST['pwd'];
		$prepeat=$_POST['pwdr'];
		$sql = "INSERT INTO Patient (Name, Gender, DOB,Contact,Email,Username,Password) VALUES ('$name','$gender','$dob','$contact','$email','$username','$password') ";

	if (mysqli_query($conn, $sql)) 
	{
		echo "<h2>Record created successfully!! Redirecting to login page....</h2>";
		header( "Refresh:3; url=cover.php");

	} 
	else
	{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
}
function checkusername()
{
	include 'dbconfig.php';
	$usn=$_POST['username'];
	$sql= "SELECT * FROM Patient WHERE Username = '$username'";

	$result=mysqli_query($conn,$sql);

		if(mysqli_num_rows($result)!=0)
		{
			echo"<b><br>Username already exists!!";
		}
		else if($_POST['pwd']!=$_POST['pwdr'])
		{
			echo"Passwords dont match";
		}
		else if(isset($_POST['signup']))
		{ 
			newUser();
		}

	
}
if(isset($_POST['signup']))
{
	if(!empty($_POST['username']) && !empty($_POST['pwd']) &&!empty($_POST['fname']) &&!empty($_POST['dob'])&& !empty($_POST['gender']) &&!empty($_POST['email']) && !empty($_POST['contact']))
			checkusername();
}
?>

</form>
</body>
</html>