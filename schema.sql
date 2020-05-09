/*copy below in mysql workbench and run that*/
drop database companydb;
/*Drops database if exists*/
Drop Database if exists CompanyDB;
/*Creates database if exists*/
Create Database CompanyDB;
use CompanyDB;
/*Creates employee table and creates columns with datatypes, character lengths, and set id to not null*/
Create Table employee(
id INTEGER NOT NULL AUTO_INCREMENT,
first_name varchar (30) not null,
last_name varchar (30) not null,
role_id integer (99),
manager_id integer (99),
PRIMARY KEY (id),
FOREIGN KEY (role_id) references employee(id),
FOREIGN KEY (manager_id) references employee(id)
);
/*Creates role table and creates columns with datatypes, decimal positions, character lengths, and set id to not null*/
CREATE Table role(
id INTEGER NOT NULL AUTO_INCREMENT,
title varchar (30) not null,
salary decimal (9,2),
department_id integer (99),
PRIMARY KEY (id),
FOREIGN KEY (department_id) references role(id)
);
/*Creates department table, name column, character length, and set id to not null*/
create table department(
id INTEGER NOT NULL AUTO_INCREMENT,
name varchar (30) not null,
PRIMARY KEY (id)
);
/*copy above in mysql workbench and run that, below is used in Employee.js or notes */
/*NOt sure if this belongs in schema or seeds. This is a join command to join the department, employee, and role tables so that data can be queryed on all 3 databases. */
select * from department LEFT JOIN  role ON role.department_id  RIGHT JOIN employee ON employee.role_id

/*This is what tutor assisted me with I believe, thigns I first figured out when I was starting assignment*/
SELECT role_id FROM employee RIGHT JOIN role ON employee.role_id = role.id;
SELECT role_id FROM employee RIGHT JOIN role ON employee.role_id = role.salary;
SELECT department_id FROM role LEFT JOIN  department ON department.name = role.department_id;

SELECT CONCAT (first_name, "", last_name, "") AS manager_id
FROM employee;


/*selects all columns from role table and role.department_id */
select * from department LEFT JOIN  role ON role.department_id
select * from department LEFT JOIN  role ON role.department_id 
select * from department LEFT JOIN  role ON role.department_id  RIGHT JOIN employee ON employee.role_id 

/*having issue setting foreign key for manager_id after forgetting to do it with create table*/
ALTER TABLE employee ADD FOREIGN KEY (manager_id integer 99) REFERENCES employee(manager_id integer 99);
ALTER TABLE employee ADD FOREIGN KEY (role_id integer 99) REFERENCES employee(role_id);
/*receiving error
Error Code: 1822. Failed to add the foreign key constraint. Missing index for constraint 'employee_ibfk_1' in the referenced table 'employee'
/*