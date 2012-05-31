$(document).ready(function() {


    var currentTime = new Date();
    var hours = (currentTime.getHours()) % 12;
    var minutes = currentTime.getMinutes();

    if (minutes < 10) {
        minutes = "0" + minutes;
    }

    var numericTime = hours + ":" + minutes;

    $("#conversationalTime").html($.fn.conversationalTime(numericTime));

    $('[name=timeForm]').submit(function() {
        numericTime = $('#numericTime').val();
        $("#conversationalTime").html($.fn.conversationalTime(numericTime));
    })


});

