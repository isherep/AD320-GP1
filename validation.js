window.onload = function(){

var submit = document.getElementById('submit');
    var weight  = document.getElementById('weight');
    var calIn   = document.getElementById('calIn');
    var calBurn = document.getElementById('calBurn'); 
    var type = document.getElementById('type');
    var time = document.getElementById('length');
    var sleep   = document.getElementById('sleep');

function dataCheck(){

    weight.addEventListener('change', function(){
        if(activityForm.activity_weight.value <50){
                   alert('Weight must be a number between 50 and 500');
            
        }
        return false;
    });

    calIn.addEventListener('change', function(){
        if(activityForm.calIn.value <50){
                   alert('Calories consumed values must be in 50 -  5000 range');
            return false;
        }
    });

    calBurn.addEventListener('change', function(){
        if(activityForm.calBurn.value <50){
                   alert('Calories burned values must be in 50-  2000 range');
         }
    });

    sleep.addEventListener('change', function(){
        if(activityForm.sleep.value >24 || activityForm.sleep.value <0){
                   alert('Daily sleep amount must in 0 - 24 hrs range');
            return false;
         }
    });   
     
    return false;     
} ;
//calling data validation on page
dataCheck();

function validate(){
    if(dataCheck() == false){
           alert("Please enter valid values");
    }
};

//function for node.js to pop up message to user about error
function alertError(){
    
    alert('Please go back and enter correct value');
}

