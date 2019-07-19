<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="order by dede58.com"/>
		<title>我的购物车-小米商城</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<script type="text/javascript" src="./js/jquery.min.js"></script>
		<script language="javascript">
		//全选
		function quanxuan(qx){
    		var deleteId = document.getElementsByName("phoneid");
    		for(var i = 0;i<deleteId.length;i++){
    			deleteId[i].checked = qx.checked;
    		}
    	}
		//计算一个商品数量改变
		$(document).ready(function(){
			var allmoney=0;
			$("#number").change(function(){
				num=$("#number").val();
				num=num*2499;
				allmoney=allmoney+num;
				$(".money1").text(num);
				$(".allmoney").text(allmoney);
			});	
			$("#number1").change(function(){
				num1=$("#number1").val();
				num1=num1*2499;
				allmoney=allmoney+num1;
				$(".money2").text(num1);
				$(".allmoney").text(allmoney);
			});	
		});
        </script>
	</head>
	<body>
	<!-- start header -->
	<!--end header -->
<!-- start banner_x -->
		<div class="banner_x center">
			<a href="index.do" target="_blank"><div class="logo fl"></div></a>
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="clear"></div>
		</div>
		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">
				<div class="top2 center">
					<div class="sub_top fl">
						<input type="checkbox" value="quanxuan" class="quanxuan" onclick="quanxuan(this)" name="qx" />全选
					</div>
					<div class="sub_top fl">商品名称</div>
					<div class="sub_top fl">单价</div>
					<div class="sub_top fl">数量</div>
					<div class="sub_top fl">小计</div>
					<div class="sub_top fr">操作</div>
					<div class="clear"></div>
				</div>
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="xuanze" class="xuanze"  name="phoneid"/>
					</div>
					<div class="sub_content fl"><img src="./image/gwc_xiaomi6.jpg"></div>
					<div class="sub_content fl ft20">小米6全网通6GB内存+64GB 亮黑色</div>
					<div class="sub_content fl ">2499元</div>
					<div class="sub_content fl">
						<input class="shuliang" type="number" value="1" step="1" min="1" id="number">
					</div>
					<div class="sub_content fl"><span class="money1">1</span></div>
					<div class="sub_content fl"><a href="">×</a></div>
					<div class="clear"></div>
				</div>
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="xuanze" class="xuanze" name="phoneid"/>
					</div>
					<div class="sub_content fl"><img src="./image/gwc_xiaomi6.jpg"></div>
					<div class="sub_content fl ft20">小米6全网通6GB内存+64GB 亮黑色</div>
					<div class="sub_content fl ">2499元</div>
					<div class="sub_content fl">
						<input class="shuliang" type="number" value="1" step="1" min="1" id="number1">
					</div>
					<div class="sub_content fl"><span class="money2">2499</span></div>
					<div class="sub_content fl"><a href="">×</a></div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="./liebiao.html">继续购物</a></li>
						<li>|</li>
						<li>共<span>2</span>件商品，已选择<span id="number">2499</span>件</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span class="allmoney">2499.00元</span></div>
					<div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	<!-- footer -->
	<footer class="center">
			
			<div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
			<div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
		</footer>
		
		

	</body>
</html>
