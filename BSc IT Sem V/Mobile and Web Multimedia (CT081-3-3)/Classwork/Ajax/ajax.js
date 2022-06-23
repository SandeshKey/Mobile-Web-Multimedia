console.log("Hello Sandesh! Keep Learning");

let fetchBtn = document.getElementById('fetchBtn');

fetchBtn.addEventListener('click', buttonClickHandler)

function buttonClickHandler() {  
    console.log("Hell");

    const xhr = new XMLHttpRequest();

    xhr.open('GET', 'https://jsonplaceholder.typicode.com/todos/1', true);

    xhr.onload = function () {  
        console.log(this.responseText);
    }

    xhr.send();

    console.log("Done");
}

console.log("Hello");