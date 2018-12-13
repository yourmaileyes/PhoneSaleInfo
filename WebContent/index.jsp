<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="graduateproduct">
<head>
<title>PhoneSaleInfo</title>

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
<!--=== Preloader section starts ===-->
<section id="preloader">
	<div class="loading-circle fa-spin"></div>
</section>
<!--=== Preloader section Ends ===-->
<!--=== 标题栏开始 ===-->
<div id="header" class="header-section">
	<div class="sticky-bar-wrap">
		<div class="sticky-section">
			<div id="topbar-hold" class="nav-hold container">
				<nav class="navbar" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse">
								<span class="sr-only"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
						</button>
						<a class="site-name navbar-brand" href="index.do">PhoneSaleInfo</a>
					</div>
					<!-- 菜单栏开始-->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="current"><a href="#header">首页</a></li>
							<li><a href="#section-product">品牌手机</a></li>
							<li><a href="#section-search">在线搜索</a></li>
							<li><a href="#section-services">用户服务</a></li>
							<li><a href="#section-app">热门APP</a></li>
							<li><a href="#forum-1">热点论坛</a></li>
							<li><a href="#section-fitting">手机配件</a></li>
							<li><a href="#section-contact">联系我们</a></li>
							<li><a href="showlike.do">我的收藏</a></li>
						</ul>
					</div>
					<!-- 菜单栏结束-->
				</nav>
			</div>
		</div>
	</div>
<!--=== 标题栏结束===-->
	
	<!--=== 主要部分开始 ===-->
	<div id="section-home" class="home-section-wrap center">
		<div class="section-overlay"></div>
		<div class="container home">
			<div class="row">
				<h1 class="well-come">PhoneSaleInfo<br>	<c:if test="${loginUser!=null }">
						欢迎您：${loginUser.username }</c:if></h1>
				
				<div class="col-md-8 col-md-offset-2">
					<p class="intro-message" style="font-family:Segoe Script">Let life be beautiful like summer flowers and death like autumn leaves.</p>
					
					<div class="home-buttons">
					<c:if test="${loginUser!=null }">
						<a href="logout.do" class="fancy-button button-line button-white zoom">
							注销
							<span class="icon">
								<i class="fa fa-globe"></i>
							</span>
						</a>
					  </c:if>
					  <c:if test="${loginUser==null }">
						<a href="flogin.do" class="fancy-button button-line button-white vertical">
							登录
							<span class="icon">
								<i class="fa fa-globe"></i>
							</span>
						</a>
						<a href="fregist.do" class="fancy-button button-line button-white zoom">
							注册
							<span class="icon">
								<i class="fa fa-globe"></i>
							</span>
						</a>
					  </c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--=== 主要部分结束===-->
</div>


