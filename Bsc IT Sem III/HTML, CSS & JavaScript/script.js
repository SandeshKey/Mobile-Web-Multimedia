window.alert("Welcome to JavaScript Window ");                        // window.alert - Alerts window with that message

function MeroFunction() {
    document.getElementById("try").innerHTML = "New line, Yay !";    // displaying output by calling function and ID from HTML 
}
document.getElementById("numeric").innerHTML = 100*3;                // displaying output by calling ID from HTML 
document.getElementById("uke").innerHTML = "Ukulele 123";            // displaying output by calling ID from HTML 


document.write("Another Way of Displaying Output in JavaScript");    // document.write is another way of displaying output


var myAge = 3000;
document.getElementById("age").innerHTML = myAge;

document.getElementById("typ").innerHTML =                             // Findiing type of operator
typeof 314 + "<br>" + 
typeof "Sandesh";

var a = 20;
var b = 10;
var c;
c= a*b;
document.getElementById("mul").innerHTML = c;                          //simple numeric problem

var num1 = 9;
var num2;
num1++;
num2= num1;
document.getElementById("incre").innerHTML = num2;                    //Increment operator

var n1 = 20;
var n2 = 3;
var n3;
n3 = n1 ** n2;
document.getElementById("exp").innerHTML=n3;                            //Exponentiation

function another(a1, b1){
    document.getElementById("ano").innerHTML = a1+ b1;
}
another(2, 17);

var mon = 100;                                                         //Indian to Nepalese currency conversion using JS function
function iCurrency (money){
    return money*1.6;
}
document.getElementById("ic").innerHTML = ("The Indian to Nepalese conversion of "+ mon+ " will be " + iCurrency(mon));

var club = {                                                           // Creating Object
    fName : "FC" ,
    lName :"Nepal",
    estd : "1919"
};
document.getElementById("obj").innerHTML = club.fName + club.lName + " is good";

var person = {                                                          //Object Method using Function and 'this' keyword
    fName:"Sandesh",
    lName: "Subedi",
    Age:"20",

    fullName: function(){
        return this.fName + this.lName;
    }
};
document.getElementById("exp").innerHTML = person.fullName();