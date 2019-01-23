package com.icss.vip.busi;

import java.util.List;
import java.util.Map;

import com.icss.vip.dao.JieSuanDao;


public class JieSuanBusi {
	JieSuanDao dao=new JieSuanDao();
	
	public List<Map<String,Object>> findid(){
		return dao.selectByShop_id();
	}
}
