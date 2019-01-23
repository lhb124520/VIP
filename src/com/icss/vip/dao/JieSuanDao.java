package com.icss.vip.dao;

import java.util.List;
import java.util.Map;

import com.icss.vip.util.DbHelper;

public class JieSuanDao {
  
 public List<Map<String,Object>> selectByShop_id(){
		
		String sql = "select * from shopcar where  1=1";
        
		List<Map<String, Object>> ret = DbHelper.excute(sql);
		
		
		//结果转字符串
		String listString = ret.toString();
		//将字符串换行
		listString = listString.replaceAll("\\}, \\{", "},\r\n {");
		
		return ret;
	}
}
