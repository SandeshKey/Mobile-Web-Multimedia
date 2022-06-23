$(document).ready(function () {  

    $('div').click(function () {  
        $(':input').removeAttr('placeholder');
    });

    $('#list_value').change(function () {  
        var input = $(this).val();
        $('ul').append('<li>' + input + '<i class="fa-solid fa-badge-check"></i>' + '<i class="fa-solid fa-circle-minus"></i>' + '</li>');
        $(this).val('');
    });

    $()
})