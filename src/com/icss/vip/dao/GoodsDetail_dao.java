package com.icss.vip.dao;

import java.util.List;
import java.util.Map;

import com.icss.vip.util.DbHelper;

public class GoodsDetail_dao {
      
public List<Map<String,Object>> selectByShop_id(String shop_id){
		
		String sql = "select * from productinfo1 where  shop_id="+shop_id;
        
		List<Map<String, Object>> ret = DbHelper.excute(sql);
		
		
		//结果转字符串
		String listString = ret.toString();
		//将字符串换行
		listString = listString.replaceAll("\\}, \\{", "},\r\n {");
		
		return ret;
	}
	      
	
/*public void deleteById(String shop_id){
	
	String sql = "delete  from shopcar where  shop_id='"+shop_id+"'";
     
	sql += " and shop_id='"+shop_id+"'";
	
	DbHelper.excute(sql);
	
	System.out.println(sql);

}*/
}
