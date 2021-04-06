<%--
  Created by IntelliJ IDEA.
  User: 顺其自然
  Date: 2021/3/16
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="header.jsp"%>
    This is my JSP page.<br>
    <a href="index.jsp">Back to index</a>

<a href="http://www.ecjtu.jx.cn/">go to ecjtu</a><br/>
<form method="post">
    Name :<input type="text" name="Name"><br/>
    ID :<input type="text" name="ID"><br/>
    <input type="submit" value="send date to server"/>
</form>

<%@include file="footer.jsp"%>