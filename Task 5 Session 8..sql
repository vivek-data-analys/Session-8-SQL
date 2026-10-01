create database food_deliverys;
use food_deliverys;

create table customer_segments (
segment_id int primary key ,
segment_name varchar (100) not null);

create table Users (
user_id int ,
user_name varchar (100) not null );

alter table Users 
add segment_id int,
add foreign key (segment_id) references customer_segments(segment_id);


insert into customer_segments (segment_id,segment_name)
values 
(1, 'Regular'),
(2, 'Premium'),
(3, 'New Customer'),
(4, 'Frequent'),
(5, 'Occasional');



insert into Users (user_id ,user_name,segment_id) 
values
(1, 'Vivek', 1),
(2, 'Rahul', 2),
(3, 'Priya', 3),
(4, 'Amit', 4),
(5, 'Neha', 5);

alter table Users
add user_amounts int ;

set sql_safe_updates = 0;

UPDATE Users SET user_amounts = 400 WHERE user_id = 1;
UPDATE Users SET user_amounts = 680 WHERE user_id = 2;
UPDATE Users SET user_amounts = 2100 WHERE user_id = 3;
UPDATE Users SET user_amounts = 3400 WHERE user_id = 4;
UPDATE Users SET user_amounts = 2000 WHERE user_id = 5;

select * from Users;




select  u.user_name,cs.segment_name,sum(u.user_amounts) as total_amount 
from users u 
join customer_segments cs
on u.segment_id = cs.segment_id
group by 
u.user_name,
cs.segment_name;

