package com.icss.vip.busi;

public class Order2 {
public String bianhao;
public String user_id;
public String productname;
public String username;
public Integer count;
public Integer prince;

public Order2(){
	
}
public Order2(String bianhao, String user_id, String productname, String username, Integer count, Integer prince,
		String dizhi, String shouhuoren, String youzheng, String phone, Integer tOTLOprince) {
	super();
	this.bianhao = bianhao;
	this.user_id = user_id;
	this.productname = productname;
	this.username = username;
	this.count = count;
	this.prince = prince;
	this.dizhi = dizhi;
	this.shouhuoren = shouhuoren;
	this.youzheng = youzheng;
	this.phone = phone;
	TOTLOprince = tOTLOprince;
}
@Override
public String toString() {
	return "Order2 [bianhao=" + bianhao + ", user_id=" + user_id + ", productname=" + productname + ", username="
			+ username + ", count=" + count + ", prince=" + prince + ", dizhi=" + dizhi + ", shouhuoren=" + shouhuoren
			+ ", youzheng=" + youzheng + ", phone=" + phone + ", TOTLOprince=" + TOTLOprince + "]";
}
public String getBianhao() {
	return bianhao;
}
public void setBianhao(String bianhao) {
	this.bianhao = bianhao;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public Integer getCount() {
	return count;
}
public void setCount(Integer count) {
	this.count = count;
}
public Integer getPrince() {
	return prince;
}
public void setPrince(Integer prince) {
	this.prince = prince;
}
public String getDizhi() {
	return dizhi;
}
public void setDizhi(String dizhi) {
	this.dizhi = dizhi;
}
public String getShouhuoren() {
	return shouhuoren;
}
public void setShouhuoren(String shouhuoren) {
	this.shouhuoren = shouhuoren;
}
public String getYouzheng() {
	return youzheng;
}
public void setYouzheng(String youzheng) {
	this.youzheng = youzheng;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public Integer getTOTLOprince() {
	return TOTLOprince;
}
public void setTOTLOprince(Integer tOTLOprince) {
	TOTLOprince = tOTLOprince;
}
public String dizhi;
public String shouhuoren;
public String youzheng;
public String phone;
public Integer TOTLOprince;
}
