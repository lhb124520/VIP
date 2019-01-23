<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 		<style>
			#xiangqing{margin-top: 20px;}
		</style>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
		<script>
			$(function(){
				
				$("input[value=订单详情]").hover(function(){
					
					$("#xiangqing").show();
				},
				function(){
					$("#xiangqing").hide();
				});
				$("input[value=删除订单]").click(function(){
					if(confirm("确定删除吗？")){
					$(this).parent().parent().remove();}
				});
				$("input[value=提交]").click(function(){
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
	<div id="dingdan">
			<form action="" method="post"></form>
			<table align="center" border="1" cellpadding="1" cellspacing="0" width="400" style="border: blue; text-align: center;">
				<tr>
					<th colspan="5" style="line-height: 5;" ><font color="red" size="4" >订单管理界面</font></th>
				</tr>
				<tr>
					<td><input type="button" value="搜索订单"/></td>
					<td colspan="4"><input type="text"/></td>
				</tr>
				<tr>
					<td>订单编号</td>
					<td>状态</td>	
					<td>
						<input type="button" value="全部发货" id="both_fahuo"/>
					</td>
					<td>买家名字</td>
					<td>操作</td>
				</tr>
		<c:if test="${not empty list}">
      	  <c:forEach items="${requestScope.list}" var="HouTaiGuanLi">
        	<tr>
          	<td>${HouTaiGuanLi.bianhao}</td>
          	<td>${HouTaiGuanLi.zt}</td>
          	<td class="fahuo">${HouTaiGuanLi.fahuo}</td>
          	<td>${HouTaiGuanLi.usename}</td>
          	<td><input type="button" value="订单详情" /> <br /> <input type="button" value="删除订单" /></td>
        	</tr>
       	  </c:forEach>
        </c:if>
				<tr>
					<td colspan="5">
					<input type="button" onclick="javascript:location.href='${request.contextPath}\paging.do?cp=${data.first}'" value="首页"/>
					<input type="button"  onclick="javascript:location.href='${request.contextPath}\paging.do?cp=${data.previous}'" value="上一页"/>
					<input type="text" onblur="javascript:location.href=${request.contextPath}'\paging.do?cp='+this.value;" />
					<input type="button" onclick="javascript:location.href='${request.contextPath}\paging.do?cp=${data.next}'" value="下一页"/>
					<input type="button" onclick="javascript:location.href='${request.contextPath}\paging.do?cp=${data.last}'" value="末页"/></td>
				</tr>
				<tr>
					<td colspan="5">
						<input type="submit" value="提交" name="tijiao"/>
					</td>
				</tr>
			</table>
		</div>
		<div id="xiangqing" style="display: none;">
			<table border="1" cellpadding="2" cellspacing="0" align="center" style="text-align: center;">
				<tr>
					<th colspan="11"><font color="crimson" style="line-height: 3;">订单详情</font></th>
				</tr>
				<tr>
					<td>
					订单编号
					</td>
					<td>用户ID</td>
					<td>商品名称</td>
					<td>买家</td>
					<td>数量</td>
					<td>单价</td>
					<td>送货地址</td>
					<td>收货人姓名</td>
					<td>邮政编码</td>
					<td>收货人电话</td>
					<td>总价</td>
				</tr>
				<tr>
					<td rowspan="2">
					VIPA-0001
					</td>
					<td rowspan="2">0001</td>
					<td><a href="#"> <img src="img/QQ截图20161109235746.png" alt="时尚珍品，值得拥有"width="100"/></a></td>
					<td>小王</td>
					<td>3</td>
					<td>100</td>
					<td>湖南长沙</td>
					<td>小王</td>
					<td>413400</td>
					<td>18773703713</td>
					
					<td rowspan="2">5</td>
				</tr>
				<tr>
					
					<td><a href="#"> <img src="img/QQ截图20161110000531.png"alt="钻石永恒，持久爱恋" width="100"/></a></td>
					<td>小王</td>
					<td>1</td>
					<td>300</td>
					<td>湖南长沙</td>
					<td>小王</td>
					<td>413400</td>
					<td>18773703713</td>
				</tr>
				
			</table>
		</div>
</body>
</html>