<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
        <%
		//获取请求对象中的 数据
		List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("shoplist");
	    %>
      <form action="TiJiaoServlet.do"> 
            <table>
               <tr>
					<td>订单编号</td>
					<td>商品名称</td>
					<td>数量</td>
					<td>单价</td>
					<td>总价</td>
               </tr>
       <%for(Map<String,Object> m:list){%>        
               <tr>
                    <td><input  type="text"  value="<%=m.get("shop_id") %>" name="bianhao"/></td>
					<td><input  type="text"  value="<%=m.get("shop_xinxi") %>" name="shop_xinxi"/></td>
					<td><input  type="text"  value="<%=m.get("shop_danjia") %>" name="shop_danjia"/></td>
					<td><input  type="text"  value="<%=m.get("shop_num") %>" name="shop_num"/></td>
					<td><input  type="text"  value="<%=m.get("shop_xiaoji") %>" name="shop_xiaoji"/></td>
               </tr>
            
         <%} %>
         </table>   <br><br> 
    
         <table>
            <tr>
                <td>用户ID</td><td><input name="userid"/></td>  
            </tr>
            <tr>
                <td>买家</td><td><input name="usename"/></td>  
            </tr> 
            <tr>
                <td>送货地址</td><td><input name="dizhi"/></td>  
            </tr> 
            <tr>
                <td>收货人姓名</td><td><input name="shrxm"/></td>  
            </tr> 
            <tr>
                <td>邮政编码</td><td><input name="yzbm"/></td>  
            </tr> 
            <tr>
                <td>收货人电话</td><td><input name="shrdh"/></td>  
            </tr>      
            <tr>
              <td colspan="2"> <input  type="submit" value="确定" name="tijiao"/></td>
            </tr>
         </table>
       </form>
</body>
</html>