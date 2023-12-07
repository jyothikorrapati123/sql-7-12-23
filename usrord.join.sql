create table class.user (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(45) not null,
phone int check(length(phone)=10)
);

create table class.order (
id int primary key auto_increment,
name varchar(50)not null,
price int,
location varchar(45)not null,
pincode int,
orderid int not null,
constraint foreign key order_user_orderid(orderid) references class.user(id));

alter table class.order
drop foreign key order_ibfk_1;


insert into class.user(name,email,phone)values('navya','n@gmail.com',1234567890);
insert into class.user(name,email,phone)values('mani','m@gmail.com',1111111112);
insert into class.user(name,email,phone)values('akkhi','a@gmail.com',1234444444);

select * from class.user;

insert into class.order(name,price,location,pincode,orderid)values('biryani',200,'kphb',52203,5);
insert into class.order(name,price,location,pincode,orderid)values('chicken',300,'hyb',40003,4);
insert into class.order(name,price,location,pincode,orderid)values('muttonbiryani',500,'ameerpet',32222,null);

alter table class.order modify orderid int null;



select * from class.order

select * from class.user as usr
inner join class.order as ord on usr.id=ord.orderid;

select * from class.user as usr
left join class.order as ord on usr.id=ord.orderid;

select * from class.user as usr
right join class.order as ord on usr.id=ord.orderid;

select * from class.order
cross join class.user

select usr.id,ord.price from class.user as usr
join class.order as ord on usr.id=ord.orderid;











