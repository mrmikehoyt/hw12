/*NOt sure if this belongs in schema or seeds. This is a join command to join the department, employee, and role tables so that data can be queryed on all 3 databases. */
select * from department LEFT JOIN  role ON role.department_id  RIGHT JOIN employee ON employee.role_id

/* For cleaning tables and confirming tables are cleaned. this is done by viewing id's */
SET SQL_SAFE_UPDATES = 0; DELETE FROM role WHERE id = 13; SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0; DELETE FROM department WHERE id = 4; SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0; DELETE FROM employee WHERE id = 20; SET SQL_SAFE_UPDATES = 1;
select * from role
select * FROM DEPARTMENT
select * from employee