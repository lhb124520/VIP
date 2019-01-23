<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/GouWu_01.css"/>
		<script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function() {
         
         $(".div_041141").click(function() {
              var $txtObj;
              var result=0;
              var x=0;
              var tmp=0;
              var y=0;
              $txtObj = $(this).next();
              if(parseInt($txtObj.val()) > 0) {
                $txtObj.val(eval($txtObj.val() + "-1"));
              }
             // alert($(".div_041142").val());
              if(parseInt($txtObj.val()) <= 0){
             	 alert("操作不合要求");
              	 $(this).next().val(1);
            //  	 alert($(this).prev().val(1))
            //  	 $(".div_041142").val(1);
              	 result = parseInt($txtObj.val()) + "*" + $(this).parent().parent().prev().children().children().first().text();
                 tmp = (Math.round(eval(result) * 100)) / 100;
                 $(this).parent().parent().next().children().children().first().text(addZero(tmp));
                 zje=zje;
              }else{
              	result = $txtObj.val() + "*" + $(this).parent().parent().prev().children().children().first().text();
                x = (parseInt($txtObj.val())+1)  + "*" + $(this).parent().parent().prev().children().children().first().text();
                tmp = (Math.round(eval(result) * 100)) / 100;
                y = (Math.round(eval(x) * 100)) / 100;
                $(this).parent().parent().next().children().children().first().text(addZero(tmp));
                zje=zje+tmp-y;
              }
           
         
          $("#div_05_024").text(zje);
         });
        
         $(".div_041143").click(function() {
              var $txtObj;
              $txtObj = $(this).prev();
              if(parseInt($txtObj.val()) > 0) {
                $txtObj.val(eval($txtObj.val() + "+1"));
              }
              
          var result = $txtObj.val() + "*" + $(this).parent().parent().prev().children().children().first().text();
          var x =parseInt($txtObj.val()-1)  + "*" + $(this).parent().parent().prev().children().children().first().text();
          var tmp = (Math.round(eval(result) * 100)) / 100;
          var y = (Math.round(eval(x) * 100)) / 100;
          $(this).parent().parent().next().children().children().first().text(addZero(tmp));
          zje=zje+tmp-y;
          $("#div_05_024").text(addZero(zje));
         // alert(zje);
         });
           
        $(".div_04116").click(function() {
          if(confirm("您确认是否要删除？")) {  
        	  $("#form_1").submit();
          	var $txtObj;
          	$txtObj =$(".div_041143").prev(); 
          	//parent().parent().prev().prev().children().children().eq(2);
            var result = $txtObj.val() + "*" + $(".div_041143").parent().parent().prev().children().children().first().text();
            var tmp = (Math.round(eval(result) * 100)) / 100;
            zje=zje-tmp;
            $("#div_05_024").text(addZero(zje));
           // alert($(this).parent().parent().children().children().eq(3).children().text());
            $(this).parent().parent().remove();
            document.getElementById("#form_1").submit();
            
          }
        });
      });
      var zje=0;
      
      $(function(){
       	for(i=0;i<$(".dangezongjia").size();i++){
       	
       	/*  alert($($(".dangezongjia")[i]).text()); */
       	
       	}
       	for(i=0;i<$(".div_041142").size();i++){
       	/*  alert($($(".div_041142")[i]).val()); */	  
       	}
       	for(i=0;i<$(".div_041142").size();i++){
       		var result = parseInt($($(".dangezongjia")[i]).text());
       		
       		
       		var tmp = (Math.round(eval(result) * 100)) / 100;
       		zje=zje+tmp;
       	}
       	 $("#div_05_024").text(addZero(zje));
//  	 var arr=new Array();
    	 
//  	 var jg=$(".div_041143").parent().parent().prev().children().children().first().text();
//  	 var sl=$(".div_041143").prev().val();
//  	// for(var i=0;;){}
//  	 //arr []=jg*sl;
//  	    
//  	  
//  	  
//  	  for(var i=0;i<$(".div_041142").length;i++){
//  	  
//  	//  alert($(".div_041143").parent().parent().next().children().children().first().text());
//  	   
//  	  //arr[i]=jg*sl;
//  	   var arr1 = $(".div_041143").parent().parent().next().children().children().first().text();
//  	  $.each(arr1, function(i, item){     
//        alert(item[0]);     
//		  }); 
//  	  	
//  	  }
//  	  for(var n=0;n<arr.length;n++){
//  	  	 zje=zje+arr[n];
//  	 	 
//  	  } 
//  	  $("#div_05_024").text(addZero(zje));
//  	//  alert($("#div_05_024").text(zje)); 
   }); 
     
    $(function(){
   			var m=19;
    		var s=59;
    		setInterval(function(){
       		 if(s<10){
            	$('#time').html(m+':0'+s);
        	 }else{
            	$('#time').html(m+':'+s);
             }
             s--;
           if(s<0){
              s=59;
              m--;
              if(m<=0){
            	  if(confirm("您未在规定时间内提交订单，页面将关闭！")){
            		  window.close();
            	  }
            	  else{
            		  window.open('index.jsp',"_parent")
            	  }
              }
            	 
              
           }
         $("#div_021").html(m+"分钟"+s+"秒");
         $("#div_05_021").html(m+"分钟"+s+"秒");
       },1000)
  });

       function addZero(number) {
        // if(number > 0 && number < 10) {
        //   return "0" + number;
        // }
        var num = new String(number);

        if(num.indexOf(".") == -1) {
          return num + ".00";
        } else if(num.indexOf(".") == num.length - 2) {
          return num + "0";
        } else {
          return num;
        }
      }
		</script>
