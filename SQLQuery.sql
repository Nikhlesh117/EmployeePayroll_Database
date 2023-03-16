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