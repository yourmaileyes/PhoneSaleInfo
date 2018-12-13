<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrapValidator.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<img alt="" src="images/phone/${phone.phoneid }.jpg">
			<form role="form" action="subphone.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="phoneid" value="${phone.phoneid }">
				<div class="form-group">
					 <label for="exampleInputEmail1">手机名字</label><input type="text" name="phonename" value="${phone.phonename }" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">手机购买连接</label><input type="text" name="phonehref" value="${phone.phonehref }" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword2">手机分类/品牌</label>
					 <select id="exampleInputPassword2" name="phoneclass">
					 <option value="samsung">samsung/三星</option>
					 <option value="vivo">vivo</option>
					 <option value="xiaomi">xiaomi/小米</option>
					 <option value="sony">sony/索尼</option>
					 <option value="apple">apple/苹果</option>
					 <option value="huawei">huawei/华为</option>
					 <option value="meitu">meitu/美图</option>
					 <option value="oppo">oppo</option>
					 </select>
					 </div>
				<div class="form-group">
					 <label for="exampleInputFile">选择手机图片</label><input type="file" name="file" id="exampleInputFile" />
					<p class="help-block">
						只能选择一张手机图片，支持JPG格式.
					</p>
				</div>
				<div class="checkbox">
					${phonemsg }
				</div> <button type="submit" class="btn btn-default">提交</button>
			</form>
		</div>
		<div class="col-md-6 column">
		</div>
	</div>
</div>
</body>
</html>