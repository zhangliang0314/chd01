<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/12
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员登录</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">

</head>
<body>
<!-- login -->
<div class="top center">
    <div class="logo center">
        <a href="index.jsp" target="_blank"><img src="/image/mistore_logo.png" alt=""></a>
    </div>
</div>
<form id="loginform" class="loginForm" method="post" action="checkLogin.do" class="form" style="background: url(/image/login_bg.jpg) no-repeat center;" onsubmit="checkverifycode()">
    <div class="login" >

        <div class="login_center">
            <div class="login_top">
                <div class="left fl">会员登录</div>
                <div class="right fr">您还不是我们的会员？<a href="register.do" target="_self">立即注册</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="login_main center">
                <span style="text-align: center;display:block;color: red;">${msg}</span>
                <div class="username">用户名:&nbsp;<input class="shurukuang" type="text" id="username" name="username" onblur="checkUname()" placeholder="请输入你的用户名" /></span> </div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input class="shurukuang" id="password" type="password" name="password" placeholder="请输入你的密码"/></div>
                <div class="username">
                    <div class="left fl">验证码:&nbsp;<input id="yanzhengma"class="yanzhengma" type="text" name="code" placeholder="请输入验证码"/></div>
                    <div class="right fl"><canvas id="verifycode" width="100" height="40"/> <!-- <img src="/image/yanzhengma.jpg"></div> -->
                    <div class="clear"></div>
                </div>
            </div>
            <div class="login_submit">
                <input class="submit" type="submit" name="submit" value="立即登录" >
            </div>
            </div>
        </div>
    </div>
</form>
<footer>
    <div class="copyright">简体 | 繁体 | English | 常见问题</div>
    <div class="copyright">小米公司版权所有-京ICP备10046444-<img src="/image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号</div>
</footer>
</body>
</html>
<script src="/js/verifycode.js"></script>
<script>
    function $(id){
        return document.getElementById(id);
    }
    window.onload=function(){
        //初始化验证码
        verCode = drawPic();
        var reflashCode = $("verifycode");
        if (reflashCode != null) {
            reflashCode.onclick = function (/*e*/) {
                //    e.preventDefault();
                verCode = drawPic();
            }
        }
    }
    function checkverifycode(){
        if($("yanzhengma").value.toUpperCase() == verCode.toUpperCase())
        {
            return true;
        }
        else
        {
            $("loginform").action="login.do";
            window.alert("验证码错误！")
            return true;
        }
    }
</script>