<!--=== 品牌手机 ===-->
<section id="section-product" class="product-wrap">
	<div class="container production center">
		<div class="row">
			<div class="col-lg-12">
					<!-- 各种手机介绍 -->
					<ul id="card-ul" class="production-hold baraja-container">
						<!--  OPPO  -->
						<li class="single-product" title="Oppo">
							<img src="images/17.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Oppo</h4>
							<p class="product-text">OppoR17水滴屏，光感屏幕指纹</p>
							    <a href="showclass.do?phoneclass=oppo" class="fancy-button button-line btn-col small vertical">
									购买
									<span class="icon">
									  <i class="fa fa-shopping-cart"></i>
									</span>
								</a>	
						</li>
						<!--  Vivo  -->
						<li class="single-product" title="Vivo">
							<img src="images/16.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Vivo</h4>
							<p class="product-text">VivoX21 非凡一升，突破未来</p>
							    <a href="showclass.do?phoneclass=vivo" class="fancy-button button-line btn-col small zoom">
								  购买
								  <span class="icon">
									<i class="fa fa-shopping-cart"></i>
								  </span>
							    </a>
						</li>
						<!--  小米小米欸  -->
						<li class="single-product" title="Xiaomi">
							<img src="images/15.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Xiaomi</h4>
							<p class="product-text">
								全球首款双频GPS，红外人脸解锁
							</p>
							<a href="showclass.do?phoneclass=xiaomi" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
						<!--  索尼大法好  -->
						<li class="single-product" title="Sony">
							<img src="images/14.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Sony</h4>
							<p class="product-text">
								高感双摄相机，4K HDR显示屏
							</p>
							<a href="showclass.do?phoneclass=sony" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
						
						
						<!--  苹果X  -->
						<li class="single-product" title="Apple">
							<img src="images/13.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">iPhone</h4>
							<p class="product-text">
								iPhoneX Hello 未来
							</p>
							<a href="showclass.do?phoneclass=apple" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
						
						
						<!--  华为荣耀  -->
						<li class="single-product" title="Huawei">
							<img src="images/12.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Huawei</h4>
							<p class="product-text">
								Huawei Honor10 会变色更潮美
							</p>
							<a href="showclass.do?phoneclass=huawei" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
						
						
						<!--  美图  -->
						<li class="single-product" title="Meitu">
							<img src="images/11.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Meitu</h4>
							<p class="product-text">
								美图T9，四摄像头美颜3.0
							</p>
							<a href="showclass.do?phoneclass=meitu" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
					
						
						<!--  三星思密达  -->
						<li class="single-product" title="Samsung">
							<img src="images/10.jpg" alt="" class="product-image" />
							<h4 class="product-title color-scheme">Samsung</h4>
							<p class="product-text">
								三星S9+ 虹膜识别 无线快充
							</p>
							<a href="showclass.do?phoneclass=samsung" class="fancy-button button-line btn-col small zoom">
								购买
								<span class="icon">
									<i class="fa fa-shopping-cart"></i>
								</span>
							</a>
						</li>
						
					</ul>
					<!-- 各种手机介绍 -->
					
					<!-- 介绍控制 -->
					<div class="production-control relative">
						<button class="control-icon fancy-button button-line no-text btn-col bell" id="product-prev" title="Previous" >
							<span class="icon">
								<i class="fa fa-arrow-left"></i>
							</span>
						</button>
						<button class="control-icon fancy-button button-line no-text btn-col zoom" id="product-expand" title="Expand" >
							<span class="icon">
								<i class="fa fa-expand"></i>
							</span>
						</button>
						<button class="control-icon fancy-button button-line no-text btn-col zoom" id="product-close" title="Collapse" >
							<span class="icon">
								<i class="fa fa-compress"></i>
							</span>
						</button>
						<button class="control-icon fancy-button button-line no-text btn-col bell" id="product-next" title="Next" >
							<span class="icon">
								<i class="fa fa-arrow-right"></i>
							</span>
						</button>
					</div>
					<!-- 介绍控制 -->
			</div>
		</div>
	</div>
</section>
<!--=== 品牌手机 ===-->

<!--=== 搜索 ===-->
<section id="section-search" class="search-wrap">
	<div class="section-overlay"></div>
	<div class="container search center">
		<div class="row">
			<div class="col-lg-12">
				<p class="search-success"></p>
				<p class="search-failed"></p>
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>站内搜索</h3>
				</div>
				<form id="search-form" action="seach.do" method="post">
					<input type="text" name="seach" required="required"  class="input-search" />
					<button type="submit" value="搜索" id="search" class="fancy-button button-line button-white large zoom"/>
						搜索
						<span class="icon">
							<i class="fa fa-arrow-right"></i>
						</span>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>
<!--=== 搜索 ===-->

<!-- 手机选购指南 -->
<!-- <section id="section-evine" class="evine-wrap">
	<div class="container evine center">
		<div class="row">
			<div class="col-lg-12">
				<div class="col-md-10 col-md-offset-1 center section-title">
					 <a href="guide.html"><h3>手机选购指南</h3></a>
					<div id="mapholder"></div>
				</div>
		</div>
	</div>
</section> -->
<!-- 手机选购指南 -->

