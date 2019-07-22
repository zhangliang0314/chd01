<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/22
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新增收货地址</title>
    <meta charset="UTF-8"/>
    <!--
        http://127.0.0.1:8020/HTML%E5%AD%A6%E4%B9%A0/15-HTML-%E6%B3%A8%E5%86%8C%E9%A1%B5%E9%9D%A2.html?
        uname=zhangsan&pwd=123&mail=123123&phone=123123123&sex=1
        &fav=1&fav=2&address=1&intro=123123123&agree=1#
    -->
</head>
<body>
<h3>新增收货地址</h3>
<hr />
<form action="insadressSure.do?" method="get">
    <table border="1px" cellspacing="0" cellpadding="5px">
        <input type="hidden" value="${uid}">
        <tr height="35px">
            <td width="70px">姓名:</td>
            <td width="200px">
                <input type="text" name="receiver" id="receiver" placeholder="请输入收货人姓名" />
            </td>
        </tr>
        <tr height="35px">
            <td>电话:</td>
            <td>
                <input type="text" name="receiverphone" id="receiverphone" placeholder="请输入收货人电话" />
            </td>
        </tr>
        <tr height="35px">
            <td>收货地址:</td>
            <td>
                <input type="text" name="address" id="adderss" placeholder="请输入收货地址" />
            </td>
        </tr>
        <tr height="35px">
            <td colspan="2" align="center">
                <input type="submit" value="确认增加" />
            </td>
        </tr>
    </table>
</form>

</body>
</html>
