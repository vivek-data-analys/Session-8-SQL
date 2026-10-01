create database Departments;
use Departments;


create table Users (
user_id int primary key,
User_name varchar (100) not null,
city varchar (100) not null);

create table Orders (
order_id int primary key ,
user_id int , foreign key (user_id) references Users(user_id),
product varchar (100) not null,
amount int);

insert into Users (user_id,User_name,city)
values 
(1, 'Vivek', 'Ahmedabad'),
(2, 'Rahul', 'Surat'),
(3, 'Amit', 'Vadodara');

insert into Orders (order_id,user_id,product,amount)
values 
(101, 1, "laptop", 500),
(102, 1,"mouse",750),
(103, 2,"keyboard", 300),
(104, 2,"printer",900),
(105, 1, "computer",450);

select 
u.User_id,
o.order_id,
o.product,
o.user_id
from Users as u
left join Orders as o 
on o.user_id = u.user_id;

--- Task-2 ----


select u.User_name , o.product 
from Users u 
inner join Orders o 
on u.user_id = o.user_id;


---- Task-3 ----

select u.user_name , o.product
from Users u 
left join Orders o 
on o.user_id = u.user_id ;


----- Task 4 ------

select u.user_name ,o.order_id,o.product,o.user_id
from Users u 
right join orders o 
on u.user_id = o.user_id;








