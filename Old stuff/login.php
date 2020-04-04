<?php
  //require('credentials.php');
  // Create connection

  $servername = "localhost:3306";
  $username = "root";
  $password = "Barsik_71";
  $dbname = "liteweight_fitness_tracker";

  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
//testing if connected to database
  echo "<br>";
//testing if grapbing input correctly


//====================INDEX PAGE=======================

$user_name = $_POST['name'];
$password = $_POST['password'];
$new_user_name = $_POST['name'];
$email = $_POST['workout_type'];
//$workout_activityLevel = $_POST['activity_level'];
$new_pass = $_POST['email'];

//(username,          password,   new_user_name,           email,  new_password)
$sql = "INSERT INTO LOGIN_INFO 
        
        VALUES    (default, '$user_name', '$password', '$new_user_name', '$email', '$new_pass')";

  if (mysqli_query($conn, $sql)) {
      echo "<h3>"."Thank you for logging in/creating account"."</h3>";
  } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }   
   
?>


    