<!--=== 售后服务 ===-->
<section id="section-services" class="services-wrap">
	<div class="container services">
		<div class="row">
		
			<div class="col-md-10 col-md-offset-1 center section-title">
				<h3>用户服务</h3>
			</div>
		
			<!-- part1 -->
			<div class="col-md-6 col-sm-6 service animated" data-animation="fadeInLeft" data-animation-delay="700">
				<span class="service-icon center"><i class="fa fa-medkit fa-3x"></i></span>
				<div class="service-desc">
					<h4 class="service-title color-scheme">消息反馈服务</h4>
					<p class="service-description justify">
						如果您发现有哪一条消息过期或者是价格不符，可以随时向我们报告。
						消息属实我们会额外提供您小福利~
						<br><i class="fa fa-chevron-right" ><a href="#section-contact">点击进行消息反馈</a></i>
					</p>
				</div>
			</div>
			<!-- 1 -->
			
			<!-- part2 -->
			<div class="col-md-6 col-sm-6 service animated" data-animation="fadeInUp" data-animation-delay="700">
				<span class="service-icon center"><i class="icon icon-basic-lightbulb fa-3x"></i></span>
				<div class="service-desc">
					<h4 class="service-title color-scheme">发布新的消息</h4>
					<p class="service-description justify">
						如果你发现了关于某部手机有优惠的价格或是发现了某些活动，
						如果消息通过之后我们会额外提供您小福利~
						<br><i class="fa fa-chevron-right" ><a href="#section-contact">点击进行投稿消息</a></i>
					</p>
				</div>
			</div>
			<!-- 2 -->
			
			<!-- part3 -->
			<div class="col-md-6 col-sm-6 service animated" data-animation="fadeInRight" data-animation-delay="700">
				<span class="service-icon center"><i class="icon icon-basic-accelerator fa-3x"></i></span>
				<div class="service-desc">
					<h4 class="service-title color-scheme">以旧换新计划</h4>
					<p class="service-description justify">
						用旧手机抵价百分之五十并不是一个梦想。
						您不再喜欢的旧手机都可以给我们，我们会给您一个满意的答复。
						<br><i class="fa fa-chevron-right" ><a href = "#">了解如何升级换购</a></i>
					</p>
				</div>
			</div>
			<!-- 3 -->
			
			<!-- part4 -->
			<div class="col-md-6 col-sm-6 service animated" data-animation="fadeInUp" data-animation-delay="700">
				<span class="service-icon center"><i class="icon icon-basic-paperplane fa-3x"></i></span>
				<div class="service-desc">
					<h4 class="service-title color-scheme">加入Namanana俱乐部</h4>
					<p class="service-description justify">
						您可以加入Namanana俱乐部并成为会员，第一时间了解优惠活动、了解手机发布信息，掌握第一手资料。
						<br><i class="fa fa-chevron-right" ><a href = "regist.html">进一步了解Banana俱乐部</a></i>
					</p>
				</div>
			</div>
			<!-- 4 -->
		</div>
	</div>
</section>
<!--=== 售后服务 ===-->

