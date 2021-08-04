Create database Payroll_service;
show databases;
use payroll_service;
create table Employee_payroll(
columns_id int(5) primary key auto_increment,
Name varchar(40) not null ,
Salary dec(5,2) not null,
Start_date date not null );
desc Employee_payroll;
Insert into Employee_payroll(name , salary , Start_date)
values('Kuldeep' , 12341.54 , '2021-04-23' ),
('Raj' ,  34234.32 , '2019-03-12'),
('Rahul' , 65432.56 , '2016-01-03');
select * from employee_payroll;
Select Salary from employee_payroll
where name = 'kuldeep';
Select * from employee_payroll 
where  Start_date between cast('2016-01-03' As Date ) And Date(now());
Alter table employee_payroll
Add column Gender char(1) not null after name;
update  employee_payroll
set gender = 'M' where columns_id = 3;
insert into employee_payroll(name , Gender, salary , Start_date)
 values('Rani' , 'F' , 34254.32 , '2017-03-12'),
('Priti' , 'F' , 44234.32 , '2017-03-11');
Select min(salary) from employee_payroll;
Select max(salary) from employee_payroll;
Select sum(salary) from employee_payroll
WHERE gender = 'F' GROUP BY gender;
Select sum(salary) from employee_payroll
WHERE gender = 'M' GROUP BY gender;
Select avg(salary) from employee_payroll
WHERE gender = 'F' GROUP BY gender;
Select avg(salary) from employee_payroll
WHERE gender = 'M' GROUP BY gender;
select count(Columns_id) As count from employee_payroll;
select * from Employee_payRoll;
Alter table Employee_payRoll
Add column phoneNumber varchar(10) After name;
Alter table Employee_payRoll
Add column address varchar(250) after phoneNumber;
Alter table Employee_payRoll
Add Column department varchar(250) after Address;
Alter table Employee_payRoll
Add column Basicpay dec(10,2) after gender;
Alter table Employee_payRoll
Add column deduction dec(10,2) after basicpay;
Alter table Employee_payRoll
Add column TaxablePay dec(10,2) after deduction;
Alter table Employee_payRoll
Add column tax dec(10,2) after taxablepay;
Alter table Employee_payRoll
Add column Netpay dec(10,2) after tax;
alter table employee_payroll
add column city varchar(20) after start_date;
alter table employee_payroll
add column country varchar(20) after city;
select * from employee_payroll;
delete from employee_payroll;
select * from employee_payroll;
insert into  employee_payroll (name ,phonenumber , address , department, gender , basicpay , deduction , taxablepay , tax , netpay , start_date , city , country )
values('Kuldeep' , '9723846921' , '212,deepmalacomplex' , 'EC' ,  'M' , 18000.00 , 440.0 , 00.0, 00.0 , 22000 , '2018-12-23', 'Vapi', 'india' );
insert into  employee_payroll (name ,phonenumber , address , department, gender , basicpay , deduction , taxablepay , tax , netpay , start_date , city , country )
values('Priti' , '9723846341' , 'plotno.6 Shnativilla' , 'IT' ,  'F' , 28000.00 , 440.0 , 00.0, 00.0 , 32000 , '2019-01-25', 'pune', 'india' );
select *  from employee_payroll;