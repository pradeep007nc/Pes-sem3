DROP DATABASE IF EXISTS pessem3;
CREATE DATABASE pessem3;
USE pessem3;

create table employee(
    id int,
    name varchar(30)
);

create table emp_bkp(
    id int,
    name varchar(30)
);

insert into employee values
                        (1, 'Pradeep'),
                        (2, 'lola'),
                        (3, 'mika');
                        