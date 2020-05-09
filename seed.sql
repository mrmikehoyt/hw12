/* Seeds for SQL table. We haven't discussed this type of file yet */
USE companydb;

/* Insert 3 Rows into your new table */
/*Seeding employee database */
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael","Hoyt",1,1)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Biscuit","Bigmac",2,2)


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John","Doe",3,1)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jane","Doe",3,1)

/*Seeding department database */
INSERT INTO department (name)
VALUES ("Sales")

INSERT INTO department (name)
VALUES ("Finance")

INSERT INTO department (name)
VALUES ("Legal")

INSERT INTO department (name)
VALUES ("Engineering")

/*Seeding role database */
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead",100000,1)
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer",120000,4)
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Engineer",500000,2)
INSERT INTO role (title, salary, department_id)
VALUES ("vp",4,5)
