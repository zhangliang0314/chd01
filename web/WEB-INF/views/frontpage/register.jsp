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
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <script src="/js/verifycode.js"></script>
    <script type="text/javascript">
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

        }

        function checkUname() {
            var username = document.getElementById("uname").value;
            var reg=/^[\u4e00-\u9fa5]{2,4}$/;
            //获取span对象
            var span=document.getElementById("unameSpan");
            //开始校验
            if(username=="" || username==null){
                //输出校验结果
                span.innerHTML="用户名不能为空";
                span.style.color="red";
                return false;
            }else if(reg.test(username)){
                //输出校验结果
                span.innerHTML="用户名ok";
                span.style.color="green";
                return true;
            }else{
                //输出校验结果
                span.innerHTML="用户名不符合规则";
                span.style.color="red";
                return false;
            }
        }

        //验证密码
        function checkPwd(){
            //获取用户的密码信息
            var pwd=document.getElementById("pwd").value;
            //创建校验规则
            var reg=/\w{6,8}$/;
            //获取span对象
            var span=document.getElementById("pwdSpan");
            //开始校验
            if(pwd=="" ||pwd==null){
                //输出校验结果
                span.innerHTML="密码不能为空";
                span.style.color="red";
                return false;
            }else if(reg.test(pwd)){
                //输出校验结果
                span.innerHTML="密码ok";
                span.style.color="green";
                return true;
            }else{
                //输出校验结果
                span.innerHTML="密码格式不正确";
                span.style.color="red";
                return false;
            }
            checkPwd2();
        }

        //校验确认密码
        function checkPwd2(){
            //获取第一次密码
            var pwd=document.getElementById("pwd").value;
            //获取确认密码
            var pwd2=document.getElementById("pwd2").value;
            //获取span对象
            var span=document.getElementById("pwd2Span");
            //比较两次密码是否相同
            if(pwd2==""||pwd2==null){
                span.innerHTML="确认密码不能为空";
                span.style.color="red";
                return false;
            }else if(pwd==pwd2){
                span.innerHTML="确认密码ok";
                span.style.color="green";
                return true;
            }else{
                span.innerHTML="两次密码不一致";
                span.style.color="red";
                return false;
            }
        }

        //校验手机号
        function checkPhone(){
            //获取手机号
            var phone=document.getElementById("phone").value;
            //创建校验规则
            var reg=/^1[3,4,5,7,8]\d{9}$/;
            //获取span对象
            var span=document.getElementById("phoneSpan")
            //开始校验
            if(phone=="" ||phone==null){
                //输出校验结果
                span.innerHTML="手机号不能为空";
                span.style.color="red";
                return false;
            }else if(reg.test(phone)){
                //输出校验结果
                span.innerHTML="手机号ok";
                span.style.color="green";
                return true;
            }else{
                //输出校验结果
                span.innerHTML="手机号不符合规则";
                span.style.color="red";
                return false;
            }
        }
        // function createCode(){
        //     //创建随机四位数字
        //     var code=Math.floor(Math.random()*9000+1000);
        //     //获取元素对象
        //     var span=document.getElementById("codeSpan");
        //     //将数字存放到span中
        //     span.style.color="black";
        //     span.innerHTML=code;
        // }

        function checkCode(){
            var span=$("codespancheck");
            if($("code1").value.toUpperCase() == verCode.toUpperCase())
            {
                span.innerHTML="验证码正确";
                span.style.color="green";
                return true;
            }
            else
            {
                span.innerHTML="验证码错误";
                span.style.color="red";
                return false;
            }

        }
        //提交判断
        function checkSub(){

            if (checkUname()&&checkPwd()&&checkPwd2()&&checkPhone()&&checkCode()){
                    return true;
            }else{
                document.getElementById("f").action="register.do";
                window.alert("请正确填写信息！")
                return true;
            }
        }
    </script>
</head>
<body>
<form  id="f" method="post" action="registerUser.do" onsubmit="checkSub()">
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">会员注册</div>
                <div class="right fr"><a href="index.do" target="_self">小米商城</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <c:if test="${!empty msg}">
                    <div class="alert alert-danger">
                        <span style="text-align: center;display:block;color: red;" class="msg">${msg}</span>
                    </div>
                </c:if>
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input  id="uname" class="shurukuang" type="text" name="username" placeholder="*2-4位汉字" onblur="checkUname()"/><span id="unameSpan">*2-4位汉字</span></div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input id="pwd" class="shurukuang" type="password" name="password" placeholder="*6-8位数字字母下划线" onblur="checkPwd()"/><span id="pwdSpan">*6-8位数字字母下划线</span></div>
                <div class="username">确认密码:&nbsp;&nbsp;<input id="pwd2" class="shurukuang" type="password" name="repassword" placeholder="*两次密码要输入一致哦" onblur="checkPwd2()"/><span id="pwd2Span">*两次密码要输入一致哦</span></div>
                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;<input id="phone" class="shurukuang" type="text" name="tel" placeholder="请填写正确的手机号" onblur="checkPhone()"/><span id="phoneSpan">填写下手机号吧，方便我们联系您！</span></div>
                <div class="username">
                    <div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;<input id="code1" class="yanzhengma" type="text" name="code" placeholder="请输入验证码" onblur="checkCode()"/></div>
                    <div class="right fl"><canvas id="verifycode" width="100" height="40"/> </div><span id="codespancheck" style="color: black;"></span>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="regist_submit">
                <input id="sub" class="submit" type="submit" name="submit" value="立即注册">
            </div>

        </div>
    </div>
</form>
</body>
</html>
