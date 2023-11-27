drop database pessem3;
create database pessem3;

USE pessem3;


CREATE TABLE IF NOT EXISTS Dept(
    dept_id INT,
    dept_name VARCHAR(20),
    PRIMARY KEY(dept_id)
);

CREATE TABLE IF NOT EXISTS project(
    p_no INT,
    p_name VARCHAR(20),
    p_head VARCHAR(20),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Dept(dept_id) 
); 

INSERT INTO Dept VALUES(1, 'ACC');
INSERT INTO Dept VALUES(2, 'DEV');

INSERT INTO project VALUES(1, 'DEMO', 'ME', 1);
INSERT INTO project VALUES(2, 'DEMO', 'ME', 1);