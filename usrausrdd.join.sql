create table class.user1(
id int,
name varchar(40)not null,
email varchar(40) not null,
address varchar(40) not null
);

drop table class.user1;

create table class.useraddress(
id int primary key auto_increment,
country varchar(48) not null,
state varchar(45),
userid int not null,
constraint foreign key useraddress_user1_userid(userid) references class.user1(id));


alter table class.user1 modify name varchar(37);

alter table class.user1 drop column name;

alter table class.user1 modify email int null;

alter table class.user1 modify email int not null;

alter table class.user1
add constraint unique_email unique(email);

alter table class.user1
drop index unique_email;

alter table class.user1
add constraint chk_email_3 check(length(email)>=8);

alter table class.user1
drop check chk_email_3;

alter table class.user1
add constraint employee_pk_id primary key(id);

alter table class.useraddress
drop foreign key useraddress_ibfk_1;

insert into class.user1(id,name,email,address)values(8,'navya','n@gmail.com','kphb');
insert into class.user1(id,name,email,address)values(5,'suji','s@gmail.com','ameerpet');
insert into class.user1(id,name,email,address)values(4,'bhavani','b@gmail.com','sr');


select * from class.user1;


select * from class.user1 as usr
inner join class.useraddress as usradd on usr.id=usradd.userid;

insert into class.useraddress(country,state,userid)values('india','ap',6);

insert into class.useraddress(country,state,userid)values('usa','ts',4);

insert into class.useraddress(country,state,userid)values('uk','al',9);



select * from class.useraddress;



select * from class.user1 as usr
left join class.useraddress as usradd on usr.id=usradd.userid;

select * from class.user1 as usr
right join class.useraddress as usradd on usr.id=usradd.userid;



select * from class.useraddress
cross join class.user1;

select usr.email,usradd.state from class.user1 as usr
join class.useraddress as usradd on usr.id=usradd.userid;

