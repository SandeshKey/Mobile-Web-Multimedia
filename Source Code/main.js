$(document).ready(function () {

    //displaying login form while clicking login button
    $("button.login-btn").click(function () {
        $(".backdrop-login").show(400);
        // $("form.login-form").show(400);
    })

    //displaying signup form while clicking login button
    $("button.signup-btn").click(function () {
        $(".backdrop-signup").show(400);
    })

    //closing signup form while clicking close button
    $(document).on('click', '.fa-xmark', function (e) {
        $(".backdrop-login").hide(400);
    });

        //closing login form while clicking close button

    $(document).on('click', '.fa-xmark', function (e) {
        $(".backdrop-signup").hide(400);
    });
});