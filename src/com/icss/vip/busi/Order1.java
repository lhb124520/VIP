package com.icss.vip.busi;

public class Order1 {
	private String bianhao;
	private String ispaid;
	private String isfahuo;
	private String username;
	
	public Order1(){
		
	}
	public Order1(String bianhao, String ispaid, String isfahuo, String username) {
		super();
		this.bianhao = bianhao;
		this.ispaid = ispaid;
		this.isfahuo = isfahuo;
		this.username = username;
	}
	@Override
	public String toString() {
		return "Order1 [bianhao=" + bianhao + ", ispaid=" + ispaid + ", isfahuo=" + isfahuo + ", username=" + username
				+ "]";
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public String getIspaid() {
		return ispaid;
	}
	public void setIspaid(String ispaid) {
		this.ispaid = ispaid;
	}
	public String getIsfahuo() {
		return isfahuo;
	}
	public void setIsfahuo(String isfahuo) {
		this.isfahuo = isfahuo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
