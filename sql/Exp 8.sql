CREATE OR REPLACE PACKAGE emp_operations AS
    PROCEDURE find_employee(emp_id NUMBER);
END emp_operations;

CREATE OR REPLACE PACKAGE BODY emp_operations AS
    PROCEDURE find_employee(emp_id NUMBER) IS
        e_name employees.employee_name%TYPE;
        e_age employees.employee_age%TYPE;
        e_address employees.employee_address%TYPE;
    BEGIN
        SELECT employee_name, employee_age, employee_address
        INTO e_name, e_age, e_address
        FROM employees
        WHERE employee_id = emp_id;

        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || e_name);
        DBMS_OUTPUT.PUT_LINE('Employee Age: ' || e_age);
        DBMS_OUTPUT.PUT_LINE('Employee Address: ' || e_address);
    END find_employee;
END emp_operations;

CREATE OR REPLACE TRIGGER employee_before_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    -- Check if data exists for the provided employee_id
    SELECT employee_id INTO :NEW.employee_id FROM employees WHERE employee_id = :NEW.employee_id;
    
    -- Call the find_employee procedure from the emp_operations package before insert
    emp_operations.find_employee(:NEW.employee_id);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee data found for employee_id: ' || :NEW.employee_id);
END employee_before_insert;


INSERT INTO employees (employee_id, employee_name, employee_age, employee_address)
VALUES (1001, 'John Doe', 30, '123 Main St');