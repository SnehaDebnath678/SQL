 show databases;
use amitdb;
-- create table customer(
--  cust_id varchar(12) primary key not null,
--  f_name char(10),
--  l_name char(10),
--  gender char(10),
--  store_id varchar(20) REFERENCES store.store_id 
-- );
-- insert into customer value('cut1001','somen','debnath','male','str10001');
--  insert into customer value('cut1002','roni','das','male','str10002');
-- insert into customer value('cut1003','rohit','shaw','male','str10003');
--  insert into customer value('cut1004','mainak','das','male','str10004');
--  insert into customer value('cut1005','adrit','dutta','male','str10005');
--  insert into customer value('cut1006','najmul','halk','male','str10006');
--  insert into customer value('cut1007','riya','chaku','female','str10007');
--  insert into customer value('cut1008','shampa','ray','female','str10008');
-- select*from customer

-- create table purchase(
-- purchase_id varchar(15) primary key not null,
--  item_id varchar(15) references item.item_id,
--  item_qty int(25),
--  date date,
-- cust_id varchar(12) references customer.cust_id,
--  store_id varchar(20) references store.stote_id
--  );
-- insert into purchase values('p001', 'i001', 10, '2019-10-05','c10001','s001');
-- insert into purchase values('p002', 'i002', 14, '2020-01-09','c20001','s002');
-- insert into purchase values('p003', 'i003', 9, '2020-12-30','c1234','s003');
-- insert into purchase values('p004', 'i004', 20, '2021-08-30','c6789','s004');
-- insert into purchase values('p005', 'i005', 16, '2022-11-20','c2354','s005');
-- select*from purchase 
--  
-- create table item(
-- item_id varchar(15) primary key not null,
-- descriptin varchar(250),
-- price float(6),
-- store_id varchar(20) references store.store_id
-- ); 
-- insert into item values('i001', 'AK47',15000,'s001');
-- insert into item values('i002', 'SCAR-L',27000,'s002');
-- insert into item values("i003", "AWM",28000,'s003');
-- insert into item values('i004', 'SKS',18000,'s004');
-- insert into item values('i005', 'MP5',19000,'s005');
-- select*from item

-- create table store(
-- store_id varchar(20) primary key not null,
-- address varchar(150),
-- manager char(20)
-- );
-- insert into store values('s001','Malda','Dwaipayan');
-- insert into store values('s002','Birbhum','Nitu');
-- insert into store values('s003','Kolkata','Rupu');
-- insert into store values('s004','Mednipur','Ankit');
-- insert into store values('s005','Hoogly','AlluArjun');
-- select * from store

-- select * from customer where cust_id=( select cust_id from purchase where item_qty=0)
-- select count(gender) from customer where gender="male"
-- select count(gender) from customer where gender="female"
-- select * from customer where f_name like "a%"
-- select * from item where item_id=(select item_id from purchase where item_qty=(select MAX(item_qty) from purchase))
-- select store_id, item_qty from purchase
-- select max(price) from item
-- select cust_id,item_qty from purchase
 -- select price from item where item_id=( select item_id from purchase where cust_id="c1234")





