
     $(function(){
     	//选择收货地址
     	$("#div_address").mouseover(function(){
     		$("#div_1").children().css("color","#FF1493");
     		$("#div_1").css("border","1px solid #676767");
     		$("#div_absolute").css("display","block");
     	});
     	$("#div_absolute").mouseover(function(){
     		$("#div_1>span").css("color","#FF1493");
     		$("#div_1").css("border","1px solid #676767");
     		$("#div_absolute").css("display","block");
     	});
     	$("#div_address").mouseout(function(){
     		$("#div_1>span").css("color","");
     		$("#div_1").css("border","");
     		$("#div_absolute").css("display","none");
     	});
     	
     	$("#tab_absolute span").bind({
     		click:function(){
     		var obj=$(this).html();
     		$("#div_1 span").html(obj);
     		
     		},
     		mouseover:function(){
     			$(this).css("color","#FF1493");
     		},
     		mouseout:function(){
     			$(this).css("color","");
     		}
     	});
     	//请登录
     		$("div#div_login").mouseover(function(){
     		$("div.login1").css("border","1px solid #676767");
     		$("div.user-login").css("display","block");
     	});
     	$("div#div_login").mouseout(function(){
     		$("div.login1").css("border","");
     		$("div.user-login").css("display","none");
     	});
     	//我的收藏
     	$("div#collect").mouseover(function(){
     		$("div#col").css("border","1px solid #676767");
     		$("div#div_collect").css("display","block");
     	});
     	$("div#collect").mouseout(function(){
     		$("div#col").css("border","");
     		$("div#div_collect").css("display","none");
     	});
     	//会员俱乐部
     	$("div#vip").mouseover(function(){
     		$("div#div_part").css("border","1px solid #676767");
     		$("div#div_vip").css("display","block");
     	});
     	$("div#vip").mouseout(function(){
     		$("div#div_part").css("border","");
     		$("div#div_vip").css("display","none");
     	});
     	//客户服务
     	$("div#server").mouseover(function(){
     		$("div#server_1").css("border","1px solid #676767");
     		$("div#div_server").css("display","block");
     	});
     	$("div#server").mouseout(function(){
     		$("div#server_1").css("border","");
     		$("div#div_server").css("display","none");
     	});
     	//手机版
     	$("div#phone").mouseover(function(){
     		$("div#div_phone_1").css("border","1px solid #676767");
     		$("div#div_phone").css("display","block");
     	});
     	$("div#phone").mouseout(function(){
     		$("div#div_phone_1").css("border","");
     		$("div#div_phone").css("display","none");
     	});
     	//更多
     	
     	$("div#more").mouseover(function(){
     		$("div#div_more_1").css("border","1px solid #676767");
     		$("div#div_more").css("display","block");
     	});
     	$("div#more").mouseout(function(){
     		$("div#div_more_1").css("border","");
     		$("div#div_more").css("display","none");
     	});
     	//竖版导航栏账号
     	
     	$("div#divAccount").mouseover(function(){
     		
     		$("div#div_account").css("display","block");
     	});
     	$("div#divAccount").mouseout(function(){
     		
     		$("div#div_account").css("display","none");
     	});
     	//竖版导航栏券
     	
     	$("div#juan").mouseover(function(){
     		
     		$("div#div_juan").css("display","block");
     	});
     	$("div#juan").mouseout(function(){
     		
     		$("div#div_juan").css("display","none");
     	});
     	//竖版导航栏品牌
     	
     	$("div#pinpai").mouseover(function(){
     		
     		$("div#div_pinpai").css("display","block");
     	});
     	$("div#pinpai").mouseout(function(){
     		
     		$("div#div_pinpai").css("display","none");
     	});
     	//竖版导航栏商品
     	
     	$("div#goods").mouseover(function(){
     		
     		$("div#div_goods").css("display","block");
     	});
     	$("div#goods").mouseout(function(){
     		
     		$("div#div_goods").css("display","none");
     	});
     	//竖版导航栏反馈
     	
     	$("div#pencil").mouseover(function(){
     		
     		$("div#div_pencil").css("display","block");
     	});
     	$("div#pencil").mouseout(function(){
     		
     		$("div#div_pencil").css("display","none");
     	});
     	//横板版导航栏更多
     	
     	$("div#dao_more").mouseover(function(){
     		
     		$("div#div_dao_more").css("display","block");
     	});
     	$("div#dao_more").mouseout(function(){
     		
     		$("div#div_dao_more").css("display","none");
     	});
     	//图片切换
     	$("#a_yangrong1").mouseover(function(){
     		$("div.top_bottom_content>ul>li:first").remove();
     		var $obj=$("<li></li>");
     		$obj.html('<a href="GoodsDetailServlet1.do?shop_id=1"><img src="img/14746185434977.jpg" width="975px"/></a>');
     		$("div.top_bottom_content>ul").prepend($obj);
     		
     	});
     	$("#a_yangrong2").mouseover(function(){
     		$("div.top_bottom_content>ul>li:first").remove();
     		var $obj=$("<li></li>");
     		$obj.html('<a href="GoodsDetailServlet1.do?shop_id=2"><img src="img/14746242968573.jpg" width="975px"/></a>');
     		$("div.top_bottom_content>ul").prepend($obj);
     	});
     	$("#a_yangrong3").mouseover(function(){
     		$("div.top_bottom_content>ul>li:first").remove();
     		var $obj=$("<li></li>");
     		$obj.html('<a href="GoodsDetailServlet1.do?shop_id=3"><img src="img/14746262342259.jpg" width="975px"/></a>');
     		$("div.top_bottom_content>ul").prepend($obj);
     	});
     });