<!--=== 热门App ===-->
 <section id="section-app" class="app-wrap">
	<div class="container app">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 center section-title">
			<h3>热门App</h3></div>
                <div class="col-md-3 col-sm-6 single-app-wrap center animated" data-animation="bounceInLeft" data-animation-delay="500">
				    <div class="single-app best-app">
					    <div class="app-head">
						<div class="price"><h3>照相与摄影</h3></div>
					</div>
					
					<ul class="package-features">
						<li><a href="https://itunes.apple.com/cn/app/id1362548649" target="_blank">NOMO相机</a></li>
						<li><a href="https://itunes.apple.com/cn/app/vsco/id588013838?mt=8" target="_blank">VSCO</a></li>
						<li><a href="https://itunes.apple.com/cn/app/vsco/id588013838?mt=8" target="_blank">VUE视频博客</a></li>
						<li><a href="https://itunes.apple.com/cn/app/pixlr-%E7%85%A7%E7%89%87%E5%A4%84%E7%90%86/id526783584?mt=8" target="_blank">Pixlr照片处理</a></li>
						<li><a href="https://itunes.apple.com/cn/app/snapseed/id439438619?mt=8" target="_blank">Snapseed</a></li>
						<li><a href="https://itunes.apple.com/cn/app/foodie-%E7%BE%8E%E9%A3%9F%E7%9B%B8%E6%9C%BA/id1336411132?mt=8" target="_blank">Foodie</a></li>
					    <li><a href="https://itunes.apple.com/cn/app/%E4%B8%80%E9%97%AA-vlog-%E5%89%AA%E8%BE%91%E4%B8%8E%E8%A7%86%E9%A2%91%E6%BB%A4%E9%95%9C/id1094212040?mt=8" target="_blank">一闪</a></li>
					</ul>
					<div class="sign-up">
						<a href="https://itunes.apple.com/cn/genre/ios-%E6%91%84%E5%BD%B1%E4%B8%8E%E5%BD%95%E5%83%8F/id6008?mt=8" target="_blank" class="fancy-button button-line btn-col zoom">
							查看更多
							<span class="icon">
								<i class="fa fa-camera""></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			
			

			<div class="col-md-3 col-sm-6 single-app-wrap center animated" data-animation="bounceInLeft" data-animation-delay="700">
				<div class="single-app best-app">	
					<div class="app-head">
						<div class="price">
							<h3>娱乐</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="https://itunes.apple.com/cn/app/unicorn-%E6%B6%82%E8%89%B2%E6%B8%B8%E6%88%8F/id1293646758?mt=8" target="_blank">UNICORN</a></li>
						<li><a href="https://itunes.apple.com/cn/app/folioscope/id1084331400?mt=8" target="_blank">Folioscope</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9-%E5%BC%B9%E5%B9%95%E7%95%AA%E5%89%A7%E7%9B%B4%E6%92%AD%E9%AB%98%E6%B8%85%E8%A7%86%E9%A2%91/id736536022?mt=8" target="_blank">BiliBili</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E7%8C%AB%E7%9C%BC-%E5%A8%B1%E4%B9%90%E7%9C%8B%E7%8C%AB%E7%9C%BC/id504274740?mt=8" target="_blank">猫眼电影</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E7%88%B1%E5%A5%87%E8%89%BA-%E5%88%9B%E4%B8%9A%E6%97%B6%E4%BB%A3%E5%85%A8%E7%BD%91%E9%A6%96%E6%92%AD/id393765873?mt=8" target="_blank">爱奇艺</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E4%BC%98%E9%85%B7%E8%A7%86%E9%A2%91-%E7%81%AB%E6%98%9F%E6%83%85%E6%8A%A5%E5%B1%80%E7%AC%AC%E5%9B%9B%E5%AD%A3%E5%85%A8%E7%BD%91%E7%8B%AC%E6%92%AD/id336141475?mt=8" target="_blank">优酷</a></li>
					    <li><a href="https://itunes.apple.com/cn/app/dailymotion/id336978041?mt=8" target="_blank">Dailymotion</a></li>
					</ul>
					<div class="sign-up">
						<a href="https://itunes.apple.com/cn/genre/ios-%E5%A8%B1%E4%B9%90/id6016?mt=8"  target="_blank" class="fancy-button button-line btn-col vertical">
							查看更多
							<span class="icon">
								<i class="fa fa-magic"></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			

			<div class="col-md-3 col-sm-6 single-app-wrap center animated" data-animation="bounceInLeft" data-animation-delay="900">
				<div class="single-app best-app">
					<div class="app-head">
						<div class="price">
							<h3>教育</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="https://itunes.apple.com/cn/app/%E5%B0%8F%E4%BC%B4%E9%BE%99-%E5%84%BF%E7%AB%A5%E6%97%A9%E6%95%99%E5%90%AF%E8%92%99%E5%84%BF%E7%AB%A5%E6%95%99%E8%82%B2/id555615190?mt=8" target="_blank">小伴龙</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E7%99%BE%E5%BA%A6%E6%96%87%E5%BA%93-%E8%80%83%E8%AF%95%E7%AD%94%E6%A1%88%E4%BD%9C%E4%B8%9A%E9%A2%98%E5%BA%93%E5%A4%A7%E5%85%A8/id426340811?mt=8" target="_blank">英语流利说</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E5%A4%9A%E9%82%BB%E5%9B%BD-duolingo/id570060128?mt=8" target="_blank">多邻国</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E4%BD%9C%E4%B8%9A%E5%B8%AE-%E4%B8%AD%E5%B0%8F%E5%AD%A6%E6%90%9C%E9%A2%98%E7%AD%94%E7%96%91%E8%BE%85%E5%AF%BC%E5%88%A9%E5%99%A8/id803781859?mt=8" target="_blank">作业帮</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E7%99%BE%E5%BA%A6%E6%96%87%E5%BA%93-%E8%80%83%E8%AF%95%E7%AD%94%E6%A1%88%E4%BD%9C%E4%B8%9A%E9%A2%98%E5%BA%93%E5%A4%A7%E5%85%A8/id426340811?mt=8" target="_blank">百度文库</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E8%80%83%E7%A0%94%E5%B8%AE-%E5%A4%A7%E5%AD%A6%E7%94%9F%E8%80%83%E7%A0%94%E5%BF%85%E5%A4%87%E7%A5%9E%E5%99%A8/id805408963?mt=8" target="_blank">考研帮</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E6%98%9F%E5%9B%BE/id345542655?mt=8" target="_blank">星图</a></li>
					</ul>
					<div class="sign-up">
						<a href="https://itunes.apple.com/cn/genre/ios-%E6%95%99%E8%82%B2/id6017?mt=8" target="_blank" class="fancy-button button-line btn-col rotate">
							查看更多
							<span class="icon">
								<i class="fa fa-book""></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			

			<div class="col-md-3 col-sm-6 single-app-wrap center animated" data-animation="bounceInLeft" data-animation-delay="1100">
				<div class="single-app best-app">
					<div class="app-head">
						<div class="price">
                            <h3>效率</h3>
						</div>
					</div>				
					<ul class="package-features">
						<li><a href="https://itunes.apple.com/cn/app/%E6%8D%B7%E5%BE%84/id915249334?mt=8" target="_blank">捷径</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E6%A6%82%E5%BF%B5%E7%94%BB%E6%9D%BF/id560586497?mt=8" target="_blank">概念画板</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E5%8F%A3%E8%A2%8B%E5%8A%A9%E7%90%86-%E7%A7%BB%E5%8A%A8oa-%E6%99%BA%E8%83%BDcrm/id905881422?mt=8" target="_blank">口袋助理</a></li>
						<li><a href="https://itunes.apple.com/cn/app/dropbox/id327630330?mt=8" target="_blank">DropBox</a></li>
						<li><a href="https://itunes.apple.com/cn/app/zine-%E5%8F%91%E7%8E%B0%E5%88%9B%E4%BD%9C%E7%9A%84%E4%B9%90%E8%B6%A3/id670831255?mt=8" target="_blank">Zine</a></li>
						<li><a href="https://itunes.apple.com/cn/app/1password-password-manager/id568903335?mt=8" target="_blank">1Pssword</a></li>
						<li><a href="https://itunes.apple.com/cn/app/%E8%AE%B2%E8%AF%9D%E5%92%8C%E7%BF%BB%E8%AF%91-%E7%BF%BB%E8%AF%91%E5%99%A8/id804641004?mt=8" target="_blank">翻译</a></li>
					</ul>
					<div class="sign-up">
						<a href="https://itunes.apple.com/cn/genre/ios-%E6%95%88%E7%8E%87/id6007?mt=8" target="_blank" class="fancy-button button-line btn-col zoom">
							查看更多
							<span class="icon">
								<i class="fa fa-bolt"></i>
							</span>
						</a>
					</div>
				</div>
			</div>		
		</div>
	</div>
