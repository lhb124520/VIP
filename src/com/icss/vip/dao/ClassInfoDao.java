package com.icss.vip.dao;

import java.util.List;
import java.util.Map;

import com.icss.vip.util.DbHelper;

public class ClassInfoDao {
	
	/**
	 * 新增一个班级
	 * @param userInfo
	 */
	public List<Map<String,Object>> insert(Map<String,Object> map){
String sql = "insert into userinfo(phone,PASSWORD) values('%s','%s')";
		sql=String.format(sql, map.get("phone")
				,map.get("password"));
	
		System.out.println(sql);
		return DbHelper.excute(sql);
	}
	/**
	 * 购物详情加入购物车
	 * @param userInfo
	 */
	public List<Map<String,Object>> insertGoodsDetail(Map<String,Object> map){
		String sql = "insert into shopcar(shop_id,shop_img,shop_xinxi,shop_chima,shop_danjia,shop_yuanjia,shop_num,shop_xiaoji) "
		+ "values('%s','%s','%s','%s',%s,%s,%s,%s)";
		sql=String.format(sql, map.get("shop_id")
				, map.get("shop_img")
				,map.get("shop_xinxi")
				,map.get("shop_chima")
				,Double.parseDouble((String)map.get("shop_danjia"))
				,Double.parseDouble((String) map.get("shop_yuanjia"))
				,Integer.parseInt((String) map.get("shop_num"))
				,Double.parseDouble((String) map.get("shop_xiaoji")));
	
		/*String sql = "insert into shopcar(shop_id) "
				+ "values('%s')";
				sql=String.format(sql, map.get("shop_id"));*/
		System.out.println(sql);
		return DbHelper.excute(sql);
	}
	/**
	 * 修改一个班级
	 * @param classInfo
	 */
	public void update(Map<String,Object> classInfo){
		
	}
	
	/**
	 * 删除一个班级
	 * @param classInfo
	 */
	public void delete(String id){
		
	}
	
	/**
	 * 根据主键查一条记录
	 * @param id
	 * @return 返回一个或零个记录
	 */
	public Map<String,Object> selectById(String id) {
		return null;
	}
	
	/**
	 * 根据查询条件查多条记录
	 * @param beginSn
	 * @param endSn
	 * @return
	 */
	public List<Map<String,Object>> selectBySns(String phone,String password){
		
		String sql = "select * from userinfo where 1=1";
		
		if(phone!=null) {
			
			sql += " and phone ='" + phone + "'";
			
		}
       if(password != null) {
			
			sql += " and PASSWORD ='" + password + "'";
			
		}
	
		System.out.println(sql);
		return DbHelper.excute(sql);
	}

	public Map<String,Object> selectBySn(String sn) {
		return null;
	}
	
	

}
