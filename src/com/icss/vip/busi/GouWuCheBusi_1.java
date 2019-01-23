package com.icss.vip.busi;

import java.util.List;
import java.util.Map;

import com.icss.vip.dao.VphGouWuChe_dao;

public class GouWuCheBusi_1 {
	VphGouWuChe_dao dao=new VphGouWuChe_dao();
	
	public List<Map<String,Object>> findid(){
		return dao.selectByShop_id();
	}
	
	public void deleteid(String shop_id){
		dao.deleteById(shop_id);
	}
}