</section>


<!--=== 热门App ===-->

<!--=== 手机论坛 ===-->
<section id="forum-1" class="section-forum forum-wrap">
	<div class="container forum animated" data-animation="bounceInLeft" data-animation-delay="700">
		<div class="row">
			<div class="col-md-8 forum-desc">
				<div class="col-md-2 center">
					<div class="forum-no">
						<span class="no-inner">P</span>
					</div>
				</div>
				
				<div class="col-md-10 forum-details">
						<h3 class="forum-title color-scheme">手机论坛</h3>
						<p class="forum-description">
						<c:forEach items="${reviewList }" var="review">
						<br><li>${review.context }
						<c:if test="${review.userid eq loginUser.useid }">
						<a href="delectreview.do?id=${review.reviewid }">删除</a>
						</c:if>---------<fmt:formatDate value="${review.time }" pattern="yyyy-MM-dd HH:mm:ss"/><br>
						</li>
						</c:forEach>
						</p>
				</div> 
			</div>


		</div>
	</div>
</section>
 <!--=== 手机论坛 ===-->

<!--=== 手机配件 ===-->
 <section id="section-fitting" class="fitting-wrap">
	<div class="container fitting">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 center section-title">
				<h3>手机配件</h3>
			</div>

			<div class="col-md-3 col-sm-6 single-fitting-wrap center animated" data-animation="bounceInLeft" data-animation-delay="500">
				<div class="single-fitting">
				
					<div class="fitting-head">
						<h4 class="fitting-heading color-scheme">手机膜装饰以及</h4>
						<div class="price">
                            <h3>手机壳</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="#">玻璃手机壳</a></li>
						<li><a href="#">浮雕手机软壳</a></li>
						<li><a href="#">磨砂手机硬壳</a></li>
						<li><a href="#">支架指环壳</a></li>
						<li><a href="#">全布纹手机壳</a></li>
						<li><a href="#">商务皮套壳</a></li>
					    <li><a href="#">编制散热壳</a></li>
					</ul>
					<div class="sign-up">
						<a href="#" class="fancy-button button-line btn-col zoom">
							查看更多
							<span class="icon">
								<i class="fa fa-shopping-cart""></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			
			

			<div class="col-md-3 col-sm-6 single-fitting-wrap center animated" data-animation="bounceInLeft" data-animation-delay="700">
				<div class="single-fitting">	
					<div class="fitting-head">
						<h4 class="fitting-heading color-scheme">电源适配器以及</h4>
						<div class="price">
							<h3>
								手机数据线
							</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="#">Anker数据线</a></li>
						<li><a href="#">ZMI数据线</a></li>
						<li><a href="#">imu数据线</a></li>
						<li><a href="#">CRDC充电器</a></li>
						<li><a href="#">yooboo充电器</a></li>
						<li><a href="#">Xiaomi充电器</a></li>
					    <li><a href="#">无线充电器</a></li>
					</ul>
					<div class="sign-up">
						<a href="#" class="fancy-button button-line btn-col vertical">
							查看更多
							<span class="icon">
								<i class="fa fa-shopping-cart"></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			

			<div class="col-md-3 col-sm-6 single-fitting-wrap center animated" data-animation="bounceInLeft" data-animation-delay="900">
				<div class="single-fitting">
				
					<div class="fitting-head">
					<h4 class="fitting-heading color-scheme">蓝牙音箱以及</h4>
						<div class="price">
							<h3>
								手机耳机
							</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="#">蓝牙入耳耳机</a></li>
						<li><a href="#">蓝牙头戴耳机</a></li>
						<li><a href="#">无线运动耳机</a></li>
						<li><a href="#">商务隐形耳机</a></li>
						<li><a href="#">蓝牙挂壁音箱</a></li>
						<li><a href="#">有线装饰音箱</a></li>
						<li><a href="#">便携无线音箱</a></li>
					</ul>
					<div class="sign-up">
						<a href="#" class="fancy-button button-line btn-col rotate">
							查看更多
							<span class="icon">
								<i class="fa fa-shopping-cart""></i>
							</span>
						</a>
					</div>
				</div>
			</div>

			

			<div class="col-md-3 col-sm-6 single-fitting-wrap center animated" data-animation="bounceInLeft" data-animation-delay="1100">
				<div class="single-fitting">
					<div class="fitting-head">
						<h4 class="fitting-heading color-scheme">前置暖光以及</h4>
						<div class="price">
                            <h3>
								手机镜头
							</h3>
						</div>
					</div>
					
					<ul class="package-features">
						<li><a href="#">广角镜头</a></li>
						<li><a href="#">鱼眼镜头</a></li>
						<li><a href="#">微距镜头</a></li>
						<li><a href="#">长焦镜头</a></li>
						<li><a href="#">补光灯</a></li>
						<li><a href="#">三脚架</a></li>
						<li><a href="#">手持稳定器</a></li>
					</ul>
					<div class="sign-up">
						<a href="#" class="fancy-button button-line btn-col zoom">
							查看更多
							<span class="icon">
								<i class="fa fa-shopping-cart"></i>
							</span>
						</a>
					</div>
				</div>
			</div>		
		</div>
	</div>
