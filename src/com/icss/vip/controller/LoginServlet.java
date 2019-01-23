package com.icss.vip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.vip.busi.ClassInfoBusi;

/**
 * 班級管理的控制器
 * @author Administrator
 *
 */
@WebServlet("/ClassInfoServlet.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ClassInfoBusi busi = new ClassInfoBusi();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		List<Map<String,Object>> list = busi.findBySns(phone, password);
	
		//向请求对象里面存入 数据 。
		request.setAttribute("ClassInfoServlet", list);
		HttpSession session=request.getSession(true);
		session.setAttribute("phone", phone);
		
		
		if (list.size()==0||list==null) {
			System.out.println(list);
			
			/*Window.o .open("failure.jsp");*/
			
			
			request.getRequestDispatcher("failure.jsp").forward(request, response);
		}
		else {					
				//请求转发
			System.out.println(list);
			request.getRequestDispatcher("index.jsp").forward(request, response);
				
						
		}
		
	
			
			
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		/*String phone = request.getParameter("phone");//用户
		
		
		//用户校验
		if("请登录".equals(phone) ) {
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			//跳转主页
			request.getRequestDispatcher("main.jsp").forward(request, response);
		} else {
			*//**
			 * 响应重定向
			 *//*
			response.sendRedirect("relogin.html");
		}*/
	}
	/**
	 * 销毁时执行的方法
	 */
	@Override
	public void destroy() {
		System.out.println("----------销毁方法---------");
		super.destroy();
	}

	/**
	 * 初始化方法
	 */
	@Override
	public void init() throws ServletException {
		System.out.println("----------初始化方法---------");
		super.init();
	}
	
}
