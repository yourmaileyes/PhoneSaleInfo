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
<body>
<table class="table">
				<thead>
					<tr>
						<th>
							用户编号
						</th>
						<th>
							用户名称
						</th>
						<th>
							密码
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${userList }" var="user"> 
					<tr class="info">
						<td>
							${user.useid }
						</td>
						<td>
							${user.username }
						</td>
						<td>
							${user.password }
						</td>
						<td>
							<button onclick="changepassword(useid='${user.useid}')">修改密码</button>
							<button onclick="deleteuser(useid='${user.useid}')">删除用户</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<script type="text/javascript">
			function changepassword(useid){
				var newpassword = prompt("请输入新密码","");
				var url="changepassword.do";
				var data={"useid":useid,"newpassword":newpassword};
				$.post(url,data,function(result){
					//result就是服务器返回的应答内容
					// 将应答内容添加到username对应的span中
					alert(result);
					location.reload(true);
				});
			}
			function deleteuser(useid){
				var r=confirm("确认要删除用户："+useid+"?");
				if(r){
					var url="deleteuser.do";
					var data={"useid":useid};
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