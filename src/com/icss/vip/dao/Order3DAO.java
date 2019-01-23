package com.icss.vip.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.vip.busi.Order3;
import com.icss.vip.util.DbUtil;



public class Order3DAO {
	DbUtil db=new DbUtil();
	  public List<Order3> queryAll() {
		    String sql = "select bianhao, user_id, productname, username, ispaid,count, prince, dizhi, shouhuoren, youzheng, phone, TOTLOprince ,isfahuo from Order3 where 1=1";
		    try {
		      ResultSet rs = this.db.doQuery(sql);
		      List<Order3> list = new ArrayList<Order3>();
		      while (rs.next()) {
		        Order3 u = this.buildObject(rs);
		        list.add(u);
		        System.out.println(sql);
		      }
		      return list;
		    } catch (SQLException e) {
		      e.printStackTrace();
		    }
		    return null;
		  }
	  
	  private Order3 buildObject(ResultSet rs) throws SQLException {
		    // 封装用户对象
		    // 将从数据库中查询出结果，将结果封装到实体类中
		  Order3 u = new Order3(null, null, null, null, null, null, null, null, null, null, null, null,null);
		    u.setBianhao(rs.getString("bianhao"));
		    u.setUser_id(rs.getString("user_id"));
		    u.setProductname(rs.getString("productname"));
		    u.setUsername(rs.getString("username"));
		    u.setIspaid(rs.getString("ispaid"));
		    u.setIsfahuo1(rs.getString("isfahuo"));
		    u.setCount(rs.getInt("count"));
		    u.setPrince(rs.getInt("prince"));
		    u.setDizhi(rs.getString("dizhi"));
		    u.setShouhuoren(rs.getString("shouhuoren"));
		    u.setYouzheng(rs.getString("youzheng"));
		    u.setPhone(rs.getString("phone"));
		    u.setTOTLOprince(rs.getInt("TOTLOprince"));
		    return u;
		  }
	  
	
	  public Order3 update(String iii) {
		    String sql = "update Order3 set ispaid='已付款' where user_id=?";
		    try {
		      int lineCount = this.db.doUpdate(sql,iii);
		      if (lineCount > 0) {
		        
		      }
		    } catch (SQLException e) {
		      e.printStackTrace();
		    }
		    return null;
		  }
	  public List<Order3> queryById(String shuru) {
		    String sql = "select * from order3 where 1=1";
		    sql += " and user_id=?";
		    try {
			      ResultSet rs = this.db.doQuery(sql,shuru);
			      List<Order3> list = new ArrayList<Order3>();
			      while (rs.next()) {
			        Order3 u = this.buildObject(rs);
			        list.add(u);
			        System.out.println(sql);
			      }
			      return list;
			    } catch (SQLException e) {
			      e.printStackTrace();
			    }
			    return null;
		  }
}
