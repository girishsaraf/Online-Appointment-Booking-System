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
	$query1 ="SELECT * FROM manager WHERE UPPER(region) like UPPER('%".$_POST["city"]."%')";
	$results1 = $conn->query($query1);
?>
	<option value="">Select Manager</option>
<?php
	while($rs1=$results1->fetch_assoc()) {
?>
	<option value="<?php echo $rs1["mid"]; ?>"><?php echo $rs1["name"]."-(Region: ".$rs1["region"].")"; ?></option>
<?php

}
?>
</body>
</html>