package com.icss.vip.busi;

import java.util.List;
import java.util.Map;

import com.icss.vip.dao.GoodsDetail_dao;
import com.icss.vip.dao.VphGouWuChe_dao;

public class GoodsDetail_busi {
	GoodsDetail_dao dao=new GoodsDetail_dao();
	
	public List<Map<String,Object>> findid(String shopid){
		return dao.selectByShop_id(shopid);
	}
	
	
}
