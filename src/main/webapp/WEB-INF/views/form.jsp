<%--suppress ALL --%>
<%--suppress ALL --%>
<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: Grand Circus Student
  Date: 8/11/2017
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>User Form</title>
    <script>
        function Validation()
        {

            var fname = document.forms["customerinfo"]
                ["firstname"].value;
            var lname = document.forms["customerinfo"]
                ["lastname"].value;
            var useremail = document.forms["customerinfo"]
                ["email"].value;
            var number = document.forms["customerinfo"]
                ["phonenumber"].value;
            var userpassword = document.forms["customerinfo"]
                ["password"].value;

            if(fname == "")
            {
                alert("You must enter your first name in order to register.");
                return false;
            }

            if(lname == "")
            {
                alert("You must enter your last name in order to register.");
                return false;
            }
            if(useremail == "")
            {
                alert("You need to enter an email in order to register.");
                return false;
            }
            if(!useremail.includes('@'))
            {
                alert("Sorry... you did not enter a valid email address.");
                return false;
            }

            if(fname.length <= 2 || lname.length <= 2 || useremail.length <= 2)
            {
                alert("Input must be longer than 2 characters")
                return false;
            }
        }


    </script>

</head>
<body>

${inst}

<form name = "customerinfo" action="formhandler" onsubmit = "return Validation()" method="post">

    <fieldset>
        <legend>Personal information:</legend>

        First Name:<br>
        <input type="text" name="firstname"><br>

        Last Name:<br>
        <input type="text" name="lastname"><br>

        Email:<br>
        <input type="text" name="email"><br>

        Phone Number:<br>
        <input type="text" name="phonenumber"><br>

        Password:<br>
        <input type="password" name="password"><br><br>

        <input type="radio" name="age" value="senior citizen"> Business Owner<br>
        (Bus. Owners purchasing over 10 units, receive a 20% discount)<br>
        (All units = 1lb)<br><br>

        <input type="submit" name="submit" value="Submit">

        <input type="reset">

    </fieldset>

</form>
</body>
</html>
