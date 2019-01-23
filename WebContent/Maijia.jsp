<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src=src="js/jquery-1.11.3.min.js"></script>
<scrip>
		


</scrip>
</head>
<body>
		<table align="center" border="1" cellpadding="0" cellspacing="0" style="text-align: center;">
				
				<tr>
				<form action="Order3chagai" method="post">
					<td colspan="4"><input type="submit" name="搜索" value="查看我的订单"> </td>
					<td colspan="9"><input type="text" name="wenben" size="120" value="${wenben}"/> </td>
				</form></tr>
				<tr>
					<td>
					订单编号
					</td>
					<td>用户ID</td>
					<td>商品名称</td>
					<td>买家</td>
					<td><a href="Order3chagai?wenben=${wenben }" style="text-decoration: none">全部付款</a></td>
					<td>发货状态</td>
					<td>数量</td>
					<td>单价</td>
					<td>送货地址</td>
					<td>收货人姓名</td>
					<td>邮政编码</td>
					<td>收货人电话</td>
					<td>总价</td>
				</tr>
				<tr>
							<c:forEach items="${ppp }" var="yyy">
				
					<tr>
						<td>${yyy.bianhao }</td>
						<td>${yyy.user_id }</td>
						<td>${yyy.productname }</td>
						<td>${yyy.username }</td>
						<td>${yyy.ispaid }</td>
						<td>${yyy.isfahuo }</td>
						<td>${yyy.count }</td>
						<td>${yyy.prince }</td>
						<td>${yyy.dizhi }</td>
						<td>${yyy.shouhuoren }</td>
						<td>${yyy.youzheng }</td>
						<td>${yyy.phone }</td>
						<td>${yyy.TOTLOprince }</td>
						<td>
				</tr>
				</c:forEach>
				</tr>
			</table>

</body>
</html>