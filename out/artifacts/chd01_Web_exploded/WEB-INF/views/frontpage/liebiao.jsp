<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/20
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米手机列表</title>
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
            <div class="gouwuche fr"><a href="">购物车</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.do" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.do" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
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
    <a href="./index.do" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="searchProduct.do?productname=小米手机" target="_blank">小米手机</a></li>
            <li><a href="searchProduct.do?productname=红米">红米</a></li>
            <li><a href="searchProduct.do?productname=平板">平板</a></li>
            <li><a href="searchProduct.do?productname=笔记本">笔记本</a></li>
            <li><a href="searchProduct.do?productname=电视">电视</a></li>
            <li><a href="searchProduct.do?productname=路由器">路由器</a></li>
            <li><a href="searchProduct.do?productname=耳机">耳机</a></li>
            <li><a href="searchProduct.do?productname=保护套">保护套</a></li>
            <li><a href="searchProduct.do?productname=路由器">路由器</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="searchProduct.do" method="post">
            <div class="text fl">
                <input type="text" class="shuru" name="key"  placeholder="小米6&nbsp;小米MIX现货">
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

<!-- start banner_y -->
<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">小米手机</div>
    <div class="main center">
        <c:forEach items="${products}" var="product" begin="0" end="4">
            <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
                 <c:forEach items="${product.productimage}" var="productimage" begin="0" end="0">
                <div class="sub_mingxing"><a href="xiangqing.do?pid=${product.id} target="_blank"><img src="${productimage.path}" alt=""></a></div>
                 </c:forEach>
                <div class="pinpai"><a href="xiangqing.do?pid=${product.id}" target="_blank">${product.productname}</a></div>
                <div class="youhui">${product.productdescribe}</div>
                <c:forEach items="${product.productdetail}" var="productdetail" begin="0" end="0">
                <div class="jiage">${productdetail.price}</div>
                </c:forEach>
            </div>
        </c:forEach>
        <div class="clear"></div>
    </div>
    <div class="main center mb20">
        <c:forEach items="${products}" var="product" begin="0" end="9" varStatus="status">
            <c:if test="${status.index>4}">
            <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
                <c:forEach items="${product.productimage}" var="productimage" begin="0" end="0">
                    <div class="sub_mingxing"><a href="xiangqing.do?pid=${product.id}" target="_blank"><img src="${productimage.path}" alt=""></a></div>
                </c:forEach>
                <div class="pinpai"><a href="xiangqing.do?pid=${product.id}" target="_blank">${product.productname}</a></div>
                <div class="youhui">${product.productdescribe}</div>
                <c:forEach items="${product.productdetail}" var="productdetail" begin="0" end="0">
                    <div class="jiage">${productdetail.price}</div>
                </c:forEach>
            </div>
        </c:if>
        </c:forEach>

        <div class="clear"></div>
    </div>
</div>


<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>

</footer>

<!-- end danpin -->


</body>
</html>
