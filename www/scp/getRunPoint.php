<?php
    if ($_GET['agegrp'] && $_GET['timing']):
         
        // Create Connection
    	$conn = new mysqli("localhost", "root", "password1","ippt");

        // check connection
    	if(!$conn){
            echo "Database Error: " . $conn->error;
            exit();
    	}
        
        // retrive result
    	$result = mysqli_query($conn,"CALL SP_GetKmRunPoint(" . $_GET['agegrp'] . ", " . $_GET['timing'] .")");
		
        // check result
		if (!$result) {
    		echo "Database Error: " . $conn->error;
   			exit();
		}

         while ($row = mysqli_fetch_assoc($result)) {
    		echo $row["band_" . $_GET['agegrp']];
		}

        // close connection
		mysqli_close($conn);
    
    endif;

?>