------slowly changing dimension----------------

create table asn_18
(
id int,
name varchar(50),
address varchar(50)
);
select * from asn_18;
alter table asn_18 
add DOJ date;
alter table asn_18 add start_date date;
alter table asn_18 add end_date date;

insert into asn_18
values (1,'sam','sydney'),
(2,'david','brisbane'),
(3,'steven','melbourne');

update asn_18 
set start_date ='2022-06-21', end_date='2020-05-1'
WHERE id=1;
update asn_18 set start_date='2022-06-21',end_date='2020-05-1'
WHERE id=2;
update asn_18 set start_date='2022-06-21',end_date='2020-05-1'
WHERE id=3;
update asn_18 set start_date='2022-06-21',end_date='2020-05-1'
WHERE id=4;

insert into asn_18
values (4,'akshay','hospet');

----target table ----------
create table asn_19
(
id int,
name varchar(50),
address varchar(50)
);
select * from asn_19;
alter table asn_19
add DOJ date;


-----Type1--------------------

truncate table asn_19 ;

update  asn_18 
set address='sydney'
where id=1;
alter table asn_19 add start_date date;
alter table asn_19 add end_date date;

update asn_18 set address='sydney'
where id=1;
-----------------------------
-- Creation of Table
create table dept(
dept_id int primary key,
dept_Name varchar(50) not null
);

--Insertion of values
insert into dept values
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance');

-- Creating Employee Table
create table employee(
emp_id int primary key,
Name varchar(50) unique,
dept_id int foreign key references dept(dept_id),
email varchar(50) default 'company@email.com',
Age int check(age>21)
);

insert into employee values (1,'Anitha',1,'Anitha@evry.com',22);
insert into employee values (2,'Ankith',3,'Ankith@evry.com',22);
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25);
insert into employee values (4,'Jayanth',3,'Jayanth@evry.com',23);

drop table dept;
drop table employee;

delete from dept where dept_id=3;

select * from employee;

-----REFERENCIAL INTEGRITY------

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete cascade on update cascade;--- On delete cascade

select * from employee;
select * from dept;

 delete from dept where dept_id=3;
 update dept set dept_id=3 where dept_name='Finance';

---On delete/ Update set null----

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete set null on update set null;

select * from employee;
select * from dept;

insert into employee values
(2,'Anaa',2,'Anaa@outlook.com',23),
(4,'Ajay',2,'Ajay@outlook.com',23);

insert into dept values (4,'testing');

delete from dept where dept_id=3;
update dept set dept_id=4 where dept_name='IT';

select * from employee;
select * from dept;

----On Delete /Update set Default----

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete set default on update set default;

select * from employee;
select * from dept;

-- Creation of Table
create table dept(
dept_id int primary key,
dept_Name varchar(50) not null
);

--Insertion of values
insert into dept values
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance');

create table employee(
emp_id int primary key,
Name varchar(50) unique,
dept_id int default 1 foreign key references dept(dept_id) on delete set default on update set default,
email varchar(50) default 'company@email.com',
Age int check(age>21)
);

insert into employee values (1,'Anitha',1,'Anitha@evry.com',22);
insert into employee values (2,'Ankith',3,'Ankith@evry.com',22);
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25);
insert into employee values (4,'Jayanth',3,'Jayanth@evry.com',23);


select * from employee;
select * from dept;

delete from dept where dept_id=4;
update dept set dept_id=4 where dept_Name='Design';

select * from employee;
select * from dept;

create table emp;//creation

select * from tgt_joiner;
select * from asn_20;

select * from Target16;

select * from tgt_joiner181;

select * from target_1818;

select * from router1;
 select * from router2;




-------------------------------------------------------------------







