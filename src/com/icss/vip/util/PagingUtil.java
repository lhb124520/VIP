package com.icss.vip.util;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.icss.vip.controller.HouTaiGuanLi;
import com.icss.vip.dao.HTdao;


//分页的方法
public class PagingUtil {
  private int pageCount = 1;// 每页记录数
  private DbUtil db = new DbUtil("localhost", "vip");
  private HTdao dao = new HTdao();

  public PagingUtil() {
  }

  public PagingUtil(int pageCount) {
    this.pageCount = pageCount;
  }

  // 查询总记录数
  public int getMaxRecoder() {
    String sql = "select count(*) from dingdan;";
    try {
      ResultSet rs = this.db.doQuery(sql);
      if (rs.next()) {
        return rs.getInt(1);//返回获取到的第一个值
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return 0;
  }

  // 首页
  public int firstPage() {
    return 1;
  }

  // 上一页
  public int previousPage(int currentPage) {
    if (currentPage <= this.firstPage()) {
      return this.firstPage();
    } else if (currentPage > this.lastPage()) {
      return this.lastPage();
    } else {
      return currentPage - 1;
    }
  }

  // 下一页
  public int nextPage(int currentPage) {
    if (currentPage >= this.lastPage()) {
      return this.lastPage();
    } else if (currentPage < this.firstPage()) {
      return this.firstPage();
    } else {
      return currentPage + 1;
    }
  }

  // 末页
  public int lastPage() {
    return (this.getMaxRecoder() - 1) / this.pageCount + 1;
  }

  public void setPageCount(int pageCount) {
    this.pageCount = pageCount;
  }

  /**
   * 数据库分页技术
   * 
   * @param currentPage
   *          当前页码
   * @param getPagesCount
   *          获取前后n页数据，总数据为n*2+1*每页记录数
   * @return
   */
  public List<HouTaiGuanLi> getSomePage(int currentPage, int getPagesCount) {
    int start = 1;
    if (currentPage - getPagesCount >= 1 && currentPage + getPagesCount <= this.lastPage()) {
      start = currentPage - getPagesCount;
    } else if (currentPage - getPagesCount < 1) {
      start = 1;
    } else {
      start = this.lastPage() - getPagesCount * 2;
    }
    String sql = "select bianhao,zt,fahuo,usename";
    sql += " from dingdan";
    sql += " limit ?,?";//limit分页，后面的第一个参数是指记录开始，从0开始，表示第一条记录，第二个参数是取多少条
    List<HouTaiGuanLi> list = this.dao.queryBySQL(sql, (start - 1) * this.pageCount, this.pageCount * (getPagesCount * 2 + 1));
    this.dao.showList(list);
    System.out.println("一共检索了" + list.size() + "条记录！");
    return list;
  }
}
