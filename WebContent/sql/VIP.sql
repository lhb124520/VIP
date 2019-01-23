CREATE DATABASE vip;
USE  vip;
CREATE TABLE userinfo (user_id int not null  PRIMARY KEY auto_increment
 ,username nvarchar(10)
,PASSWORD VARCHAR(20)
,age int,sex bit
,address VARCHAR(20)
,email varchar(25)
,Is_Admin bit
,phone VARCHAR(12) unique
,QQ VARCHAR(15));

-- drop table userinfo;
CREATE TABLE kind_id(
kind_id int PRIMARY KEY
,kind_name VARCHAR(20)
);

CREATE TABLE productinfo (
   kind_id int not null auto_increment
,  shop_id CHAR PRIMARY KEY
,  shop_img CHAR(200)
,  shop_xinxi  VARCHAR(80)
,  shop_chima  VARCHAR(4)
,  shop_danjia  DOUBLE
,  shop_yuanjia DOUBLE
,  shop_num   INT
,  shop_xiaoji  DOUBLE
,foreign key (kind_id) REFERENCES kind_id(kind_id)
);

insert into productinfo( kind_id,shop_id,shop_img ,shop_xinxi,shop_chima, shop_danjia,shop_yuanjia,  shop_num, shop_xiaoji )
VALUE(2,'3','img/pic_03(x).jpg','尚都比拉SENTUBILA女装专场 - 宝蓝色拼接优雅大方连衣裙','S',298,1068,1,298);


CREATE TABLE productinfo1 (
   kind_id int not null auto_increment
,  shop_id CHAR PRIMARY KEY
,  shop_img1 CHAR(200)
,  shop_img2 CHAR(200)
,  shop_img3 CHAR(200)
,  shop_img4 CHAR(200)
,  shop_img5 CHAR(200)
,  shop_img6 CHAR(200)
,  shop_img7 CHAR(200)
,  shop_xinxi  VARCHAR(80)
,  shop_chima1  VARCHAR(10)
,  shop_chima12  VARCHAR(10)
,  shop_danjia  DOUBLE
,  shop_yuanjia DOUBLE
,  shop_discount VARCHAR(10)
,foreign key (kind_id) REFERENCES kind_id(kind_id)
);
insert into productinfo1 values(1,'1','img/QQ截图20161110231904.png','img/截图20161110231904.png','img/QQ截图20161110232858.png','img/QQ截图20161110232923.png'
																,'img/QQ截图20161110232946.png','img/QQ截图20161110233003.png','img/QQ截图20161110233032.png','富安娜-1.8米床缎纹六件套巴洛克风情','1.8M床','2.0M床',648,2048,'2.4折');
insert into productinfo1 values(2,'2','img/cloth-1.jpg','img/cloth01-1.jpg','img/cloth02-1.jpg','img/cloth03-1.jpg'
																,'img/cloth04-1.jpg','img/cloth05-1.jpg','img/cloth-1.jpg','哥弟白色连衣裙','s(2码)','M(3码)',400,455,'8.8折');
insert into productinfo1 values(3,'3','img/cloth-2.jpg','img/cloth01-2.jpg','img/cloth02-2.jpg','img/cloth03-2.jpg'
																,'img/cloth04-2.jpg','img/cloth-2.jpg','img/cloth-2.jpg','哥弟白色休闲百搭长袖羊毛衫','s(2码)','M(3码)',319,354,' 9折');
CREATE TABLE orderinfo(
ORDER_id int PRIMARY KEY
,kind_id INT
,product_id int 
,user_id int
);

-- CREATE TABLE shopcar(
-- kind_id INT
-- ,order_id int PRIMARY KEY
-- ,product_count int
-- );

