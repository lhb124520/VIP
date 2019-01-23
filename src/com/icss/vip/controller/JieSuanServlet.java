package com.icss.vip.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.JieSuanBusi;

/**
 * Servlet implementation class JieSuanServlet
 */
@WebServlet("/JieSuanServlet.do")
public class JieSuanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private JieSuanBusi busi=new JieSuanBusi();   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Map<String,Object>> list =(List<Map<String,Object>>) busi.findid();
		
		//向请求对象里面存入 数据 。
		request.setAttribute("shoplist", list);
		//请求转发
		request.getRequestDispatcher("JieSuan.jsp").forward(request, response);		
		
			 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
