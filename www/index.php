<!DOCTYPE html>
<html>
	<head>
		<title>IPPT Calculator</title>

		<link rel="stylesheet" type="text/css" href="ippt.css">

		<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="ippt.js"></script>
	</head>
	<body>
		<div class="form">
			<h2>IPPT Calculator</h2>
			<table border="0" cellspacing="0" cellpadding="0" id="tblAge">
				<tr>
					<td width="140">Select Your Age: </td>
					<td>
						<div class="select-style">
							<?php 
								create_dropdown();
							?>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><div id="lblAgeGrp"></div></td>
				</tr>
			</table>

			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th>Station</th>
					<th>Performance</td>
					<th>Points</th>
				</tr>
				<tr>
					<td>Sit-Ups</td>
					<td>
						<div class="select-style">
							<select id="ddRepSU"></select>
						</div>
					</td>
					<td align="center"><div id="lblptsSU"></div></td>
				</tr>
				<tr>
					<td>Push-Ups</td>
					<td>
						<div class="select-style">
							<select id="ddRepPU"></select>
						</div>
					</td>
					<td align="center"><div id="lblptsPU"></div></td>
				</tr>
				<tr>
					<td>2.4KM Run</td>
					<td>
						<div class="select-style mins">
							<select id="ddMins"></select>
						</div>
						<div class="select-style secs">
							<select id="ddSecs"></select>
						</div>
					</td>
					<td align="center"><div id="lblptsRun"></div></td>
				</tr>
				<tr>
					<td colspan="2">Total Point</td>
					<td align="center"><div id="lblptTtl"></div></td>
				</tr>
			</table>
		</div>
    	
	</body>
</html>

<?php 
	function create_dropdown () {
 
 		// create Connection
    	$conn = new mysqli("localhost", "root", "password1","ippt");

    	// Check connection
		if (mysqli_connect_errno()) {
  			echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}

		// retrive result
   		$result = mysqli_query($conn,"SELECT MIN(age_from), MAX(age_to) FROM tbl_agegroup;");

   		// check result
   		if (!$result) {
    		echo "Database Error: " . $conn->error;
   			exit();
		}
		$row = mysqli_fetch_assoc($result);

   		// get min and max age
   		$min = $row['MIN(age_from)'];
   		$max = $row['MAX(age_to)'];
   
   		// create age dropdown 
   		echo "<select id='ddAge'>";

 		for($x = $min; $x <= $max; $x++){
 			echo "<option value=" . $x . ">" . $x . " years old</option>";
 		}
 		echo "</select>";

    	// close Conntection
    	mysqli_close($conn);
    }
?>