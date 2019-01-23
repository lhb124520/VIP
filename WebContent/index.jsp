<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>唯品会</title>
<link href="css/index.css" type="text/css" rel="stylesheet" />
<link href="css/login1.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/vip.js" type="text/javascript"></script>
<%
	List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("ClassInfoServlet");
%>
</head>
<body>
	<div class="edge">
		<div class="right">
			<div id="divAccount">
				<div id="div_account">
					<div id="div_img">
						<img src="img/avatar-default.jpg" />
					</div>
					<p>
						
						<span>您好！<%=session.getAttribute("phone")==null?"请</span><a href='login.jsp'>登录</a>|<a href='register.jsp'>注册</a> ":session.getAttribute("phone")%></span> 
						
						
					</p>
					<div id="div_myDingdan">
						<div id="myDingdan">
							<img src="img/MYDingdan.png" />
							<p>我的订单</p>
						</div>
					</div>
					<div id="div_mymsg">
						<div id="mymsg">
							<img src="img/Mymsg.png" />
							<p>我的消息</p>
						</div>
					</div>
					<div id="div_p_1">
						<a>会员俱乐部</a>
					</div>
				</div>
				<div class="right1 rightacc" id="account">
					<a href="#" title="请登录"> <img src="img/accountno.png" /><br />
						账号
					</a>
				</div>
			</div>
			<div id="juan">
				<div id="div_juan">
					<p>我的优惠券</p>
				</div>
				<div class="right1" id="divJuan">
					<a href="#" title="我的优惠劵"> <img src="img/juan.png" /><br /> 劵
					</a>
				</div>
			</div>
			<div id="pinpai">
				<div id="div_pinpai">
					<p>我收藏的品牌</p>
				</div>
				<div class="right1">
					<a href="#" title="我收藏的品牌"> <img src="img/pinpai.png" /><br />
						品牌
					</a>
				</div>
			</div>
			<div id="goods">
				<div id="div_goods">
					<p>我收藏的商品</p>
				</div>
				<div class="right1">
					<a href="#" title="我收藏的商品"> <img src="img/goods.png" /><br />
						商品
					</a>
				</div>
			</div>
			<div class="right2">
				<a href="GouWuChe_Shuju.do" title="我的购物袋"> <img src="img/shoopingbag.png" /><br />
					购<br />物<br />袋<br /></a>
				<div class="sbag">0</div>
			</div>
			<div class="pen">
				<div id="pencil">
					<div id="div_pencil">
						<p>会员反馈</p>
					</div>
					<a href="#" title="会员反馈"> <img src="img/pencil.png" />
					</a>
				</div>
				<br /> <br /> <br /> <br /> <a href="#top1" title="返回顶部"> <img
					src="img/jiankh.png" />
				</a>
			</div>
		</div>
		<div class="top">
			<div id="div_address">
				<div class="area a_font" id="div_1">
					<span>湖南</span>
					<!--<select id="selArea">
						<option>湖南</option>
					</select>-->
					<a name="top1"><i class="address "></i></a>
				</div>
				<div id="div_absolute">
					<p class="p_area">请选择所在的收货地区</p>
					<table id="tab_absolute">
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
			<div id="div_login">
				<div class="login a_font login1">
					<a href="login.jsp" title="请登录"> <%=session.getAttribute("phone")==null?"请登录 ":session.getAttribute("phone")%></a> <i class="em">/</i>
				</div>
				<div class="user-login">
					<div class="login_top">
						<div class="log_image"></div>
						<a href="login.jsp" class="user_log">
							<p class="ple_log"> <%=session.getAttribute("phone")==null?"您好！[请登录] ":session.getAttribute("phone")%></p>

						</a>
					</div>
					<div>
						<div class="login_left">
							<ul>
								<li class="item"><a class="log_a1" href="#">我的收藏</a></li>
								<li class="item"><a class="log_a1" href="#">唯品钱包</a></li>
								<li class="item"><a class="log_a1" href="#">我的唯品币</a></li>
							</ul>
						</div>
						<div class="login_right">
							<ul>
								<li class="item"><a class="log_a1" href="#">我的订单</a></li>
								<li class="item"><a class="log_a1" href="#">我的优惠卷</a></li>
								<li class="item"><a class="log_a1" href="#">唯品金融</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="login a_font register1">
				<a href="register.jsp" title="注册"><%=session.getAttribute("phone")==null?" 注册 ":""%></a> <i class="em">/</i>
			</div>
			<div class="login a_font">
				<a href="#" title="我的订单"> 我的订单</a> <i class="em">/</i>
			</div>
			<div id="collect">
				<div class="login a_font" id="col">
					<a href="#" title="我的收藏"> 我的收藏 <i class="address  save"></i></a> <i
						class="em">/</i>
				</div>
				<div id="div_collect">
					<ul id="ul_collect">
						<li><a href="#">收藏的品牌(0)</a></li>
						<li><a href="#">收藏的宝贝(0)</a></li>
					</ul>
				</div>

			</div>
			<div id="vip">
				<div class="login a_font part" id="div_part">
					<a href="#" title="会员俱乐部"> 会员俱乐部 <i class="address  save "></i>
					</a> <i class="em">/</i>
				</div>
				<div id="div_vip">
					<ul id="ul_vip">
						<li><a href="#">俱乐部首页</a></li>
						<li><a href="#">唯品币兑换</a></li>
						<li><a href="#">免费抽大奖</a></li>
					</ul>
				</div>
			</div>
			<div id="server">
				<div class="login a_font" id="server_1">
					<a href="#" title="客户服务"> 客户服务 <i class="address  save "></i>
					</a> <i class="em">/</i>
				</div>
				<div id="div_server">
					<ul id="ul_server">
						<li><a href="#">联系客服</a></li>
						<li><a href="#">帮助中心</a></li>
						<li><a href="#">服务中心</a></li>
						<li><a href="#">知识产权投诉</a></li>
					</ul>
				</div>
			</div>
			<div id="phone">
				<div class="login a_font" id="div_phone_1">
					<img src="img/phone.png" align="middle" /> <a href="#" title="手机版">
						手机版 </a> <i class="em">/</i>
				</div>

				<div id="div_phone">
					<div class="img-phone">
						<img src="img/vip_logo.png" height="100%" width="100%" />
					</div>
					<div>
						<span><a> 随时逛 及时抢</a></span>

					</div>
				</div>
			</div>
			<div id="more">
				<div class="login a_font" id="div_more_1">
					<a href="#" title="更多"> 更多 <i class="address  save "></i>
					</a> <i class="em">/</i>
				</div>
				<div id="div_more">
					<h5>合作专区</h5>
					<p>
						<a>联名卡申请</a> <a>唯品卡</a> <a>支付专区</a>
					</p>
					<hr />
					<h5>关于我们</h5>
					<p>
						<a>Sell on vip</a> <a>品牌招商</a> <a>官方博客</a>
					</p>
				</div>

			</div>
		</div>
		<div class="top_center1">
			<div class="image ">
				<img src="img/1470411050559.png" class="image1" />
			</div>
			<div class="image_1">
				<img src="img/1466131264367.png" class="image2" />
			</div>
			<div class="image_1 image_2">
				<img src="img/1466131266290.png" class="image2" />
			</div>
			<div class="image_1 image_2">
				<img src="img/1466131268726.png" class="image2" />
			</div>
			<div class="image_1 image_2 vline">
				<i class="verline">|</i> <img src="img/bag.png" /> <a href="GouWuChe_Shuju.do">我的购物袋</a>
			</div>

		</div>
		<div class="top_center2">

			<div class="tc tc1">
				<a href="#" title="首页">首页</a>
			</div>
			<div class="tc1 tc3">
				<a href="#" title="唯品国际">唯品国际</a>
			</div>
			<div class="tc1 tc3">
				<a href="#" title="宝贝保暖季">宝贝保暖季</a>
			</div>
			<div class="tc1 ">
				<a href="#" title="居家">居家</a>
			</div>
			<div class="tc1">
				<a href="#" title="男士">男士</a>
			</div>
			<div class="tc1">
				<a href="#" title="美妆">美妆</a>
			</div>
			<div class="tc1 tc3">
				<a href="#" title="唯品金融">唯品金融</a>
			</div>
			<div class="tc1">
				<a href="#" title="旅行">旅行</a>
			</div>

			<div id="dao_more">
				<div class="tc1">
					<a href="#" title="更多">更多</a>
				</div>

				<div id="div_dao_more">

					<div style="background-image: url(img/女装.jpg);">女装</div>
					<div style="background-image: url(img/鞋包.jpg);">鞋包</div>
					<div style="background-image: url(img/配饰.jpg);">配饰</div>
					<div style="background-image: url(img/运动.jpg);">运动</div>
					<div style="background-image: url(img/汽车.jpg);">汽车</div>
					<div style="background-image: url(img/爱丽奢.jpg);">爱丽奢</div>
				</div>
			</div>

			<div class="tc1 tc3 ">
				<a href="#" title="预告"><img src="img/pre.png" align="middle" /></a>
				<a class="pre1" href="#" title="预告"> 预告</a>
			</div>
			<div class="tc2">
				<a href="#" title="分类"> <img src="img/fen.png" align="top" /> 分类
				</a>
			</div>

		</div>

		<div class="top_bottom">
			<div class="bgcolor" ><!-- onclick="javascript:window.location.href='GoodsDetail.jsp'" -->


				<div class="top_bottom_content">
					<ul> 
						<li><img src="img/14746185434977.jpg" width="975px" /></li>
						<!--<li><img src="img/14746242968573.jpg" width="975px"/></li>
					<li><img src="img/14746262342259.jpg" width="975px"/></li>-->
					</ul>

				</div>
				<div class="bg_bottom bg_bottom1">
					<a href="GoodsDetailServlet1.do?shop_id=1" class="botline" id="a_yangrong1">
						羊绒保暖季&nbsp;1件9折/2件8.5折</a>
				</div>
				<div class="bg_bottom1" id="a_yangrong2">
					<a href="GoodsDetailServlet1.do?shop_id=2" class="botline"> 菲妮迪集体献炬 &nbsp;满599减90</a>
				</div>
				<div class="bg_bottom1" id="a_yangrong3">
					<a href="GoodsDetailServlet1.do?shop_id=3" class="botline"> 迪桑娜集团品牌献炬</a>
				</div>

			</div>
		</div>
		<div class="title title1">
			<div class="title_image title1_image">
				<a name="todayname"> <img src="img/today_DDp.png" width="950px" /></a>
			</div>
		</div>
		<div class="navbar">
			<table>
				<tr>
					<td class="td1"><a href="#todayname"> <img
							src="img/star.png" /> 精选
					</a></td>
				</tr>
				<tr>
					<td><a href="#womanname"> <img src="img/girl.png" /> 女装
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/shoebag.png" /> 鞋包
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/man.png" /> 男士
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/sport.png" /> 运动
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/decoration.png" /> 饰品
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/beauty.png" /> 美妆
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/mom.png" /> 母婴
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/home.png" /> 居家
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/internation.png" />国际
					</a></td>
				</tr>
				<tr>
					<td><a> <img src="img/life.png" />生活
					</a></td>
				</tr>
				<tr>
					<td><a href="#morepre"> <img src="img/pre1.png" />预告
					</a></td>
				</tr>
			</table>
		</div>

		<div class="today1 towidth toleft">
			<div class="to_font">
				Marisfrolg<br /> <br /> 玛丝菲尔知性时尚&nbsp;智慧艺术
			</div>
		</div>
		<div class="today2 towidth toright">
			<div class="to_font">
				<img src="img/to2_2.png" /><br /> m.tsubomi無界&nbsp;侘寂
			</div>
		</div>
		<div class="today3 towidth toleft">
			<div class="to_font">
				<img src="img/to3-1.png" /><br /> MIAA&nbsp;Sixty意大利性感牛仔品牌
			</div>
		</div>
		<div class="today4 towidth toright">
			<div class="to_font">
				<img src="img/to4-1.png" /><br /> 青春就是“潮”越自我
			</div>
		</div>
		<div class="today5 towidth toleft">
			<div class="to_font">
				<img src="img/to5-1.png" /><br /> 型走的"荷尔蒙"
			</div>
		</div>
		<div class="today6 towidth toright">
			<div class="to_font">
				<img src="img/to6-1.png" /><br /> 释放时尚&nbsp;展现魅力
			</div>
		</div>


		<div class="title2">
			<div class="title2_image">
				<a name="womanname"><img src="img/woman_2ad.png" /></a>
				<hr />
			</div>
		</div>
		<div class="towidth toleft woman1 woman"></div>
		<div class="towidth toright woman2 woman"></div>
		<div class="toleft  mo_font">
			<b class="b1">2</b>折起&nbsp;玛丝菲尔Marisfrolg
		</div>
		<div class="toright  mo_font">
			<b class="b1">0.6</b>折起&nbsp;m.tsubomi(子苞米)女装专场
		</div>
		<div class="towidth toleft woman3 woman"></div>
		<div class="towidth toright woman4 woman"></div>
		<div class="toleft mo_font">
			<b class="b1">3</b>折起&nbsp;Miss&nbsp;Sixty女装专场
		</div>
		<div class="toright mo_font">
			<b class="b1">2.5</b>折起&nbsp;DIESEL女士专场
		</div>
		<div class="towidth toleft woman5 woman"></div>
		<div class="towidth toright woman6 woman"></div>
		<div class="toleft mo_font">
			<b class="b1">4.6</b>折起&nbsp;哥弟GIRDEAR女装专场
		</div>
		<div class="toright mo_font">
			<b class="b1">1</b>折起&nbsp;菲妮迪FINITY女装专场
		</div>

		<div class="morepre">
			<a href="#" name="morepre">查看更多预告</a>
		</div>

		<div class="footer">
			<div class="footer_top footermar">
				<img src="img/footer_vip_iconsv_0704.png" width="980px" />
			</div>
			<div class="footer_center footermar">
				<ul class="list list1">
					<h4>
						<a href="#">服务保障</a>
					</h4>
					<li><a href="#">正品保证</a></li>

					<li><a href="#">7天无理由放心退</a></li>
					<li><a href="#">退货返运费</a></li>
					<li><a href="#">7×15小时客户服务</a></li>
				</ul>
				<ul class="list list2">
					<h4>
						<a href="#">购物指南</a>
					</h4>
					<li><a href="#">导购演示</a></li>

					<li><a href="#">订单操作</a></li>
					<li><a href="#"> 会员注册</a></li>
					<li><a href="#">账户管理</a></li>
					<li><a href="#">收货样品</a></li>
					<li><a href="#">会员等级</a></li>
				</ul>
				<ul class="list list3">
					<h4>
						<a href="#">支付方式</a>
					</h4>
					<li><a href="#">快捷支付</a></li>
					<li><a href="#">23家主流网银支付</a></li>
					<li><a href="#">货到付款</a></li>
					<li><a href="#">支付宝、银联等支付</a></li>
					<li><a href="#">信用卡支付</a></li>
					<li><a href="#">唯品钱包支付</a></li>

				</ul>
				<ul class="list list4">
					<h4>
						<a href="#">配送方式</a>
					</h4>
					<li><a href="#">全场面288元免运费</a></li>
					<li><a href="#">配送范围及运费</a></li>
					<li><a href="#">验货与签收</a></li>

				</ul>
				<ul class="list list5">
					<h4>
						<a href="#">售后服务</a>
					</h4>
					<li><a href="#">退货政策</a></li>
					<li><a href="#">退货流程</a></li>
					<li><a href="#">退货方式和时效</a></li>

				</ul>
				<ul class="list list6">
					<li><a href="#">唯品会APP二维码</a></li>
					<li><a href="#"> <img src="img/page_bottom_dl_n.png" /></a></li>
					<li><a href="#">下载唯品会移动APP</a></li>
				</ul>
			</div>
			<div class="footer_bottom1 footermar">
				<p class="fline">
					<a title="关于我们" href="#">关于我们</a>| <a title="About us" href="#">About
						us</a>| <a title="Invester Relations" href="#">Invester Relations</a>|
					<a title="媒体报导" href="#">媒体报导</a>| <a title="品牌招商" href="#">品牌招商</a>|
					<a title="隐私条款" href="#">隐私条款</a>| <a title="友情链接" href="#">友情链接</a>|
					<a title="唯品诚聘" href="#">唯品诚聘</a>| <a title="365爱心基金" href="#">365爱心基金</a>|
					<a title="唯品卡" href="#">唯品卡</a>| <a title="唯品地图" href="#">唯品地图</a>|
					<a title="品牌大全" href="#">品牌大全</a>| <a title="联系我们" href="#">联系我们</a>
				</p>

			</div>
			<div class="footer_bottom2 footermar">
				<p class="bline">
					Copyright © 2008-2016 vip.com，All Rights Reserved&nbsp; <a
						class="a1" href="#"> 粤ICP备08114786号&nbsp;</a> <a class="a1"
						href="#"> ICP经营许可证：粤B2-20080329&nbsp;</a> <a class="a1" href="#">网络文化经营许可证：粤网文〔2015〕1528-229
						&nbsp;</a><br /> <a class="a1" href="#">粤公网安备
						44010302111111号&nbsp;</a> <a class="a1" href="#">使用本网站即表示接受&nbsp;</a>
					<a class="a1" href="#">唯品会用户协议&nbsp;</a> 。版权所有 <a class="a1"
						href="#">广州唯品会信息科技有限公司</a>
				</p>
			</div>
			<div class="footer_bottom3 footermar">
				<p class="fimage">
					<a title="银联特约商户" href="#"><img src="img/banklink.png" /></a> <a
						title="消费维权服务站" href="#"><img src="img/custom.png" /></a> <a
						title="红盾电子链接标识" href="#"><img src="img/emark.png" /></a> <a
						title="网络警察报警平台" href="#"><img src="img/netpolice.png" /></a> <a
						title="公安局网络警察支队" href="#"><img src="img/police.png" /></a> <a
						title="诚信网站" href="#"><img src="img/honest.png" /></a> <a
						title="可信网站" href="#"><img src="img/canhonest.png" /></a>
				</p>
			</div>
		</div>

	</div>
</body>
</html>