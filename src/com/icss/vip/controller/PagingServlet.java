package com.icss.vip.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.util.PagingUtil;


/**
 * Servlet implementation class PagingServlet
 */
@WebServlet("/PagingServlet.do")
public class PagingServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private PagingUtil pu;

  @Override
  public void init(ServletConfig config) throws ServletException {
    super.init(config);
    String pageCount = config.getInitParameter("pageCount");//每页记录数
    //getInitParameter()方法是在GenericServlet接口中新定义的一个方法,用来调用初始化在web.xml中存放的参量。
    int pc = 1;// 默认每页记录数
    try {
      pc = Integer.parseInt(pageCount);
    } catch (Exception e) {
      e.printStackTrace();
    }
    this.pu = new PagingUtil(pc);
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // PrintWriter out = response.getWriter();
    // out.append("Served at: ").append(request.getContextPath());
    // out.println();
    // out.flush();
    // out.close();
	  
	//request.getAttribute():是request时设置的变量的值,用request.setAttribute("name","您自己的值");来设置值,
	//request.getParameter():提取发送过来的参数  
	//request.getAttribute()和request.getParameter()的区别是request.getAttribute()获得的是对象类型，
	//  而request.getParameter()获得的是字符串类型
    int currentPage = 1;//当前页
    try {
      currentPage = Integer.parseInt(request.getParameter("cp"));
    } catch (Exception e) {
      e.printStackTrace();
    }

    List<HouTaiGuanLi> list = this.pu.getSomePage(currentPage, 0);
    request.setAttribute("list", list);

    Map<String, Integer> data = new HashMap<String, Integer>();
    data.put("first", this.pu.firstPage());
    data.put("previous", this.pu.previousPage(currentPage));
    data.put("next", this.pu.nextPage(currentPage));
    data.put("last", this.pu.lastPage());
    request.setAttribute("data", data);

    request.getRequestDispatcher("jiemian.jsp").forward(request, response);
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }

}
