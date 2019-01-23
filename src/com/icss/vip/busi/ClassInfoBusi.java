package com.icss.vip.busi;

import java.util.List;
import java.util.Map;

import com.icss.vip.dao.ClassInfoDao;

/**
 * Model的业务层
 * 班级管理业务类
 * @author Administrator
 *
 */
public class ClassInfoBusi {
	
	private ClassInfoDao dao = new ClassInfoDao();
	
	/**
	 * 新增一个用户
	 * @param classInfo
	 * @throws BusinessException 
	 */
	public void create(Map<String,Object> userInfo) throws BusinessException{
		
		dao.insert(userInfo);
		
		
		
	}
	/**
	 * 购物详情加入购物车
	 * @param userInfo
	 */
public void createGoodsDetail(Map<String,Object> userInfo) throws BusinessException{
		
		dao.insertGoodsDetail(userInfo);
		
		
		
	}
	/**
	 * 修改一个班级
	 * @param classInfo
	 */
public void insertGoodsDetail(Map<String,Object> userInfo) throws BusinessException{
		
		dao.insert(userInfo);
		
		
		
	}
	public void modify(Map<String,Object> classInfo){
		
	}
	
	/**
	 * 删除一个班级
	 * @param classInfo
	 */
	public void remove(String id){
		
	}
	
	/**
	 * 根据主键查一条记录
	 * @param id
	 * @return 返回一个或零个记录
	 */
	public Map<String,Object> findById(String id) {
		return null;
	}
	
	/**
	 * 根据查询条件查多条记录
	 * @param beginSn
	 * @param endSn
	 * @return
	 */
	public List<Map<String,Object>> findBySns(String phone, String password){
		return dao.selectBySns(phone, password);
	}

}
