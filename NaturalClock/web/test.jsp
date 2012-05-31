<%--
  Created by IntelliJ IDEA.
  User: rjbarbour
  Date: 23/05/12
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>ConversationalTime Tests</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/qunit/qunit-git.js"></script>
<script type="text/javascript" src="js/ConversationalTime.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="http://code.jquery.com/qunit/qunit-git.css"/>

<script type="text/javascript">

//////////////////////////////////////////////////////////
module("Minutes near midnight");
//////////////////////////////////////////////////////////

test("Midnight", function() {
    var conversationalTimeExpected = "midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});


test("Just after midnight", function() {
    var conversationalTimeExpected = "just after midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:01");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just after midnight", function() {
    var conversationalTimeExpected = "just after midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:02");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before five past midnight", function() {
    var conversationalTimeExpected = "just before five past midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:03");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before five past midnight", function() {
    var conversationalTimeExpected = "just before five past midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:04");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Five past midnight", function() {
    var conversationalTimeExpected = "five past midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:05");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});


test("A quarter to midnight", function() {
    var conversationalTimeExpected = "a quarter to midnight";
    var conversationalTimeActual = $.fn.conversationalTime("23:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

//////////////////////////////////////////////////////////
module("Hours");
//////////////////////////////////////////////////////////

test("One o'clock", function() {
    var conversationalTimeExpected = "one";
    var conversationalTimeActual = $.fn.conversationalTime("01:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Two o'clock", function() {
    var conversationalTimeExpected = "two";
    var conversationalTimeActual = $.fn.conversationalTime("02:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Three o'clock", function() {
    var conversationalTimeExpected = "three";
    var conversationalTimeActual = $.fn.conversationalTime("03:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Eight o'clock", function() {
    var conversationalTimeExpected = "eight";
    var conversationalTimeActual = $.fn.conversationalTime("08:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Nine o'clock", function() {
    var conversationalTimeExpected = "nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Ten o'clock", function() {
    var conversationalTimeExpected = "ten";
    var conversationalTimeActual = $.fn.conversationalTime("10:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Eleven o'clock", function() {
    var conversationalTimeExpected = "eleven";
    var conversationalTimeActual = $.fn.conversationalTime("11:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Twelve o'clock", function() {
    var conversationalTimeExpected = "twelve";
    var conversationalTimeActual = $.fn.conversationalTime("12:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("One o'clock PM", function() {
    var conversationalTimeExpected = "one";
    var conversationalTimeActual = $.fn.conversationalTime("13:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Two o'clock PM", function() {
    var conversationalTimeExpected = "two";
    var conversationalTimeActual = $.fn.conversationalTime("14:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Ten o'clock PM", function() {
    var conversationalTimeExpected = "ten";
    var conversationalTimeActual = $.fn.conversationalTime("22:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Eleven o'clock PM", function() {
    var conversationalTimeExpected = "eleven";
    var conversationalTimeActual = $.fn.conversationalTime("23:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

//////////////////////////////////////////////////////////
module("Quarter to Hours");
//////////////////////////////////////////////////////////

test("Quarter to One", function() {
    var conversationalTimeExpected = "a quarter to one";
    var conversationalTimeActual = $.fn.conversationalTime("00:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Two", function() {
    var conversationalTimeExpected = "a quarter to two";
    var conversationalTimeActual = $.fn.conversationalTime("01:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Three", function() {
    var conversationalTimeExpected = "a quarter to three";
    var conversationalTimeActual = $.fn.conversationalTime("02:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Eleven", function() {
    var conversationalTimeExpected = "a quarter to eleven";
    var conversationalTimeActual = $.fn.conversationalTime("10:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Twelve", function() {
    var conversationalTimeExpected = "a quarter to twelve";
    var conversationalTimeActual = $.fn.conversationalTime("11:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to One PM", function() {
    var conversationalTimeExpected = "a quarter to one";
    var conversationalTimeActual = $.fn.conversationalTime("12:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Two PM", function() {
    var conversationalTimeExpected = "a quarter to two";
    var conversationalTimeActual = $.fn.conversationalTime("13:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Five PM", function() {
    var conversationalTimeExpected = "a quarter to five";
    var conversationalTimeActual = $.fn.conversationalTime("16:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Eleven", function() {
    var conversationalTimeExpected = "a quarter to eleven";
    var conversationalTimeActual = $.fn.conversationalTime("22:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter to Midnight", function() {
    var conversationalTimeExpected = "a quarter to midnight";
    var conversationalTimeActual = $.fn.conversationalTime("23:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

//////////////////////////////////////////////////////////
module("Thirty five past Hours");
//////////////////////////////////////////////////////////

test("Thirty five past Midnight", function() {
    var conversationalTimeExpected = "thirty five past midnight";
    var conversationalTimeActual = $.fn.conversationalTime("00:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past One", function() {
    var conversationalTimeExpected = "thirty five past one";
    var conversationalTimeActual = $.fn.conversationalTime("01:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Two", function() {
    var conversationalTimeExpected = "thirty five past two";
    var conversationalTimeActual = $.fn.conversationalTime("02:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Three", function() {
    var conversationalTimeExpected = "thirty five past ten";
    var conversationalTimeActual = $.fn.conversationalTime("10:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Eleven", function() {
    var conversationalTimeExpected = "thirty five past eleven";
    var conversationalTimeActual = $.fn.conversationalTime("11:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Twelve", function() {
    var conversationalTimeExpected = "thirty five past twelve";
    var conversationalTimeActual = $.fn.conversationalTime("12:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past One PM", function() {
    var conversationalTimeExpected = "thirty five past one";
    var conversationalTimeActual = $.fn.conversationalTime("13:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Four PM", function() {
    var conversationalTimeExpected = "thirty five past four";
    var conversationalTimeActual = $.fn.conversationalTime("16:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Ten", function() {
    var conversationalTimeExpected = "thirty five past ten";
    var conversationalTimeActual = $.fn.conversationalTime("22:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past Eleven", function() {
    var conversationalTimeExpected = "thirty five past eleven";
    var conversationalTimeActual = $.fn.conversationalTime("23:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});


//////////////////////////////////////////////////////////
module("Minutes past Nine / to Ten");
//////////////////////////////////////////////////////////

test("Nine o'clock", function() {
    var conversationalTimeExpected = "nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:00");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just after nine", function() {
    var conversationalTimeExpected = "just after nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:01");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before five past nine", function() {
    var conversationalTimeExpected = "just before five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:04");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Five past nine", function() {
    var conversationalTimeExpected = "five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:05");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just after five past nine", function() {
    var conversationalTimeExpected = "just after five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:07");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Ten past nine", function() {
    var conversationalTimeExpected = "ten past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:10");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Quarter past nine", function() {
    var conversationalTimeExpected = "a quarter past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:15");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Twenty past nine", function() {
    var conversationalTimeExpected = "twenty past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:20");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Twenty five past nine", function() {
    var conversationalTimeExpected = "twenty five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:25");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Half past nine", function() {
    var conversationalTimeExpected = "half past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:30");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before thirty five past nine", function() {
    var conversationalTimeExpected = "just before thirty five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:34");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Thirty five past nine", function() {
    var conversationalTimeExpected = "thirty five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:35");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just after thirty five past nine", function() {
    var conversationalTimeExpected = "just after thirty five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:36");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just after thirty five past nine", function() {
    var conversationalTimeExpected = "just after thirty five past nine";
    var conversationalTimeActual = $.fn.conversationalTime("09:37");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before twenty to ten", function() {
    var conversationalTimeExpected = "just before twenty to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:38");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before twenty to ten", function() {
    var conversationalTimeExpected = "just before twenty to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:39");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Twenty to ten", function() {
    var conversationalTimeExpected = "twenty to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:40");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});


test("Quarter to ten", function() {
    var conversationalTimeExpected = "a quarter to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:45");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Ten to ten", function() {
    var conversationalTimeExpected = "ten to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:50");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Five to ten", function() {
    var conversationalTimeExpected = "five to ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:55");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});

test("Just before ten", function() {
    var conversationalTimeExpected = "just before ten";
    var conversationalTimeActual = $.fn.conversationalTime("09:58");
    equal(conversationalTimeActual, conversationalTimeExpected, "We expect value to be " + conversationalTimeExpected);
});


</script>

</head>
<body>

<h1 id="qunit-header">QUnit example</h1>

<h2 id="qunit-banner"></h2>

<div id="qunit-testrunner-toolbar"></div>
<h2 id="qunit-userAgent"></h2>
<ol id="qunit-tests"></ol>
<div id="qunit-fixture">test markup, will be hidden</div>

</body>
</html>