<%--
  Created by IntelliJ IDEA.
  User: 顺其自然
  Date: 2021/3/17
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp"%>

<form method="post" action="register">
    Username:<input type="text" name="Username"><br/>
    Password:<input type="password" minlength="8" name="password"><br/>
    Email:<input type="email" name="Email"><br/>
   Gender: <input type="radio" name="Gender" value="Male">Male &nbsp;
    <input type="radio" name="Gender" value="Female">Female<br/>
    Date of Birth:<input type="datetime-local" name="birthdate"><br/>
    <input type="submit" value="Register"><br/>
</form>

<%@include file="footer.jsp"%>