drop table if exists departments
--create table depts
create table departments (
	dept_no varchar(10) not null,
	dept_name varchar(30) not null,
	primary key(dept_no),
	unique (dept_name));
	
select * from departments;