CREATE TABLE shopcar(
   shop_id char(20) PRIMARY KEY not null
,  shop_img CHAR(200)
,  shop_xinxi  VARCHAR(80)
,  shop_chima  VARCHAR(10)
,  shop_danjia  DOUBLE
,  shop_yuanjia DOUBLE
,  shop_num   INT
,  shop_xiaoji  DOUBLE
);
SELECT * FROM shopcar;
insert into shopcar(shop_id,shop_img,shop_xinxi,shop_chima,shop_danjia,shop_yuanjia,shop_num,shop_xiaoji) values('6916517404306','img/截图20161110231904.png','富安娜-1.8米床缎纹六件套巴洛克风情','2.0M床',648.0,2088.0,1,1)

-- DROP TABLE shopcar;
USE vip ;
CREATE TABLE shopcar(
   shop_id CHAR PRIMARY KEY
,  shop_img CHAR(200)
,  shop_xinxi  VARCHAR(80)
,  shop_chima  VARCHAR(10)
,  shop_danjia  DOUBLE
,  shop_yuanjia DOUBLE
,  shop_num   INT
,  shop_xiaoji  DOUBLE
);
SELECT * FROM shopcar;


insert into shopcar( shop_id,shop_img ,shop_xinxi,shop_chima, shop_danjia,shop_yuanjia,  shop_num, shop_xiaoji )
VALUE('9','C:\\Users\\Administrator\\Desktop\\pic\\pic_03(x).jpg','尚都比拉SENTUBILA女装专场 - 宝蓝色拼接优雅大方连衣裙','S',1024,1068,1,2002);


CREATE TABLE orderinfo2(
order_id int PRIMARY KEY 
,Shop_id char(20)
,dliver_way VARCHAR(20)
,address VARCHAR(20)
,Receive_name VARCHAR(10)
,Receive_phone VARCHAR(12)
,Postcode VARCHAR(8)
,User_id int 
,State VARCHAR(10)
,isPaid VARCHAR(6)
,foreign key (User_id) REFERENCES userinfo(User_id)
,foreign key (Shop_id) REFERENCES shopcar(Shop_id)
);



delete from shopcar where  shop_id='1';




  use vip;
-- DROP TABLE order2;
-- DROP TABLE order1;
-- alter database test  character set utf8;
CREATE TABLE order1 (
bianhao VARCHAR(20)
,ispaid VARCHAR(10)
,isfahuo VARCHAR(10)
,username VARCHAR(20)
,primary key(bianhao)
)ENGINE=INNODB DEFAULT CHARSET='utf8';

CREATE TABLE order2 (
id int PRIMARY key auto_increment
,bianhao  VARCHAR(20)
,user_id VARCHAR(10)
,productname VARCHAR(20)
,username VARCHAR(20)
,ispaid varchar(20)
,isfahuo varchar(20)
,count INT
,prince INT
,dizhi VARCHAR(100)
,shouhuoren VARCHAR(20)
,youzheng VARCHAR(10)
,phone VARCHAR(15)
,TOTLOprince INT
)ENGINE=INNODB DEFAULT CHARSET='utf8';

CREATE TABLE order3 (
id int PRIMARY key auto_increment
,bianhao  VARCHAR(20)
,user_id VARCHAR(10)
,productname VARCHAR(20)
,username VARCHAR(20)
,ispaid varchar(20)
,isfahuo varchar(20)
,count INT
,prince INT
,dizhi VARCHAR(100)
,shouhuoren VARCHAR(20)
,youzheng VARCHAR(10)
,phone VARCHAR(15)
,TOTLOprince INT
)ENGINE=INNODB DEFAULT CHARSET='utf8';



USE vip;
CREATE TABLE dingdan(
  bianhao INT PRIMARY KEY auto_increment
, zt  CHAR(20)
, fahuo CHAR(20)
, usename VARCHAR(50)
);
SELECT * FROM dingdan;

insert into dingdan( zt,fahuo ,usename)
VALUE('已付款','已发货','张三'),('已付款','未发货','李四'),('未付款','未发货','王五');

