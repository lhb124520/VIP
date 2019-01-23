package com.icss.vip.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.vip.busi.Order2;
import com.icss.vip.util.DbUtil;

public class Order2DAO {
		DbUtil db=new DbUtil();
		public List<Order2> queryAll(String u) {
		    String sql = "select bianhao, user_id, productname, username, count, prince, dizhi, shouhuoren, youzheng, phone, TOTLOprince  from order3 where bianhao=?";
		    try {
		      ResultSet rs = this.db.doQuery(sql,u);
		      List<Order2> list = new ArrayList<Order2>();
		      while (rs.next()) {
		        Order2 u1 = this.buildObject(rs);
		        list.add(u1 );
		      }
		      return list;
		    } catch (SQLException e) {
		      e.printStackTrace();
		    }
		    return null;
		  }
		private Order2 buildObject1(ResultSet rs) {
			// TODO Auto-generated method stub
			return null;
		}
		private Order2 buildObject(ResultSet rs) throws SQLException {
		    // 封装用户对象
		    // 将从数据库中查询出结果，将结果封装到实体类中
		    Order2 u = new Order2();
		    u.setBianhao(rs.getString("bianhao"));
		    u.setUser_id(rs.getString("user_id"));
		    u.setProductname(rs.getString("productname"));
		    u.setUsername(rs.getString("username"));
		    u.setCount(rs.getInt("count"));
		    u.setPrince(rs.getInt("prince"));
		    u.setDizhi(rs.getString("dizhi"));
		    u.setShouhuoren(rs.getString("shouhuoren"));
		    u.setYouzheng(rs.getString("youzheng"));
		    u.setPhone(rs.getString("phone"));
		    u.setTOTLOprince(rs.getInt("TOTLOprince"));
		    return u;
		  }
}
