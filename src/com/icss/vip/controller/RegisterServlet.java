package com.icss.vip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.busi.BusinessException;
import com.icss.vip.busi.ClassInfoBusi;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private ClassInfoBusi cib=new ClassInfoBusi();
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone =request.getParameter("phone");
		String password =request.getParameter("password");
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("phone", phone);
		map.put("password", password);
		
		try {
			cib.create(map);
			System.out.println("注册成功！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} catch (BusinessException e) {
			System.out.println("该用户已经存在");
		}
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
