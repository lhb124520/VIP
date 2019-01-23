package com.icss.vip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.vip.dao.TiJiaoDao;

/**
 * Servlet implementation class TiJiaoServlet
 */
@WebServlet("/TiJiaoServlet.do")
public class TiJiaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TiJiaoDao tj=new TiJiaoDao(); 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            
            String bianhao=request.getParameter("bianhao");
            String shop_xinxi=request.getParameter("shop_xinxi");
            String shop_danjia=request.getParameter("shop_danjia");
            String shop_num=request.getParameter("shop_num");
            String shop_xiaoji=request.getParameter("shop_xiaoji");
            String userid=request.getParameter("userid");
            String usename=request.getParameter("usename");
            String dizhi=request.getParameter("dizhi");
            String shrxm=request.getParameter("shrxm");
            String yzbm=request.getParameter("yzbm");
            String shrdh=request.getParameter("shrdh");
            Map<String,Object> map=new HashMap<>();
            map.put("bianhao", bianhao);
            map.put("shop_xinxi", shop_xinxi);
            map.put("shop_danjia", shop_danjia);
            map.put("shop_num", shop_num);
            map.put("shop_xiaoji", shop_xiaoji);
            map.put("userid", userid);
            map.put("usename", usename);
            map.put("dizhi", dizhi);
            map.put("shrxm", shrxm);
            map.put("yzbm", yzbm);
            map.put("shrdh", shrdh);
            
            tj.insertxx(map);
            
            request.getRequestDispatcher("Maijia.jsp").forward(request, response);
		    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
