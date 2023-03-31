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

