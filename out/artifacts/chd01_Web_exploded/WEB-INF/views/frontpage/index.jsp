<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/12
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米商城</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
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
            <div class="gouwuche fr"><a href="shopcar.do">购物车</a></div>
            <div class="fr">
                <ul>
                    <li>
                        <c:choose>
                            <c:when test="${!empty user}">
                                ${user.username}您好！
                                <li><a href="logout.do">退出登录</a></li>
                                <li>|</li>
                                <li><a href="self_info.do?id=${user.id}">个人中心</a></li>
                            </c:when>
                            <c:otherwise>
                                <span>欢迎</span>
                                <li><a href="login.do">登录</a></li>
                                <li>|</li>
                                <li><a href="register.do">免费注册</a></li>
                            </c:otherwise>
                        </c:choose>
                    </li>
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
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
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
                <input type="text" class="shuru" name="productname" placeholder="小米6&nbsp;小米MIX现货">
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
<div class="banner_y center">

    <div class="nav place">
        <ul>

            <c:forEach items="${categories}" var="categories" end="10" varStatus="status">
                <li>
                    <a href="">${categories.name}</a>
                    <div  class="pop">
                        <div class="left fl">
                            <c:forEach items="${categories.products}" var="products" varStatus="status">
                                <c:if test="${status.index<6}">
                                    <div>
                                        <div class="xuangou_left fl">
                                            <a href="">
                                                <c:forEach items="${products.productimage}" var="productimage" begin="0" end="0">
                                                    <div class="img fl"><img src="${productimage.path }" alt=""></div>
                                                </c:forEach>
                                                <span class="fl">${products.productname}</span>
                                                <div class="clear"></div>
                                            </a>
                                        </div>
                                        <div class="xuangou_right fr"><a href="xiangqing.do?uid=${user.id}&id=${products.id}" target="_blank">选购</a></div>
                                        <div class="clear"></div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="ctn fl">
                            <c:forEach items="${categories.products}" var="products" varStatus="status">
                                <c:if test="${status.index>=6&&status.index<12}">
                                    <div>
                                        <div class="xuangou_left fl">
                                            <a href="">
                                                <c:forEach items="${products.productimage}" var="productimage" begin="0" end="0">
                                                    <div class="img fl"><img src="${productimage.path }" alt=""></div>
                                                </c:forEach>
                                                <span class="fl">${products.productname}</span>
                                                <div class="clear"></div>
                                            </a>
                                        </div>
                                        <div class="xuangou_right fr"><a href="xiangqing.do?uid=${user.id}&id=${products.id}" target="_blank">选购</a></div>
                                        <div class="clear"></div>
                                    </div>
                                </c:if>

                            </c:forEach>
                        </div>
                        <div class="right fl">
                            <c:forEach items="${categories.products}" var="products" varStatus="status">
                                <c:if test="${status.index>=12&&status.index<18}">
                                    <div>
                                        <div class="xuangou_left fl">
                                            <a href="">
                                                <c:forEach items="${products.productimage}" var="productimage" begin="0" end="0">
                                                    <div class="img fl"><img src="${productimage.path }" alt=""></div>
                                                </c:forEach>
                                                <span class="fl">${products.productname}</span>
                                                <div class="clear"></div>
                                            </a>
                                        </div>
                                        <div class="xuangou_right fr"><a href="xiangqing.do?uid=${user.id}&id=${products.id}" target="_blank">选购</a></div>
                                        <div class="clear"></div>
                                    </div>
                                </c:if>

                            </c:forEach>
                        </div>
                    </div>
                </li>
            </c:forEach>
            <%--</c:forEach>--%>
        </ul>
    </div>

    <div class="box">
        <ul class="carousel-inner">
            <li class="carousel-item"><img src="/image/banner.jpg" alt=""></li>
            <li class="carousel-item"><img src="/image/banner2.jpg" alt=""></li>
        </ul>
    </div>



</div>

<div class="sub_banner center">
    <div class="sidebar fl">
        <div class="fl"><a href=""><img src="../../../image/hjh_01.gif"></a></div>
        <div class="fl"><a href=""><img src="../../../image/hjh_02.gif"></a></div>
        <div class="fl"><a href=""><img src="../../../image/hjh_03.gif"></a></div>
        <div class="fl"><a href=""><img src="../../../image/hjh_04.gif"></a></div>
        <div class="fl"><a href=""><img src="../../../image/hjh_05.gif"></a></div>
        <div class="fl"><a href=""><img src="../../../image/hjh_06.gif"></a></div>
        <div class="clear"></div>
    </div>
    <div class="datu fl"><a href=""><img src="../../../image/hongmi4x.png" alt=""></a></div>
    <div class="datu fl"><a href=""><img src="../../../image/xiaomi5.jpg" alt=""></a></div>
    <div class="datu fr"><a href=""><img src="../../../image/pinghengche.jpg" alt=""></a></div>
    <div class="clear"></div>


</div>
<!-- end banner -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">小米明星单品</div>
    <div class="main center">
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="../../../image/pinpai1.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米MIX</a></div>
            <div class="youhui">5月9日-21日享花呗12期分期免息</div>
            <div class="jiage">3499元起</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="../../../image/pinpai2.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米5s</a></div>
            <div class="youhui">5月9日-10日，下单立减200元</div>
            <div class="jiage">1999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="../../../image/pinpai3.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米手机5 64GB</a></div>
            <div class="youhui">5月9日-10日，下单立减100元</div>
            <div class="jiage">1799元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="../../../image/pinpai4.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米电视3s 55英寸</a></div>
            <div class="youhui">5月9日，下单立减200元</div>
            <div class="jiage">3999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="../../../image/pinpai5.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米笔记本</a></div>
            <div class="youhui">更轻更薄，像杂志一样随身携带</div>
            <div class="jiage">3599元起</div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="peijian w">
    <div class="biaoti center">配件</div>
    <div class="main center">
        <div class="content">
            <div class="remen fl"><a href=""><img src="../../../image/peijian1.jpg"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span>新品</span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian2.jpg"></a></div>
                <div class="miaoshu"><a href="">小米6 硅胶保护套</a></div>
                <div class="jiage">49元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian3.jpg"></a></div>
                <div class="miaoshu"><a href="">小米手机4c 小米4c 智能</a></div>
                <div class="jiage">29元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:red">享6折</span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian4.jpg"></a></div>
                <div class="miaoshu"><a href="">红米NOTE 4X 红米note4X</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian5.jpg"></a></div>
                <div class="miaoshu"><a href="">小米支架式自拍杆</a></div>
                <div class="jiage">89元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="content">
            <div class="remen fl"><a href=""><img src="../../../image/peijian6.png"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian7.jpg"></a></div>
                <div class="miaoshu"><a href="">小米指环支架</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian8.jpg"></a></div>
                <div class="miaoshu"><a href="">米家随身风扇</a></div>
                <div class="jiage">19.9元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="../../../image/peijian9.jpg"></a></div>
                <div class="miaoshu"><a href="">红米4X 高透软胶保护套</a></div>
                <div class="jiage">59元</div>
                <div class="pingjia">775人评价</div>
            </div>
            <div class="remenlast fr">
                <div class="hongmi"><a href=""><img src="../../../image/hongmin4.png" alt=""></a></div>
                <div class="liulangengduo"><a href=""><img src="../../../image/liulangengduo.png" alt=""></a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>
</body>
<script src='/js/jquery.js'></script>
<script src="/js/lunbo.js"></script>
<script>
    $('.box').sowingMap({
        count : 2,
        time : 5000
    });
</script>
</html>