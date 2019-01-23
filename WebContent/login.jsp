<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
List<Map<String,Object>> list =( List<Map<String,Object>>)request.getAttribute("ClassInfoServlet");

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>唯品会登录</title>
		<link href="css/login.css" type="text/css" rel="stylesheet"/>
		<style type="text/css">
			table a{
				text-decoration: none;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript">
			$(function(){
				$("input[value=立即登录]")
				.css("width","100px")
				.css("height","40px")
				.css("background-color","rgb(241,1,128)")
				.css("font-size","18px")
				.css("color","white")
				.css("border","0px solid rgb(241,1,128)");
			
			     $("input[value=注册]")
			     .css("width","100px")
				.css("height","40px")
				.css("background-color","rgb(241,1,128)")
				.css("font-size","18px")
				.css("color","white")
				.css("border","0px solid rgb(241,1,128)")
				.css("margin-left","50px");
				
				$("#txtpwd").css("width","200px")
				.css("height","30px");
			
			    $("#txtname").css("width","200px")
				.css("height","30px");
				var errmsg=0;
				
				
				$("#sub").click(function(){
					
					if($("#txtname").val()==""){
						$("#txtname").next().remove();
						$obj=$("<span></span>");
						$obj.html("<font color='red'>*请输入账号</font>");
						$("#txtname").after($obj);
						errmsg++;
					}else{
						$("#txtname").next().remove();
						errmsg--;
					}
					if($("#txtpwd").val()==""){
						$("#txtpwd").next().remove();
						$obj=$("<span></span>");
						$obj.html("<font color='red'>*请输入密码</font>");
						$("#txtpwd").after($obj);
						errmsg++;
					}else{
						$("#txtpwd").next().remove();
						errmsg--;
					}
					if(errmsg<=0){
						return true;
					}else{
						return false;
					}
				});
			});
			
		</script>

</head>
<body>

<div class="header1">
			<div class="image ">
					<img src="img/1470411050559.png" class="image1" />
				</div>
				<div class="image_1 image_3">
					<img src="img/1466131264367.png" class="image2"/>
				</div>
				<div class="image_1 image_2">
					<img src="img/1466131266290.png"  class="image2" />
				</div>
				<div class="image_1 image_2">
					<img src="img/1466131268726.png"  class="image2" />
				</div>
			
		</div>
		<div class="back1"></div>
		
		<div class="user_login">
			<form action="ClassInfoServlet.do" method="get">
			
				<table class="log_tab" border="0">
					<tr>
						<td width="100">如有账号，请登录</td>
						
					</tr>
					<tr>
						<td colspan="2">
							<input type="text" name="phone"  placeholder="手机号" id="txtname"/>
						
						</td>
						
						
					</tr>
					<tr>
						<td colspan="2">
							<input type="password" name="password"  placeholder="密码" id="txtpwd"/>
						</td>
						
					</tr>
					
					
					<tr>
						<td>
							<input type="submit" value="立即登录" id="sub" />
							<input type="button" value="注册" onclick="javascript:window.location.href='register.jsp'"/>
							
						</td>
						
					</tr>
					
				</table>			
			</form>
		</div>
</body>
</html>