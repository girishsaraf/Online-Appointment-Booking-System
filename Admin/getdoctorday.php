<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<script type="text/javascript">//alert("sdfsd");</script>
<body>
<?php
require_once("dbconfig.php");
	$query ="SELECT * FROM doctor_availability WHERE CID =".$_POST["cid"];
	$results = $conn->query($query);
?>
	<option value="">Select Day & Time</option>
<?php
	while($rs=$results->fetch_assoc()) {
		$query1="Select Name from doctor where DID=".$rs["did"];
		$result1=$conn->query($query1);
		while($rs1=$result1->fetch_assoc())
		{
?>
	<option value="<?php echo $rs["did"]." AND Day='".$rs["day"]."' AND Starttime='".$rs["starttime"]."'"; ?>"><?php echo "Dr. ".$rs1["Name"]."-".$rs["day"]."(".$rs["starttime"]." to ".$rs["endtime"].")"; ?></option>
<?php
		}
}
?>
</body>
</html>