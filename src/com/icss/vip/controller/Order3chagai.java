package com.icss.vip.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.Order3;
import com.icss.vip.dao.Order3DAO;



/**
 * Servlet implementation class Order3chagai
 */
@WebServlet("/Order3chagai")
public class Order3chagai extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Order3DAO qqq=new Order3DAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order3chagai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uuu=request.getParameter("wenben");
		System.out.println(uuu);
		Order3DAO www=new Order3DAO();
		www.update(uuu);
		request.getRequestDispatcher("Maijia.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
		
		String shuru1=request.getParameter("wenben");
		 List<Order3> sss= qqq.queryById(shuru1);
		
		
		
		
		request.setAttribute("ppp", sss);
		request.setAttribute("wenben", shuru1);
		
		request.getRequestDispatcher("Maijia.jsp").forward(request, response);
		
	   
	}

}
