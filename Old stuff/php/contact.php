<?php
  //require('credentials.php');
  // Create connection

  $servername = "localhost:3306";
  $username = "root";
  $password = "Barsik_71";
  $dbname = "fitness_tracker";

  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
//testing if connected to database
  echo "Connected successfully"."<br>"."<br>";
//testing if grapbing input correctly

//input variables
$cont_email = $_POST["email"];
$cont_message = $_POST["message"];
$cont_reason =  $_POST["reason"];

echo $cont_email;

//inserting in a contact_info table
$sql = "
INSERT INTO CONTACT_INFO (email, message, reason_contacting)
VALUES ('$cont_email', '$cont_message', '$cont_reason')";

//====================INDEX PAGE=======================

if (mysqli_query($conn, $sql)) {
    echo " Your request is being processed"."<br>"."<br>"."Thank you for contacting!"."<br>"."We will get in touch soon!";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


  ?>