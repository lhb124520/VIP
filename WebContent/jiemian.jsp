<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			#xiangqing{margin-top: 20px;}
		</style>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
		<script>
			$(function(){
				/* 
				$("input[value=订单详情]").hover(function(){
					
					$("#xiangqing").show();
				},
				function(){
					$("#xiangqing").hide();
				}); */
				
				$("input[value='删除订单']").click(function(){
					confirm("确定删除吗？");
				});
				$("input[value='提交']").click(function(){
					confirm("确定提交吗？");
				});
				$("#both_fahuo").click(function(){
					if(confirm("您确定全部发货吗？")){
						$("td.fahuo").html("已发货");
					}
							
				
				});
				/*var fun=function(obj){
				var val=obj.checked;
				var arr=document.getElementsByName("item");
				for(i=0;i<arr.length;i++){
					arr[i].checked=val
				}
			}*/
			});
		</script>
	</head>
	<body>
<!-- 	<form action="Order1servlet" method="post" > -->
<!-- 	<input type="submit" value="提交"> </form> -->
		<div id="dingdan">
			
			<table align="center" border="1" cellpadding="1" cellspacing="0" width="400" style="border: blue; text-align: center;">
				<tr>
					<th colspan="5" style="line-height: 5;" ><font color="red" size="4" >订单管理界面</font></th>
				</tr>
				<form action="Order1sousuo" method="post">
				<tr>
					<td><input type="submit" value="搜索订单" name="sousuo"/></td>
					<td colspan="4"><input type="text" name="wenben"/></td>
				</tr>
				</form>
				<tr>
					<td>订单编号</td>
					<td>
						状态
						</select>
					</td>
					<td>
						<a href="Order1sousuo" style="text-decoration: none">全部发货</a>
						
					</td>
					<td>买家名字</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${ppp }" var="yyy">
				
					<tr>
						<td>${yyy.bianhao }</td>
						<td>${yyy.ispaid }</td>
						<td>${yyy.isfahuo }</td>
						<td>${yyy.username }</td>
						<td>
						<form action="Order2servlet" method="post" >
							<input type="hidden" name="arg1" value="${yyy.bianhao }" />
							<input type="submit" value="订单查询"> </form>
						<br />
						<form action="Order1delet" method="post" >
							<input type="hidden" name="arg0" value="${yyy.bianhao }" />
							<input type="submit" value="删除订单"> </form>
						</td>
					</tr>
				
				
				</c:forEach>
				<tr>
					<td colspan="5">
					
					<input type="button" value="首页"/>
					<input type="button" value="上一页"/>
					<input type="text" value="1"/>
					<input type="button" value="下一页"/>
					<input type="button" value="末页"/></td>
				</tr>
				<tr>
				<td colspan="5">
					<form action="Order1servlet" method="post" >
 	<input type="submit" value="查询所有订单"> </form> </td>
				</tr>
			</table>
		</div>
		
	</body>
</html>