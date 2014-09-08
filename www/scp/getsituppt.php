<?php
    if ($_GET['agegrp'] && $_GET['rep']):
         
    	$conn = new mysqli("localhost", "root", "password1","ippt");

    	if(!$conn){
    		echo "Database Error: " . $conn->error;
    	}
    
    	$result = mysqli_query($conn,"CALL SP_GetSitUpPoint(" . $_GET['agegrp'] . ", " . $_GET['rep'] .")");
		
		if (!$result) {
    		echo "Database Error: " . $conn->error;
   			exit();
		}

         while ($row = mysqli_fetch_assoc($result)) {
    		echo $row["band_" . $_GET['agegrp']];
		}

		mysqli_close($conn);
    
    endif;

?>