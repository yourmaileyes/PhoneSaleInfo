<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrapValidator.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PhoneSaleInfo管理员界面</title>
</head>
<body>
<div class="container" style="margin-top: 100px;">
	<div class="row clearfix">
		<div class="col-md-3 column">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						PhoneSaleInfo管理
					</h3>
				</div>
				<div class="panel-body">
					<a href="adminuser.do" target="_right">用户信息管理</a>
				</div>
				<div class="panel-body">
					<a href="adminphone.do" target="_right">手机信息管理</a>
				</div>
				<div class="panel-body">
					<a href="adminreview.do" target="_right">留言管理</a>
				</div>
			</div>
		</div>
		<div class="col-md-9 column">
		 <iframe name="_right" src="adminuser.do" style="border: 0;width: 1200px;height: 800px;">
		 </iframe>
			
		</div>
	</div>
</div>
</body>
</html>