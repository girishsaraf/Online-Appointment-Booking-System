<html>
<head>
	<link rel="stylesheet" href="main.css">
</head>
<body style="background-image:url(mgrchange.jpg)">
<div class="header">
				<ul>
					<li style="float:left;border-right:none"><strong><?php session_start(); echo $_SESSION['mgrname']; ?></strong></li>
					<li><a href="mgrmenu.php">Home</a></li>
				</ul>
</div>
<div class="container" style="width:100%;background-image:url(mgrchange.jpg)">
	<div class="container" style="background-color:white">
	<form method="post">
	  <button type="button" name="change" onclick="window.location.href='changebookingstatus.php'">Change/View Booking Status</button>
	  <button type="submit" name="logout" style="float:right">Log Out</button>
	</form>
    </div>
</div>
<?php
if(isset($_POST['check']))
{
		include 'dbconfig.php';
		$name=$_SESSION['user'];
		$sql = "Select * from book where name='$name'";
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) > 0) {
			while($rows = mysqli_fetch_assoc($result)) 
			{
				echo "Username:".$rows["username"]."Name:".$rows["name"]."Date of Visit:".$rows["dov"]."Town:".$rows["town"]."<br>";
			}
		} 
		else 
		{
			echo "0 results";
		}
}
if(isset($_POST['logout']))
{
	session_unset();
	session_destroy();
	header( "Refresh:1; url=../cover.php"); 
}
?>
</body>
</html>