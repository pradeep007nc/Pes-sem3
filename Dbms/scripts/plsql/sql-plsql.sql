-- FOR LOOP
DECLARE 
    I INT;
BEGIN 
    I := 1;
    LOOP
        IF I > 10 THEN 
            EXIT;
        END IF;
        dbms_output.put_line(I);
        I := I+1;
    END LOOP;
END;

-- WHILE LOOP
DECLARE 
    NUM INT := 1;
BEGIN 
    WHILE(NUM < 10) LOOP
        dbms_output.put_line(" " ||NUM);
        NUM := NUM + 2;
    END LOOP;
END;

-- FACTORIAL
DECLARE 
	NUM INT := 1;
	ANS INT := 1;
	FACT INT := 5;
BEGIN
	WHILE(NUM <= FACT)LOOP
		ANS := ANS * NUM;
		NUM := NUM+1;
	END LOOP;
	dbms_output.put_line('FACT IS ' ||ANS);
END;

-- REVERSE
DECLARE 
	I INT := 1;
BEGIN
	FOR I IN REVERSE 1..10 LOOP
		dbms_output.put_line('REVERSE IS ' ||I);
	END LOOP;
END;

-- NESTED IF
DECLARE
    MARKS INT := 50;
BEGIN
    IF MARKS <= 100 THEN
        IF MARKS >= 90 THEN
            dbms_output.put_line('MARKS IS DISTINCTION ' || MARKS);
        ELSIF MARKS > 80 THEN
            dbms_output.put_line('MARKS IS SECOND DISTINCTION ' || MARKS);
        ELSIF MARKS > 50 THEN
            dbms_output.put_line('MARKS IS THIRD DISTINCTION ' || MARKS);
        ELSE
            dbms_output.put_line('YOU ARE A FAILED CANDIDATE ' || MARKS);
        END IF;
    ELSE
        dbms_output.put_line('INVALID MARKS ' || MARKS);
    END IF;
END;

-- STRING
DECLARE 
    EX VARCHAR(20) := 'PESTICIDES';
BEGIN
    dbms_output.put_line(UPPER(EX));
    dbms_output.put_line(LOWER(EX));
    dbms_output.put_line(INITCAP(EX));
    dbms_output.put_line(SUBSTR(EX, 0, 2));
    dbms_output.put_line(INSTR(EX, 'A'));
END;

-- SUBPROGRAMS
-- PROCEDURE AND FUNCTION ARE THE TYPES OF SUBPRGRAM
-- FUNCTION ARE SUBPRGRAM FUNCTION WHICH COMPUTES AND RETURN ONE VALUE
--EX OF PROCEDURE 

create this procedure and comment and call
CREATE OR REPLACE PROCEDURE sample AS 
BEGIN 
    dbms_output.put_line('WELCOME TO PL/SQL');
END;

BEGIN
	sample;
END;


-- functions
CREATE OR REPLACE FUNCTION totalcustomers
RETURN INT IS
TOTAL NUMBER(20) := 0;
BEGIN
    SELECT COUNT(*) INTO TOAL FROM customers;
    RETURN TOTAL;
END;

--function to pass date and get day
CREATE OR REPLACE PROCEDURE GetDayOfWeekString(p_input_date IN DATE) IS
   day_name VARCHAR2(20);
BEGIN
   day_name := TO_CHAR(p_input_date, 'Day');

   DBMS_OUTPUT.PUT_LINE('Day of the week (string): ' || day_name);
END GetDayOfWeekString;


DECLARE
   my_date DATE := TO_DATE('2023-04-15', 'YYYY-MM-DD');
BEGIN
   GetDayOfWeekString(my_date);
END;

--prime number

DECLARE
   num      NUMBER := 7;
   isPrime  BOOLEAN;

   FUNCTION IsPrimeNumber(n NUMBER) RETURN BOOLEAN IS
      i NUMBER := 2;
   BEGIN
      IF n < 2 THEN
         RETURN FALSE; 
      END IF;

      WHILE i <= SQRT(n) LOOP
         IF MOD(n, i) = 0 THEN
            RETURN FALSE; 
         END IF;
         i := i + 1;
      END LOOP;

      RETURN TRUE; 
   END IsPrimeNumber;
   

