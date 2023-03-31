#UC1
create database payroll_service;
show databases;
use payroll_service;
#UC2
create Table employee_payroll
(
id INT unsigned not null auto_increment,
name varchar(150) not null,
salary double not null,
start DATE not null,
primary key (id)
);
describe employee_payroll;
#UC3
insert into employee_payroll(name, salary, start)values
('Bill',1000000.00,'2018-01-03'),
('Terisa',2000000.00,'2020-11-13'),
('Charlie',4000000.00,'2020-05-21');
#UC4
select *from employee_payroll;
#UC5
select salary from employee_payroll where name='bill';
select *from employee_payroll where 
start between cast('2018-01-01' as date) and date (now());
#UC6
alter table employee_payroll add gender char(1) after name;
describe employee_payroll;
update employee_payroll set gender='F' where name='bill';
update employee_payroll set gender='M' where name='terisa' or name='charlie';
select *from employee_payroll;
update employee_payroll set salary='30000000.0' where name='terisa';
select *from employee_payroll;
#UC7
select avg(salary) from employee_payroll where gender='M' group by gender;
select avg(salary) from employee_payroll group by gender;
select gender,avg(salary) from employee_payroll group by gender;
select gender,count(salary) from employee_payroll group by gender;
select gender,sum(salary) from employee_payroll group by gender;

