<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>唯品会注册</title>
		<link href="css/register.css" type="text/css" rel="stylesheet"/>
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript" >
		$(function (){
			
			 var regexp = /^\d{11}$/; //手机号码
			 var $pwdobj = /^[A-Za-z0-9]{6,20}$/;
			 $("input[value=获取验证码]").click(function(){
					<%
					Random rd= new Random(); 
				   int i=0;
				   String str="";
				   for(i=0;i<6;i++){
				   int n = rd.nextInt(10);
				   str = str +n;
				   }
					%>
					$(".just_no").html("<font color=‘blue’><%= str%></font>");
					
				});
			$("#sub").click(function(){
				 var errCode = 0; //如果有任何一个错误的时候，将错误代码增加1
				
					var $phone = $(".phonetxt").val();
					$(".just_phone").html("");
					$(".just_pwd").html("");
					$(".just_spwd").html("");
					/* if(regexp.test($phone)){
						var $msg = $(".just_phone");
						$msg.html("");
						errCode--;
						
						
					}else */
					if(regexp.test($phone)==false){
						
						var $msg = $(".just_phone");
						$msg.html("<font color='red'>*手机号码输入错误</font>");
						$(".phonetxt").val("");
						errCode++;
					}
					
					var $pwd = $(".pwdtxt").val();
					
					/* if($pwdobj.test($pwd)){
						 var $msg=$(".just_pwd");
						$msg.html("");
						errCode--;
						
					}
					else */
					if($pwdobj.test($pwd)==false){
						var $msg=$(".just_pwd");
						$msg.html("<font color='red'>*密码由6-20位字母，数字和符号组成</font>");
						errCode++;
					}
					
					
					var $spwd = $(".spwdtxt").val();
					var $pwd = $(".pwdtxt").val();
					/* if($spwd== $pwd&&$spwd!=""){
						var $msg=$(".just_spwd");
						$msg.html("");
						errCode--;
					}
					else */
					if($spwd!= $pwd||$spwd==""){
						var $msg=$(".just_spwd");
						$msg.html("<font color='red'>*密码不一致</font>");
						errCode++;
						
						
					}
					 if(($("#txtMsg").val()) != ($(".just_no>font").html()) || $(".txtMsg").val()==""){
							errCode++;
							}
							if($("#agree").attr("checked") != "checked"){
								errCode++;
							}
							
					 if(errCode<=0){
			          	return true;
			          }
			          else{
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
			<form action="RegisterServlet" method="get">
				<table class="log_tab" border="0">
					<tr>
						<td width="100">欢迎注册</td>
						<td>已注册可<a href="login.jsp">直接登录</a></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="text" class="phonetxt" name="phone"  placeholder="请输入11位手机号" id="txtInput"/>
						</td>
						<td class="just_phone"></td>
						
					</tr>
					<tr>
						<td colspan="2">
							<input type="password" class="pwdtxt" name="password"  placeholder="密码由6-20位字母，数字和符号组合" id="txtInput"/>
						</td>
						<td class="just_pwd"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="password" class="spwdtxt" placeholder="请再次输入上面的密码" id="txtInput"/>
						</td>
						<td class="just_spwd"></td>
					</tr>
					<tr>
						<td>
							<input type="text" placeholder="短信验证码" id="txtMsg" />
						</td>
						<!--用随机生成6位数作为验证码-->
						<td>
							<input type="button" value="获取验证码" />
						</td>
						<td class="just_no"></td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="立即注册" class="user_register" id="sub"/>
						</td>
						<td><label>通过邮箱注册</label></td>
					</tr>
					<tr>
						<td colspan="2">
			                 <input type="checkbox" id="agree"/>
							 我已阅读并接受<a>唯品会服务条款</a>。
						</td>
						
					</tr>
				</table>			
			</form>
		</div>
</body>
</html>