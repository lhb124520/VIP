package com.icss.vip.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.icss.vip.controller.HouTaiGuanLi;
import com.icss.vip.util.DbUtil;


/**
 * 数据访问对象（数据访问层）
 * DAO完成数据访问（增、删、改、查）
 * 步骤一：构造查询语句
 * 步骤二：执行持久化操作
 * 步骤三：封装结果（唯一结果返回实体对象，多个结果返回实体对象的集合）
 * 
 * @author Admin
 */
public class HTdao {
  private DbUtil db = new DbUtil("localhost", "vph");

  // 新增方法通用前缀：add、new、insert
  /**
   * 新增UserInfo
   * 
   * @param u 用户信息的数据对象
   * @return 数据库中保存的用户信息的数据对象
   */
  public HouTaiGuanLi add(HouTaiGuanLi h) {
    String sql = "insert into dingdan( zt,fahuo ,usename) values (?,?,?);";
    try {
      int lineCount = this.db.doUpdate(sql, h.getZt(), h.getFahuo(), h.getUsename());
      if (lineCount > 0) {
        Integer bianhao = this.getPkId();
        h.setBianhao(bianhao);
        return h;
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  // 删除方法通用前缀：remove、del、delete
  /**
   * 删除UserInfo
   * 
   * @param id 需要删除的对象的主键ID
   * @return 是否删除的结果
   */
  public boolean remove(int id) {
    String sql = "delete from dingdan where bianhao = ?";
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

  /**
   * 删除UserInfo
   * 
   * @param u
   * @return
   */
  public boolean remove(HouTaiGuanLi h) {
    return this.remove(h.getBianhao());
  }

  // 修改方法通用前缀：update
  /**
   * 修改UserInfo
   * 
   * @param u 需要删除的对象
   * @return 是否删除的结果
   */
  public HouTaiGuanLi update(HouTaiGuanLi h) {
    String sql = "update dingdan set zt=?,fahuo=?,usename=? where bianhao=?";
    try {
      int lineCount = this.db.doUpdate(sql, h.getBianhao(), h.getZt(), h.getFahuo(), h.getUsename());
      if (lineCount > 0) {
        return h;
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  // 查询方法通用前缀：query、find、get、list、select
  /**
   * 根据主键查询UserInfo对象
   * 
   * @param id 主键ID
   * @return 查到的数据实体对象
   */
  public HouTaiGuanLi queryById(int id) {
    String sql = "select zt,fahuo,usename from dingdan where 1=1";
    sql += " and bianhao=?";
    try {
      ResultSet rs = this.db.doQuery(sql, id);
      if (rs.next()) {
        return this.buildObject(rs);
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 查询全部UserInfo对象的集合
   * 
   * @return 查到的数据实体对象集合
   */
  public List<HouTaiGuanLi> queryAll() {
    String sql = "select zt,fahuo,usename from dingdan where 1=1";
    try {
      ResultSet rs = this.db.doQuery(sql);
      List<HouTaiGuanLi> list = new ArrayList<HouTaiGuanLi>();
      while (rs.next()) {
        HouTaiGuanLi u = this.buildObject(rs);
        list.add(u);
      }
      return list;
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 根据条件查询UserInfo对象的集合
   * 
   * @param example 条件对象
   * @param moHuChaXun true:模糊查询 false:精确查询
   * @return 查到的数据实体对象集合
   */
  public List<HouTaiGuanLi> queryByExample(HouTaiGuanLi example, boolean moHuChaXun) {
    List<Object> params = new ArrayList<Object>();
    String sql = "select  from dingdan where 1=1";
    if (example.getUsename() != null) {
      if (moHuChaXun) {
        sql += " and usename like ?";
        params.add("%" + example.getUsename()+ "%");
      } else {
        sql += " and usename=?";
        params.add(example.getUsename());
      }
    }
    System.out.println("SQL:" + sql);

    try {
      ResultSet rs = this.db.doQuery(sql, params.toArray());
      List<HouTaiGuanLi> list = new ArrayList<HouTaiGuanLi>();
      while (rs.next()) {
        list.add(this.buildObject(rs));
      }
      return list;
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 根据SQL语句查询UserInfo对象的集合
   * 
   * @param sql
   * @param objects
   * @return
   */
  public List<HouTaiGuanLi> queryBySQL(String sql, Object... objects) {
    try {
      ResultSet rs = this.db.doQuery(sql, objects);
      List<HouTaiGuanLi> list = new ArrayList<HouTaiGuanLi>();
      while (rs.next()) {
        list.add(this.buildObject(rs));
      }
      return list;
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 查询最新的主键ID
   * 
   * @return
   */
  public Integer getPkId() {
    String sql = "select max(bianhao) as maxId from dingdan;";
    try {
      ResultSet rs = this.db.doQuery(sql);
      if (rs.next()) {
        return rs.getInt("maxId");
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 将结果集封装成实体对象
   * 
   * @param rs
   * @return
   * @throws SQLException
   */
  private HouTaiGuanLi buildObject(ResultSet rs) throws SQLException {
    // 封装用户对象
    // 将从数据库中查询出结果，将结果封装到实体类中
    HouTaiGuanLi h = new HouTaiGuanLi();
    h.setBianhao(rs.getInt("bianhao"));
    h.setZt(rs.getString("zt"));
    h.setFahuo(rs.getString("fahuo"));
    h.setUsename(rs.getString("usename"));
    return h;
  }

  /**
   * 控制台输出集合内容
   * 
   * @param list
   */
  public void showList(List<HouTaiGuanLi> list) {
    for (HouTaiGuanLi h : list) {
      System.out.println(h);
    }
  }
}
