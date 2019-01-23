package com.icss.vip.busi;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.icss.vip.controller.HouTaiGuanLi;
import com.icss.vip.dao.HTdao;

public class AddRecoder {
  private HTdao dao = new HTdao();

  public static void main(String[] args) {
    new AddRecoder().addToDatabase();
  }

  public void addToDatabase() {
    for (int i = 0; i <300; i++) {
   //   String str = this.getString();
   //   System.out.println(str);
      HouTaiGuanLi u = new HouTaiGuanLi("已付款", "未发货", "测试用户");
      this.dao.add(u);
    }
  }

  public String getString() {
    StringBuffer sb = new StringBuffer();
    List<Character> allChar = this.buildCharList();
    int count = 0;
    while (count < 16) {//总共随机产生16位的ascii码
      int randomNumber = new Random().nextInt(allChar.size());
      //随机产生1个charList中的ascii码
      sb.append(allChar.get(randomNumber));
      //获取randomNumber，并将获取到的字符序列添加到sb中
      count++;
    }
    return sb.toString();
  }

  public List<Character> buildCharList() {
    List<Character> charList = new ArrayList<Character>();
    for (int i = 65; i <= 90; i++) {//将65-90对应的ascii码添加到charList中
      charList.add((char) i);
    }
    for (int i = 97; i <= 122; i++) {
      charList.add((char) i);
    }
    for (int i = 48; i <= 57; i++) {
      charList.add((char) i);
    }
    return charList;
  }

}
