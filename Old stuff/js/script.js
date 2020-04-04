//window.onload=function(){
var weight = document.getElementById('exampleWeightInput');
var cal_intake = document.getElementById('CalInput');
var cal_use = document.getElementById('calUse');
var workout_type = document.getElementById('workoutInput');
var activity_level = document.getElementById('activity_options');
var activity_level_val = activity_level[0].value;
var time = document.getElementById('timeInput');
var sleep = document.getElementById('sleepInput');
    
var outputField = document.getElementById('output');
    
//adding event listener to each field

 var inputArray = [weight, cal_intake, cal_use, workout_type, time, sleep]; 

inputArray.forEach(function(element){
    element.addEventListener('change', function(){
        
        outputField.style= "background: #0033CC; margin: 0, auto; padding: 10px; font-weight: 700; color: white; border : 1px solid white; border-radius: 4px;"
        console.log(element.value);
        
        switch(element){
                
            case weight : 
                //display(weight);
                outputField.innerHTML ="Today you weight: " + weight.value + " lbs";
                break;
                
            case cal_intake:
                //display(weight);
                outputField.innerHTML ="Today you weight: " + weight.value + "<br>Calories you consumed: " + cal_intake.value; 
                //display(cal_intake);
                break;
                
                case cal_use:
                //display(cal_use);
                outputField.innerHTML ="Today you weight: " + weight.value + "<br>Calories you consumed: " + cal_intake.value + "<br> Calories you used: " + cal_use.value; 
                break;
                
                case workout_type:
                //display(workout_type);
                outputField.innerHTML = "Today you weight: " + weight.value + " lbs"+ "<br>Calories you consumed: " + cal_intake.value+ "<br> Calories you used: " + cal_use.value + "<br>Workout : " + workout_type.value; 
                break;
                
                case time:
                //display(time);
                outputField.innerHTML = "Today you weight: " + weight.value + " lbs"+ "<br>Calories you consumed: " + cal_intake.value+ "<br> Calories you used: " + cal_use.value + "<br>Workout : " + workout_type.value + "<br>Active time "+ time.value; 
                break;
                
            case sleep:
                //display(sleep);
                outputField.innerHTML = "Today you weight: " + weight.value + " lbs"+ "<br>Calories you consumed: " + cal_intake.value+ "<br> Calories you used: " + cal_use.value + "<br>Workout : " + workout_type.value + "<br>Active time "+ time.value + "<br>You slept " + sleep.value + " hours";
        }
        
        function display(element){
            outputField.innerHTML = element.value;
            
        }
       
    });
})
    

function displayInputs(element){
    //testing event listener
    console.log(weight);
    /*
    outputField.innerHTML = "Today you weight: " + element.value + " lbs"+ "<br>Calories you consumed: " + element.value+ "<br> Calories you used: " + element.value + "<br>Workout : " + element.value + "<br>Active time "+ element.value + "<br>You slept " + element.value + " hours";*/
}

//};