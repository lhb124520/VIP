
package com.icss.vip.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * ��ݿ�����ࣨ�־û��㣩
 * ���JDBC����
 * 
 * @author Admin
 */
public class DbUtil {
  private Connection con;
  // private String server = "localhost";
  // private String dbname = "addDemo";
  private static String className = "com.mysql.jdbc.Driver";
  private String url = "jdbc:mysql://localhost:3306/vip?characterEncoding=utf-8";
  private String user = "root";
  private String password = "123";

  static {
    try {
      Class.forName(DbUtil.className);
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    }
  }

  public DbUtil() {
  }

  // TODO ���Ը��ʵ����Ҫ�����Ӷ����ͬ���ܵĹ��캯��
  // ������ֻд��һ���򵥵İ���
  public DbUtil(String server, String dbname) {
    // super();
    // this.server = server;
    // this.dbname = dbname;
    this.url = "jdbc:mysql://" + server + ":3306/" + dbname + "?characterEncoding=utf-8";
  }

  public static void setClassName(String className) {
    DbUtil.className = className;
  }

  private Connection getConnection() throws SQLException {
    if (this.con == null) {
      this.con = DriverManager.getConnection(this.url, this.user, this.password);
    }
    return this.con;
  }

  private PreparedStatement getStatement(String sql) throws SQLException {
    System.out.println("SQL:" + sql);
    return this.getConnection().prepareStatement(sql);
  }

  private PreparedStatement setParams(String sql, Object... params) throws SQLException {
    // String strSql = "select * from UserInfo where userId=?";
    PreparedStatement pstat = this.getStatement(sql);
    if (params != null && params.length > 0) {
      for (int i = 0; i < params.length; i++) {
        pstat.setObject((i + 1), params[i]);
      }
    }
    return pstat;
  }

  public ResultSet doQuery(String sql, Object... params) throws SQLException {
    return this.setParams(sql, params).executeQuery();
  }

  public int doUpdate(String sql, Object... params) throws SQLException {
    return this.setParams(sql, params).executeUpdate();
  }

  public void close() {
    try {
      if (this.con != null && !this.con.isClosed()) {
        this.con.close();
        this.con = null;
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }
}
