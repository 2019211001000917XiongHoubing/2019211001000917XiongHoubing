<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<body>
<%@include file="header.jsp"%>
<h2>Welcome to My Home Page.</h2> <br>
<form action="search" method="post" >
    <input type="text" name="txt"/>
    <select name="search">
        <option value="baidu">Baidu</option>
        <option value="bing">Bing</option>
        <option value="google">Google</option>
    </select>
    <input type="submit" value="Search"/>
</form>
<%@include file="footer.jsp"%>
</body>
</html>