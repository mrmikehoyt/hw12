Drop Database if exists CompanyDB;
Create Database CompanyDB;
use CompanyDB;
Create Table employee (
  id INTEGER NOT NULL AUTO_INCREMENT,
  plan VARCHAR(255) NOT NULL,
first_name varchar (30) not null,
last_name varchar (30) not null,
role_id integer (99),
manager_id integer (99),
PRIMARY KEY (id)
);

CREATE Table role(
id INTEGER NOT NULL AUTO_INCREMENT,
title varchar (30) not null,
salary decimal (9,2),
department_id integer (99),
PRIMARY KEY (id)
);

create table department(
id INTEGER NOT NULL AUTO_INCREMENT,
name varchar (30) not null,
PRIMARY KEY (id)
)

SELECT role_id FROM employee RIGHT JOIN role ON employee.role_id = role.id;
SELECT role_id FROM employee RIGHT JOIN role ON employee.role_id = role.salary;
SELECT department_id FROM role LEFT JOIN  department ON department.name = role.department_id;

SELECT CONCAT (first_name, "", last_name, "") AS manager_id
FROM employee;


//selects all columns from role table and role.department_id
select * from department LEFT JOIN  role ON role.department_id 