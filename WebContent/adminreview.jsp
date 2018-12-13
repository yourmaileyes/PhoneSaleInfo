<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
							留言编号
						</th>
						<th>
							留言内容
						</th>
						<th>
							留言用户
						</th>
						<th>
							发布时间
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reviewList }" var="review">
					<tr class="success">
						<td>
							${review.reviewid }
						</td>
						<td>
							${review.context }
						</td>
						<td>
							${review.userid }
						</td>
						<td>
							<fmt:formatDate value="${review.time }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							<button onclick="deletereview(id='${review.reviewid}')">删除评论</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<script type="text/javascript">
			function deletereview(id){
				var r=confirm("确认要删除留言："+id+"?");
				if(r){
					var url="deletereview.do";
					var data={"id":id};
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