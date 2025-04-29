-- Write an SQL query to transform Q1 table into 1NF, ensuring that each row represents a single product for an order

create table product(
id int primary key auto_increment,
product1 varchar(100),
product2 varchar(100),
product3 varchar(100),
foreign key(id) references productDetail(orderId));

-- Write an SQL query to transform Q2 table into 2NF by removing partial dependencies. 
-- Ensure that each non-key column fully depends on the entire primary key.

create table product(
id int primary key auto_increment,
product1 varchar(100),
product2 varchar(100),
product3 varchar(100),
foreign key(id) references productDetail(orderId));

create table quantity(
id int primary key auto_increment,
quantity int,
foreign key(id) references productDetail(orderId));
