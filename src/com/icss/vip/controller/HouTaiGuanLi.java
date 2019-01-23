package com.icss.vip.controller;

import java.io.Serializable;

/**
 * UserInfo的实体类（模型层）
 * 
 * @author Admin
 */
public class HouTaiGuanLi implements Serializable {

  private static final long serialVersionUID = -5371418026137700852L;

  private Integer bianhao;
  private String zt;
  private String fahuo;
  private String usename;

  public HouTaiGuanLi() {
  }

  public HouTaiGuanLi(String zt, String fahuo) {
    super();
    this.zt = zt;
    this.fahuo = fahuo;
  }

  public HouTaiGuanLi(String zt, String fahuo, String usename) {
    super();
    this.zt = zt;
    this.fahuo = fahuo;
    this.usename = usename;
  }

  // TODO 有人说，ID不能设定，所以不需要在构造函数中定义包含ID的重载形式
  public HouTaiGuanLi(Integer bianhao, String zt, String fahuo, String usename) {
    super();
    this.bianhao = bianhao;
    this.zt = zt;
    this.fahuo = fahuo;
    this.usename = usename;
  }



  public String getZt() {
	return zt;
}

public void setZt(String zt) {
	this.zt = zt;
}

public String getFahuo() {
	return fahuo;
}

public void setFahuo(String fahuo) {
	this.fahuo = fahuo;
}

public String getUsename() {
	return usename;
}

public void setUsename(String usename) {
	this.usename = usename;
}

public void setBianhao(Integer bianhao) {
	this.bianhao = bianhao;
}
public Integer getBianhao() {
    return this.bianhao;
  }

  @Override
  public String toString() {
    StringBuffer sb = new StringBuffer();
    String splitCode = ",";
    sb.append("binahao=");
    sb.append(this.bianhao);

    sb.append(splitCode);

    sb.append("zt=");
    sb.append(this.zt);

    sb.append(splitCode);

    sb.append("fahuo=");
    sb.append(this.fahuo);

    sb.append(splitCode);

    sb.append("usename=");
    sb.append(this.usename);

    return sb.toString();
  }
}

