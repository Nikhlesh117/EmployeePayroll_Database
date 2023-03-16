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

--UC04: Retrieve All data
select * from EmployeePayroll

-- UC05: Retrieve salary for particular employee 
select salary from EmployeePayroll where name='Nick'
-- Retrieve salary for particular employee who join in particular date using getdate()
select salary from  EmployeePayroll where start_Date between '2020-01-12' and getdate()

--UC06: Alter Table
alter table EmployeePayroll add gender char(1)
-- update row
update EmployeePayroll set gender='F' where name='Sam' or name='Gitesh'
update EmployeePayroll set gender ='M' where id in (1,2)

--UC07: Use aggregate functions
select gender, sum(salary) from EmployeePayroll  where gender = 'M' group by gender
select gender, avg(salary) from EmployeePayroll where gender = 'F' group by gender
select gender, sum(salary) from EmployeePayroll  group by gender
select gender, avg(salary) from EmployeePayroll  group by gender
select gender, count(salary) from EmployeePayroll  group by gender;
select max(salary) "Highest_Salary" from EmployeePayroll
select min(salary) "Lowest_Salary" from EmployeePayroll