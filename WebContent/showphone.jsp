<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>${phoneclass }专区</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css" /> <!-- bootstrap框架 -->
<link rel="stylesheet" href="css/font-awesome.min.css" /><!-- 字体样式 -->
<link rel="stylesheet" href="css/linea-icon.css" /><!-- 图标样式 -->
<link rel="stylesheet" href="css/fancy-buttons.css" /><!-- 按钮样式 -->

<!--=== 谷歌字体===-->
<link href='http://fonts.googleapis.com/css?family=Bangers' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:600,400,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<!--=== 其他CSS文件 ===-->
<link rel="stylesheet" href="css/animate.css" /> <!-- 引用动画库animate -->
<link rel="stylesheet" href="css/jquery.vegas.css" /><!-- 引用全屏背景插件vegas -->
<link rel="stylesheet" href="css/baraja.css" /><!-- 引用扑克牌特效插件baraja -->
<link rel="stylesheet" href="css/jquery.bxslider.css" /><!-- 引用响应式滑动插件bxslider-->

<!--=== 主要样式 ===-->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />

<!--=== 颜色设计===-->
<link rel="stylesheet" id="scheme-source" href="css/schemes/gray.css" />

<!--=== 浏览器适应 ===-->
<!-- [if lt IE 9]>
	<script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif] -->
</head>
<body>
<div class="part-1">
    <div class="col-md-10 col-md-offset-1 center section-title" style="margin-bottom: 25px;">
    <c:if test="${ phoneList.size()==0}"><h3>暂无此类结果</h3></c:if>
	 <c:if test="${ phoneList.size()!=0}"><h3>${phoneclass }专区</h3></c:if>
	</div>
</div>

<div class="prod">
<c:forEach items="${phoneList }" var="phone">
    <div class="prod-info">	
		<div class="prod-pic" style="float:left;">	
		<img alt="" src="images/phone/${phone.phoneid }.jpg" height="180">
		</div>
		<div style="float:left;width: 1200px"><h3>${phone.phonename}</h3></div>
			<div class="prod-url" style="float:right;margin-left: 0px">
			    <div class="prod-dianzan">
				    <li><a href="javascript:sub(phoneid='${phone.phoneid }')">点赞(${phone.phonelable })</a></li>
				</div>
				<c:if test="${ phoneclass ne '收藏列表'}">
				<div class="prod-shoucang">
				    <li><a href="javascript:al(phoneid='${phone.phoneid }')">收藏</a></li>
				</div>
				</c:if>
				<c:if test="${ phoneclass eq '收藏列表'}">
				<div class="prod-shoucang">
				    <li><a href="javascript:cl(phoneid='${phone.phoneid }')">取消收藏</a></li>
				</div>
				</c:if>
				<div class="prod-goumai">
				    <li><a href="${phone.phonehref }" target="_blank">购买</a></li>
				</div>
			</div>
	</div>
	</c:forEach>
</div>	
<script type="text/javascript">
function al(phoneid){
	var url="AJAXlike.do";
	var data={"phoneid":phoneid};
	$.post(url,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		alert(result);
		location.reload(true);
	});
}

function cl(phoneid){
	var url="AJAXclike.do";
	var data={"phoneid":phoneid};
	$.post(url,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		alert(result);
		location.reload(true);
	});
}

function sub(phoneid){
	var url="AJAXsub.do";
	var data={"phoneid":phoneid};
	$.post(url,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		alert(result);
		location.reload(true);
	});
}
</script>
<div class="back" style="text-align:center;">
		<h3><a class="" href="index.do">
			Back
			<span class="icon">
			<i class="fa fa-arrow-left"></i>
			</span>
		</a></h3>
</div>		
</body>
 
<!--==== Js 文件 ====-->
<!--==== 基础文件 ====-->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/modernizr.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<!--==== 滑动与卡牌特效 ====-->
<script type="text/javascript" src="js/jquery.baraja.js"></script>
<script type="text/javascript" src="js/jquery.vegas.min.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
<!--==== MailChimp Widget  ====-->
<script type="text/javascript" src="js/jquery.ajaxchimp.min.js"></script>
<!--==== 滚动条与导航 ====-->
<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/jquery.nav.js"></script>
<script type="text/javascript" src="js/jquery.appear.js"></script>
<script type="text/javascript" src="js/jquery.fitvids.js"></script>
<!--==== 动画 ====-->
<script type="text/javascript" src="js/custom.js"></script>
</html>