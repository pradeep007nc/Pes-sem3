DROP DATABASE IF EXISTS pessem3;
CREATE DATABASE pessem3;
USE pessem3;

create table customers(
    id int,
    name varchar(30),
    age int,
    address varchar(30),
    salary int,
    PRIMARY KEY(id)
);


insert into customers values    (1, 'pradeep', 22, 'e-sad', 100000),
                                (2, 'lola', 12, 'e-sad', 2132121),
                                (3, 'lolli', 45, 'e-sad', 23434),
                                (4, 'rach', 32, 'e-sd', 3232),
                                (5, 'mach', 90, 'e-sd', 1223),
                                (6, 'nav', 32, 'e-city', 233222);

create table customer_bkp(
    id int,
    name varchar(30),
    age int,
    address varchar(30),
    salary int,
    PRIMARY KEY(id)
);

insert into customer_bkp (select * from customers);

create table joiner(
    id int,
    name varchar(20)
);

insert into joiner(
    1, 'mian',
    2, 'sad',
    3, 'lola',
    4, 'pradeep'
);