package com.icss.vip.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.dao.Order1DAO;
import com.icss.vip.busi.Order1;

/**
 * Servlet implementation class Order1sousuo
 */
@WebServlet("/Order1sousuo")
public class Order1sousuo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order1sousuo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Order1DAO www=new Order1DAO();
		www.update();
		request.getRequestDispatcher("jiemian.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String shuru=request.getParameter("wenben");
		
		Order1DAO qqq=new Order1DAO();
		Order1 ooo=qqq.queryById(shuru);
		System.out.println(ooo);
		 List<Order1> sss= new ArrayList<Order1>();
		 sss.add(ooo);
		request.setAttribute("ppp", sss);
		
		request.getRequestDispatcher("jiemian.jsp").forward(request, response);
	}

}
