<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <%
//获取请求对象中的 数据
List<Map<String, Object>> Goods_list = (List<Map<String, Object>>) request.getAttribute("Goods_list");
		    	 %>
		    	 
		  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
			body {
				font-size: 14px;
				color: #666;
			}
			.div_count{
			width:20px;
			}
			div#head {
				background-color: aquamarine;
				width: 1000px;
				height: 20px;
				margin: 0 auto;
			}
			
			.head1 {
				width: 80px;
				/*background-color: blue;*/
				height: 20px;
			}
			
			.head1-1 {
				float: left;
			}
			
			.head1-2 {
				float: left;
			}
			
			li {
				list-style: none;
			}
			
			ul {
				padding-left: 0px;
			}
			
			a {
				text-decoration: none;
				color: #666;
			}
			
			a:hover {
				color: #f10180;
			}
			
			div#weipin {
				background-color: ;
				width: 1000px;
				height: 60px;
				margin: 20px auto;
			}
			
			table {
				background-color: white;
			}
			
			#haochang {
				background-color: #F10180;
				line-height: 40px;
			}
			
			.cichang {
				/*background-color: aquamarine;*/
				margin: 0 auto;
				width: 1000px;
			}
			
			.left2>a {
				color: white;
				font-weight: 700;
				font-size: 18px;
				padding: 0 10px;
			}
			
			#wupin {
				margin: 0 auto;
				width: 1000px;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script>
			$(function() {
				
			
				$("div[data-show='modal']").hover(function() {
					$(this).children().eq(-1).toggle();
				});
				$("#select td").click(function() {

					$(".head1-1 a").text($(this).children().text());
				});
				$(".left2").mouseover(function() {
					$(this).css("background-color", "red");
				});
				$(".left2").mouseout(function() {
					$(this).css("background-color", "");
				});
				$(".wupinzuo tr").eq(1).children().click(function() {
					$(this).children().attr("src");

					$(".wupinzuo tr").eq(0).children().children().attr("src", $(this).children().attr("src"));
				});
				$(".chuang").click(function() {
					$obj=$(this).html();
					
					$("#hidden").val($obj);
					
					$(".chuang").css("border-color", "");
                     
					$(this).css("border-color", "deeppink");
					
				});
				$(".div_desc").click(function(){
		           	
		           	var $count=parseInt($(".div_count").val());
		           	if($count>1){
		           			$count--;
		           	$(".div_count").val($count);
		           	}
		           else{
		           	
		           }
		           });
		            $(".div_add").click(function(){
		           	var $count=parseInt($(".div_count").val());
		           	
		             $count=$count+1;
		           		$(".div_count").val($count);
		           });
		           
 					$("#img_1").click(function(){
 						
		            	$("input#hidden_1").val($("#td_1").html());
		    			$("input#hidden_2").val($("#td_2").val());
		    			$("input#hidden_3").val($("#td_3").html());
		    			$("input#hidden_4").val($("#td_4").html());
		    			$("input#hidden_5").val($("#td_5").html()); 
		    			
		    			var $obj=$("input#hidden_4").val()+"*"+$("input.div_count").val();
		    			
		    			var $a=eval($obj);
		    			$("input#hidden_6").val($a);
		    			<%=session.getAttribute("phone")==null?false:true%>
		    			<%
		    			if(session.getAttribute("phone")==null){
		    				%>
		    				alert("请先登录");
		    				return false;
		    				<%}%>
		    			$("#form1").submit();
		            });
		           <%--  <%for(Map<String,Object> m:Goods_list){%>
	            	 $("input#hidden_1").val(<%=m.get("shop_id")%>);
	    			$("input#hidden_2").val(<%=m.get("shop_img2")%>);
	    			$("input#hidden_3").val(<%=m.get("shop_xinxi")%>);
	    			$("input#hidden_4").val(<%=m.get("shop_danjia")%>);
	    			$("input#hidden_5").val(<%=m.get("shop_yuanjia")%>); 
	    			<%}%> --%>	
		    		
			});
			
		</script>
</head>


