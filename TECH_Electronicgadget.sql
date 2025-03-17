create database TechShop ;
use hexware;


create table customer(
Customer_id int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(150) not null,
Phone int,
Address varchar(200)
);


create table Products(
Product_id int primary key,
ProductName varchar(50),
Description varchar(50),
price int
);


create table Orders(
Orders_id int primary key,
Customer_id int,
FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id),
OrderDate int,
TotalAmount int
);


create table OrderDetails(
OrderDetail_id int primary key,
Order_id int,
Product_id int,
FOREIGN KEY (Order_id) REFERENCES Orders(Orders_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);


create table Inventory(
Inventory_id int primary key,
Product_id int,
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
QuantityInStock int,
LastStockUpdate int
);







