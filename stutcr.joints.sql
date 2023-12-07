create table class.student(
id int primary key auto_increment,
name varchar(50)not null,
email varchar(40)not null
);

create table class.teacher(
id int primary key auto_increment,
name varchar(40)not null,
subject varchar(40) not null,
teacherid int not null,
constraint foreign key teacher_student_teacherid(teacherid) references class.student(id));
alter table class.teacher
drop foreign key teacher_ibfk_1;


insert into class.student(name,email)values('jyothi','jyo@gmail.com');
insert into class.student(name,email)values('bhavani','b@gmail.com');
insert into class.student(name,email)values('navya','n@gmail.com');

select * from class.student;

select * from class.teacher;

insert into class.teacher(name,subject,teacherid)values('suji','maths',5);
insert into class.teacher(name,subject,teacherid)values('sathya','hindhi',9);

insert into class.teacher(name,subject,teacherid)values('swarna','sanckrit',null);

select * from class.student as stu
inner join class.teacher as tcr on stu.id=tcr.teacherid;

select * from class.student as stu
left join class.teacher as tcr on stu.id=tcr.teacherid;

alter table class.teacher modify teacherid int null;

select * from class.student as stu
right join class.teacher as tcr on stu.id=tcr.teacherid;

select * from class.teacher
cross join class.student;


select stu.name,tcr.id from class.student as stu
 join class.teacher as tcr on stu.id=tcr.teacherid;







