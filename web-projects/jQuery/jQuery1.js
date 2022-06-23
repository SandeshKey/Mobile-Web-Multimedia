$(document).ready(function () {
    console.log($);
    console.log("We are using jQuery");

    $('p').click();     // this means : click on p

    $('p').click(function () {            // This means : do this when you click on p
        console.log("You just clicked on p tag");
        $('p').hide();
        console.log("..and now it is hidden");      // hide() is also a function of jQuery
    });

    /*
    $('h3').click(function () {
        $('h3').hide();             // Hides all h3 contents
    })
    */

    /* Above, when we used hide() function, it hides all the content of h3 tag. To hide only the selected content, we need to use this.hide() function*/

    $('h3').click(function () {
        $(this).hide();
        console.log("Clicked h3 tag is hidden");
    })
    /* Similar to the above code where we have used 'this' as a selector, we can also use '#id' as well as '.class' as a selector. i.e, $("#id").hide(); */

    // Three types of selectors
    // 1. Element selector  :    Example:
    //$('p').click();  // This is an example of element selector that selects on all 'p' elements

    // 2. ID Selector   :   Example:
    $('#id1').click(function () {
        console.log("You clicked in h4 tag with #id1 id");
        $('#id1').hide();
        console.log("H4 hidden");
    });
    // The above code is an example of ID selector in jQuery that hides h4 content with given id

    // 3. Class Selector    :   Example:
    $('.class1').click(function () {
        $('.class1').css("background-color", "hotpink", "color", "white");
        console.log("You clicked in the sentence and it changed its color");
    });
    // The code above is an example of class selector that uses CSS to change background color

    $('h3:first').click(function () {  
        console.log("You clicked on first h3 element");
        $('h3:first').css("color", "red");
    })
    // The 'h3:first' function will implement the effect on first element of h3
    // Comment the hide function above to make this one work. Or, it will hide first 

    $('.dclick').dblclick(function () {  
        console.log("You double clicked the sentence");
        $('.dclick').css("color", "red");
        console.log("Now, the color is changed to red after your double clicks");
    })

    $('.dclick').mouseenter(function () { 
        console.log("You entered mouse", this);
    });

    $('.hvr').hover(function () {
        console.log("You just hovered on me");
    })

    $('h2').on({
        click:function () {
        console.log("Thanks for clicking", this);
    },
    mouseleave:function () {
        console.log("The mouse just left the content");
    }
    })

    $('#lorem').hide(2000, function () {
        console.log("The content is hidden");
    });
    // The code above is to hide a content using jQuery. The function hide(2000) makes content disappear in 2000 milliseconds (i.e, 2s).

    $('#lorem').show(2000, function () {  
        console.log("The content is shown again");
    });
    // The code above is to display hidden content using jQuery. The function show(2000) makes content display in 2000 milliseconds (i.e, 2s).

    $('#butt').click(function () {
        $('#lorem').toggle(2000);
        console.log("The toggle function is used successfully");
    });
    //The toggle() function changes content from hidden to display and vice versa. Display vako lai hide garxa ani hide vako lai display gardinxa toggle function le

    $('#buttt').click(function () {
        $('#lorem').fadeOut(2000);
        console.log("The content is successfully faded");
    });
    //The function fadeOut() fades the content out of the screen in pleasing way

    $('#butttt').click(function () {
        $('#lorem').fadeIn(2000);
        console.log("The content is successfully faded");
    });
    //The function fadeIn() fades the content back into the screen in pleasing way

    $('#buttttt').click(function () {
        $('#lorem').fadeToggle(2000);
        console.log("The content is successfully toggled");
    });
    // The function fadeToggle() fades the content from display to hide and vice versa

    $('#butttttt').click(function () {
        $('#lorem').fadeTo('slow',0.1);
        console.log("The content is successfully faded to");
        $('#lorem').fadeTo('slow',1);
    })
    //The function fadeTo() supports two parameters ('slow' and 'fast') along with opacity value(between 0 and 1) to which the content is being faded to. For eg, if the parameters are : fadeTo('slow', 0.5), this means the content will slowly fade into 50% opacity.

    $('#sliderU').click(function () {  
        $('.slidering').slideUp(2000, function () {  
            console.log("Content slided up successfully")
        });
    });

    $('#sliderD').click(function () {  
        $('.slidering').slideDown(2000, function () {  
            console.log("Content slided down successfully");
        });
    });

    $('#sliderT').click(function () {  
        $('.slidering').slideToggle(5000);
    });

    $('#anime').click(function () {
        $('.slidering').animate({
            opacity:0.5,
            height:'350px',
            width:'500px'
        }, 5000);
    });

    $('#stopping').click(function () {
        $('.slidering').stop();
        console.log("The animation is stopped");
    });

    $('#tabut').click(function () {    //When button with #tabut id is clicked, alert will pop with value
        alert($('#ta').val());
    });

    $('#ta').val("Please write here.."); // Changed the text value from text area

    //$('#lorem').empty();    // This empties the content within that id
    //$('#lorem').text("Lorem text emptied and replaced with this dummy text"); // Adds text
    //$('#lorem').remove();   // This removes entire thing not just empty

});