<body>
<div id="head" style="position: relative;z-index: 2;">
			<div class="head1" style="float: left;" data-show='modal'>
				<div class="head1-1">
					<a href="#" style="text-decoration: none;">湖北</a>
				</div>
				<div class="head1-2">&nbsp; &nabla;</div>
				<div class="dizhi" style="clear: both;display: none;">

					<table width="300px" height="500px" style="border: solid;" id="select">
						<tr>
							<td colspan="7" align="center">请选择所在的收货地区</td>
						</tr>
						<tr>
							<th>A</th>
							<td><span>安徽</span></td>
							<td><span>澳门</span></td>
						</tr>
						<tr>
							<th>B</th>
							<td><span>北京</span></td>

						</tr>
						<tr>
							<th>C</th>
							<td><span>重庆</span></td>
						</tr>
						<tr>
							<th>F</th>
							<td><span>福建</span></td>
						</tr>
						<tr>
							<th>G</th>
							<td><span>广东</span></td>
							<td><span>广西</span></td>
							<td><span>贵州</span></td>
							<td><span>甘肃</span></td>
						</tr>
						<tr>
							<th>H</th>
							<td><span>河北</span></td>
							<td><span>河南</span></td>
							<td><span>黑龙江</span></td>
							<td><span>海南</span></td>
							<td><span>湖北</span></td>
							<td><span>湖南</span></td>
						</tr>
						<tr>
							<th>J</th>
							<td><span>江苏</span></td>
							<td><span>吉林</span></td>
							<td><span>江西</span></td>
						</tr>
						<tr>
							<th>L</th>
							<td><span>辽宁</span></td>
						</tr>
						<tr>
							<th>N</th>
							<td><span>内蒙古</span></td>
							<td><span>宁夏</span></td>
						</tr>
						<tr>
							<th>Q</th>
							<td><span>青海</span></td>
						</tr>
						<tr>
							<th>S</th>
							<td><span>上海</span></td>
							<td><span>山东</span></td>
							<td><span>山西</span></td>
							<td><span>四川</span></td>
							<td><span>陕西</span></td>
						</tr>
						<tr>
							<th>T</th>
							<td><span>台湾</span></td>
							<td><span>天津</span></td>
						</tr>
						<tr>
							<th>X</th>
							<td><span>西藏</span></td>
							<td><span>香港</span></td>
							<td><span>新疆</span></td>
						</tr>
						<tr>
							<th>Y</th>
							<td><span>云南</span></td>
						</tr>
						<tr>
							<th>Z</th>
							<td><span>浙江</span></td>
						</tr>

					</table>
				</div>

			</div>
			<div class="jihe" style="float: right;">
				<div id="login" style="display: inline-block;position: relative;" data-show='modal'>
					<div id="login-text">
						<a href="login.jsp" style="text-decoration: none;"><%=session.getAttribute("phone")==null?"请登录":session.getAttribute("phone")%>&nbsp;&nbsp;/</a>
					</div>
					<div style="border:solid;width:150px;position: absolute; display: none;text-align: center;">
						<!--<div style="border: solid;display: none;`position: absolute;width: 300px;">-->
						<!--<div style="border: solid;display: none;position: absolute;width: 300px;">-->
						<table style="display: inline-block;">
							<tr>
								<td colspan="2">
									<a href="login.jsp">  <%=session.getAttribute("phone")==null?"您好！请登入【】 ":session.getAttribute("phone")%></a>
								</td>
							</tr>
							<tr>
								<td>
									<ul>
										<li>
											<a href="#"> 我的收藏</a>
										</li>
										<li>
											<a href="#"> 唯品钱包</a>
										</li>
										<li>
											<a href="#"> 我的唯品币</a>
										</li>
									</ul>
								</td>
								<td>
									<ul>
										<li>
											<a href="#"> 我的订单</a>
										</li>
										<li>
											<ahref="#">我的优惠卷</a>
										</li>
										<li>
											<a href="#"> 唯品金融</a>
										</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>

				</div>
				<div class="zhuce" style="display: inline-block;">
					<a href="register.jsp" style="text-decoration: none;"><%=session.getAttribute("phone")==null?"注册":""%>&nbsp;/</a>
				</div>
				<div class="dingdan" style="display: inline-block;">
					<a href="#" style="text-decoration: none;">我的订单&nbsp;/</a>
				</div>
				<div class="shoucang" style="display: inline-block;" data-show='modal'>
					<div>
						<a href="#" style="text-decoration: none;">我的收藏&nbsp;/</a>
					</div>
					<div style="border:solid;width:99px;position: absolute; display: none;text-align: center;">
						<table style="display: inline-block;">
							<tr>
								<td>
									<a href="#"> 收藏的品牌(0)</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 收藏的品牌(0)</a>
								</td>
							</tr>
						</table>
					</div>

				</div>
				<div style="display: inline-block;" data-show='modal'>
					<div>
						<a href="#" style="text-decoration: none;">会员俱乐部&nbsp;/</a>
					</div>
					<div style="border:solid;width:80px;position: absolute; display: none;text-align: center;">
						<table style="display: inline-block;">
							<tr>
								<td>
									<a href="#"> 俱乐部首页</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 唯品币兑换</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 免费抽大奖</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div style="display: inline-block;" data-show='modal'>
					<div>
						<a href="#" style="text-decoration: none;">客户服务&nbsp;/</a>
					</div>
					<div style="border:solid;width:90px;position: absolute; display: none;text-align: center;">
						<table style="display: inline-block;">
							<tr>
								<td>
									<a href="#"> 联系客服</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 帮助中心</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 咨询中心</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="#"> 知识产权投诉</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="dingdan" style="display: inline-block;">
					<a href="#" style="text-decoration: none;">手机版&nbsp;/</a>
				</div>

				<div class="dingdan" style="display: inline-block;">
					<a href="#" style="text-decoration: none;">更多&nbsp;/</a>
				</div>
			</div>
		</div>

		<div id="weipin" style="position: relative;z-index: 1;">
			<div id="wei[inleft]" style="float: left;">
				<a href="#"><img src="img/QQ截图20161109235746.png" /></a>
			</div>
			<div id="weipinright" style="float: right;">
				<div style="float: left;padding: 10px;">
					<a href="#"><img src="img/QQ截图20161110000531.png" /></a>
				</div>
				<div style="float: left;padding: 10px;">
					<a href="#"><img src="img/QQ截图20161110000550.png" /></a>
				</div>
				<div style="float: left;padding: 10px;">
					<a href="#"><img src="img/QQ截图20161110000605.png" /></a>
				</div>
				<div style="float: left; padding: 20px;">
					<div style="display: inline-block;" data-show='modal'>
						<div>
							<a href="#" style="text-decoration: none;">我的購物袋&nbsp;</a>
						</div>
						<div style="border:solid;right: 0px; width:260px;position: absolute; display: none;text-align: center;">
							<table style="display: inline-block;">
								<tr>
									<td>
										好像還沒登入，
										<a href="#" style="color: red;">馬上登入</a>查看購物車吧！
									</td>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="haochang">
			<div class="cichang">
				<div class="ciahngleft" style="float: left;">
					<div class="left1" style="float: left;background-color: deeppink;">
						<a href="#" style="padding:0 5px; color: white;font-weight: 700;font-size: 18px;">不一样的11.11</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">唯品国际</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">母婴</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">居家</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">男士</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">美妆</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">生活</a>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">金融</a>
					</div>
					<div class="left2" style="float: left;position: relative;" data-show='modal'>
						<a href="#">更多!!</a>
						
						
						<table style="display: none;border: solid;position: absolute;right: 0;padding: 5px;">
							<tr>
								<td><img src="img/QQ截图20161110225146.png" /></td>
								<td><img src="img/QQ截图20161110225202.png" /></td>
								<td><img src="img/QQ截图20161110225213.png" /></td>
							</tr>
							<tr>
								<td><img src="img/QQ截图20161110225233.png" /></td>
								<td><img src="img/QQ截图20161110225247.png" /></td>
								<td><img src="img/QQ截图20161110225257.png" /></td>
							</tr>
						</table>
					</div>
					<div class="left2" style="float: left;">
						<a href="#">预告</a>
					</div>
				</div>
				<div class="cichangright" style="float: right;">
					<div class="left2" style="float: left;">
						<a href="#">分类</a>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
		<div id="wupin">
			<div class="wupinzuo" style="float: left;margin-top: 30px;">
			<%for(Map<String,Object> m:Goods_list){%>
				<table>
					<tr>
						<td colspan="6"><img src=<%=m.get("shop_img1")%> width="421px" height="533px"/></td>
					</tr>
					<tr>
						<td>
						<input type="hidden" value=<%=m.get("shop_img2")%> id="td_2"/>
						<img src=<%=m.get("shop_img2")%> width="65" /></td>
						<td><img src=<%=m.get("shop_img3")%> width="65" /></td>
						<td><img src=<%=m.get("shop_img4")%> width="65" /></td>
						<td><img src=<%=m.get("shop_img5")%> width="65" /></td>
						<td><img src=<%=m.get("shop_img6")%> width="65" /></td>
						<td><img src=<%=m.get("shop_img7")%> width="65" /></td>
					</tr>
					<tr>
						<td colspan="3" id="td_1"><%=m.get("shop_id")%></td>
						<td colspan="3">
							<a href="#">收藏商品</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="wupinyou" style="float: right; ">
				<div class="shang">
					<table>
						<tr>
							<td colspan="3" style="padding: 20px;">
								<font size="4" id="td_3"> <%=m.get("shop_xinxi")%></font>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="padding: 20px;">
								<font color="#F10180" size="5">$</font>
								<font color="#F10180" size="7" id="td_5"> <%=m.get("shop_danjia")%></font>
							</td>
							<td style="padding: 20px;">
								<font color="#F10180" style="border: solid;"> <%=m.get("shop_discount")%></font><br />
								<font color="#666666" size="5" style="text-decoration: line-through;" id="td_4"><%=m.get("shop_yuanjia")%></font>
							</td>
						</tr>
						<tr>
							<td style="padding: 20px;">
								<font style="background-color:yellow ;" size="5">满减</font>
							</td>
							<td colspan="2" style="padding: 20px;">满498减100，上不封顶</td>
						</tr>
						<tr>
							<td style="padding: 20px;">
								<font color="#666666">运费</font>
							</td>
							<td style="padding: 20px;">
								<font style="background-color: yellow;"> 免运费</font>
							</td>
							<td style="padding: 20px;">（订单满288免运费）</td>
						</tr>
						<tr>
							<td style="padding: 20px;">
								<font color="#666666">尺码</font>
							</td>
							<td style="padding: 20px;">
								<font class="chuang" style="border: solid;padding: 10px;border-color: deeppink;"> <%=m.get("shop_chima1")%></font>
							</td>
							<td style="padding: 20px;">
								<font class="chuang" style="border: solid; padding: 10px;"><%=m.get("shop_chima12")%></font>
								
							</td>
							<%} %>
						</tr>
						<tr>
							<td style="padding: 20px;">
								<font color="#666666">数量</font>
							</td>
							<td colspan="2" style="padding: 20px;">
							<form action="GoodsDetailServlet.do" method="get" id="form1">
								<input type="button" class="div_desc" value="-" />
          						<input type="text" class="div_count" value="1" readonly="readonly" name="shop_num"/>
          						<input type="button" class="div_add" value="+" />
          						<input type="hidden" id="hidden" name="shop_chima" />
          						<input type="hidden" id="hidden_1" name="shop_id"/>
          						<input type="hidden" id="hidden_2" name="shop_img" />
          						<input type="hidden" id="hidden_3" name="shop_xinxi"/>
          						<input type="hidden" id="hidden_4" name="shop_danjia" />
          						<input type="hidden" id="hidden_5" name="shop_yuanjia"/>
          						<input type="hidden" id="hidden_6" name="shop_xiaoji" /> 
          						
							</form>
							</td>
						</tr>
						<tr>
							<td style="padding: 20px;" colspan="3">
								
								<a>
								
								<img src="img/QQ截图20161111002007.png" id="img_1"/>
								</a>
							</td>
						</tr>
						<tr>
							<td style="padding: 20px;" colspan="3">购买最多可获
								<font color="red"> 324</font>个唯品币 </td>
						</tr>
						<tr>
							<td colspan="3"><img src="img/QQ截图20161111003416.png" /></td>
						</tr>
					</table>
				</div>

			</div>
			<div class="wupinxia">
			<a><img src="img/QQ截图20161111003857.png"/></a>
			</div>
		
		</div>
</body>
</html>