<?php
    if ($_GET['age']):
         
        // create Connection
    	$conn = new mysqli("localhost", "root", "password1","ippt");

        // check connection
    	if(!$conn){
    		echo "Database Error: " . $conn->error;
            exit();
    	}
    
        // retrive result
    	$result = mysqli_query($conn,"CALL SP_GetAgeGroup(" . $_GET['age'] . ")");
		
        // check result
		if (!$result) {
    		echo "Database Error: " . $conn->error;
   			exit();
		}

         while ($row = mysqli_fetch_assoc($result)) {
    		echo $row["age_id"];
		}

        // close connection
		mysqli_close($conn);
    
    endif;

?>