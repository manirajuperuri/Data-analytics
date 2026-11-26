drop database da9;
use da9;
create database DA_VSP09;
use DA_VSP09;

CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );

INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 select * from products;
 
 select name,price,price+(price*0.12) as price_with_tax from products;
 
 select name,price,price-5 as discounted_price from products;
 select name,price,qty,price*qty as inventory_value from products;
 
 select name,price,price*10 as 10_units_price from products;
 set sql_safe_updates=0;
 update products set qty=qty+2;
 select * from products;
 
 update products set price=price-5;
 select * from products;
 update products set qty=qty*2 where name='Eraser';
 
 update products set qty=qty/2 where name='Marker';
 
 
 delete from products where qty<100;
 
 
 CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );


INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);

SELECT*FROM STUDENTSCORES;


select * from studentscores where marks>80;
select * from studentscores where marks>=60;
select * from studentscores where marks<50;
select * from studentscores where marks=95;


select * from studentscores where marks!=95;
select * from studentscores where marks<=60;

update studentscores set marks=marks+10 where marks<50;
update studentscores set marks=marks+5 where marks<=60;
update studentscores set marks=marks+2 where marks>=90;
update studentscores set marks=marks+3 where marks>=80;
update studentscores set marks=marks-1 where marks<95 and marks>95;
update studentscores set marks=100 where marks=90;

delete from studentscores where marks<50;
delete from studentscores where marks<=60;
delete from studentscores where marks>90;
delete from studentscores where marks>=80;
delete from studentscores where marks!=95;
delete from studentscores where marks=76;




