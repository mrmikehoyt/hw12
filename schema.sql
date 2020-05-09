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
