/**
 * Created by Rolland Schnell on 10-Jul-16.
 */

$(document).ready(function() {

   $("#calculate").click(function() {

       var height = $("#height").val();
       var weight = $("#weight").val();
       var age = $("#age").val();
       var BMR = 0;
       var idealweight = 0;

       checkFields(height,weight,age);
       checkNumber(height,weight,age);

       var male = $("#checkMale").is(":checked");
       var female = $("#checkFemale").is(":checked");

       var BMI = weight / (height/100 * height/100);

       if(male) {

           BMR=66.47+ (13.75 * weight) + (5.0 * height) - (6.75 * age);
           idealweight = 50 + 2.3 * ((height - 152) / 2.5);

       } else if(female) {

           BMR=665.09 + (9.56 * weight) + (1.84 * height) - (4.67 * age);
           idealweight = 45.5 + 2.3 * ((height - 152) / 2.5);
       }

       document.getElementById("BMIresult").innerHTML = BMI.toFixed(2);
       document.getElementById("idealweightresult").innerHTML = idealweight.toFixed(0);
       document.getElementById("calorieresult").innerHTML = BMR.toFixed(0);

   });


    function checkNumber(height,weight,age) {

        if(isNaN(height) || isNaN(weight) || isNaN(age)) {

            alert("Please enter only numbers !");

        }
    }

    function checkFields(height,weight,age) {

        if(height == "" || weight == "" || age == "") {

            alert("Please complete all the fields !");

        }
    }
});