

var time = new Date() .getHours();
var naam = prompt("Enter name");
if (time < 12)
document.write( '<header id="timing">' +"Good Morning" + " "+ naam + ", " + "Enjoy your day!" + '</header>');
else if (time < 17)
document.write( '<header id="timing">' +"Good Afternoon" + " "+ naam + ", " + "Enjoy your day!" + '</header>');
else  
document.write( '<header id="timing">' +"Good Evening" + " "+ naam + ", " + "Enjoy your day!" + '</header>');


const lang = navigator.language;
let date = new Date();

let dayNumber = date.getDate();
let month = date.getMonth();
let dayName = date.toLocaleDateString(lang,{weekday: 'long'})
let monthName = date.toLocaleString(lang,{month: 'long'})
let year = date.getFullYear()

document.getElementById('monthName').innerHTML = monthName;
document.getElementById('dayName').innerHTML = dayName;
document.getElementById('dayNumber').innerHTML = dayNumber;
document.getElementById('year').innerHTML = year;