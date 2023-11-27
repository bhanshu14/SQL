--if statement
DECLARE
   x NUMBER(3) := 5;
BEGIN
   IF x > 3 THEN
      DBMS_OUTPUT.PUT_LINE('x is greater than 3');
   END IF;
END;

--if else statement
DECLARE
   x NUMBER(3) := 2;
BEGIN
   IF x > 3 THEN
      DBMS_OUTPUT.PUT_LINE('x is greater than 3');
   ELSE
      DBMS_OUTPUT.PUT_LINE('x is not greater than 3');
   END IF;
END;

--if else if statement
DECLARE
   x NUMBER(3) := 5;
BEGIN
   IF x > 10 THEN
      DBMS_OUTPUT.PUT_LINE('x is greater than 10');
   ELSIF x > 5 THEN
      DBMS_OUTPUT.PUT_LINE('x is greater than 5 but not more than 10');
   ELSE
      DBMS_OUTPUT.PUT_LINE('x is not greater than both 10 and  5');
   END IF;
END;

--case statement
DECLARE
   x NUMBER(3) := 3;
   result VARCHAR2(50);
BEGIN
   result := CASE x
                WHEN 1 THEN 'One'
                WHEN 2 THEN 'Two'
                WHEN 3 THEN 'Three'
                ELSE 'Unknown'
             END;

   DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;

--loop
DECLARE
   j NUMBER(3) := 0;
BEGIN
   LOOP
      DBMS_OUTPUT.PUT_LINE('Value of j: ' || j);
      j := j + 1;
      
      EXIT WHEN j > 5;  -- Exits the loop when counter goes beyond 5
   END LOOP;
END;

--for loop
    
BEGIN
   FOR i IN 1..5 LOOP
      DBMS_OUTPUT.PUT_LINE('Iteration: ' || i);
   END LOOP;
END;

--while loop statement
DECLARE
   counter NUMBER(3) := 0;
BEGIN
   WHILE counter <= 5 LOOP
      DBMS_OUTPUT.PUT_LINE('Value of counter: ' || counter);
      counter := counter + 1;
   END LOOP;
END;