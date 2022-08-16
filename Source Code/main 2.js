$(document).ready(function () {

    //displaying login form while clicking login button
    $("button.login-btn").click(function () {
        $(".form-background").show(400);
        $("form.login-form").show(400);
    })

    //displaying signup form while clicking login button
    $("button.signup-btn").click(function () {
        $("form.signup-form").show(400);
    })

    //closing signup form while clicking close button
    $(document).on('click', '.fa-xmark', function (e) {
        $("form.signup-form").hide(400);
    });

        //closing login form while clicking close button

    $(document).on('click', '.fa-xmark', function (e) {
        $("form.login-form").hide(400);
    });
});