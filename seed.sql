/* Seeds for SQL table. We haven't discussed this type of file yet */
USE companydb;

/* Insert 3 Rows into your new table */
INSERT INTO employee (first_name)
VALUES ("Michael"), ('John'),('Tommy');

INSERT INTO employee (last_name)
VALUES ("Hoyt"),("Wolard"),("Douglas");

INSERT INTO employee (manager_id)
VALUES (first_name, last_name),(last_name);

/* OR */
INSERT INTO  (name)
VALUES ("Emerson"), ("Northeastern"), ("MIT");


18:11:59	use companydb	0 row(s) affected	0.000 sec

18:11:59	INSERT INTO employee (first_name) VALUES ("Michael"), ('John'),('Tommy')	Error Code: 1364. Field 'plan' doesn't have a default value	0.000 sec

18:14:48	ALTER TABLE employee drop column plan	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.125 sec

18:15:04	INSERT INTO employee (first_name) VALUES ("Michael"), ('John'),('Tommy')	Error Code: 1364. Field 'last_name' doesn't have a default value	0.000 sec

18:24:07	INSERT INTO department (name) values ("Sales"),("Finance"),("Legal"),("Engineering")	4 row(s) affected Records: 4  Duplicates: 0  Warnings: 0	0.016 sec

18:26:16	select * from department LIMIT 0, 1000	4 row(s) returned	0.000 sec / 0.000 sec

18:33:08	INSERT INTO role (title, salary, department_id) values ("Sales Lead",100000,1) ("Software Engineer",120000,4)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '("Software Engineer",120000,4)' at line 2	0.000 sec

18:33:47	INSERT INTO role (title, salary, department_id) values ("Sales Lead",100000,1), ("Software Engineer",120000,4)	2 row(s) affected Records: 2  Duplicates: 0  Warnings: 0	0.015 sec

18:38:22	SELECT role.title , department.name FROM role left JOIN department ON department.id = role.department_id LIMIT 0, 1000	2 row(s) returned	0.000 sec / 0.000 sec

INSERT INTO employee(first_name,last_name) VALUES('Michael','Hoyt');