(function($) {
    $.fn.conversationalTime = function(numericTime) {

        var CUTOFF_MINUTES = 35 + 2;

        var unitsText = ["one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve"];
        var fivesText = ["","five past ","ten past ", "a quarter past ", "twenty past ", "twenty five past ", "half past ", "thirty five past ", "twenty to ", "a quarter to ", "ten to ", "five to ", ""]

        var numericTimeSplit = numericTime.split(":");

        var numericTimeHours = parseInt(numericTimeSplit[0],10);
        var numericTimeMinutes = parseInt(numericTimeSplit[1],10);

        var conversationalTimeHours;

        if ((numericTimeHours == 0 && numericTimeMinutes <= CUTOFF_MINUTES ) ||
            (numericTimeHours == 23 && numericTimeMinutes > CUTOFF_MINUTES )) {
            conversationalTimeHours = "midnight";
        }else if (numericTimeHours == 12 && numericTimeMinutes <= CUTOFF_MINUTES ){
             conversationalTimeHours = unitsText[numericTimeHours-1];
        } else if (numericTimeHours >= 0 && numericTimeMinutes <= CUTOFF_MINUTES) {
            conversationalTimeHours = unitsText[numericTimeHours % 12 - 1];
        } else if (numericTimeHours >= 0 && numericTimeMinutes > CUTOFF_MINUTES) {
            conversationalTimeHours = unitsText[numericTimeHours % 12];
        }

        var numericTimeFiveMinutes = Math.floor(numericTimeMinutes / 5);
        var conversationalTimeFiveMinutes = "";
        var conversationalTimeApproximation = "";

        if (numericTimeMinutes == 0) {
            conversationalTimeApproximation = "";
        } else if (numericTimeMinutes % 5 == 0) {
            conversationalTimeFiveMinutes = fivesText[numericTimeFiveMinutes];
        } else if (numericTimeMinutes % 5 == 1 || numericTimeMinutes % 5 == 2) {
            conversationalTimeApproximation = "just after ";
            conversationalTimeFiveMinutes = fivesText[numericTimeFiveMinutes];
        } else if (numericTimeMinutes % 5 == 3 || numericTimeMinutes % 5 == 4) {
            conversationalTimeApproximation = "just before ";
            conversationalTimeFiveMinutes = fivesText[numericTimeFiveMinutes + 1];
        }

        return(conversationalTimeApproximation + conversationalTimeFiveMinutes + conversationalTimeHours);

    };
})(jQuery);