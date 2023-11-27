drop database pessem3;

create database pessem3;

use pessem3;

CREATE TABLE STUDENT(
    ROLL_NO INT,
    NAME VARCHAR(30),
    ADDRESS VARCHAR(20),
    PHONE VARCHAR(15),
    AGE INT,
    PRIMARY KEY(ROLL_NO)
);

CREATE TABLE COURSE(
    ROLL_NO INT,
    COURSE_ID INT,
    COURSE_NAME VARCHAR(20),
    FOREIGN KEY (ROLL_NO) REFERENCES STUDENT(ROLL_NO)
);

INSERT INTO STUDENT VALUES  (1, 'PRADEEP', 'E-CITY', '987293322', 12),
                            (2, 'LOAL', 'E-CITY', '987293322', 13),
                            (3, 'BOKA', 'E-CITY', '987293322', 14),
                            (4, 'MIAN', 'E-CITY', '987293322', 16),
                            (5, 'ESU', 'E-CITY', '987293322', 11);

INSERT INTO COURSE VALUES   (1, 1, 'DEV'),
                            (2, 2, 'ACC'),
                            (3, 3, 'DEV');