</head>
<body>
        <%
		//获取请求对象中的 数据
		List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("shoplist");
	 %>
	 
           
            <div id="div_01">
        	<span class="cl_011">你好</span>
        	<span class="cl_011">[退出]</span>
        	<span class="cl_011">订单管理</span>
        	<span class="cl_011">|</span>
        	<span class="cl_011">400-6789-888</span>
        	<span class="cl_011">|</span>
        	<span class="cl_011">在线客服</span>
        	<span class="cl_011">|</span>
        	<span class="cl_011">会员服务</span>
        	<br />
        	<span class="cl_012">100% 正品保证</span>
        	<span class="cl_012">七天无理由放心退</span>
        	<span class="cl_012">退货返运费</span>
        </div>
        <marquee bgcolor="fuchsia" height="5px"></marquee>
        <div id="div_02">
        	 <span class="cl_021">|</span>
        	 <span class="cl_021">请在<label  id="div_021">20分钟</label>内提交订单，下单后你另有 30 分钟的支付时间。</span>
        </div>
        <div id="div_03">
            <div id="div_031">
            	<ul class="ul1">
            	  <li><span id="div_0312">维品自营</span></li>
            	  <li><span id="div_03111">单价</span></li>
            	  <li><span id="div_03112">数量</span></li>
                  <li><span id="div_03113">小计</span></li>
            	  <li><span id="div_03114">操作</span></li> 
            	</ul>
            </div>
             	<%for(Map<String,Object> m:list){%>
            <div id="div_041">
            	 	   	<ul class="ul1">
            	 	   	   <div class="div_04111"><li><img src='<%=m.get("shop_img")%>'/></li></div>
            	 	   	   	<div class="div_04112"><span><%=m.get("shop_xinxi")%>
            	 	   	   	</br><span>尺码：<label><%=m.get("shop_chima")%></label></span></span></div>
            	 	   	   	<div class="div_04113"><li>¥<label><%=m.get("shop_danjia")%></label></br><span style="text-decoration: line-through;">¥<%=m.get("shop_yuanjia")%></span></li></div>
            	 	        <div class="div_04114"><li>
            	 	        	<input type="button" class="div_041141" value="-" />
          						<input type="text" class="div_041142" value=<%=m.get("shop_num")%> readonly="readonly" />
          						<input type="button" class="div_041143" value="+" />
            	 	        </li></div>
            	 	   	    <div class="div_04115"><li>¥<label class="dangezongjia"><%=m.get("shop_xiaoji")%></label></li></div>
            	 	   	    
            	 	   	    
            	 	   	    <div class="div_04116"><li>
            	 	   	    <form action="ShoppingCar_servlet.do" method="get" id="form_1">
            	 	   	    <input type="hidden" value=<%=m.get("shop_id")%> name="shop_id"/>
            	 	   	    <input type="button" name="delete" class="div_041161" value="删除" />
            	 	   	    </form>
            	 	   	    </li></div>
            	 	   	    
            	 	   	</ul>
            </div><%} %>
            <!--
            <div id="div_051">
            	     <ul class="ul1">
                         <div class="div_04111"><li><img src="img/pic_03(x).jpg"/></li></div>
                         	<div class="div_04112"><span>尚都比拉SENTUBILA女装专场 - 宝蓝色拼接优雅大方连衣裙
            	 	   	   	</br><span>尺码：<label>S</label></span></span></div>
            	 	   	   	<div class="div_04113"><li>¥<label>298.00</label></br><span style="text-decoration: line-through;">¥1066</span></li></div>
            	 	        <div class="div_04114"><li>
            	 	        	<input type="button" class="div_041141" value="-" />
          						<input type="text" class="div_041142" value="1" readonly="readonly" />
          						<input type="button" class="div_041143" value="+" />
            	 	        </li></div>
            	 	   	    <div class="div_04115"><li>¥<label>298.00</label></li></div>
            	 	   	    <div class="div_04116"><li><input type="button" class="div_041161" value="删除" /></li></div>
            	     </ul>
            </div>
            <div id="div_061">
            	     <ul class="ul1">
                         <div class="div_04111"><li><img src="img/pic_03(x).jpg"/></li></div>
                         	<div class="div_04112"><span>尚都比拉SENTUBILA女装专场 - 宝蓝色拼接优雅大方连衣裙
            	 	   	   	</br><span>尺码：<label>S</label></span></span></div>
            	 	   	   	<div class="div_04113"><li>¥<label>298.00</label></br><span style="text-decoration: line-through;">¥1066</span></li></div>
            	 	        <div class="div_04114"><li>
            	 	        	<input type="button" class="div_041141" value="-" />
          						<input type="text" class="div_041142" value="1" readonly="readonly" />
          						<input type="button" class="div_041143" value="+" />
            	 	        </li></div>
            	 	   	    <div class="div_04115"><li>¥<label>298.00</label></li></div>
            	 	   	    <div class="div_04116"><li><input type="button" class="div_041161" value="删除" /></li></div>
            	     </ul>
            </div>  -->
        </div>
        <div id="div_04_01">
        	           <label id="div_04_02">运费:</label>
        	           <span id="div_04_03">本组商品已免运费</span>
        </div>
        <div id="div_05_01">
        	             <span id="div_05_02"></span>
        	             <span class="div_05_02">请在<label id="div_05_021">20分钟</label>内提交订单</span>
        	             <span class="div_05_02">|</span>
        	             <span class="div_05_02">总金额(已免运费)</span>
        	             <span class="div_05_02" id="div_05_03">￥<label id="div_05_024"></label></span>             
        </div>
        <div id="div_06_01">
        	 <span ><input id="div_06_02" type="button" value="结算" onclick="javascript:location.href='JieSuanServlet.do'"/></span>
        </div>
</body>
</html>