-- Create the "employee" table
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    job_title VARCHAR2(100),
    salary NUMBER(10, 2)
);

    
    INSERT INTO employee (employee_id, first_name, last_name, job_title, salary)
SELECT 1, 'John', 'Doe', 'Manager', 75000.00 FROM dual UNION ALL
SELECT 2, 'Jane', 'Smith', 'Developer', 60000.00 FROM dual UNION ALL
SELECT 3, 'Michael', 'Johnson', 'Sales Associate', 50000.00 FROM dual UNION ALL
SELECT 4, 'Emily', 'Brown', 'HR Specialist', 55000.00 FROM dual UNION ALL
SELECT 5, 'William', 'Davis', 'Designer', 58000.00 FROM dual UNION ALL
SELECT 6, 'Olivia', 'Wilson', 'Accountant', 60000.00 FROM dual UNION ALL
SELECT 7, 'James', 'Jones', 'Marketing Manager', 70000.00 FROM dual UNION ALL
SELECT 8, 'Ava', 'Miller', 'Data Analyst', 55000.00 FROM dual UNION ALL
SELECT 9, 'Benjamin', 'Taylor', 'QA Tester', 52000.00 FROM dual UNION ALL
SELECT 10, 'Sophia', 'Anderson', 'Customer Support', 48000.00 FROM dual;


savepoint s1;

CREATE USER u6;

GRANT SELECT, INSERT, UPDATE, DELETE
ON employee
TO u6;

UPDATE employee
SET first_name = 'PRABHJOT SINGH'
WHERE employee_id = 1;

SELECT table_name, privilege
FROM DBA_TAB_PRIVS
WHERE grantee = 'U6';

REVOKE SELECT, INSERT, UPDATE, DELETE
ON employee
FROM u6;

commit;

