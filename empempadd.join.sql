create table class.employee(
id int,
name varchar(40)not null,
email varchar(40) not null,
address varchar(40) not null
);

drop table class.employee;

create table class.employeeaddress(
id int primary key auto_increment,
country varchar(48) not null,
state varchar(45),
employeeid int not null,
constraint foreign key employeeaddress_employee_employeeid(employeeid) references class.employee(id));


alter table class.employee modify name varchar(37);

alter table class.employee drop column name;

alter table class.employee modify email int null;

alter table class.employee modify email int not null;

alter table class.employee
add constraint unique_email unique(email);

alter table class.employee
drop index unique_email;

alter table class.employee
add constraint chk_email_3 check(length(email)>=8);

alter table class.employee
drop check chk_email_3;

alter table class.employee
add constraint employee_pk_id primary key(id);

alter table class.employeeaddress
drop foreign key employeeaddress_ibfk_1;

insert into class.employee(id,name,email,address)values(1,'navya','n@gmail.com','kphb');
insert into class.employee(id,name,email,address)values(2,'suji','s@gmail.com','ameerpet');
insert into class.employee(id,name,email,address)values(1,'bhavani','b@gmail.com','sr');


select * from class.employee;


select * from class.employee as emp
inner join class.employeeaddress as empadd on emp.id=empadd.employeeid;

insert into class.employeeaddress(country,state,employeeid)values('india','ap',7);

insert into class.employeeaddress(country,state,employeeid)values('usa','ts',8);

insert into class.employeeaddress(country,state,employeeid)values('uk','al',9);

select * from class.employeeaddress;

select * from class.employee as emp
left join class.employeeaddress as empadd on emp.id=empadd.employeeid;

select * from class.employee as emp
right join class.employeeaddress as empadd on emp.id=empadd.employeeid;

select * from class.employeeaddress
cross join class.employee;

select emp.name,empadd.country from class.employee as emp
inner join class.employeeaddress as empadd on emp.id=empadd.employeeid;
