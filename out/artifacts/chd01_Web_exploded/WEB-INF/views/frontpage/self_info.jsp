<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/17
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米商城-个人中心</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="https://www.miui.com">MIUI</a></li>
                <li>|</li>
                <li><a href="https://qiye.mi.com">企业团购</a></li>
                <li>|</li>
                <li><a href="https://www.mi.com/aptitude/list">协议规则</a></li>
                <li>|</li>
                <li><a href="https://iot.mi.com/index.html">IoT</a></li>
                <li>|</li>
                <li><a href="https://i.mi.com/">云服务</a></li>
                <li>|</li>
                <li><a href="https://jr.mi.com?from=micom">金融</a></li>
                <li>|</li>
                <li><a href="https://www.mi.com/aptitude/list/?id=41">资质证照</a></li>
                <li>|</li>
                <li><a href="https://xiaoai.mi.com/">小爱开放平台</a></li>
                <li>|</li>
                <li><a href="https://youpin.mi.com">有品</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="./dingdanzhongxin.html">我的订单</a></div>
            <div class="fr">
                <ul>
                    <li>${user.username}您好！</li>
                    <li>|</li>
                    <li><a href="logout.do">退出登录</a></li>
                    <li>|</li>
                    <li><a href="selInfo.do?id=${user.id}">个人中心</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->
<!-- start banner_x -->
<div class="banner_x center">
    <a href="index.do" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="">小米手机</a></li>
            <li><a href="">红米</a></li>
            <li><a href="">平板·笔记本</a></li>
            <li><a href="">电视</a></li>
            <li><a href="">盒子·影音</a></li>
            <li><a href="">路由器</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">服务</a></li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="dingdanzhongxin" >我的订单</a></li>
                    <li><a href="">意外保</a></li>
                    <li><a href="">团购订单</a></li>
                    <li><a href="">评价晒单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="selInfo.do?id=${user.id}" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
                    <li><a href="">消息通知</a></li>
                    <li><a href="">优惠券</a></li>
                    <li><a href="showaddress.do?id=${user.id}">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <c:choose>
                <c:when test="${flag eq 'showaddress'}">
                    <div  style="overflow-y: auto;overflow-x:hidden;height: 500px ">
                        <div  class="grzlbt ml40">我的收货地址&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span ><button class="sub"><a href="insaddress.do?id=${user.id}">新增地址</a></button></span></div>
                    <span style="text-align: center;display:block;color: red;">${msg}</span>
                    <c:forEach items="${deliveryaddresses}" var="deliveryaddress">
                        <form action="updadderss.do"method="post">
                            <input type="hidden" name="uid" value="${deliveryaddress.uid}">
                            <input type="hidden" name="id" value="${deliveryaddress.id}">
                            <div class="subgrzl ml40"><span>姓名</span><span><input type="text" name="receiver"value="${deliveryaddress.receiver}" style="border-style:none"></span><span></span></div>
                            <div class="subgrzl ml40"><span>电话</span><span><input type="text" name="receiverphone"value="${deliveryaddress.receiverphone}" style="border-style:none"></span><span></span></div>
                            <div class="subgrzl ml40"><span>地址</span><span><input type="text" name="address"value="${deliveryaddress.address}" style="border-style:none"></span><span></span></div>
                            <span style="text-align: center;display:block;" ><input class="sub" name="sub" type="submit"  value="确认修改"></span>
                        </form>
                    </c:forEach>
                    </div>
                </c:when>
                <c:when test="${flag eq 'showinfo'}">
                    <div class="grzlbt ml40">我的资料</div>
                    <span style="text-align: center;display:block;color: red;">${msg}</span>
                    <form action="updInfo.do"method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <div class="subgrzl ml40"><span>昵称</span><span><input type="text" name="username"value="${user.username}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <div class="subgrzl ml40"><span>手机号</span><span><input type="text" name="tel"value="${user.tel}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <div class="subgrzl ml40"><span>密码</span><span><input type="text" name="password"value="${user.password}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <div class="subgrzl ml40"><span>个性签名</span><span><input type="text" name="sign"value="${user.sign}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <div class="subgrzl ml40"><span>我的爱好</span><span><input type="text" name="hobby"value="${user.hobby}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <div class="subgrzl ml40"><span>收货地址</span><span><input type="text" name="address"value="${user.address}" style="border-style:none"></span><span><a href="">修改</a></span></div>
                        <span style="text-align: center;display:block;" ><input class="sub" name="sub" type="submit"  value="确认修改"></span>
                    </form>
                    </div>
                 </c:when>
            </c:choose>

        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->

</body>
</html>