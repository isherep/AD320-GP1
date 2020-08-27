//console.log('GW1');
const http = require('http');
const AWS = require("aws-sdk");

const mysql = require('serverless-mysql')({
  config: {
    host: process.env.databaseHost,
    port: process.env.databasePort,
    database: process.env.databaseName,
    user: process.env.databaseUserName,
    password: process.env.databasePassword
  }
});


exports.handler = async (event, context, callback) => {

  console.trace(" Update metric by id  started --");

  mysql.config();

  context.callbackWaitsForEmptyEventLoop = false;

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
  var workoutLength = parseInt(parseBody.time);
  var hoursSlept = parseInt(parseBody.sleep);

  console.log("Types of weight", typeof weight, "CalIntake", typeof calorieIntake, "Cal Burned", typeof caloriesBurned, "Type ", typeof workoutType,
    "Length", typeof workoutLength, "Sleep", typeof hoursSlept);

  var queryParams = [
    weight,
    calorieIntake,
    caloriesBurned,
    workoutType,
    workoutLength,
    hoursSlept
  ];



  console.trace("Event is : ", event);
  console.trace("Event querystring  params are ", event.queryStringParameters);
  console.debug("Event body is ", event.body);

  var id = parseInt(event.queryStringParameters.id);

  console.log("QueryString parameters", event.queryStringParameters.id);
  console.trace("Var id ", id);

  //var {id} = event.queryParameters

  if (isNumeric(id)) {
    // Set keyholder query for delete
    //var delete_metric = 'DELETE FROM CUSTOMER_METRICS WHERE entry = ?',  queryParams;
    console.debug("Value is numeric, executing SQL: ");
    //try {
    var update_responce = await mysql.query("UPDATE CUSTOMER_METRICS SET weight =?, calorie_intake=?, calories_burned=?, workout_type=?, activity_level=?, length_workout=?, hours_slept=?	 FROM CUSTOMER_METRICS WHERE entry = ?",
      queryParams[weight],
      queryParams[calorieIntake],
      queryParams[caloriesBurned],
      queryParams[workoutType],
      queryParams[workoutLength],
      queryParams[hoursSlept]
    );
    console.debug("SQL_server returned ", update_responce);

    if (update_responce.affectedRows == 1) {
      await mysql.end();

      const response = {
        "statusCode": 200,
        "headers": {
          "Access-Control-Allow-Origin": "*",
        },
        "body": "One item has been updated!"
      };

      callback(null, response);

    } else if (results.affectedRows == 0) {
      console.info("No row with that id found");
      const response = {
        "statusCode": 404,
        "body": "Item with this id not found!"
      };

      callback(null, response);
    }
  }

  else {
    console.error("id is invalid");

    const response = {
      "statusCode": 400,
      "body": "Invalid id, must be a number!"
    };

    callback(null, response);

  }

  const resp = {
    "statusCode": 400,
    "headers": {
      "Access-Control-Allow-Origin": "*",
    },
    "body": "You have updated a metric!"
  }

  callback(null, resp);

}


function isNumeric(value) {
  return /^\d+$/.test(value);
}



