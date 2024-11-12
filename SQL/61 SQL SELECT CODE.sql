create table Product
(
p_id int primary key,
cus_id varchar(20),
p_name varchar(20)
);

select * from Product;

insert into Product (p_id, cus_id,p_name) values (1,'1','laptop'),(2,'2','phone'),(3,'p1','pen'),(4,'p2','notebook');