<%--
  Created by IntelliJ IDEA.
  User: 顺其自然
  Date: 2021/3/17
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%@include file="header.jsp"%>
<form method="post" action="register">
    <div>
        <div>
            <h3>New User Registration</h3>
        </div>
    </div>
    <div>
        <label for="name" >Username:</label>
        <div >
            <input type="text" name="username"  id="name" placeholder="username">
        </div>
    </div>
    <div >
        <label for="password" >Password:</label>
        <div class="col-sm-2">
            <input type="password" name="password"  id="password" placeholder="password">
        </div>
    </div>
    <div >
        <label for="email" >Email:</label>
        <div class="col-sm-2">
            <input type="email" name="email"  id="email" placeholder="email">
        </div>
    </div>
    <div >
        <label >Gender:</label>
        <div >
            <label for="male" >
                <input type="radio" id="male" name="sex" value="male" checked="checked">Male
            </label>
            <label for="female" >
                <input type="radio" id="female" name="sex" value="female">Female
            </label>
        </div>
    </div>
    <div >
        <label >Date:</label>
        <div class="col-sm-2">
            <input type="date" name="birthDate"  id="date">
        </div>
    </div>
    <div >
        <div >
            <button type="submit"  id="submit">Submit</button>
        </div>
    </div>
    <div >
        <div  id="emailError" style="display: none">
            <div  role="alert">
                <span >Error:</span>
                Enter a valid email address
            </div>
        </div>
    </div>
    <div >
        <div id="nameError" style="display: none">
            <div  role="alert">
                <span >Error:</span>
                Enter a valid username
            </div>
        </div>
    </div>
    <div >
        <div  id="dateError" style="display: none">
            <div  role="alert">
                <span >Error:</span>
                Enter a valid date
            </div>
        </div>
    </div>
    <div>
        <div  id="pwdError" style="display: none">
            <div  role="alert">
                <span >Error:</span>
                Enter a valid password
            </div>
        </div>
    </div>
    <div >
        <div  id="charError" style="display: none">
            <div role="alert">
                <span >Error:</span>
                your length must be at least 8 characters
            </div>
        </div>
    </div>
    </div>
</form>
<%--<iframe id="iframe" name="iframe" style="display:none;"></iframe>--%>

<script ></script>
<script>
    $(function () {
        $('#name').blur(function () {
            if ($('#name').val() === ''){
                $('#nameError').css("display","block");
            } else {
                $('#nameError').css("display","none");
            };
        });
        $('#password').blur(function () {
            if ($('#password').val() === ''){
                $('#pwdError').css("display","block");
            } else if($('#password').val().length < 8) {
                $('#charError').css("display","block");
                $('#pwdError').css("display","none");
            } else {
                $('#charError').css("display","none");
            };
        });
        $('#email').blur(function () {
            if ($('#email').val() === '' ){
                $('#emailError').css("display","block");
            } else {
                $('#emailError').css("display","none");
            };
        });
        $('#date').blur(function () {
            if ($('#date').val() === ''){
                $('#dateError').css("display","block");
            } else {
                $('#dateError').css("display","none");
            };
        })
    })
</script>
<%@include file="footer.jsp"%>
</body>
</html>