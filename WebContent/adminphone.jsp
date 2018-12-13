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
<title>Insert title here</title>
</head>
<body><a href="newphone.do"><h3>新建手机项目</h3></a>
<table class="table">
				<thead>
					<tr>
						<th>
							手机编号
						</th>
						<th>
							手机图片
						</th>
						<th>
							手机名称
						</th>
						<th>
							手机品牌
						</th>
						<th>
							购买链接
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${phoneList }" var="phone"> 
					<tr>
						<td>
							${phone.phoneid }
						</td>
						<td>
							<img alt="" src="images/phone/${phone.phoneid }.jpg">
						</td>
						<td>
							${phone.phonename }
						</td>
						<td>
							${phone.phoneclass }
						</td>
						<td>
							<a href="${phone.phonehref }" target="_blank">${phone.phonehref }</a>
						</td>
						<td>
							<button onclick="location='phoneadmin.do?phoneid=${phone.phoneid}'">修改信息</button>
							<button onclick="deletephone(phoneid='${phone.phoneid}')">删除信息</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<script type="text/javascript">
			function deletephone(phoneid){
				var r=confirm("确认要删除手机："+phoneid+"?");
				if(r){
					var url="deletephone.do";
					var data={"phoneid":phoneid};
					$.post(url,data,function(result){
						//result就是服务器返回的应答内容
						// 将应答内容添加到username对应的span中
						alert(result);
						location.reload(true);
					});
				}
			}
			</script>
</body>
</html>