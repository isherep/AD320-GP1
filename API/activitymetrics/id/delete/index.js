//console.log('GW1');
const http = require('http');
const AWS = require("aws-sdk");
const AWSXRay = require('aws-xray-sdk-core')
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


//const S3 = new AWS.S3();

exports.handler = async (event, context, callback) => {
  console.trace("DELETE Delete metric by id  started --");

  mysql.config();

  context.callbackWaitsForEmptyEventLoop = false;

  console.trace("Event is : " , event);
  console.trace("Event querystring  params are ", event.queryStringParameters);
  var id = parseInt(event.queryStringParameters.id);
  console.log("QueryString parameters" , event.queryStringParameters.id);
  console.trace("Var id ", id);

  //var {id} = event.queryParameters

 if (isNumeric(id)) {
        // Set keyholder query for delete
        //var delete_metric = 'DELETE FROM CUSTOMER_METRICS WHERE entry = ?',  queryParams;
        console.debug("Executing SQL: " );
        //try {
            var delete_responce = await mysql.query('DELETE FROM CUSTOMER_METRICS WHERE entry = ?', id);
            console.debug("SQL_server returned " , delete_responce);
          
            if (delete_responce.affectedRows == 1){
                await mysql.end();

                const response =  { 
                  "statusCode": 200,
                  "headers": {
                     "Access-Control-Allow-Origin": "*",
                },
                "body": "You have removed one item!"
                };

                callback(null, response);

               } else if (results.affectedRows == 0) {
                  console.info("No row with that id found");
                  const response = {
                    "statusCode": 404,
                    "body": "You have removed one item!"
                  };

                  callback(null, response);
                }
              } 
              
              else {
                console.error("id is invalid");

                const response = {
                  "statusCode": 400,
                  "body": "You have removed one item!"
                };

                callback(null, response);

        }

        const resp = {
          "statusCode": 400,
           "headers": {
          "Access-Control-Allow-Origin": "*",
         },
         "body": "Thank you for entering daily data!"
      }
    
    callback(null, resp);

 }
  

   // await mysql.end();
//}
  

function isNumeric(value) {
        return /^\d+$/.test(value);
}



