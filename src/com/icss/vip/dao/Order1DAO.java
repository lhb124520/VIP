package com.icss.vip.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.icss.vip.busi.Order1;
import com.icss.vip.util.DbUtil;

public class Order1DAO {
		DbUtil db=new DbUtil();
		  public List<Order1> queryAll() {
			    String sql = "select bianhao,ispaid,isfahuo,username from order3 where 1=1";
			    try {
			      ResultSet rs = this.db.doQuery(sql);
			      List<Order1> list = new ArrayList<Order1>();
			      while (rs.next()) {
			        Order1 u = this.buildObject(rs);
			        list.add(u);
			      }
			      return list;
			    } catch (SQLException e) {
			      e.printStackTrace();
			    }
			    return null;
			  }
		  
		  private Order1 buildObject(ResultSet rs) throws SQLException {
			    // 封装用户对象
			    // 将从数据库中查询出结果，将结果封装到实体类中
			    Order1 u = new Order1();
			    u.setBianhao(rs.getString("bianhao"));
			    u.setIspaid(rs.getString("ispaid"));
			    u.setIsfahuo(rs.getString("isfahuo"));
			    u.setUsername(rs.getString("username"));
			    return u;
			  }
		  
		  public boolean remove(String id) {
			    String sql = "delete from order3 where bianhao = ?";
			    try {
			      int lineCount = this.db.doUpdate(sql, id);
			      if (lineCount > 0) {
			        return true;
			      }
			    } catch (SQLException e) {
			      e.printStackTrace();
			    }
			    return false;
			  }
		  public Order1 update() {
			    String sql = "update order3 set isfahuo='已发货'";
			    try {
			      int lineCount = this.db.doUpdate(sql);
			      if (lineCount > 0) {
			        
			      }
			    } catch (SQLException e) {
			      e.printStackTrace();
			    }
			    return null;
			  }
		  public Order1 queryById(String shuru) {
			    String sql = "select * from order3 where 1=1";
			    sql += " and bianhao=?";
			    try {
			      ResultSet rs = this.db.doQuery(sql, shuru);
			      if (rs.next()) {
			        return this.buildObject(rs);
			      }
			    } catch (SQLException e) {
			      e.printStackTrace();
			    }
			    return null;
			  }
}
