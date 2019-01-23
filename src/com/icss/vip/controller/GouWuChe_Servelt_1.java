package com.icss.vip.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.GouWuCheBusi_1;

/**
 * Servlet implementation class GouWuChe_Shuju
 */
@WebServlet("/GouWuChe_Shuju.do")
public class GouWuChe_Servelt_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private GouWuCheBusi_1 busi=new GouWuCheBusi_1();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*List<Map<String,Object>> shopid= (List<Map<String,Object>>) */
		
	//	
		
		
		List<Map<String,Object>> list =(List<Map<String,Object>>) busi.findid();
		
		//向请求对象里面存入 数据 。
		request.setAttribute("shoplist", list);
		request.setAttribute("phone", "");
		//请求转发
		request.getRequestDispatcher("GouWuChe_2.jsp").forward(request, response);		
		
			   
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
