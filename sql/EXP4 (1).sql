-- Create the "employee" table
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    job_title VARCHAR2(100),
    salary NUMBER(10, 2)
);
CREATE SEQUENCE sequence_1 
start with 1 
increment by 1 
minvalue 0 
maxvalue 100 cycle; 
    

INSERT INTO employee (employee_id, first_name, last_name, job_title, salary)
VALUES (sequence_1.NEXTVAL, 'John', 'Doe', 'Manager', 75000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, salary)
VALUES (sequence_1.NEXTVAL, 'Jane', 'Smith', 'Developer', 60000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, salary)
VALUES (sequence_1.NEXTVAL, 'Michael', 'Johnson', 'Sales Associate', 50000.00);



savepoint s1;
select * from employee;

CREATE SYNONYM emp_synonym FOR employee;

SELECT * FROM emp_synonym;


CREATE VIEW employee_view AS
SELECT * FROM employee;

SELECT * FROM employee_view;

DROP VIEW employee_view;


UPDATE employee
SET first_name = 'PRABHJOT SINGH'
WHERE employee_id = 1;




commit;

