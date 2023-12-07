create table class.state(
id int primary key auto_increment,
name varchar(50)not null,
country_id int not null
);



create table class.country(
id int primary key auto_increment,
name varchar(50)not null,
pincode int not null,
countryid int not null,
constraint foreign key country_state_countryid(countryid) references class.state(id));

alter table class.country
drop foreign key country_ibfk_1;

select * from class.state;

insert into class.state(name,country_id)values('ap',5);
insert into class.state(name,country_id)values('ts',7);
insert into class.state(name,country_id)values('bng',2);

select * from class.country;

insert into class.country(name,pincode,countryid)values('india',11111,5);
insert into class.country(name,pincode,countryid)values('usa',22222,7);
insert into class.country(name,pincode,countryid)values('uk',33333,null);

alter table class.country modify countryid int null;



select * from class.state as st
inner join class.country as cnr on st.id=cnr.countryid;

select * from class.state as st
left join class.country as cnr on st.id=cnr.countryid;

select * from class.state as st
right join class.country as cnr on st.id=cnr.countryid;

select * from class.country
cross join class.state

select st.name,cnr.name from class.state as st
join class.country as cnr on st.id=cnr.countryid;




