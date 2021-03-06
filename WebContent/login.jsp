<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>欢迎登录PhoneSaleInfo</title>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
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
<section id="section-login" class="login-wrap">
  <div class="section-overlay"></div>
    <div class="container regist center animated" data-animation="flipInY" data-animation-delay="1000">
      <div class="row">
	    <div class="col-md-8 col-md-offset-2">
		  <div class="col-md-10 col-md-offset-1 center section-title"><h3>PhoneSaleInfo用户登录</h3></div>
		  <div class="confirmation"><p><span class="fa fa-check"></span></p></div>
		    <form class="login-form support-form" action="login.do" method="POST" onSubmit="return formObj.checkForm()"  >
                <div class="col-lg-12"><span style="color: red;">${errmsg }</span>
                  <input type="text" name="username" class="input-field form-item field-name"   placeholder="用户名" />
                  <input type="password" name="password" class="input-field form-item field-name"   placeholder="密码" />
				  <button type="submit" value="登录" class="fancy-button button-line button-white large zoom subform">
					登录
				  <span class="icon"><i class="fa fa-paper-plane-o"></i></span>
				  </button>
			    </div>
			</form>
		</div>
	  </div>
	</div>
  </section>
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