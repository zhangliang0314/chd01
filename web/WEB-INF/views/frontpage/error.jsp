<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/16
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%=request.getAttribute("msg")%>
    <a href="login.do">继续登录</a>
</body>
</html>
