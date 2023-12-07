create table class.product(
id int,
name varchar(40)not null,
price int not null
);

drop table class.product;

create table class.productspecification(
id int primary key auto_increment,
gst int not null,
review varchar(45),
productid int not null,
constraint foreign key productspecification_product_productid(productid) references class.product(id));


alter table class.product modify name varchar(37);

alter table class.product drop column name;

alter table class.product modify price int null;

alter table class.product modify price int not null;

alter table class.product
add constraint unique_price unique(price);

alter table class.product
drop index unique_price;

alter table class.product
add constraint chk_price_3 check(length(price)>=3);

alter table class.product
drop check chk_price_3;

alter table class.product
add constraint product_pk_id primary key(id);

alter table class.productspecification
drop foreign key productspecification_ibfk_1;

insert into class.product(id,name,price)values(1,'book',70);
insert into class.product(id,name,price)values(2,'pen',30);
insert into class.product(id,name,price)values(3,'pencil',40);

select * from class.product;


select * from class.product as prd
inner join class.productspecification as prsn on prd.id=prsn.productid;

insert into class.productspecification(gst,review,productid)values(18,'bad',7);
insert into class.productspecification(gst,review,productid)values(15,'good',4);
insert into class.productspecification(gst,review,productid)values(10,'bad',5);

select * from class.productspecification;

select * from class.product as prd
left join class.productspecification as prsn on prd.id=prsn.productid;

select * from class.product as prd
right join class.productspecification as prsn on prd.id=prsn.productid;

select * from class.productspecification
cross join class.product;

select prd.name,prsn.gst from class.product as prd
join class.productspecification as prsn on prd.id=prsn.productid;

