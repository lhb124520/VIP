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

@WebServlet("/GoodsDetailServlet.do")
public class GoodsDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClassInfoBusi cib=new ClassInfoBusi();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String shop_id =request.getParameter("shop_id");
		String shop_img =request.getParameter("shop_img");
		String shop_chima =request.getParameter("shop_chima");
		String shop_xinxi =request.getParameter("shop_xinxi");
		String shop_danjia =request.getParameter("shop_danjia");
		String shop_yuanjia =request.getParameter("shop_yuanjia");
		String shop_num =request.getParameter("shop_num");
		String shop_xiaoji =request.getParameter("shop_xiaoji");
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("shop_id", shop_id);
		map.put("shop_img", shop_img);
		map.put("shop_xinxi", shop_xinxi);
		map.put("shop_chima", shop_chima);
		map.put("shop_danjia", shop_danjia);
		map.put("shop_yuanjia", shop_yuanjia);
		map.put("shop_num", shop_num);
		map.put("shop_xiaoji", shop_xiaoji);
		
		
		try {
			cib.createGoodsDetail(map);
			System.out.println("加入购物车成功！");
			request.getRequestDispatcher("GouWuChe_Shuju.do").forward(request, response);
		} catch (BusinessException e) {
			System.out.println("加入购物车失败");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
