package com.icss.vip.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.Order2;
import com.icss.vip.dao.Order2DAO;




/**
 * Servlet implementation class Order2servlet
 */
@WebServlet("/Order2servlet")
public class Order2servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order2servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String c=request.getParameter("arg1");
		System.out.println(c);
		Order2DAO qqq=new Order2DAO();
	   List<Order2> sss=  qqq.queryAll(c);
//	   
	   request.setAttribute("ppp", sss);
	   request.getRequestDispatcher("xiangqing.jsp").forward(request, response);
	}

}