</section>
<!--=== 手机配件 ===-->


<!--=== 联系我们 ===-->
<section id="section-contact" class="contact-wrap">
<div class="section-overlay"></div>
	<div class="container contact center animated" data-animation="flipInY" data-animation-delay="1000">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>您有什么话想说?</h3>
				</div>
				
				<div class="confirmation">
					<p><span class="fa fa-check"></span></p>
				</div>
				
				<form class="contact-form support-form" action="subrew.do" method="post">
					
					<div class="col-lg-12">
						<input id="name" class="input-field form-item field-name" type="text" required="required" name="contact-name" placeholder="您的姓名" />
						<input id="email" class="input-field form-item field-email" type="email" required="required" name="contact-email" placeholder="邮件地址" />
						<input id="phonenumber" class="input-field form-item field-subject" type="number" name="contact-subject" placeholder="电话号码" />
						<textarea id="message" class="textarea-field form-item field-message" rows="10" name="context" placeholder=""></textarea>
					</div>
					<button type="submit" value="提交" class="fancy-button button-line button-white large zoom subform">
						发布留言
						<span class="icon">
							<i class="fa fa-paper-plane-o"></i>
						</span>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>
<!--=== 联系我们 ===-->

 <!--=== 底部设计 ===-->
 <div id="section-footer" class="footer-wrap">
	<div class="container footer center">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="footer-title">
					<li><a class="site-name" href="#"><i class="fa fa-arrow-up"></i>Top</a></li>
				</h3>				
				<div class="social-icons">
					<ul>
						<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
						<li><a href="#"><i class="fa fa-flickr"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
					</ul>
				</div>
				
				<p class="copyright">Copyright &copy; 2018.PhoneSaleInfo Inc.保留所有权利</p>
			</div>
		</div>
	</div>
 </div>

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

</body>
</html>