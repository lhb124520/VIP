package com.icss.vip.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DbHelper {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static List<Map<String,Object>> excute(String sql){
		if("select".equalsIgnoreCase(sql.substring(0, 6))){
			return excuteQuery(sql);
		}else{
			excuteUpdate(sql);
			return null;
		}
		
		
	}
	public static Connection getConnection(){
		Connection conn = null;
		try {
			String url = "jdbc:mysql://127.0.0.1:3306/vip?characterEncoding=UTF-8";
		    String dbUser = "root";
		    String dbPassword = "123";
			conn = DriverManager.getConnection(url,dbUser,dbPassword);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return conn;
	}
	public static void excuteUpdate(String sql){
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					throw new RuntimeException(e);
				}
			}
		}
	}
	private static List<Map<String,Object>> excuteQuery(String sql){
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
			ResultSet rs = ps.executeQuery();
			ResultSetMetaData rst = rs.getMetaData();
			while(rs.next()){
				Map<String,Object> map= new HashMap<String,Object>();
				for(int i =1;i<=rst.getColumnCount();++i){
					map.put(rst.getColumnName(i), rs.getObject(i));
				}
				list.add(map);
			}
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					throw new RuntimeException(e);
				}
			}
		}
		
	}
	public static Map<String,Object> selectOne(String sql) throws Exception{
		Connection conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			ResultSetMetaData rst = rs.getMetaData();
			Map<String,Object> map = new HashMap<String,Object>();
			if(rs.next()){
				for(int i = 1;i<=rst.getColumnCount();++i){
					map.put(rst.getColumnName(i), rs.getObject(i));
				}
				if(rs.next()){
					throw new Exception("超过一条记录！");
				}else{
					return map;
				}
			}else{
				return null;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
