-- DATABASE ALLEN_SOLLY--
-- LIST THE THREE STORES WITH THE HIGHEST NUMBER OF CUSTOMER TRANSACTION 
CREATE DATABASE ALLEN_SOLLY;
USE ALLEN_SOLLY;
CREATE TABLE STORE_CT
(
STORE_ID INT NOT NULL ,
TRANSACTION_NO INT NOT NULL
); 
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (1,1);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (1,2);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (1,3);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (2,4);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (2,5);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (2,6);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (3,7);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (3,8);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (3,9);
INSERT STORE_CT (STORE_ID,TRANSACTION_NO) VALUES (3,10);

select * from STORE_CT ;

SELECT STORE_ID ,COUNT(TRANSACTION_NO) AS TRANSACTION_COUNT
FROM STORE_CT
GROUP BY STORE_ID
ORDER BY TRANSACTION_COUNT DESC 
LIMIT 3 ;

-- EXTRACT EMPLOYEE IDS FOR ALL EMPLOYEES WHO EARNED A THREE OR HIGH 

CREATE TABLE EMPLOYEE_R_V 
(
SR_no int primary key ,
EMPLOYEE_ID INT  NOT NULL  ,
REVIEW_DATE DATE,
RATING INT NOT NULL
);

select * from EMPLOYEE_R_V ;

ALTER TABLE EMPLOYEE_R_V
CHANGE COLUMN SR_no SR_NO INT ;

INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (1,1,"2022-01-01",2);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (2,1,"2022-02-01",4);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (3,1,"2022-03-01",3);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (4,2,"2022-01-01",4);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (5,2,"2022-02-01",5);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (6,2,"2022-03-01",3);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (7,3,"2022-01-01",3);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (8,3,"2022-02-01",3);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (9,3,"2022-03-01",2);
INSERT EMPLOYEE_R_V (SR_NO,EMPLOYEE_ID,REVIEW_DATE,RATING) VALUES (10,3,"2022-01-01",5);

 select RATING ,EMPLOYEE_ID
 from EMPLOYEE_R_V 
 where RATING >= 3 ;
 
ALTER  TABLE EMPLOYEE_R_V 
ADD COLUMN EMPLOYEE_NAME_ VARCHAR(23) default "Metakel Vaishali A,";

select * from EMPLOYEE_R_V ;

 update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Jain Raj H."
 where SR_NO = 2 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Upadhiyay Rajul P."
 where SR_NO = 3 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Darji Sahil H."
 where SR_NO = 4 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Maru Dipeeka V."
 where SR_NO = 5 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Jani Khushi A."
 where SR_NO = 6 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Parmar Mayur D."
 where SR_NO = 7 ;

update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Morkhiya Sonali H."
 where SR_NO = 8 ;
 
 update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Solanki Rahul U."
 where SR_NO = 9 ;
 
 update EMPLOYEE_R_V 
 set EMPLOYEE_NAME_ = "Patel Diya H."
 where SR_NO = 10 ;
 
 select * from EMPLOYEE_R_V ;
 
 select RATING 
from EMPLOYEE_R_V 
where RATING >= 3 ;
 
 select RATING ,EMPLOYEE_ID, employee_name_
from EMPLOYEE_R_V 
where RATING >= 3 ;

-- calculate the average monthly sales by product displayed in descending order

CREATE TABLE product_sales
(
SR_NO int primary key,
PRODUCT_NAME varchar (30) ,
transaction_date date,
AVG_MTH_SALES decimal(10,2)
); 

select * from product_sales;

INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('1', 'product_A', '2022-01-01', '1200.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('2', 'product_A', '2022-01-31', '1500.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('3', 'product_A', '2022-02-01', '800.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('4', 'product_A', '2022-02-28', '1600.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('5', 'product_A', '2022-03-01', '1100.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('6', 'product_A', '2022-03-31', '1000.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('7', 'product_B', '2022-01-01', '900.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('8', 'product_B', '2022-01-31', '600.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('9', 'product_B', '2022-02-01', '1000.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('10', 'product_B', '2022-02-28', '1800.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('11', 'product_B', '2022-03-01', '1600.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('12', 'product_B', '2022-03-31', '1700.00');
 INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('13', 'product_C', '2022-01-01', '1200');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('14', 'product_C', '2022-01-31', '1500');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('15', 'product_C', '2022-02-01', '800.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('16', 'product_C', '2022-02-28', '1600.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('17', 'product_C', '2022-03-01', '1100.00');
INSERT INTO `allen_solly`.`product_sales` (`SR_NO`, `PRODUCT_NAME`, `transaction_date`, `AVG_MTH_SALES`) VALUES ('18', 'product_C', '2022-03-31', '1000.00');

SELECT * FROM product_sales;


alter table product_sales change  column AVG_MTH_SALES sales decimal(10,2);

select PRODUCT_NAME,avg (sales) as AVG_MTH_SALES
from  product_sales
group by PRODUCT_NAME
order by AVG_MTH_SALES desc ; 

-- find and remove duplicate in the table without creating another table

 SELECT PRODUCT_NAME
 FROM product_sales
 GROUP BY  PRODUCT_NAME
 HAVING COUNT(PRODUCT_NAME) > 1 ;
 
ALTER  TABLE  product_sales
drop column SR_NO ;

select * from  product_sales ;
 
alter table  product_sales
add  column product_id int after PRODUCT_NAME ;
 
update product_sales 
 set  product_id = "1"
 where product_NAME = 'product_A' ;
 
 update product_sales 
 set  product_id = "2"
 where product_NAME = 'product_B' ;
 
 update product_sales 
 set  product_id = "3"
 where product_NAME = 'product_c' ;

delete s1
from product_sales s1
join product_sales s2 on s1.PRODUCT_NAME = s2.PRODUCT_NAME
     and s1.transaction_date = s2.transaction_date
     and s1.sales = s2. sales
     and s1. product_id > s2. product_id ;
     
delete s1
from product_sales s1
join product_sales s2 on s1.PRODUCT_NAME = s2.PRODUCT_NAME
     and s1. product_id > s2. product_id ;
     
select * from product_sales ;

use allen_solly ;

SELECT DISTINCT sales FROM product_sales;
SELECT DISTINCT PRODUCT_NAME FROM product_sales ;

-- IDENTIFY THE COMMON RECORD BETWEEN TWO TABLES

SELECT EMPLOYEE_R_V.EMPLOYEE_ID,EMPLOYEE_R_V.RATING,store_ct.STORE_ID,store_ct.TRANSACTION_NO
from  EMPLOYEE_R_V
inner join store_ct
on EMPLOYEE_R_V.EMPLOYEE_ID = store_ct.STORE_ID
and EMPLOYEE_R_V.RATING = store_ct.TRANSACTION_NO ; 






  