<%--
  Created by IntelliJ IDEA.
  User: rjbarbour
  Date: 23/05/12
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Conversational Clock</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/ConversationalTime.js"></script>
    <style type="text/css">
        body{
            color: #04A;
            font-family: "Sero Pro", Helvetica, Arial, sans-serif
        }
    </style>
</head>
<body>

<h1>Conversational Clock</h1>

<form name="timeForm" action="#">
    <label for="numericTime">Numeric time:</label>
    <input id="numericTime" type="text" value="00:00"/>
    <input type="submit" id="submitForm">
</form>

<dl>
    <dt>The time is:</dt>
    <dd id="conversationalTime">Now</dd>
</dl>

</body>
</html>