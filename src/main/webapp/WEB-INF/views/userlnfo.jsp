<%--
  Created by IntelliJ IDEA.
  User: 顺其自然
  Date: 2021/4/13
  Time: 16:31
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
    User USER = (User) session.getAttribute("user");
%>
<table border="1">
    <tr><td>Username:</td><td><%=USER.getUsername()%></td></tr>
    <tr><td>Password:</td><td><%=USER.getPassword()%></td></tr>
    <tr><td>Email:</td><td><%=USER.getEmail()%></td></tr>
    <tr><td>Gender:</td><td><%=USER.getGender()%></td></tr>
    <tr><td>Birthdate:</td><td><%=USER.getBirthdate()%></td></tr>
</table>
<a href="updateUser">Update</a>
<%@include file="footer.jsp"%>
</body>
</html>
