-- Welcome to the Employee Payroll - Database

--UC01: Create Database
create database payroll_service 

--UC02: Create Table
create Table EmployeePayroll
(
id int identity primary key,
name varchar(200) not null,
salary money not null,
start_Date date not null
)

--UC03: Insert values in Table
Insert into EmployeePayroll values
('Nick',20000,'2023-01-12'),
('Suresh',25000,'2020-02-18'),
('Sam',10000,'2022-11-13'),
('Gitesh',30000,'2019-06-09')