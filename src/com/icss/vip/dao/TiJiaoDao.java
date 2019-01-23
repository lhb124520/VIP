package com.icss.vip.dao;

import java.util.Map;

import com.icss.vip.util.DbHelper;

public class TiJiaoDao {
	
	public void insertxx(Map<String,Object> map){
         String sql="INSERT INTO order3(bianhao ,user_id,productname,username,count,prince,dizhi,shouhuoren,youzheng,phone,TOTLOprince,isPaid,isfahuo)"
                    +"VALUES('%s','%s','%s','%s',%s,%s,'%s','%s','%s','%s',%s,'未付款','未发货')";
         String sql1="INSERT INTO order2(bianhao ,user_id,productname,username,count,prince,dizhi,shouhuoren,youzheng,phone,TOTLOprince,isPaid,isfahuo)"
                 +"VALUES('%s','%s','%s','%s',%s,%s,'%s','%s','%s','%s',%s,'未付款','未发货')";
         sql=String.format(sql,
      		    map.get("bianhao")
      		   ,map.get("userid")
      		   ,map.get("shop_xinxi")
      		   ,map.get("usename")
      		   ,map.get("shop_num")
      		   ,map.get("shop_danjia")
      		   ,map.get("dizhi")
      		   ,map.get("shrxm")
      		   ,map.get("yzbm")
      		   ,map.get("shrdh")
      		   ,map.get("shop_xiaoji"));
         sql1=String.format(sql1,
       		    map.get("bianhao")
       		   ,map.get("userid")
       		   ,map.get("shop_xinxi")
       		   ,map.get("usename")
       		   ,map.get("shop_num")
       		   ,map.get("shop_danjia")
       		   ,map.get("dizhi")
       		   ,map.get("shrxm")
       		   ,map.get("yzbm")
       		   ,map.get("shrdh")
       		   ,map.get("shop_xiaoji"));
      		
      	   DbHelper.excuteUpdate(sql);
      	 DbHelper.excuteUpdate(sql1);
      	
	}
}
