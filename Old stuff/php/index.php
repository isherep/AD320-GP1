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
  echo "Connected successfully"."<br>"."<br>";
//testing if grapbing input correctly


//====================INDEX PAGE=======================

$workout_weight = $_POST['weight'];
$workout_calorieIn = $_POST['calIntake'];
$workout_calorieOut = $_POST['calBurned'];
$workout_workoutType = $_POST['workout_type'];
//$workout_activityLevel = $_POST['activity_level'];
$workout_lengthWorkout = $_POST['time'];
$workout_hoursSlept = $_POST['sleep'];

$sql = "
INSERT INTO CUSTOMER_METRICS (weight, calorie_intake, calories_burned, workout_type, length_workout, hours_slept)
  VALUES ('$workout_weight', '$workout_calorieIn', '$workout_calorieOut', '$workout_workoutType',
  '$workout_lengthWorkout', '$workout_hoursSlept')";

  if (mysqli_query($conn, $sql)) {
      echo " Thank you for entering your daily activity"."<br>"."<br>"."<h3>"."You monthly summary:"."</h3>";
  } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
//TYPE MY SQL QUERY
//$query  = "SELECT EVERAGES FROM WEIGHT";

$query = "SELECT 
        ROUND(AVG(weight), 0) AS average_weight,
		ROUND(AVG(calorie_intake), 0) AS average_cal_int,
        ROUND(AVG(calories_burned), 0) AS average_cal_burned,
		ROUND(AVG(length_workout), 0) AS average_length,
        ROUND(AVG(hours_slept), 0) AS average_sleep
  FROM CUSTOMER_METRICS";
    
$result = $conn->query($query);

while($row = $result->fetch_assoc()) {
    echo 
     "<br>"."<br>"."<br>"."Your average weight: " 
        .$row["average_weight"],
    "<br>"."Average calories consumed per day: " 
        .$row["average_cal_int"],
    "<br>"."Average calories burned per day: " 
        .$row["average_cal_burned"],
    "<br>"."Average workout length: " 
        .$row["average_length"],
    "<br>"."Average amount or sleep: " 
        .$row["average_sleep"],
    " hours";
            
}
    ?>


    
