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

import com.icss.vip.busi.BusinessException;
import com.icss.vip.busi.ClassInfoBusi;
import com.icss.vip.busi.GoodsDetail_busi;
import com.icss.vip.busi.GouWuCheBusi_1;

@WebServlet("/GoodsDetailServlet1.do")
public class GoodsDetailServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private GoodsDetail_busi busi_1=new GoodsDetail_busi();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String shopid=request.getParameter("shop_id");
		
		List<Map<String,Object>> Goods_list =(List<Map<String,Object>>) busi_1.findid(shopid);
		
		//向请求对象里面存入 数据 。
		request.setAttribute("Goods_list", Goods_list);
		
		//请求转发
		request.getRequestDispatcher("GoodsDetail.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		
	}

}
