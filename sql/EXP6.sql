DECLARE
    CURSOR student IS
        SELECT stu_uid, first_name, last_name, stu_age, stu_branch
        FROM st
        ORDER BY stu_uid
        FETCH FIRST 5 ROWS ONLY;
        
    v_uid INT;
    v_first_name CHAR(25);
    v_last_name CHAR(25);
    v_age INT;
    v_branch CHAR(25);
BEGIN
    OPEN student;

    LOOP
        FETCH student INTO v_uid, v_first_name, v_last_name, v_age, v_branch;
        EXIT WHEN student%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_uid || ', ' || v_first_name || ', ' || v_last_name || ', ' || v_age || ', ' || v_branch);
    END LOOP;

    CLOSE student;
END;


create table st(stu_uid int not null ,first_name char(25), last_name char(25), stu_age int NOT NULL, stu_branch char(25));
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (1, 'Aryan', 'Gupta', 20, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (2, 'Akshay', 'Gupta', 20, 'AIML');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (3, 'Rahul', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (4, 'Ankit', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (5, 'Rahul', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (6, 'Sheikh', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (7, 'Himanshu', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (8, 'Saransh', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (9, 'Arnav', 'Gupta', 22, 'CSE');
INSERT INTO st (stu_uid, first_name, last_name, stu_age, stu_branch) 
VALUES (10, 'Pankaj', 'Gupta', 22, 'CSE');