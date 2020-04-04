//console.log('GW1');
const http = require('http');
const AWS = require("aws-sdk");
const AWSXRay = require('aws-xray-sdk-core')
//const queryString = require('query-string');
var querystring = require('querystring')
//const mysql = require('mysql');
//const uuid = require("uuid/v4");



const mysql = require('serverless-mysql')({
  config: {
    host     : process.env.databaseHost,
    port     : process.env.databasePort,
    database : process.env.databaseName,
    user     : process.env.databaseUserName,
    password : process.env.databasePassword
  }
});

console.log({
  host            : process.env.databaseHost,
  user            : process.env.databaseUserName,
  database        : process.env.databaseName
});

function sayThankYou() {
  console.log("Thank you!")
}



exports.handler = async (event, context, callback) => {


  mysql.config();
  // allows for using callbacks as fireqnish/error-handlers
  context.callbackWaitsForEmptyEventLoop = false;

  console.log("Event is ", event);


  const parseBody = querystring.parse(event.body)
  // ***************works**************** 
  console.log("parsed body", parseBody)
  console.log("Parsed body weight", parseBody.weight);

  // converting string data types of variables to the integer
  var weight = parseInt(parseBody.weight);
  var calorieIntake = parseInt(parseBody.calIntake);
  var caloriesBurned = parseInt(parseBody.calBurned);
  var workoutType = parseBody.workout_type;
  // var activityLevel = evnet.body.
  var workoutLength = parseInt(parseBody.time);
  var hoursSlept = parseInt(parseBody.sleep);

  console.log("Types of weight", typeof weight,"CalIntake", typeof calorieIntake, "Cal Burned", typeof caloriesBurned,"Type ", typeof workoutType, 
     "Length", typeof workoutLength, "Sleep", typeof hoursSlept);
 
  var queryParams = [
    weight,
    calorieIntake,
    caloriesBurned,
    workoutType,
    workoutLength,
    hoursSlept
  ]; 

  

  var error = new Error("wrong datatype inside json");

  console.log("Query param weight : ", queryParams[0])
  console.log("Query param calorieIntake: ", queryParams[1])
    
  //check if the right data type is provided

  if(typeof weight != "number" || 
     typeof calorieIntake != "number"   || 
     typeof caloriesBurned != "number"     ||
     typeof workoutType != 'string'     ||
     typeof workoutLength != "number" ||
     typeof hoursSlept != "number"){

     console.log("Types of ", typeof weight, typeof calorieIntake, typeof caloriesBurned, typeof workoutType, 
     typeof workoutLength, typeof hoursSlept);

    context.fail(error);

 // SQL query to insert into keyholder table
 // using the forign key key_holdertype_id from keyholdertype table
 
  }else{
     var query = "INSERT INTO CUSTOMER_METRICS(weight, calorie_intake, calories_burned, workout_type, length_workout, hours_slept) VALUES ( ?,?,?,?,?, ?);"  
    // "VALUES (@weight, calorieIntake, caloriesBurned, workoutType, workoutLength,  hoursSlept );"
    // var query = "INSERT INTO CUSTOMER_METRICS VALUES "
     mysql.query(query,queryParams, (err, res) => {
       if (err) {
         throw err
       }

    console.log("Responce is ", res); 

    const response = {
      "statusCode": 200,
       "headers": {
      "Access-Control-Allow-Origin": "*",
     },
     "body": "Thank you for entering daily data!"
  }

     //return resp;
      callback(null,response);
     //sayThankYou();
      
    })
 }
//end of sql qury

  await mysql.end();

  const resp = {
      "statusCode": 200,
       "headers": {
      "Access-Control-Allow-Origin": "*",
     },
     "body": "Thank you for entering daily data!"
  }

callback(null, resp);


 };
