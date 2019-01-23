package com.icss.vip.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.GouWuCheBusi_1;


@WebServlet("/ShoppingCar_servlet.do")
public class ShoppingCar_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GouWuCheBusi_1 busi=new GouWuCheBusi_1();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String shopid=request.getParameter("shop_id");
		
		System.out.println(shopid);
			busi.deleteid(shopid);
			System.out.println("------delete------");
			request.getRequestDispatcher("GouWuChe_Shuju.do").forward(request, response);	
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