--palindrome function
CREATE OR REPLACE FUNCTION ispalindrome(INPUT IN INT) 
RETURN VARCHAR IS
    INP INT := INPUT;
    TEMP INT := 0;
    ANS INT := 0;
BEGIN
    WHILE (INP != 0) LOOP
        TEMP := INP MOD 10; 
        ANS := ANS * 10 + TEMP;
        INP := INP / 10;   
    END LOOP;

    IF ANS = INPUT THEN 
        RETURN 'PALINDROME';  
    ELSE
        RETURN 'NOT PALINDROME';  
    END IF;
END ispalindrome;


BEGIN
    dbms_output.put_line(ispalindrome(1211771221));
END;

--pattern
DECLARE
   num_rows NUMBER := 5; 

   PROCEDURE PrintPattern(rows NUMBER) IS
   BEGIN
      FOR i IN REVERSE 1..rows LOOP
         FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('*');
         END LOOP;
         DBMS_OUTPUT.NEW_LINE;
      END LOOP;
   END PrintPattern;

BEGIN
   PrintPattern(num_rows);
END;

--dummy table
-- Creating a sample table
CREATE TABLE CUSTOMERS (
  ID NUMBER,
  NAME VARCHAR2(100),
  ADDRESS VARCHAR2(255)
);

-- Inserting some sample data
INSERT INTO CUSTOMERS (ID, NAME, ADDRESS) VALUES (1, 'John Doe', '123 Main St');
INSERT INTO CUSTOMERS (ID, NAME, ADDRESS) VALUES (2, 'Jane Smith', '456 Oak Ave');
INSERT INTO CUSTOMERS (ID, NAME, ADDRESS) VALUES (3, 'Bob Johnson', '789 Pine Rd');

DECLARE
 C_ID CUSTOMERS.ID%TPYE;
 C_NAME CUSTOMERS.NAME%TYPE;
 C_ADDR CUSTOMERS.ADDRESS%TYPE;
 CURSOR C_CUSTOMERS IS
    SELECT ID `NAME`, ADDRRESS FROM CUSTOMERS;
LOOP 
    FETCH C_CUSTOMERS INTO C_ID, C_NAME, C_ADDR;
    EXIT WHEN C_CUSTOMERS.ID%NOTFOUND;
    dbms_output.put_line(C_ID||''||C_NAME||''||C_ADDR);
    END LOOP;
    CLOSE C_CUSTOMERS;
END;


-- create table employee (id number(10),name varchar(20),salary number(20),dept_no number(10));
-- insert into employee values(1,'Hemanth',50000,10);
-- insert into employee values(2,'Karthik',60000,20);
-- insert into employee values(3,'Vijeth',70000,30);
-- insert into employee values(4,'Krishna',80000,50);
-- insert into employee values(5,'Praj',90000,60);


create table employee (id number(10),name varchar(20),salary number(20),dept_no number(10));
insert into employee values(1,'Hemanth',50000,10);
insert into employee values(2,'Karthik',60000,20);
insert into employee values(3,'Vijeth',70000,30);
insert into employee values(4,'Krishna',80000,50);
insert into employee values(5,'Praj',90000,60);



DECLARE
   avg_salary_dept_10 NUMBER;
   avg_salary_dept_20 NUMBER;
   records_updated NUMBER := 0;
BEGIN
 
   SELECT AVG(salary) INTO avg_salary_dept_10
   FROM employee
   WHERE dept_no = 10;

   SELECT AVG(salary) INTO avg_salary_dept_20
   FROM employee
   WHERE dept_no = 20;

   IF avg_salary_dept_20 > avg_salary_dept_10 THEN
      UPDATE employee
      SET salary = salary * 1.2
      WHERE dept_no = 20;

      SELECT COUNT(*) INTO records_updated
      FROM employee
      WHERE dept_no = 20;
   END IF;

   DBMS_OUTPUT.PUT_LINE('Average Salary for Department 10: ' || avg_salary_dept_10);
   DBMS_OUTPUT.PUT_LINE('Average Salary for Department 20: ' || avg_salary_dept_20);
   DBMS_OUTPUT.PUT_LINE('Number of Records Updated: ' || records_updated);
END;