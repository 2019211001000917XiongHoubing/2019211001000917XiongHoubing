<%--
  Created by IntelliJ IDEA.
  User: 顺其自然
  Date: 2021/4/6
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
    if(request.getAttribute("message") != null) {
        out.print("<h3 style='color: red'>"+ request.getAttribute("message") +"</h3>");
    }
%>
<%
    Cookie[] allCookies = request.getCookies();
    String username = "", password="", rememberMeVal = "";
    if(allCookies != null) {
        for(Cookie c:allCookies) {
            if(c.getName().equals("cUsername")) {
                username = c.getValue();
            }
            if(c.getName().equals("cPassword")) {
                password = c.getValue();
            }
            if(c.getName().equals("cRememberMeVal")) {
                rememberMeVal = c.getValue();
            }
        }
    }
%>
<form action="login" method="post">
    <h1>Login</h1>
    username: <input type="text" name="username" value="<%=username%>"> <br/>
    password: <input type="password" name="password" value="<%=password%>"> <br/>
    <input type="checkbox" name="rememberMe" value="1" <%= rememberMeVal.equals("1") ? "checked" : ""%>>Remember Me<br/>
    <input type="submit" value="login">
</form>
<%@include file="footer.jsp"%>
</body>
</html>