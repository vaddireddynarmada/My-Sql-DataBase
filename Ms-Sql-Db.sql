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

