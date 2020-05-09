/*copy below in mysql workbench and run that*/
/*Drops database if exists*/
DROP DATABASE IF EXISTS companydb;
/*Creates database if exists*/
CREATE DATABASE companydb;
USE companydb;
/*Creates employee table and creates columns with datatypes, character lengths, and set id to not null*/
CREATE TABLE employee(
id INTEGER NOT NULL AUTO_INCREMENT,
first_name VARCHAR (30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
role_id INTEGER (99),
manager_id INTEGER (99),
PRIMARY KEY (id),
FOREIGN KEY (role_id) references employee(id),
FOREIGN KEY (manager_id) references employee(id)
);
/*Creates role table and creates columns with datatypes, decimal positions, character lengths, and set id to not null*/
CREATE TABLE role(
id INTEGER NOT NULL AUTO_INCREMENT,
title VARCHAR (30) not null,
salary DECIMAL (9,2),
department_id INTEGER (99),
PRIMARY KEY (id),
FOREIGN KEY (department_id) references role(id)
);
/*Creates department table, name column, character length, and set id to not null*/
CREATE TABLE department(
id INTEGER NOT NULL AUTO_INCREMENT,
name VARCHAR (30) NOT NULL,
PRIMARY KEY (id)
);
/*copy above in mysql workbench and run that, below is used in Employee.js or notes */
